; ModuleID = 'blender/source/blender/editors/animation/anim_channels_edit.c'
source_filename = "blender/source/blender/editors/animation/anim_channels_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
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
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.bAnimChannelType = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.tReorderChannelIsland = type { ptr, ptr, %struct.ListBase, i32 }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }

@.str.2 = private unnamed_addr constant [19 x i8] c"Animation Channels\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ANIM_OT_channels_click\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"children_only\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ANIM_OT_channels_rename\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ANIM_OT_channels_find\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"ANIM_OT_channels_select_all_toggle\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"ANIM_OT_channels_select_border\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"ANIM_OT_channels_delete\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"ANIM_OT_channels_setting_toggle\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"ANIM_OT_channels_setting_enable\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"ANIM_OT_channels_setting_disable\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"ANIM_OT_channels_editable_toggle\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"ANIM_OT_channels_expand\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"ANIM_OT_channels_collapse\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"ANIM_OT_channels_move\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"ANIM_OT_channels_group\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"ANIM_OT_channels_ungroup\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"ANIM_OT_channels_visibility_set\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"ANIM_OT_channels_visibility_toggle\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Select All\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Toggle selection of all animation channels\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"Select all animation channels within the specified region\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.32 = private unnamed_addr constant [24 x i8] c"Mouse Click on Channels\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"Handle mouse-clicks over animation channels\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Extend Select\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Select Children Only\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.36 = private unnamed_addr constant [74 x i8] c"Error: animation channel (index = %d) not found in mouse_anim_channels()\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"Rename Channels\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"Rename animation channel under mouse\00", align 1
@.str.40 = private unnamed_addr constant [75 x i8] c"Error: animation channel (index = %d) not found in rename_anim_channels()\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"Find Channels\00", align 1
@.str.42 = private unnamed_addr constant [75 x i8] c"Filter the set of channels shown to only include those with matching names\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Query\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Text to search for in channel names\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"Enable Channel Setting\00", align 1
@.str.47 = private unnamed_addr constant [60 x i8] c"Enable specified setting on all selected animation channels\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@prop_animchannel_setflag_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.52, i32 0, ptr @.str.53, ptr @.str.28 }, %struct.EnumPropertyItem { i32 0, ptr @.str.54, i32 0, ptr @.str.55, ptr @.str.28 }, %struct.EnumPropertyItem { i32 1, ptr @.str.56, i32 0, ptr @.str.57, ptr @.str.28 }, %struct.EnumPropertyItem { i32 2, ptr @.str.58, i32 0, ptr @.str.27, ptr @.str.28 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_animchannel_settings_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.59, i32 0, ptr @.str.60, ptr @.str.28 }, %struct.EnumPropertyItem { i32 2, ptr @.str.61, i32 0, ptr @.str.62, ptr @.str.28 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"ENABLE\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"INVERT\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"PROTECT\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"Protect\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"MUTE\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"Mute\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"Disable Channel Setting\00", align 1
@.str.64 = private unnamed_addr constant [61 x i8] c"Disable specified setting on all selected animation channels\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"Toggle Channel Setting\00", align 1
@.str.66 = private unnamed_addr constant [60 x i8] c"Toggle specified setting on all selected animation channels\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Delete Channels\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"Delete all selected animation channels\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.69 = private unnamed_addr constant [27 x i8] c"Toggle Channel Editability\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"Toggle editability of selected channels\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"Move Channels\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"Rearrange selected animation channels\00", align 1
@prop_animchannel_rearrange_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -2, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.28 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.28 }, %struct.EnumPropertyItem { i32 1, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.28 }, %struct.EnumPropertyItem { i32 2, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.28 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.73 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"#TempGroup\00", align 1
@.str.78 = private unnamed_addr constant [86 x i8] c"rearrange_animchannel_add_to_islands(): don't know how to handle channels of type %d\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.79 = private unnamed_addr constant [22 x i8] c"tReorderChannelIsland\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"TOP\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"To Top\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"BOTTOM\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"To Bottom\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"Expand Channels\00", align 1
@.str.89 = private unnamed_addr constant [62 x i8] c"Expand (i.e. open) all selected expandable animation channels\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"Expand all channels (not just selected ones)\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"Collapse Channels\00", align 1
@.str.93 = private unnamed_addr constant [65 x i8] c"Collapse (i.e. close) all selected expandable animation channels\00", align 1
@.str.94 = private unnamed_addr constant [47 x i8] c"Collapse all channels (not just selected ones)\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"Toggle Visibility\00", align 1
@.str.96 = private unnamed_addr constant [69 x i8] c"Toggle visibility in Graph Editor of all selected animation channels\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"Set Visibility\00", align 1
@.str.98 = private unnamed_addr constant [70 x i8] c"Make only the selected animation channels visible in the Graph Editor\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"Revive Disabled F-Curves\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"ANIM_OT_channels_fcurves_enable\00", align 1
@.str.101 = private unnamed_addr constant [77 x i8] c"Clears 'disabled' tag from all F-Curves to get broken F-Curves working again\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"Remove Empty Animation Data\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"ANIM_OT_channels_clean_empty\00", align 1
@.str.104 = private unnamed_addr constant [67 x i8] c"Delete all empty animation data containers from visible datablocks\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"Group Channels\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"Add selected F-Curves to a new group\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"New Group\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"Name of newly created group\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"Ungroup Channels\00", align 1
@.str.112 = private unnamed_addr constant [51 x i8] c"Remove selected F-Curves from their current groups\00", align 1
@str = private unnamed_addr constant [47 x i8] c"ERROR: no channel info for the changed channel\00", align 1
@str.113 = private unnamed_addr constant [53 x i8] c"ERROR: no channel matching the one changed was found\00", align 1
@str.114 = private unnamed_addr constant [53 x i8] c"Error: Invalid channel type in mouse_anim_channels()\00", align 1
@str.115 = private unnamed_addr constant [23 x i8] c"Animdata has no action\00", align 1
@str.116 = private unnamed_addr constant [39 x i8] c"Mask does not supported for moving yet\00", align 1
@str.117 = private unnamed_addr constant [43 x i8] c"Grease Pencil not supported for moving yet\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_set_active_channel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = call i64 @ANIM_animdata_filter(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %3, ptr noundef %1, i32 noundef %2) #9
  %9 = load ptr, ptr %7, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %11, %46
  %15 = phi ptr [ %47, %46 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !40
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  switch i32 %17, label %46 [
    i32 6, label %20
    i32 7, label %26
    i32 30, label %32
    i32 8, label %38
    i32 10, label %38
    i32 11, label %38
    i32 12, label %38
    i32 13, label %38
    i32 14, label %38
    i32 15, label %38
    i32 17, label %38
    i32 18, label %38
    i32 19, label %38
    i32 20, label %38
    i32 21, label %38
    i32 22, label %38
    i32 23, label %38
    i32 24, label %38
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.bActionGroup, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !45
  %25 = and i32 %24, -3
  store i32 %25, ptr %23, align 8, !tbaa !45
  br label %46

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 9
  %30 = load i16, ptr %29, align 8, !tbaa !48
  %31 = and i16 %30, -5
  store i16 %31, ptr %29, align 8, !tbaa !48
  br label %46

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.NlaTrack, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !51
  %37 = and i32 %36, -2
  store i32 %37, ptr %35, align 8, !tbaa !51
  br label %46

38:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.AnimData, ptr %40, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !54
  %45 = and i32 %44, -32769
  store i32 %45, ptr %43, align 8, !tbaa !54
  br label %46

46:                                               ; preds = %20, %26, %32, %19, %42, %38, %14
  %47 = load ptr, ptr %15, align 8, !tbaa !39
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %14, !llvm.loop !56

49:                                               ; preds = %46, %11
  %50 = icmp eq ptr %4, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %49
  switch i32 %5, label %64 [
    i32 6, label %52
    i32 7, label %56
    i32 30, label %60
  ]

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !45
  %55 = or i32 %54, 2
  store i32 %55, ptr %53, align 8, !tbaa !45
  br label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %58 = load i16, ptr %57, align 8, !tbaa !48
  %59 = or i16 %58, 4
  store i16 %59, ptr %57, align 8, !tbaa !48
  br label %64

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !51
  %63 = or i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !51
  br label %64

64:                                               ; preds = %52, %56, %60, %51, %49
  call void @ANIM_animdata_freelist(ptr noundef nonnull %7) #9
  br label %65

65:                                               ; preds = %6, %64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_deselect_anim_channels(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = call i64 @ANIM_animdata_filter(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 9, ptr noundef %1, i32 noundef %2) #9
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %77, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8, !tbaa !39
  %11 = icmp eq ptr %10, null
  %12 = icmp eq i32 %4, 0
  %13 = or i1 %11, %12
  br i1 %13, label %77, label %14

14:                                               ; preds = %9, %71
  %15 = phi ptr [ %73, %71 ], [ %10, %9 ]
  %16 = phi i32 [ %72, %71 ], [ %4, %9 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !40
  switch i32 %18, label %71 [
    i32 4, label %19
    i32 29, label %65
    i32 6, label %25
    i32 7, label %31
    i32 25, label %37
    i32 30, label %43
    i32 8, label %49
    i32 10, label %49
    i32 11, label %49
    i32 12, label %49
    i32 13, label %49
    i32 14, label %49
    i32 15, label %49
    i32 17, label %49
    i32 18, label %49
    i32 19, label %49
    i32 20, label %49
    i32 16, label %49
    i32 21, label %49
    i32 22, label %49
    i32 23, label %49
    i32 24, label %49
    i32 27, label %59
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !59
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %16, i32 0
  br label %71

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %16, i32 0
  br label %71

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !59
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 %16, i32 0
  br label %71

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %16, i32 0
  br label %71

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !59
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 %16, i32 0
  br label %71

49:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = icmp eq ptr %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.AnimData, ptr %51, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !54
  %56 = and i32 %55, 16384
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 %16, i32 0
  br label %71

59:                                               ; preds = %14
  %60 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !59
  %62 = and i32 %61, 32
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 %16, i32 0
  br label %71

65:                                               ; preds = %14
  %66 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !59
  %68 = and i32 %67, 32
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 %16, i32 0
  br label %71

71:                                               ; preds = %65, %59, %53, %43, %37, %31, %25, %19, %14, %49
  %72 = phi i32 [ %16, %14 ], [ %16, %49 ], [ %24, %19 ], [ %30, %25 ], [ %36, %31 ], [ %42, %37 ], [ %48, %43 ], [ %58, %53 ], [ %64, %59 ], [ %70, %65 ]
  %73 = load ptr, ptr %15, align 8, !tbaa !39
  %74 = icmp eq ptr %73, null
  %75 = icmp eq i32 %72, 0
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %14, !llvm.loop !60

77:                                               ; preds = %71, %9, %5
  %78 = phi i32 [ %4, %5 ], [ %4, %9 ], [ %72, %71 ]
  %79 = load ptr, ptr %6, align 8, !tbaa !39
  %80 = icmp eq ptr %79, null
  br i1 %80, label %214, label %81

81:                                               ; preds = %77
  %82 = icmp eq i32 %78, 2
  %83 = icmp eq i32 %78, 1
  %84 = icmp eq i32 %78, 1
  br label %85

85:                                               ; preds = %81, %211
  %86 = phi ptr [ %79, %81 ], [ %212, %211 ]
  %87 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !40
  switch i32 %88, label %211 [
    i32 4, label %89
    i32 29, label %200
    i32 6, label %116
    i32 7, label %131
    i32 25, label %146
    i32 30, label %157
    i32 8, label %172
    i32 10, label %172
    i32 11, label %172
    i32 12, label %172
    i32 13, label %172
    i32 14, label %172
    i32 15, label %172
    i32 17, label %172
    i32 18, label %172
    i32 19, label %172
    i32 20, label %172
    i32 16, label %172
    i32 21, label %172
    i32 22, label %172
    i32 23, label %172
    i32 24, label %172
    i32 27, label %189
  ]

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.Scene, ptr %91, i64 0, i32 15
  %93 = load i16, ptr %92, align 4, !tbaa !61
  br i1 %82, label %94, label %96

94:                                               ; preds = %89
  %95 = xor i16 %93, 1
  br label %101

96:                                               ; preds = %89
  br i1 %83, label %97, label %99

97:                                               ; preds = %96
  %98 = or i16 %93, 1
  br label %101

99:                                               ; preds = %96
  %100 = and i16 %93, -2
  br label %101

101:                                              ; preds = %97, %99, %94
  %102 = phi i16 [ %98, %97 ], [ %100, %99 ], [ %95, %94 ]
  store i16 %102, ptr %92, align 4, !tbaa !61
  %103 = getelementptr inbounds %struct.Scene, ptr %91, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !82
  %105 = icmp eq ptr %104, null
  br i1 %105, label %211, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.Scene, ptr %91, i64 0, i32 15
  %108 = load i16, ptr %107, align 4, !tbaa !61
  br i1 %82, label %109, label %111

109:                                              ; preds = %106
  %110 = xor i16 %108, 16384
  store i16 %110, ptr %107, align 4, !tbaa !61
  br label %211

111:                                              ; preds = %106
  br i1 %84, label %112, label %114

112:                                              ; preds = %111
  %113 = or i16 %108, 16384
  store i16 %113, ptr %107, align 4, !tbaa !61
  br label %211

114:                                              ; preds = %111
  %115 = and i16 %108, -16385
  store i16 %115, ptr %107, align 4, !tbaa !61
  br label %211

116:                                              ; preds = %85
  %117 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !44
  %119 = getelementptr inbounds %struct.bActionGroup, ptr %118, i64 0, i32 3
  %120 = load i32, ptr %119, align 8, !tbaa !45
  switch i32 %78, label %125 [
    i32 2, label %121
    i32 1, label %123
  ]

121:                                              ; preds = %116
  %122 = xor i32 %120, 1
  br label %127

123:                                              ; preds = %116
  %124 = or i32 %120, 1
  br label %127

125:                                              ; preds = %116
  %126 = and i32 %120, -2
  br label %127

127:                                              ; preds = %123, %125, %121
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ], [ %122, %121 ]
  %129 = getelementptr inbounds %struct.bActionGroup, ptr %118, i64 0, i32 3
  %130 = and i32 %128, -3
  store i32 %130, ptr %129, align 8, !tbaa !45
  br label %211

131:                                              ; preds = %85
  %132 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !44
  %134 = getelementptr inbounds %struct.FCurve, ptr %133, i64 0, i32 9
  %135 = load i16, ptr %134, align 8, !tbaa !48
  switch i32 %78, label %140 [
    i32 2, label %136
    i32 1, label %138
  ]

136:                                              ; preds = %131
  %137 = xor i16 %135, 2
  br label %142

138:                                              ; preds = %131
  %139 = or i16 %135, 2
  br label %142

140:                                              ; preds = %131
  %141 = and i16 %135, -3
  br label %142

142:                                              ; preds = %138, %140, %136
  %143 = phi i16 [ %139, %138 ], [ %141, %140 ], [ %137, %136 ]
  %144 = getelementptr inbounds %struct.FCurve, ptr %133, i64 0, i32 9
  %145 = and i16 %143, -5
  store i16 %145, ptr %144, align 8, !tbaa !48
  br label %211

146:                                              ; preds = %85
  %147 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !44
  %149 = getelementptr inbounds %struct.KeyBlock, ptr %148, i64 0, i32 7
  %150 = load i16, ptr %149, align 2, !tbaa !83
  switch i32 %78, label %155 [
    i32 2, label %151
    i32 1, label %153
  ]

151:                                              ; preds = %146
  %152 = xor i16 %150, 2
  store i16 %152, ptr %149, align 2, !tbaa !83
  br label %211

153:                                              ; preds = %146
  %154 = or i16 %150, 2
  store i16 %154, ptr %149, align 2, !tbaa !83
  br label %211

155:                                              ; preds = %146
  %156 = and i16 %150, -3
  store i16 %156, ptr %149, align 2, !tbaa !83
  br label %211

157:                                              ; preds = %85
  %158 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !44
  %160 = getelementptr inbounds %struct.NlaTrack, ptr %159, i64 0, i32 3
  %161 = load i32, ptr %160, align 8, !tbaa !51
  switch i32 %78, label %166 [
    i32 2, label %162
    i32 1, label %164
  ]

162:                                              ; preds = %157
  %163 = xor i32 %161, 2
  br label %168

164:                                              ; preds = %157
  %165 = or i32 %161, 2
  br label %168

166:                                              ; preds = %157
  %167 = and i32 %161, -3
  br label %168

168:                                              ; preds = %164, %166, %162
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ], [ %163, %162 ]
  %170 = getelementptr inbounds %struct.NlaTrack, ptr %159, i64 0, i32 3
  %171 = and i32 %169, -2
  store i32 %171, ptr %170, align 8, !tbaa !51
  br label %211

172:                                              ; preds = %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85
  %173 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 10
  %174 = load ptr, ptr %173, align 8, !tbaa !53
  %175 = icmp eq ptr %174, null
  br i1 %175, label %211, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.AnimData, ptr %174, i64 0, i32 7
  %178 = load i32, ptr %177, align 8, !tbaa !54
  switch i32 %78, label %183 [
    i32 2, label %179
    i32 1, label %181
  ]

179:                                              ; preds = %176
  %180 = xor i32 %178, 16384
  br label %185

181:                                              ; preds = %176
  %182 = or i32 %178, 16384
  br label %185

183:                                              ; preds = %176
  %184 = and i32 %178, -16385
  br label %185

185:                                              ; preds = %181, %183, %179
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ], [ %180, %179 ]
  %187 = getelementptr inbounds %struct.AnimData, ptr %174, i64 0, i32 7
  %188 = and i32 %186, -32769
  store i32 %188, ptr %187, align 8, !tbaa !54
  br label %211

189:                                              ; preds = %85
  %190 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !44
  %192 = getelementptr inbounds %struct.bGPDlayer, ptr %191, i64 0, i32 4
  %193 = load i32, ptr %192, align 8, !tbaa !85
  switch i32 %78, label %198 [
    i32 2, label %194
    i32 1, label %196
  ]

194:                                              ; preds = %189
  %195 = xor i32 %193, 32
  store i32 %195, ptr %192, align 8, !tbaa !85
  br label %211

196:                                              ; preds = %189
  %197 = or i32 %193, 32
  store i32 %197, ptr %192, align 8, !tbaa !85
  br label %211

198:                                              ; preds = %189
  %199 = and i32 %193, -33
  store i32 %199, ptr %192, align 8, !tbaa !85
  br label %211

200:                                              ; preds = %85
  %201 = getelementptr inbounds %struct.bAnimListElem, ptr %86, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !44
  %203 = getelementptr inbounds %struct.MaskLayer, ptr %202, i64 0, i32 12
  %204 = load i8, ptr %203, align 2, !tbaa !87
  switch i32 %78, label %209 [
    i32 2, label %205
    i32 1, label %207
  ]

205:                                              ; preds = %200
  %206 = xor i8 %204, 32
  store i8 %206, ptr %203, align 2, !tbaa !87
  br label %211

207:                                              ; preds = %200
  %208 = or i8 %204, 32
  store i8 %208, ptr %203, align 2, !tbaa !87
  br label %211

209:                                              ; preds = %200
  %210 = and i8 %204, -33
  store i8 %210, ptr %203, align 2, !tbaa !87
  br label %211

211:                                              ; preds = %205, %209, %207, %194, %198, %196, %151, %155, %153, %101, %112, %114, %109, %127, %142, %168, %85, %185, %172
  %212 = load ptr, ptr %86, align 8, !tbaa !39
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %85, !llvm.loop !89

214:                                              ; preds = %211, %77
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_flush_setting_anim_channels(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %109, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %1, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %109, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 9
  br label %15

15:                                               ; preds = %10, %30
  %16 = phi ptr [ %8, %10 ], [ %31, %30 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, %12
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !40
  %23 = load i32, ptr %13, align 8, !tbaa !40
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  %28 = load ptr, ptr %14, align 8, !tbaa !90
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %15, %20, %25
  %31 = load ptr, ptr %16, align 8, !tbaa !91
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15, !llvm.loop !92

33:                                               ; preds = %25, %30
  %34 = phi ptr [ null, %30 ], [ %16, %25 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.113)
  br label %109

38:                                               ; preds = %33
  %39 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %2) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %50

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.bAnimChannelType, ptr %39, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !93
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call signext i16 %45(ptr noundef %0, ptr noundef %2) #9
  %49 = sext i16 %48 to i32
  br label %50

50:                                               ; preds = %47, %43, %41
  %51 = phi i32 [ 0, %41 ], [ %49, %47 ], [ 0, %43 ]
  br i1 %40, label %109, label %52

52:                                               ; preds = %50
  %53 = icmp eq i32 %3, 4
  %54 = icmp ne i32 %4, 0
  %55 = and i1 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = icmp ne i32 %3, 4
  %58 = icmp eq i32 %4, 0
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %85
  %62 = phi i32 [ %87, %85 ], [ %51, %60 ]
  %63 = phi ptr [ %65, %85 ], [ %34, %60 ]
  %64 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !95
  %66 = icmp eq ptr %65, null
  br i1 %66, label %88, label %67

67:                                               ; preds = %61
  %68 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %65) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.bAnimChannelType, ptr %68, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !93
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = tail call signext i16 %72(ptr noundef %0, ptr noundef nonnull %65) #9
  %76 = sext i16 %75 to i32
  br label %77

77:                                               ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ 0, %70 ]
  %79 = icmp slt i32 %78, %62
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  tail call void @ANIM_channel_setting_set(ptr noundef %0, ptr noundef nonnull %65, i32 noundef %3, i32 noundef %4) #9
  br label %85

81:                                               ; preds = %77
  %82 = icmp eq i32 %62, 0
  %83 = icmp sgt i32 %78, 0
  %84 = and i1 %82, %83
  br label %85

85:                                               ; preds = %81, %80, %67
  %86 = phi i1 [ false, %67 ], [ false, %80 ], [ %84, %81 ]
  %87 = phi i32 [ %62, %67 ], [ %78, %80 ], [ %62, %81 ]
  br i1 %86, label %88, label %61, !llvm.loop !96

88:                                               ; preds = %85, %61, %56
  %89 = load ptr, ptr %34, align 8, !tbaa !91
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %94

91:                                               ; preds = %94, %108
  %92 = load ptr, ptr %95, align 8, !tbaa !91
  %93 = icmp eq ptr %92, null
  br i1 %93, label %109, label %94

94:                                               ; preds = %88, %91
  %95 = phi ptr [ %92, %91 ], [ %89, %88 ]
  %96 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %95) #9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %91, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.bAnimChannelType, ptr %96, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !93
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = tail call signext i16 %100(ptr noundef %0, ptr noundef nonnull %95) #9
  %104 = sext i16 %103 to i32
  br label %105

105:                                              ; preds = %98, %102
  %106 = phi i32 [ %104, %102 ], [ 0, %98 ]
  %107 = icmp sgt i32 %106, %51
  br i1 %107, label %108, label %109, !llvm.loop !97

108:                                              ; preds = %105
  tail call void @ANIM_channel_setting_set(ptr noundef %0, ptr noundef nonnull %95, i32 noundef %3, i32 noundef %4) #9
  br label %91

109:                                              ; preds = %91, %105, %88, %5, %7, %50, %36
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #3

declare void @ANIM_channel_setting_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_fcurve_delete_from_animdata(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !98
  %12 = icmp eq i16 %11, 6
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  tail call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef %2) #9
  br label %40

15:                                               ; preds = %9, %7
  %16 = load ptr, ptr %1, align 8, !tbaa !100
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  tail call void @action_groups_remove_channel(ptr noundef nonnull %16, ptr noundef %2) #9
  %23 = getelementptr inbounds %struct.bActionGroup, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 3
  tail call void @BLI_freelinkN(ptr noundef nonnull %27, ptr noundef nonnull %20) #9
  br label %30

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %29, ptr noundef %2) #9
  br label %30

30:                                               ; preds = %22, %26, %28
  %31 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !54
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @id_us_min(ptr noundef nonnull %16) #9
  store ptr null, ptr %1, align 8, !tbaa !100
  br label %40

40:                                               ; preds = %30, %34, %39, %15, %13
  tail call void @free_fcurve(ptr noundef %2) #9
  br label %41

41:                                               ; preds = %3, %40
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @free_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_animchannels() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_select_all_toggle) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_select_border) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_click) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_rename) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_find) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_setting_enable) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_setting_disable) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_setting_toggle) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_delete) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_editable_toggle) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_move) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_expand) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_collapse) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_visibility_toggle) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_visibility_set) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_fcurves_enable) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_clean_empty) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_group) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_ungroup) #9
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_select_all_toggle(ptr nocapture noundef %0) #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_deselectall_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_nla_tweakmode_off, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_select_border(ptr noundef %0) #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_borderselect_exec, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_nla_tweakmode_off, ptr %8, align 8, !tbaa !108
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !109
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_click(ptr nocapture noundef %0) #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @animchannels_mouseclick_invoke, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.28) #9
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !110
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28) #9
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_rename(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @animchannels_rename_invoke, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_find(ptr nocapture noundef %0) #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @animchannels_find_invoke, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_find_exec, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animchannels_find_poll, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.45) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_setting_enable(ptr nocapture noundef %0) #0 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_setflag_exec, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_animchannel_setflag_types, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #9
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !110
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @prop_animchannel_settings_types, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.28) #9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_setting_disable(ptr nocapture noundef %0) #0 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_setflag_exec, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_animchannel_setflag_types, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #9
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !110
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @prop_animchannel_settings_types, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.28) #9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_setting_toggle(ptr nocapture noundef %0) #0 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_setflag_exec, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_animchannel_setflag_types, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #9
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !110
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @prop_animchannel_settings_types, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.28) #9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_delete(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.67, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_delete_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_editable_toggle(ptr nocapture noundef %0) #0 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_setflag_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_animchannel_setflag_types, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !110
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.50, ptr noundef nonnull @prop_animchannel_settings_types, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.28) #9
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 524288) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_rearrange_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_nla_tweakmode_off, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_animchannel_rearrange_types, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.28) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_expand(ptr nocapture noundef %0) #0 {
  store ptr @.str.88, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.89, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_expand_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_collapse(ptr nocapture noundef %0) #0 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.93, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_collapse_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.94) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_visibility_toggle(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.96, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_visibility_toggle_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_visibility_set(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.97, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.98, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_visibility_set_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_fcurves_enable(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.100, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.101, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_enable_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animchannels_enable_poll, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_clean_empty(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.102, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.104, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_clean_empty_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_nla_tweakmode_off, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_channels_group(ptr nocapture noundef %0) #0 {
  store ptr @.str.105, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_group_exec, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animchannels_grouping_poll, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef 64, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_ungroup(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.111, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.112, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_ungroup_exec, ptr %4, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animchannels_grouping_poll, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_animchannels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0) #9
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 1) #9
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef 1) #9
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0) #9
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef 1) #9
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 20483, i32 noundef -1, i32 noundef 0, i32 noundef 0) #9
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 119, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 119, i32 noundef 1, i32 noundef 3, i32 noundef 0) #9
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 119, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  tail call void @RNA_boolean_set(ptr noundef %29, ptr noundef nonnull @.str.18, i32 noundef 0) #9
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %30, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !115
  tail call void @RNA_boolean_set(ptr noundef %32, ptr noundef nonnull @.str.18, i32 noundef 0) #9
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !115
  tail call void @RNA_enum_set(ptr noundef %35, ptr noundef nonnull @.str.20, i32 noundef -1) #9
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  tail call void @RNA_enum_set(ptr noundef %38, ptr noundef nonnull @.str.20, i32 noundef 1) #9
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 168, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %39, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !115
  tail call void @RNA_enum_set(ptr noundef %41, ptr noundef nonnull @.str.20, i32 noundef -2) #9
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 169, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %42, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !115
  tail call void @RNA_enum_set(ptr noundef %44, ptr noundef nonnull @.str.20, i32 noundef 2) #9
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 103, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 118, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.9) #9
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %3, align 8, !tbaa !119
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !98
  %14 = sext i16 %13 to i32
  br i1 %10, label %16, label %15

15:                                               ; preds = %6
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %3, ptr noundef %11, i32 noundef %14, i8 noundef zeroext 0, i32 noundef 3)
  br label %17

16:                                               ; preds = %6
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %3, ptr noundef %11, i32 noundef %14, i8 noundef zeroext 1, i32 noundef 1)
  br label %17

17:                                               ; preds = %16, %15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599622, ptr noundef null) #9
  br label %18

18:                                               ; preds = %2, %17
  %19 = phi i32 [ 4, %17 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @animedit_poll_channels_nla_tweakmode_off(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = icmp eq ptr %2, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !120
  switch i8 %10, label %19 [
    i8 13, label %11
    i8 2, label %18
    i8 12, label %18
  ]

11:                                               ; preds = %8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %15 = load i16, ptr %14, align 4, !tbaa !61
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8, %8, %13
  br label %19

19:                                               ; preds = %8, %11, %13, %1, %5, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %5 ], [ 0, %1 ], [ 0, %13 ], [ 0, %11 ], [ 0, %8 ]
  ret i32 %20
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.rctf, align 4
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %143, label %9

9:                                                ; preds = %2
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %6) #9
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.31) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !117
  %14 = call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.4) #9
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8, !tbaa !119
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !98
  %21 = sext i16 %20 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %18, i32 noundef %21, i8 noundef zeroext 1, i32 noundef 0)
  br label %22

22:                                               ; preds = %17, %9
  %23 = icmp eq i32 %12, 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !123
  %28 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %29 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %30 = load i16, ptr %29, align 8, !tbaa !98
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %32 = load i32, ptr %6, align 4, !tbaa !124
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !125
  %36 = add nsw i32 %35, 2
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %28, float noundef %33, float noundef %37, ptr noundef nonnull %4, ptr noundef nonnull %38) #9
  %39 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !126
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !127
  %44 = add nsw i32 %43, -2
  %45 = sitofp i32 %44 to float
  %46 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %28, float noundef %41, float noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %47) #9
  %48 = load ptr, ptr %5, align 8, !tbaa !119
  %49 = load i16, ptr %29, align 8, !tbaa !98
  %50 = sext i16 %49 to i32
  %51 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 11, ptr noundef %48, i32 noundef %50) #9
  %52 = load ptr, ptr %3, align 8, !tbaa !39
  %53 = icmp eq ptr %52, null
  br i1 %53, label %142, label %54

54:                                               ; preds = %22
  %55 = icmp eq i16 %30, 7
  %56 = sitofp i16 %31 to float
  %57 = fmul float %56, 0xBFE99999A0000000
  %58 = select i1 %55, float 0.000000e+00, float %57
  %59 = icmp eq ptr %25, null
  %60 = getelementptr inbounds %struct.SpaceNla, ptr %25, i64 0, i32 7
  %61 = zext i1 %23 to i32
  %62 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 8
  br label %63

63:                                               ; preds = %54, %139
  %64 = phi ptr [ %52, %54 ], [ %140, %139 ]
  %65 = phi float [ %58, %54 ], [ %88, %139 ]
  %66 = load i16, ptr %29, align 8, !tbaa !98
  %67 = icmp eq i16 %66, 7
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  br i1 %59, label %73, label %69

69:                                               ; preds = %68
  %70 = load i16, ptr %60, align 2, !tbaa !128
  %71 = and i16 %70, 32
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %68
  br label %74

74:                                               ; preds = %69, %73
  %75 = phi float [ 0x3FF3333340000000, %73 ], [ 0x3FE99999A0000000, %69 ]
  %76 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !131
  %77 = sitofp i16 %76 to float
  %78 = fmul float %75, %77
  %79 = sitofp i16 %76 to float
  %80 = call float @llvm.fmuladd.f32(float %79, float 0x3FB99999A0000000, float %78)
  br label %86

81:                                               ; preds = %63
  %82 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !131
  %83 = sitofp i16 %82 to float
  %84 = fmul float %83, 0x3FB99999A0000000
  %85 = call float @llvm.fmuladd.f32(float %83, float 0x3FE99999A0000000, float %84)
  br label %86

86:                                               ; preds = %81, %74
  %87 = phi float [ %80, %74 ], [ %85, %81 ]
  %88 = fsub float %65, %87
  %89 = load float, ptr %38, align 4, !tbaa !135
  %90 = fcmp olt float %65, %89
  %91 = load float, ptr %47, align 4
  %92 = fcmp ogt float %88, %91
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %139, label %94

94:                                               ; preds = %86
  call void @ANIM_channel_setting_set(ptr noundef nonnull %5, ptr noundef nonnull %64, i32 noundef 0, i32 noundef %61) #9
  %95 = getelementptr inbounds %struct.bAnimListElem, ptr %64, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !40
  switch i32 %96, label %139 [
    i32 6, label %97
    i32 30, label %130
  ]

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.bAnimListElem, ptr %64, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !44
  %100 = load ptr, ptr %62, align 8, !tbaa !136
  %101 = getelementptr inbounds %struct.bDopeSheet, ptr %100, i64 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !137
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.bAnimListElem, ptr %64, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !90
  %108 = icmp eq ptr %107, null
  br i1 %108, label %126, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 4
  %111 = load i16, ptr %110, align 8, !tbaa !139
  %112 = icmp eq i16 %111, 16975
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 3
  %115 = load i16, ptr %114, align 8, !tbaa !140
  %116 = icmp eq i16 %115, 25
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 18
  %119 = load ptr, ptr %118, align 8, !tbaa !143
  %120 = getelementptr inbounds %struct.bActionGroup, ptr %99, i64 0, i32 5
  %121 = call ptr @BKE_pose_channel_find_name(ptr noundef %119, ptr noundef nonnull %120) #9
  %122 = getelementptr inbounds %struct.bActionGroup, ptr %99, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !45
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  call void @ED_pose_bone_select(ptr noundef nonnull %107, ptr noundef %121, i8 noundef zeroext %125) #9
  br label %126

126:                                              ; preds = %117, %113, %109, %105, %97
  %127 = getelementptr inbounds %struct.bActionGroup, ptr %99, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !45
  %129 = and i32 %128, -3
  store i32 %129, ptr %127, align 8, !tbaa !45
  br label %139

130:                                              ; preds = %94
  %131 = getelementptr inbounds %struct.bAnimListElem, ptr %64, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !44
  %133 = getelementptr inbounds %struct.NlaTrack, ptr %132, i64 0, i32 3
  %134 = load i32, ptr %133, align 8, !tbaa !51
  br i1 %23, label %135, label %137

135:                                              ; preds = %130
  %136 = or i32 %134, 2
  store i32 %136, ptr %133, align 8, !tbaa !51
  br label %139

137:                                              ; preds = %130
  %138 = and i32 %134, -3
  store i32 %138, ptr %133, align 8, !tbaa !51
  br label %139

139:                                              ; preds = %137, %135, %126, %94, %86
  %140 = load ptr, ptr %64, align 8, !tbaa !39
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %63, !llvm.loop !144

142:                                              ; preds = %139, %22
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599622, ptr noundef null) #9
  br label %143

143:                                              ; preds = %2, %142
  %144 = phi i32 [ 4, %142 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #9
  ret i32 %144
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #3

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_pose_bone_select(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_mouseclick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %347, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.4) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load ptr, ptr %15, align 8, !tbaa !117
  %21 = call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.5) #9
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i16 1, i16 -1
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi i16 [ 8, %11 ], [ %23, %19 ]
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !145
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !145
  %31 = sitofp i32 %30 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %28, float noundef %31, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !131
  %33 = sext i16 %32 to i32
  %34 = mul nsw i32 %33, 10
  %35 = sitofp i32 %34 to float
  %36 = sitofp i16 %32 to float
  %37 = fmul float %36, 0x3FB99999A0000000
  %38 = call float @llvm.fmuladd.f32(float %36, float 0x3FE99999A0000000, float %37)
  %39 = fmul float %36, 0x3FD99999A0000000
  %40 = load float, ptr %7, align 4, !tbaa !146
  %41 = load float, ptr %8, align 4, !tbaa !146
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %14, float noundef %35, float noundef %38, float noundef 0.000000e+00, float noundef %39, float noundef %40, float noundef %41, ptr noundef null, ptr noundef nonnull %6) #9
  %42 = load i32, ptr %6, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr %5, align 8, !tbaa !119
  %44 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %45 = load i16, ptr %44, align 8, !tbaa !98
  %46 = sext i16 %45 to i32
  %47 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %43, i32 noundef %46) #9
  %48 = call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %42) #9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %24
  %51 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !147
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %345, label %54

54:                                               ; preds = %50
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %42)
  br label %345

56:                                               ; preds = %24
  %57 = icmp eq i16 %25, -1
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !40
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %62, label %345

62:                                               ; preds = %58, %56
  %63 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !40
  switch i32 %64, label %339 [
    i32 4, label %65
    i32 5, label %86
    i32 8, label %151
    i32 10, label %151
    i32 11, label %151
    i32 12, label %151
    i32 13, label %151
    i32 14, label %151
    i32 15, label %151
    i32 17, label %151
    i32 18, label %151
    i32 19, label %151
    i32 20, label %151
    i32 16, label %151
    i32 21, label %151
    i32 22, label %151
    i32 23, label %151
    i32 24, label %151
    i32 6, label %179
    i32 7, label %258
    i32 25, label %282
    i32 26, label %297
    i32 27, label %303
    i32 28, label %318
    i32 29, label %324
  ]

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !44
  %68 = getelementptr inbounds %struct.Scene, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !82
  %70 = icmp eq i16 %25, 8
  %71 = getelementptr inbounds %struct.Scene, ptr %67, i64 0, i32 15
  %72 = load i16, ptr %71, align 4, !tbaa !61
  %73 = icmp eq ptr %69, null
  br i1 %70, label %74, label %80

74:                                               ; preds = %65
  %75 = xor i16 %72, 1
  store i16 %75, ptr %71, align 4, !tbaa !61
  br i1 %73, label %345, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.AnimData, ptr %69, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !54
  %79 = xor i32 %78, 16384
  store i32 %79, ptr %77, align 8, !tbaa !54
  br label %345

80:                                               ; preds = %65
  %81 = or i16 %72, 1
  store i16 %81, ptr %71, align 4, !tbaa !61
  br i1 %73, label %345, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.AnimData, ptr %69, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !54
  %85 = or i32 %84, 16384
  store i32 %85, ptr %83, align 8, !tbaa !54
  br label %345

86:                                               ; preds = %62
  %87 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = getelementptr inbounds %struct.Base, ptr %88, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !149
  %91 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !151
  %93 = icmp eq i16 %25, 8
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.Base, ptr %88, i64 0, i32 4
  %96 = load i32, ptr %95, align 8, !tbaa !152
  %97 = xor i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !152
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 53
  store i16 %98, ptr %99, align 4, !tbaa !153
  %100 = icmp eq ptr %92, null
  br i1 %100, label %142, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.AnimData, ptr %92, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !54
  %104 = xor i32 %103, 16384
  store i32 %104, ptr %102, align 8, !tbaa !54
  br label %142

105:                                              ; preds = %86
  %106 = load ptr, ptr %5, align 8, !tbaa !119
  %107 = load ptr, ptr %106, align 8, !tbaa !154
  %108 = getelementptr inbounds %struct.Scene, ptr %107, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !39
  %110 = icmp eq ptr %109, null
  br i1 %110, label %130, label %111

111:                                              ; preds = %105, %127
  %112 = phi ptr [ %128, %127 ], [ %109, %105 ]
  %113 = getelementptr inbounds %struct.Base, ptr %112, i64 0, i32 4
  %114 = load i32, ptr %113, align 8, !tbaa !152
  %115 = and i32 %114, -2
  store i32 %115, ptr %113, align 8, !tbaa !152
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds %struct.Base, ptr %112, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !149
  %119 = getelementptr inbounds %struct.Object, ptr %118, i64 0, i32 53
  store i16 %116, ptr %119, align 4, !tbaa !153
  %120 = getelementptr inbounds %struct.Object, ptr %118, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !151
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.AnimData, ptr %121, i64 0, i32 7
  %125 = load i32, ptr %124, align 8, !tbaa !54
  %126 = and i32 %125, -49153
  store i32 %126, ptr %124, align 8, !tbaa !54
  br label %127

127:                                              ; preds = %123, %111
  %128 = load ptr, ptr %112, align 8, !tbaa !39
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %111, !llvm.loop !155

130:                                              ; preds = %127, %105
  %131 = getelementptr inbounds %struct.Base, ptr %88, i64 0, i32 4
  %132 = load i32, ptr %131, align 8, !tbaa !152
  %133 = or i32 %132, 1
  store i32 %133, ptr %131, align 8, !tbaa !152
  %134 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 53
  %135 = load i16, ptr %134, align 4, !tbaa !153
  %136 = or i16 %135, 1
  store i16 %136, ptr %134, align 4, !tbaa !153
  %137 = icmp eq ptr %92, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.AnimData, ptr %92, i64 0, i32 7
  %140 = load i32, ptr %139, align 8, !tbaa !54
  %141 = or i32 %140, 16384
  store i32 %141, ptr %139, align 8, !tbaa !54
  br label %142

142:                                              ; preds = %138, %130, %101, %94
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef %88) #9
  %143 = icmp eq ptr %92, null
  br i1 %143, label %345, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.AnimData, ptr %92, i64 0, i32 7
  %146 = load i32, ptr %145, align 8, !tbaa !54
  %147 = and i32 %146, 16384
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %345, label %149

149:                                              ; preds = %144
  %150 = or i32 %146, 32768
  store i32 %150, ptr %145, align 8, !tbaa !54
  br label %345

151:                                              ; preds = %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62
  %152 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 10
  %153 = load ptr, ptr %152, align 8, !tbaa !53
  %154 = icmp eq ptr %153, null
  br i1 %154, label %345, label %155

155:                                              ; preds = %151
  %156 = icmp eq i16 %25, 8
  br i1 %156, label %157, label %161

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.AnimData, ptr %153, i64 0, i32 7
  %159 = load i32, ptr %158, align 8, !tbaa !54
  %160 = xor i32 %159, 16384
  store i32 %160, ptr %158, align 8, !tbaa !54
  br label %169

161:                                              ; preds = %155
  %162 = load ptr, ptr %5, align 8, !tbaa !119
  %163 = load i16, ptr %44, align 8, !tbaa !98
  %164 = sext i16 %163 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %162, i32 noundef %164, i8 noundef zeroext 0, i32 noundef 0)
  %165 = load ptr, ptr %152, align 8, !tbaa !53
  %166 = getelementptr inbounds %struct.AnimData, ptr %165, i64 0, i32 7
  %167 = load i32, ptr %166, align 8, !tbaa !54
  %168 = or i32 %167, 16384
  store i32 %168, ptr %166, align 8, !tbaa !54
  br label %169

169:                                              ; preds = %161, %157
  %170 = load ptr, ptr %152, align 8, !tbaa !53
  %171 = icmp eq ptr %170, null
  br i1 %171, label %345, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.AnimData, ptr %170, i64 0, i32 7
  %174 = load i32, ptr %173, align 8, !tbaa !54
  %175 = and i32 %174, 16384
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %345, label %177

177:                                              ; preds = %172
  %178 = or i32 %174, 32768
  store i32 %178, ptr %173, align 8, !tbaa !54
  br label %345

179:                                              ; preds = %62
  %180 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !44
  %182 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 8
  %183 = load ptr, ptr %182, align 8, !tbaa !136
  %184 = getelementptr inbounds %struct.bDopeSheet, ptr %183, i64 0, i32 4
  %185 = load i32, ptr %184, align 8, !tbaa !137
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 9
  %190 = load ptr, ptr %189, align 8, !tbaa !90
  %191 = icmp eq ptr %190, null
  br i1 %191, label %205, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.ID, ptr %190, i64 0, i32 4
  %194 = load i16, ptr %193, align 8, !tbaa !139
  %195 = icmp eq i16 %194, 16975
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.Object, ptr %190, i64 0, i32 3
  %198 = load i16, ptr %197, align 8, !tbaa !140
  %199 = icmp eq i16 %198, 25
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.Object, ptr %190, i64 0, i32 18
  %202 = load ptr, ptr %201, align 8, !tbaa !143
  %203 = getelementptr inbounds %struct.bActionGroup, ptr %181, i64 0, i32 5
  %204 = call ptr @BKE_pose_channel_find_name(ptr noundef %202, ptr noundef nonnull %203) #9
  br label %205

205:                                              ; preds = %200, %196, %192, %188, %179
  %206 = phi ptr [ %204, %200 ], [ null, %196 ], [ null, %192 ], [ null, %188 ], [ null, %179 ]
  %207 = phi ptr [ %190, %200 ], [ %190, %196 ], [ null, %192 ], [ null, %188 ], [ null, %179 ]
  %208 = icmp eq i16 %25, 8
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.bActionGroup, ptr %181, i64 0, i32 3
  %211 = load i32, ptr %210, align 8, !tbaa !45
  %212 = xor i32 %211, 1
  store i32 %212, ptr %210, align 8, !tbaa !45
  br label %245

213:                                              ; preds = %205
  %214 = load ptr, ptr %5, align 8, !tbaa !119
  %215 = load i16, ptr %44, align 8, !tbaa !98
  %216 = sext i16 %215 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %214, i32 noundef %216, i8 noundef zeroext 0, i32 noundef 0)
  %217 = icmp eq ptr %206, null
  br i1 %57, label %218, label %239

218:                                              ; preds = %213
  br i1 %217, label %220, label %219

219:                                              ; preds = %218
  call void @ED_pose_de_selectall(ptr noundef %207, i32 noundef 2, i8 noundef zeroext 0) #9
  br label %220

220:                                              ; preds = %219, %218
  %221 = getelementptr inbounds %struct.bActionGroup, ptr %181, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !39
  %223 = icmp eq ptr %222, null
  br i1 %223, label %235, label %224

224:                                              ; preds = %220, %229
  %225 = phi ptr [ %233, %229 ], [ %222, %220 ]
  %226 = getelementptr inbounds %struct.FCurve, ptr %225, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !101
  %228 = icmp eq ptr %227, %181
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.FCurve, ptr %225, i64 0, i32 9
  %231 = load i16, ptr %230, align 8, !tbaa !48
  %232 = or i16 %231, 2
  store i16 %232, ptr %230, align 8, !tbaa !48
  %233 = load ptr, ptr %225, align 8, !tbaa !39
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %224, !llvm.loop !156

235:                                              ; preds = %229, %224, %220
  %236 = getelementptr inbounds %struct.bActionGroup, ptr %181, i64 0, i32 3
  %237 = load i32, ptr %236, align 8, !tbaa !45
  %238 = or i32 %237, 1
  store i32 %238, ptr %236, align 8, !tbaa !45
  br label %245

239:                                              ; preds = %213
  br i1 %217, label %241, label %240

240:                                              ; preds = %239
  call void @ED_pose_de_selectall(ptr noundef %207, i32 noundef 2, i8 noundef zeroext 0) #9
  br label %241

241:                                              ; preds = %240, %239
  %242 = getelementptr inbounds %struct.bActionGroup, ptr %181, i64 0, i32 3
  %243 = load i32, ptr %242, align 8, !tbaa !45
  %244 = or i32 %243, 1
  store i32 %244, ptr %242, align 8, !tbaa !45
  br label %245

245:                                              ; preds = %241, %235, %209
  %246 = getelementptr inbounds %struct.bActionGroup, ptr %181, i64 0, i32 3
  %247 = load i32, ptr %246, align 8, !tbaa !45
  %248 = and i32 %247, 1
  %249 = icmp eq i32 %248, 0
  %250 = load ptr, ptr %5, align 8, !tbaa !119
  %251 = load i16, ptr %44, align 8, !tbaa !98
  %252 = sext i16 %251 to i32
  %253 = icmp eq ptr %206, null
  br i1 %249, label %256, label %254

254:                                              ; preds = %245
  call void @ANIM_set_active_channel(ptr noundef nonnull %5, ptr noundef %250, i32 noundef %252, i32 noundef 11, ptr noundef %181, i32 noundef 6)
  br i1 %253, label %345, label %255

255:                                              ; preds = %254
  call void @ED_pose_bone_select(ptr noundef %207, ptr noundef nonnull %206, i8 noundef zeroext 1) #9
  br label %345

256:                                              ; preds = %245
  call void @ANIM_set_active_channel(ptr noundef nonnull %5, ptr noundef %250, i32 noundef %252, i32 noundef 11, ptr noundef null, i32 noundef 6)
  br i1 %253, label %345, label %257

257:                                              ; preds = %256
  call void @ED_pose_bone_select(ptr noundef %207, ptr noundef nonnull %206, i8 noundef zeroext 0) #9
  br label %345

258:                                              ; preds = %62
  %259 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !44
  %261 = icmp eq i16 %25, 8
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.FCurve, ptr %260, i64 0, i32 9
  %264 = load i16, ptr %263, align 8, !tbaa !48
  %265 = xor i16 %264, 2
  store i16 %265, ptr %263, align 8, !tbaa !48
  br label %273

266:                                              ; preds = %258
  %267 = load ptr, ptr %5, align 8, !tbaa !119
  %268 = load i16, ptr %44, align 8, !tbaa !98
  %269 = sext i16 %268 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %267, i32 noundef %269, i8 noundef zeroext 0, i32 noundef 0)
  %270 = getelementptr inbounds %struct.FCurve, ptr %260, i64 0, i32 9
  %271 = load i16, ptr %270, align 8, !tbaa !48
  %272 = or i16 %271, 2
  store i16 %272, ptr %270, align 8, !tbaa !48
  br label %273

273:                                              ; preds = %266, %262
  %274 = getelementptr inbounds %struct.FCurve, ptr %260, i64 0, i32 9
  %275 = load i16, ptr %274, align 8, !tbaa !48
  %276 = and i16 %275, 2
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %345, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr %5, align 8, !tbaa !119
  %280 = load i16, ptr %44, align 8, !tbaa !98
  %281 = sext i16 %280 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %5, ptr noundef %279, i32 noundef %281, i32 noundef 11, ptr noundef %260, i32 noundef 7)
  br label %345

282:                                              ; preds = %62
  %283 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !44
  %285 = icmp eq i16 %25, 8
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.KeyBlock, ptr %284, i64 0, i32 7
  %288 = load i16, ptr %287, align 2, !tbaa !83
  %289 = xor i16 %288, 2
  store i16 %289, ptr %287, align 2, !tbaa !83
  br label %345

290:                                              ; preds = %282
  %291 = load ptr, ptr %5, align 8, !tbaa !119
  %292 = load i16, ptr %44, align 8, !tbaa !98
  %293 = sext i16 %292 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %291, i32 noundef %293, i8 noundef zeroext 0, i32 noundef 0)
  %294 = getelementptr inbounds %struct.KeyBlock, ptr %284, i64 0, i32 7
  %295 = load i16, ptr %294, align 2, !tbaa !83
  %296 = or i16 %295, 2
  store i16 %296, ptr %294, align 2, !tbaa !83
  br label %345

297:                                              ; preds = %62
  %298 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !44
  %300 = getelementptr inbounds %struct.bGPdata, ptr %299, i64 0, i32 2
  %301 = load i32, ptr %300, align 8, !tbaa !157
  %302 = xor i32 %301, 4
  store i32 %302, ptr %300, align 8, !tbaa !157
  br label %345

303:                                              ; preds = %62
  %304 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !44
  %306 = icmp eq i16 %25, 8
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.bGPDlayer, ptr %305, i64 0, i32 4
  %309 = load i32, ptr %308, align 8, !tbaa !85
  %310 = xor i32 %309, 32
  store i32 %310, ptr %308, align 8, !tbaa !85
  br label %345

311:                                              ; preds = %303
  %312 = load ptr, ptr %5, align 8, !tbaa !119
  %313 = load i16, ptr %44, align 8, !tbaa !98
  %314 = sext i16 %313 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %312, i32 noundef %314, i8 noundef zeroext 0, i32 noundef 0)
  %315 = getelementptr inbounds %struct.bGPDlayer, ptr %305, i64 0, i32 4
  %316 = load i32, ptr %315, align 8, !tbaa !85
  %317 = or i32 %316, 32
  store i32 %317, ptr %315, align 8, !tbaa !85
  br label %345

318:                                              ; preds = %62
  %319 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !44
  %321 = getelementptr inbounds %struct.Mask, ptr %320, i64 0, i32 7
  %322 = load i32, ptr %321, align 8, !tbaa !159
  %323 = xor i32 %322, 16
  store i32 %323, ptr %321, align 8, !tbaa !159
  br label %345

324:                                              ; preds = %62
  %325 = getelementptr inbounds %struct.bAnimListElem, ptr %48, i64 0, i32 2
  %326 = load ptr, ptr %325, align 8, !tbaa !44
  %327 = icmp eq i16 %25, 8
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.MaskLayer, ptr %326, i64 0, i32 12
  %330 = load i8, ptr %329, align 2, !tbaa !87
  %331 = xor i8 %330, 32
  store i8 %331, ptr %329, align 2, !tbaa !87
  br label %345

332:                                              ; preds = %324
  %333 = load ptr, ptr %5, align 8, !tbaa !119
  %334 = load i16, ptr %44, align 8, !tbaa !98
  %335 = sext i16 %334 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %333, i32 noundef %335, i8 noundef zeroext 0, i32 noundef 0)
  %336 = getelementptr inbounds %struct.MaskLayer, ptr %326, i64 0, i32 12
  %337 = load i8, ptr %336, align 2, !tbaa !87
  %338 = or i8 %337, 32
  store i8 %338, ptr %336, align 2, !tbaa !87
  br label %345

339:                                              ; preds = %62
  %340 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !147
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %339
  %344 = call i32 @puts(ptr nonnull dereferenceable(1) @str.114)
  br label %345

345:                                              ; preds = %74, %76, %80, %82, %142, %144, %149, %151, %169, %172, %177, %254, %255, %256, %257, %273, %278, %286, %290, %297, %307, %311, %318, %328, %332, %339, %343, %58, %50, %54
  %346 = phi i32 [ 234881024, %54 ], [ 234881024, %50 ], [ 234881024, %58 ], [ 234881024, %343 ], [ 234881024, %339 ], [ 239599617, %318 ], [ 239599617, %297 ], [ 239599622, %80 ], [ 239599622, %82 ], [ 239599622, %74 ], [ 239599622, %76 ], [ 239599622, %149 ], [ 239599622, %144 ], [ 239599622, %142 ], [ 239599622, %169 ], [ 239599622, %172 ], [ 239599622, %177 ], [ 239599622, %151 ], [ 239599622, %256 ], [ 239599622, %257 ], [ 239599622, %254 ], [ 239599622, %255 ], [ 239599622, %278 ], [ 239599622, %273 ], [ 239599622, %290 ], [ 239599622, %286 ], [ 239599617, %311 ], [ 239599617, %307 ], [ 239599617, %332 ], [ 239599617, %328 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %346, ptr noundef null) #9
  br label %347

347:                                              ; preds = %3, %345
  %348 = phi i32 [ 4, %345 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #9
  ret i32 %348
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @animedit_poll_channels_active(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !120
  switch i8 %9, label %10 [
    i8 12, label %11
    i8 2, label %11
    i8 13, label %11
  ]

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7, %7, %7, %1, %4
  %12 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 1, %7 ], [ 0, %10 ], [ 1, %7 ], [ 1, %7 ]
  ret i32 %12
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_pose_de_selectall(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_rename_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.bAnimContext, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  %11 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %7) #9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %104, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !145
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !145
  %22 = sitofp i32 %21 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %19, float noundef %22, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 1
  %24 = load i16, ptr %23, align 8, !tbaa !98
  %25 = icmp eq i16 %24, 7
  br i1 %25, label %26, label %57

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !131
  %30 = sext i16 %29 to i32
  %31 = mul nsw i32 %30, 10
  %32 = sitofp i32 %31 to float
  %33 = icmp eq ptr %28, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.SpaceNla, ptr %28, i64 0, i32 7
  %36 = load i16, ptr %35, align 2, !tbaa !128
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %26
  br label %40

40:                                               ; preds = %34, %39
  %41 = phi float [ 0x3FF3333340000000, %39 ], [ 0x3FE99999A0000000, %34 ]
  %42 = sitofp i16 %29 to float
  %43 = fmul float %41, %42
  %44 = sitofp i16 %29 to float
  %45 = call float @llvm.fmuladd.f32(float %44, float 0x3FB99999A0000000, float %43)
  br i1 %33, label %51, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.SpaceNla, ptr %28, i64 0, i32 7
  %48 = load i16, ptr %47, align 2, !tbaa !128
  %49 = and i16 %48, 32
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %46, %51
  %53 = phi float [ 0x3FE3333340000000, %51 ], [ 0x3FD99999A0000000, %46 ]
  %54 = fmul float %53, %44
  %55 = load float, ptr %9, align 4, !tbaa !146
  %56 = load float, ptr %10, align 4, !tbaa !146
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %16, float noundef %32, float noundef %45, float noundef 0.000000e+00, float noundef %54, float noundef %55, float noundef %56, ptr noundef null, ptr noundef nonnull %8) #9
  br label %68

57:                                               ; preds = %13
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !131
  %59 = sext i16 %58 to i32
  %60 = mul nsw i32 %59, 10
  %61 = sitofp i32 %60 to float
  %62 = sitofp i16 %58 to float
  %63 = fmul float %62, 0x3FB99999A0000000
  %64 = call float @llvm.fmuladd.f32(float %62, float 0x3FE99999A0000000, float %63)
  %65 = fmul float %62, 0x3FD99999A0000000
  %66 = load float, ptr %9, align 4, !tbaa !146
  %67 = load float, ptr %10, align 4, !tbaa !146
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %16, float noundef %61, float noundef %64, float noundef 0.000000e+00, float noundef %65, float noundef %66, float noundef %67, ptr noundef null, ptr noundef nonnull %8) #9
  br label %68

68:                                               ; preds = %57, %52
  %69 = load i32, ptr %8, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %70 = load ptr, ptr %7, align 8, !tbaa !119
  %71 = load i16, ptr %23, align 8, !tbaa !98
  %72 = sext i16 %71 to i32
  %73 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %70, i32 noundef %72) #9
  %74 = call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %69) #9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !147
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %69)
  br label %82

82:                                               ; preds = %80, %76
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  br label %103

83:                                               ; preds = %68
  %84 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %74) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.bAnimChannelType, ptr %84, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !161
  %89 = icmp eq ptr %88, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %91 = call zeroext i8 %88(ptr noundef nonnull %74, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 8
  %95 = load ptr, ptr %94, align 8, !tbaa !136
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = add nsw i32 %69, 1
  %99 = getelementptr inbounds %struct.bDopeSheet, ptr %95, i64 0, i32 6
  store i32 %98, ptr %99, align 8, !tbaa !162
  br label %100

100:                                              ; preds = %97, %93, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %101

101:                                              ; preds = %100, %86, %83
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  %102 = load ptr, ptr %14, align 8, !tbaa !123
  call void @ED_region_tag_redraw(ptr noundef %102) #9
  br label %103

103:                                              ; preds = %82, %101
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %104

104:                                              ; preds = %3, %103
  %105 = phi i32 [ 4, %103 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #9
  ret i32 %105
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @animchannels_find_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  %12 = getelementptr inbounds %struct.bDopeSheet, ptr %11, i64 0, i32 3
  call void @RNA_string_set(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull %12) #9
  %13 = call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %14

14:                                               ; preds = %3, %7
  %15 = phi i32 [ %13, %7 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_find_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = getelementptr inbounds %struct.bDopeSheet, ptr %10, i64 0, i32 3
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.43, ptr noundef nonnull %11) #9
  %12 = load ptr, ptr %9, align 8, !tbaa !136
  %13 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !163
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !137
  %18 = and i32 %17, -134217729
  %19 = select i1 %15, i32 0, i32 134217728
  %20 = or disjoint i32 %18, %19
  store i32 %20, ptr %16, align 8, !tbaa !137
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %21

21:                                               ; preds = %2, %6
  %22 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_find_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !120
  switch i8 %6, label %7 [
    i8 12, label %10
    i8 2, label %10
  ]

7:                                                ; preds = %4
  %8 = icmp eq i8 %6, 13
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %7, %4, %4, %1
  %11 = phi i32 [ 0, %1 ], [ 1, %4 ], [ %9, %7 ], [ 1, %4 ]
  ret i32 %11
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) #3

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_setflag_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.48) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !117
  %11 = call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.50) #9
  %12 = icmp ne i32 %11, 3
  %13 = zext i1 %12 to i8
  call fastcc void @setflag_anim_channels(ptr noundef nonnull %3, i32 noundef %11, i32 noundef %9, i8 noundef zeroext 1, i8 noundef zeroext %13)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %15
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @setflag_anim_channels(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !98
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 9, ptr noundef %10, i32 noundef %13) #9
  br label %15

15:                                               ; preds = %9, %5
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 4, !tbaa !164
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !165
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %19, %23
  %25 = phi i32 [ 2059, %23 ], [ 2061, %19 ]
  %26 = icmp eq i8 %3, 0
  %27 = or disjoint i32 %25, 64
  %28 = select i1 %26, i32 %25, i32 %27
  %29 = load ptr, ptr %0, align 8, !tbaa !119
  %30 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %31 = load i16, ptr %30, align 8, !tbaa !98
  %32 = sext i16 %31 to i32
  %33 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %28, ptr noundef %29, i32 noundef %32) #9
  %34 = icmp eq i32 %2, 3
  br i1 %34, label %35, label %42

35:                                               ; preds = %24, %39
  %36 = phi ptr [ %37, %39 ], [ %6, %24 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %37, i32 noundef %1) #9
  %41 = icmp sgt i16 %40, 0
  br i1 %41, label %42, label %35, !llvm.loop !166

42:                                               ; preds = %39, %35, %24
  %43 = phi i32 [ %2, %24 ], [ 1, %35 ], [ 0, %39 ]
  %44 = load ptr, ptr %6, align 8, !tbaa !39
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42, %52
  %47 = phi ptr [ %53, %52 ], [ %44, %42 ]
  %48 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef %1) #9
  %49 = icmp eq i16 %48, -1
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  call void @ANIM_channel_setting_set(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef %1, i32 noundef %43) #9
  br i1 %8, label %52, label %51

51:                                               ; preds = %50
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %47, i32 noundef %1, i32 noundef %43)
  br label %52

52:                                               ; preds = %50, %51, %46
  %53 = load ptr, ptr %47, align 8, !tbaa !39
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %46, !llvm.loop !167

55:                                               ; preds = %52, %42
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  call void @BLI_freelistN(ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret void
}

declare signext i16 @ANIM_channel_setting_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %82, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !98
  switch i16 %9, label %10 [
    i16 2, label %82
    i16 6, label %51
  ]

10:                                               ; preds = %7
  %11 = sext i16 %9 to i32
  %12 = load ptr, ptr %3, align 8, !tbaa !119
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2379, ptr noundef %12, i32 noundef %11) #9
  %14 = load ptr, ptr %4, align 8, !tbaa !39
  %15 = icmp eq ptr %14, null
  br i1 %15, label %50, label %16

16:                                               ; preds = %10, %47
  %17 = phi ptr [ %48, %47 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !40
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bActionGroup, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !168
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27, %36
  %32 = phi ptr [ %37, %36 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.FCurve, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !101
  %35 = icmp eq ptr %34, %23
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !169
  %38 = load ptr, ptr %25, align 8, !tbaa !100
  call void @action_groups_remove_channel(ptr noundef %38, ptr noundef nonnull %32) #9
  call void @free_fcurve(ptr noundef nonnull %32) #9
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %31, !llvm.loop !170

40:                                               ; preds = %31, %36, %27
  %41 = load ptr, ptr %25, align 8, !tbaa !100
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.bAction, ptr %41, i64 0, i32 3
  call void @BLI_freelinkN(ptr noundef nonnull %44, ptr noundef %23) #9
  br label %47

45:                                               ; preds = %40
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %46(ptr noundef %23) #9
  br label %47

47:                                               ; preds = %21, %45, %43, %16
  %48 = load ptr, ptr %17, align 8, !tbaa !39
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %16, !llvm.loop !171

50:                                               ; preds = %47, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  br label %51

51:                                               ; preds = %7, %50
  %52 = load ptr, ptr %3, align 8, !tbaa !119
  %53 = load i16, ptr %8, align 8, !tbaa !98
  %54 = sext i16 %53 to i32
  %55 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2371, ptr noundef %52, i32 noundef %54) #9
  %56 = load ptr, ptr %4, align 8, !tbaa !39
  %57 = icmp eq ptr %56, null
  br i1 %57, label %81, label %58

58:                                               ; preds = %51, %78
  %59 = phi ptr [ %79, %78 ], [ %56, %51 ]
  %60 = getelementptr inbounds %struct.bAnimListElem, ptr %59, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !40
  switch i32 %61, label %78 [
    i32 7, label %62
    i32 27, label %67
    i32 29, label %73
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bAnimListElem, ptr %59, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = getelementptr inbounds %struct.bAnimListElem, ptr %59, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !44
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef nonnull %3, ptr noundef %64, ptr noundef %66)
  br label %78

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.bAnimListElem, ptr %59, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !90
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %59, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  call void @free_gpencil_frames(ptr noundef %71) #9
  %72 = getelementptr inbounds %struct.bGPdata, ptr %69, i64 0, i32 1
  call void @BLI_freelinkN(ptr noundef nonnull %72, ptr noundef %71) #9
  br label %78

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.bAnimListElem, ptr %59, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !90
  %76 = getelementptr inbounds %struct.bAnimListElem, ptr %59, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  call void @BKE_mask_layer_remove(ptr noundef %75, ptr noundef %77) #9
  br label %78

78:                                               ; preds = %62, %67, %73, %58
  %79 = load ptr, ptr %59, align 8, !tbaa !39
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %58, !llvm.loop !172

81:                                               ; preds = %78, %51
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %82

82:                                               ; preds = %7, %2, %81
  %83 = phi i32 [ 4, %81 ], [ 2, %2 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %83
}

declare void @free_gpencil_frames(ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_layer_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_rearrange_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.bAnimContext, align 8
  %8 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #9
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %7) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %110, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.20) #9
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !98
  switch i16 %16, label %23 [
    i16 3, label %17
    i16 9, label %19
    i16 1, label %21
  ]

17:                                               ; preds = %11
  %18 = call i32 @puts(ptr nonnull dereferenceable(1) @str.117)
  br label %109

19:                                               ; preds = %11
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str.116)
  br label %109

21:                                               ; preds = %11
  %22 = load ptr, ptr %7, align 8, !tbaa !119
  call fastcc void @rearrange_action_channels(ptr noundef nonnull %7, ptr noundef %22, i32 noundef %14)
  br label %109

23:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %7, align 8, !tbaa !119
  %25 = sext i16 %16 to i32
  %26 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1027, ptr noundef %24, i32 noundef %25) #9
  %27 = load ptr, ptr %8, align 8, !tbaa !39
  %28 = icmp eq ptr %27, null
  br i1 %28, label %108, label %29

29:                                               ; preds = %23
  %30 = sub nsw i32 0, %14
  br label %31

31:                                               ; preds = %29, %105
  %32 = phi ptr [ %27, %29 ], [ %106, %105 ]
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = load i16, ptr %15, align 8, !tbaa !98
  switch i16 %35, label %95 [
    i16 7, label %36
    i16 6, label %63
  ]

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  switch i32 %14, label %40 [
    i32 2, label %41
    i32 1, label %37
    i32 -1, label %38
    i32 -2, label %39
  ]

37:                                               ; preds = %36
  br label %41

38:                                               ; preds = %36
  br label %41

39:                                               ; preds = %36
  br label %41

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %39, %38, %37, %36
  %42 = phi i1 [ true, %40 ], [ false, %39 ], [ false, %38 ], [ false, %37 ], [ false, %36 ]
  %43 = phi ptr [ null, %40 ], [ @rearrange_island_bottom, %39 ], [ @rearrange_island_down, %38 ], [ @rearrange_island_up, %37 ], [ @rearrange_island_top, %36 ]
  br i1 %42, label %62, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %45 = load ptr, ptr %7, align 8, !tbaa !119
  %46 = sext i16 %35 to i32
  %47 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %45, i32 noundef %46) #9
  %48 = load ptr, ptr %4, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %44, %57
  %51 = phi ptr [ %52, %57 ], [ %48, %44 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  %53 = getelementptr inbounds %struct.bAnimListElem, ptr %51, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !40
  %55 = icmp eq i32 %54, 30
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %51) #9
  br label %57

57:                                               ; preds = %56, %50
  %58 = icmp eq ptr %52, null
  br i1 %58, label %59, label %50, !llvm.loop !173

59:                                               ; preds = %57, %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %60 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 3
  %61 = call fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef nonnull %60, ptr noundef nonnull %43, i32 noundef %30, i32 noundef 30, ptr noundef nonnull %6), !range !175
  call void @BLI_freelistN(ptr noundef nonnull %6) #9
  br label %62

62:                                               ; preds = %41, %59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %105

63:                                               ; preds = %31
  switch i32 %14, label %67 [
    i32 -2, label %68
    i32 -1, label %64
    i32 1, label %65
    i32 2, label %66
  ]

64:                                               ; preds = %63
  br label %68

65:                                               ; preds = %63
  br label %68

66:                                               ; preds = %63
  br label %68

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %66, %65, %64, %63
  %69 = phi i1 [ true, %67 ], [ false, %66 ], [ false, %65 ], [ false, %64 ], [ false, %63 ]
  %70 = phi ptr [ null, %67 ], [ @rearrange_island_bottom, %66 ], [ @rearrange_island_down, %65 ], [ @rearrange_island_up, %64 ], [ @rearrange_island_top, %63 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %69, label %94, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !54
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %77 = load ptr, ptr %7, align 8, !tbaa !119
  %78 = sext i16 %35 to i32
  %79 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %3, i32 noundef 11, ptr noundef %77, i32 noundef %78) #9
  %80 = load ptr, ptr %3, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %76, %89
  %83 = phi ptr [ %84, %89 ], [ %80, %76 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !91
  %85 = getelementptr inbounds %struct.bAnimListElem, ptr %83, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !40
  %87 = icmp eq i32 %86, 7
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %83) #9
  br label %89

89:                                               ; preds = %88, %82
  %90 = icmp eq ptr %84, null
  br i1 %90, label %91, label %82, !llvm.loop !173

91:                                               ; preds = %89, %76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %92 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 5
  %93 = call fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef nonnull %92, ptr noundef nonnull %70, i32 noundef %14, i32 noundef 7, ptr noundef nonnull %5), !range !175
  call void @BLI_freelistN(ptr noundef nonnull %5) #9
  br label %94

94:                                               ; preds = %68, %71, %91
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %105

95:                                               ; preds = %31
  %96 = load ptr, ptr %34, align 8, !tbaa !100
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call fastcc void @rearrange_action_channels(ptr noundef nonnull %7, ptr noundef nonnull %96, i32 noundef %14)
  br label %105

99:                                               ; preds = %95
  %100 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !147
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = call i32 @puts(ptr nonnull dereferenceable(1) @str.115)
  br label %105

105:                                              ; preds = %98, %103, %99, %94, %62
  %106 = load ptr, ptr %32, align 8, !tbaa !39
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %31, !llvm.loop !176

108:                                              ; preds = %105, %23
  call void @ANIM_animdata_freelist(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  br label %109

109:                                              ; preds = %19, %108, %21, %17
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %110

110:                                              ; preds = %2, %109
  %111 = phi i32 [ 4, %109 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #9
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rearrange_action_channels(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.bActionGroup, align 8
  %8 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  switch i32 %2, label %12 [
    i32 -2, label %13
    i32 -1, label %9
    i32 1, label %10
    i32 2, label %11
  ]

9:                                                ; preds = %3
  br label %13

10:                                               ; preds = %3
  br label %13

11:                                               ; preds = %3
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %3, %9, %10, %11, %12
  %14 = phi i1 [ true, %12 ], [ false, %11 ], [ false, %10 ], [ false, %9 ], [ false, %3 ]
  %15 = phi ptr [ null, %12 ], [ @rearrange_island_bottom, %11 ], [ @rearrange_island_down, %10 ], [ @rearrange_island_up, %9 ], [ @rearrange_island_top, %3 ]
  br i1 %14, label %153, label %16

16:                                               ; preds = %13
  %17 = icmp eq ptr %1, null
  br i1 %17, label %60, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  br label %24

24:                                               ; preds = %22, %34
  %25 = phi ptr [ %20, %22 ], [ %35, %34 ]
  %26 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !168
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !177
  %32 = load ptr, ptr %31, align 8, !tbaa !169
  store ptr %32, ptr %23, align 8, !tbaa !178
  %33 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 1
  store ptr null, ptr %33, align 8, !tbaa !180
  store ptr null, ptr %31, align 8, !tbaa !169
  br label %34

34:                                               ; preds = %29, %24
  %35 = load ptr, ptr %25, align 8, !tbaa !39
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24, !llvm.loop !181

37:                                               ; preds = %34, %18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, i8 0, i64 120, i1 false)
  %38 = getelementptr inbounds %struct.bActionGroup, ptr %7, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !45
  %40 = or i32 %39, 1073741832
  store i32 %40, ptr %38, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.bActionGroup, ptr %7, i64 0, i32 5
  %42 = call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef nonnull @.str.77, i64 noundef 64) #9
  %43 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !178
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.FCurve, ptr %44, i64 0, i32 1
  store ptr null, ptr %47, align 8, !tbaa !180
  %48 = getelementptr inbounds %struct.bActionGroup, ptr %7, i64 0, i32 2
  store ptr %44, ptr %48, align 8, !tbaa !168
  store ptr null, ptr %43, align 8, !tbaa !178
  %49 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !182
  store ptr null, ptr %50, align 8, !tbaa !169
  %51 = getelementptr inbounds %struct.bActionGroup, ptr %7, i64 0, i32 2, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !177
  store ptr null, ptr %49, align 8, !tbaa !182
  %52 = load ptr, ptr %48, align 8, !tbaa !39
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %46, %54
  %55 = phi ptr [ %57, %54 ], [ %52, %46 ]
  %56 = getelementptr inbounds %struct.FCurve, ptr %55, i64 0, i32 2
  store ptr %7, ptr %56, align 8, !tbaa !101
  %57 = load ptr, ptr %55, align 8, !tbaa !39
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %54, !llvm.loop !183

59:                                               ; preds = %54, %46, %37
  call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef nonnull %7) #9
  br label %60

60:                                               ; preds = %16, %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %61 = load ptr, ptr %0, align 8, !tbaa !119
  %62 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %63 = load i16, ptr %62, align 8, !tbaa !98
  %64 = sext i16 %63 to i32
  %65 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 11, ptr noundef %61, i32 noundef %64) #9
  %66 = load ptr, ptr %5, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %60, %75
  %69 = phi ptr [ %70, %75 ], [ %66, %60 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !91
  %71 = getelementptr inbounds %struct.bAnimListElem, ptr %69, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !40
  %73 = icmp eq i32 %72, 6
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef nonnull %69) #9
  br label %75

75:                                               ; preds = %74, %68
  %76 = icmp eq ptr %70, null
  br i1 %76, label %77, label %68, !llvm.loop !173

77:                                               ; preds = %75, %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %78 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 3
  %79 = call fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef nonnull %78, ptr noundef nonnull %15, i32 noundef %2, i32 noundef 6, ptr noundef nonnull %8), !range !175
  call void @BLI_freelistN(ptr noundef nonnull %8) #9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %127

81:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %82 = load ptr, ptr %0, align 8, !tbaa !119
  %83 = load i16, ptr %62, align 8, !tbaa !98
  %84 = sext i16 %83 to i32
  %85 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %82, i32 noundef %84) #9
  %86 = load ptr, ptr %4, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %81, %95
  %89 = phi ptr [ %90, %95 ], [ %86, %81 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !91
  %91 = getelementptr inbounds %struct.bAnimListElem, ptr %89, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !40
  %93 = icmp eq i32 %92, 7
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %89) #9
  br label %95

95:                                               ; preds = %94, %88
  %96 = icmp eq ptr %90, null
  br i1 %96, label %97, label %88, !llvm.loop !173

97:                                               ; preds = %95, %81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %98 = load ptr, ptr %78, align 8, !tbaa !39
  %99 = icmp eq ptr %98, null
  br i1 %99, label %126, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %102 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  br label %103

103:                                              ; preds = %100, %123
  %104 = phi ptr [ %98, %100 ], [ %124, %123 ]
  %105 = load i16, ptr %101, align 4, !tbaa !164
  %106 = icmp eq i16 %105, 2
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.bActionGroup, ptr %104, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !45
  %110 = and i32 %109, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %103, %107
  %113 = load i16, ptr %102, align 4, !tbaa !164
  %114 = icmp eq i16 %113, 2
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.bActionGroup, ptr %104, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !45
  %118 = and i32 %117, 64
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115, %107
  %121 = getelementptr inbounds %struct.bActionGroup, ptr %104, i64 0, i32 2
  %122 = call fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef nonnull %121, ptr noundef nonnull %15, i32 noundef %2, i32 noundef 7, ptr noundef nonnull %8), !range !175
  br label %123

123:                                              ; preds = %112, %115, %120
  %124 = load ptr, ptr %104, align 8, !tbaa !39
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %103, !llvm.loop !184

126:                                              ; preds = %123, %97
  call void @BLI_freelistN(ptr noundef nonnull %8) #9
  br label %127

127:                                              ; preds = %126, %77
  %128 = load ptr, ptr %78, align 8, !tbaa !39
  %129 = icmp eq ptr %128, null
  br i1 %129, label %153, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  br label %133

132:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  br label %150

133:                                              ; preds = %130, %150
  %134 = phi ptr [ %128, %130 ], [ %151, %150 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %135 = getelementptr inbounds %struct.bActionGroup, ptr %134, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %135, i64 16, i1 false), !tbaa.struct !174
  call void @BLI_movelisttolist(ptr noundef nonnull %131, ptr noundef nonnull %135) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %135, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !174
  %136 = getelementptr inbounds %struct.bActionGroup, ptr %134, i64 0, i32 3
  %137 = load i32, ptr %136, align 8, !tbaa !45
  %138 = and i32 %137, 2147483647
  store i32 %138, ptr %136, align 8, !tbaa !45
  %139 = and i32 %137, 1073741824
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %132, label %141

141:                                              ; preds = %133
  %142 = load ptr, ptr %135, align 8, !tbaa !39
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %141, %144
  %145 = phi ptr [ %147, %144 ], [ %142, %141 ]
  %146 = getelementptr inbounds %struct.FCurve, ptr %145, i64 0, i32 2
  store ptr null, ptr %146, align 8, !tbaa !101
  %147 = load ptr, ptr %145, align 8, !tbaa !39
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %144, !llvm.loop !185

149:                                              ; preds = %144, %141
  call void @BLI_remlink(ptr noundef nonnull %78, ptr noundef nonnull %134) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  br i1 %140, label %150, label %153

150:                                              ; preds = %149, %132
  %151 = load ptr, ptr %134, align 8, !tbaa !39
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %133, !llvm.loop !186

153:                                              ; preds = %150, %149, %127, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %111, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ListBase, ptr %6, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %76
  %12 = phi ptr [ %7, %9 ], [ %15, %76 ]
  %13 = call ptr @BLI_findptr(ptr noundef %4, ptr noundef nonnull %12, i32 noundef 16) #9
  %14 = icmp eq ptr %13, null
  %15 = load ptr, ptr %12, align 8, !tbaa !187
  %16 = load ptr, ptr %10, align 8, !tbaa !189
  switch i32 %3, label %38 [
    i32 6, label %17
    i32 7, label %28
    i32 30, label %33
  ]

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.bActionGroup, ptr %12, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !45
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = trunc i32 %19 to i8
  %23 = lshr exact i8 %22, 1
  %24 = and i8 %23, 1
  %25 = select i1 %21, i8 %24, i8 1
  %26 = and i32 %19, 1073741824
  %27 = icmp eq i32 %26, 0
  br label %40

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.FCurve, ptr %12, i64 0, i32 9
  %30 = load i16, ptr %29, align 8, !tbaa !48
  %31 = trunc i16 %30 to i8
  %32 = and i8 %31, 2
  br label %40

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.NlaTrack, ptr %12, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !51
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 2
  br label %40

38:                                               ; preds = %11
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %3)
  br label %76

40:                                               ; preds = %33, %28, %17
  %41 = phi i1 [ true, %33 ], [ true, %28 ], [ %27, %17 ]
  %42 = phi i8 [ %37, %33 ], [ %32, %28 ], [ %25, %17 ]
  %43 = icmp eq ptr %16, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %16, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !190
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  %49 = icmp eq i8 %42, 0
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = and i32 %46, 8
  %53 = zext i1 %14 to i32
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %73, label %55

55:                                               ; preds = %51, %44, %40
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !39
  %57 = call ptr %56(i64 noundef 40, ptr noundef nonnull @.str.79) #9
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %57) #9
  %58 = icmp eq i8 %42, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %57, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !190
  %62 = or i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !190
  br label %63

63:                                               ; preds = %59, %55
  br i1 %41, label %68, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %57, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !190
  %67 = or i32 %66, 2
  store i32 %67, ptr %65, align 8, !tbaa !190
  br label %68

68:                                               ; preds = %64, %63
  br i1 %14, label %69, label %73

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %57, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !190
  %72 = or i32 %71, 8
  store i32 %72, ptr %70, align 8, !tbaa !190
  br label %73

73:                                               ; preds = %69, %68, %51
  %74 = phi ptr [ %57, %69 ], [ %57, %68 ], [ %16, %51 ]
  call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %12) #9
  %75 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %74, i64 0, i32 2
  call void @BLI_addtail(ptr noundef nonnull %75, ptr noundef nonnull %12) #9
  br label %76

76:                                               ; preds = %38, %73
  %77 = icmp eq ptr %15, null
  br i1 %77, label %78, label %11, !llvm.loop !192

78:                                               ; preds = %76
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.ListBase, ptr %6, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %79, %81
  br i1 %82, label %102, label %83

83:                                               ; preds = %78
  %84 = icmp sgt i32 %2, 0
  %85 = select i1 %84, ptr %81, ptr %79
  %86 = icmp eq ptr %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %83, %99
  %88 = phi ptr [ %92, %99 ], [ %85, %83 ]
  %89 = phi i8 [ %100, %99 ], [ 0, %83 ]
  %90 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %88, i64 0, i32 1
  %91 = select i1 %84, ptr %90, ptr %88
  %92 = load ptr, ptr %91, align 8, !tbaa !39
  %93 = call zeroext i8 %1(ptr noundef nonnull %6, ptr noundef nonnull %88) #9, !callees !193
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %88, i64 0, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !190
  %98 = or i32 %97, 4
  store i32 %98, ptr %96, align 8, !tbaa !190
  br label %99

99:                                               ; preds = %87, %95
  %100 = phi i8 [ 1, %95 ], [ %89, %87 ]
  %101 = icmp eq ptr %92, null
  br i1 %101, label %102, label %87, !llvm.loop !194

102:                                              ; preds = %99, %83, %78
  %103 = phi i8 [ 0, %78 ], [ 0, %83 ], [ %100, %99 ]
  %104 = load ptr, ptr %6, align 8, !tbaa !34
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %102, %106
  %107 = phi ptr [ %108, %106 ], [ %104, %102 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !195
  %109 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %107, i64 0, i32 2
  call void @BLI_movelisttolist(ptr noundef nonnull %0, ptr noundef nonnull %109) #9
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %107) #9
  %110 = icmp eq ptr %108, null
  br i1 %110, label %111, label %106, !llvm.loop !196

111:                                              ; preds = %106, %102, %5
  %112 = phi i8 [ 0, %5 ], [ %103, %102 ], [ %103, %106 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret i8 %112
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @rearrange_island_top(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !190
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #9
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %1) #9
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i8 [ 1, %7 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @rearrange_island_up(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !190
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %18

7:                                                ; preds = %2, %12
  %8 = phi ptr [ %10, %12 ], [ %1, %2 ]
  %9 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !190
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !198

17:                                               ; preds = %12
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #9
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %1) #9
  br i1 %11, label %18, label %19

18:                                               ; preds = %7, %17, %2
  br label %19

19:                                               ; preds = %17, %18
  %20 = phi i8 [ 1, %17 ], [ 0, %18 ]
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @rearrange_island_down(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !190
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2, %11
  %8 = phi ptr [ %9, %11 ], [ %1, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !190
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7, !llvm.loop !199

16:                                               ; preds = %11
  %17 = and i32 %13, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #9
  tail call void @BLI_insertlinkafter(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1) #9
  br label %20

20:                                               ; preds = %7, %2, %16, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %16 ], [ 0, %2 ], [ 0, %7 ]
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @rearrange_island_bottom(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !190
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #9
  %10 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !190
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %1) #9
  br label %16

15:                                               ; preds = %7
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef %9, ptr noundef %1) #9
  br label %16

16:                                               ; preds = %2, %14, %15
  %17 = phi i8 [ 1, %15 ], [ 1, %14 ], [ 0, %2 ]
  ret i8 %17
}

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_expand_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.18) #9
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  call fastcc void @setflag_anim_channels(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 1, i8 noundef zeroext %11, i8 noundef zeroext 0)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_collapse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.18) #9
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  call fastcc void @setflag_anim_channels(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0, i8 noundef zeroext %11, i8 noundef zeroext 0)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_visibility_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !119
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !98
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 2057, ptr noundef %9, i32 noundef %12) #9
  %14 = load ptr, ptr %3, align 8, !tbaa !119
  %15 = load i16, ptr %10, align 8, !tbaa !98
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2115, ptr noundef %14, i32 noundef %16) #9
  br label %18

18:                                               ; preds = %22, %8
  %19 = phi ptr [ %4, %8 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %3, ptr noundef nonnull %20, i32 noundef 4) #9
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %18, label %25, !llvm.loop !200

25:                                               ; preds = %22, %18
  %26 = phi i32 [ 1, %18 ], [ 0, %22 ]
  %27 = load ptr, ptr %4, align 8, !tbaa !39
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = zext i1 %21 to i32
  br label %31

31:                                               ; preds = %29, %37
  %32 = phi ptr [ %27, %29 ], [ %38, %37 ]
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !40
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  call void @ANIM_channel_setting_set(ptr noundef nonnull %3, ptr noundef nonnull %32, i32 noundef 4, i32 noundef %26) #9
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %32, i32 noundef 4, i32 noundef %30)
  br label %37

37:                                               ; preds = %31, %36
  %38 = load ptr, ptr %32, align 8, !tbaa !39
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %31, !llvm.loop !201

40:                                               ; preds = %37, %25
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @BLI_freelistN(ptr noundef nonnull %5) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %41

41:                                               ; preds = %2, %40
  %42 = phi i32 [ 4, %40 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %42
}

declare i32 @ED_operator_graphedit_active(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_visibility_set_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !119
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !98
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 2057, ptr noundef %9, i32 noundef %12) #9
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 3
  %15 = load i16, ptr %14, align 4, !tbaa !164
  %16 = icmp eq i16 %15, 2
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 4
  %18 = load i16, ptr %17, align 2
  %19 = icmp ne i16 %18, 2
  %20 = select i1 %16, i1 %19, i1 false
  %21 = select i1 %20, i32 2181, i32 2179
  %22 = load ptr, ptr %3, align 8, !tbaa !119
  %23 = load i16, ptr %10, align 8, !tbaa !98
  %24 = sext i16 %23 to i32
  %25 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %21, ptr noundef %22, i32 noundef %24) #9
  %26 = load ptr, ptr %4, align 8, !tbaa !39
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %8, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %8 ]
  call void @ANIM_channel_setting_set(ptr noundef nonnull %3, ptr noundef nonnull %29, i32 noundef 4, i32 noundef 0) #9
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %29, i32 noundef 4, i32 noundef 0)
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28, !llvm.loop !202

32:                                               ; preds = %28, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  %33 = load ptr, ptr %3, align 8, !tbaa !119
  %34 = load i16, ptr %10, align 8, !tbaa !98
  %35 = sext i16 %34 to i32
  %36 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2112, ptr noundef %33, i32 noundef %35) #9
  %37 = load ptr, ptr %4, align 8, !tbaa !39
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %32, %45
  %40 = phi ptr [ %46, %45 ], [ %37, %32 ]
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !40
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  call void @ANIM_channel_setting_set(ptr noundef nonnull %3, ptr noundef nonnull %40, i32 noundef 4, i32 noundef 1) #9
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %40, i32 noundef 4, i32 noundef 1)
  br label %45

45:                                               ; preds = %39, %44
  %46 = load ptr, ptr %40, align 8, !tbaa !39
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39, !llvm.loop !203

48:                                               ; preds = %45, %32
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @BLI_freelistN(ptr noundef nonnull %5) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %49

49:                                               ; preds = %2, %48
  %50 = phi i32 [ 4, %48 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_enable_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !98
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2049, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !39
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %7, %29
  %16 = phi ptr [ %33, %29 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 9
  %20 = load i16, ptr %19, align 8, !tbaa !48
  %21 = and i16 %20, -1025
  store i16 %21, ptr %19, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !204
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.ChannelDriver, ptr %23, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !205
  %28 = and i32 %27, -2
  store i32 %28, ptr %26, align 4, !tbaa !205
  br label %29

29:                                               ; preds = %25, %15
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %31 = load i16, ptr %30, align 4, !tbaa !207
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 4, !tbaa !207
  %33 = load ptr, ptr %16, align 8, !tbaa !39
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15, !llvm.loop !208

35:                                               ; preds = %29, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %36

36:                                               ; preds = %2, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @animchannels_enable_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !120
  %10 = icmp eq i8 %9, 12
  %11 = icmp eq i8 %9, 2
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %7, %1, %4
  %15 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %13, %7 ]
  ret i32 %15
}

declare void @ANIM_animdata_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_clean_empty_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !98
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1027, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !39
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %7, %49
  %16 = phi ptr [ %50, %49 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %15
  br label %28

28:                                               ; preds = %23, %27
  %29 = phi i1 [ true, %27 ], [ false, %23 ]
  %30 = getelementptr inbounds %struct.AnimData, ptr %20, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !209
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28, %38
  %34 = phi ptr [ %39, %38 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct.NlaTrack, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !210
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8, !tbaa !211
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33, !llvm.loop !212

41:                                               ; preds = %38, %33, %28
  %42 = phi i1 [ true, %28 ], [ %37, %33 ], [ %37, %38 ]
  %43 = getelementptr inbounds %struct.AnimData, ptr %20, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !213
  %45 = icmp eq ptr %44, null
  %46 = and i1 %29, %42
  %47 = select i1 %46, i1 %45, i1 false
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  call void @BKE_free_animdata(ptr noundef %18) #9
  br label %49

49:                                               ; preds = %48, %41
  %50 = load ptr, ptr %16, align 8, !tbaa !39
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %15, !llvm.loop !214

52:                                               ; preds = %49, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %53

53:                                               ; preds = %2, %52
  %54 = phi i32 [ 4, %52 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %54
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_group_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  call void @RNA_string_get(ptr noundef %11, ptr noundef nonnull @.str.107, ptr noundef nonnull %5) #9
  %12 = load i8, ptr %5, align 16, !tbaa !163
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %4, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !98
  %18 = sext i16 %17 to i32
  %19 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 3075, ptr noundef %15, i32 noundef %18) #9
  %20 = load ptr, ptr %6, align 8, !tbaa !39
  %21 = icmp eq ptr %20, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %14, %54
  %23 = phi ptr [ %55, %54 ], [ %20, %14 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = load ptr, ptr %25, align 8, !tbaa !100
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %29 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 67, ptr noundef nonnull %23, i32 noundef 8) #9
  %30 = load ptr, ptr %3, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %28
  %33 = call ptr @action_groups_add_new(ptr noundef nonnull %26, ptr noundef nonnull %5) #9
  %34 = load ptr, ptr %3, align 8, !tbaa !39
  %35 = icmp eq ptr %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bAction, ptr %26, i64 0, i32 3
  br label %38

38:                                               ; preds = %36, %50
  %39 = phi ptr [ %34, %36 ], [ %51, %50 ]
  %40 = getelementptr inbounds %struct.bAnimListElem, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !101
  call void @action_groups_remove_channel(ptr noundef nonnull %26, ptr noundef %41) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.bActionGroup, ptr %43, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @BLI_freelinkN(ptr noundef nonnull %37, ptr noundef nonnull %43) #9
  br label %50

50:                                               ; preds = %49, %45, %38
  call void @action_groups_add_channel(ptr noundef nonnull %26, ptr noundef %33, ptr noundef %41) #9
  %51 = load ptr, ptr %39, align 8, !tbaa !39
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %38, !llvm.loop !215

53:                                               ; preds = %50, %32, %28
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %54

54:                                               ; preds = %22, %53
  %55 = load ptr, ptr %23, align 8, !tbaa !39
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %22, !llvm.loop !216

57:                                               ; preds = %54, %14
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %58

58:                                               ; preds = %9, %57, %2
  %59 = phi i32 [ 2, %2 ], [ 4, %57 ], [ 4, %9 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i32 @animchannels_grouping_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !120
  switch i8 %10, label %21 [
    i8 12, label %11
    i8 2, label %17
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceAction, ptr %8, i64 0, i32 9
  %13 = load i8, ptr %12, align 8, !tbaa !217
  %14 = icmp eq i8 %13, 3
  %15 = icmp eq i8 %13, 0
  %16 = or i1 %14, %15
  br label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.SpaceIpo, ptr %8, i64 0, i32 9
  %19 = load i16, ptr %18, align 8, !tbaa !219
  %20 = icmp eq i16 %19, 0
  br label %21

21:                                               ; preds = %17, %11, %7, %1, %4
  %22 = phi i1 [ false, %4 ], [ false, %1 ], [ false, %7 ], [ %16, %11 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare ptr @action_groups_add_new(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @animchannels_ungroup_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !98
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2115, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !39
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %7, %36
  %16 = phi ptr [ %37, %36 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !100
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  call void @action_groups_remove_channel(ptr noundef nonnull %21, ptr noundef %25) #9
  %30 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 1
  call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %25) #9
  %31 = getelementptr inbounds %struct.bActionGroup, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 3
  call void @BLI_freelinkN(ptr noundef nonnull %35, ptr noundef nonnull %27) #9
  br label %36

36:                                               ; preds = %23, %34, %29, %15, %20
  %37 = load ptr, ptr %16, align 8, !tbaa !39
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %15, !llvm.loop !221

39:                                               ; preds = %36, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #9
  br label %40

40:                                               ; preds = %2, %39
  %41 = phi i32 [ 4, %39 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %41
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!36, !36, i64 0}
!40 = !{!41, !42, i64 24}
!41 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !42, i64 28, !42, i64 32, !43, i64 36, !43, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!42 = !{!"int", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!41, !36, i64 16}
!45 = !{!46, !42, i64 32}
!46 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !35, i64 16, !42, i64 32, !42, i64 36, !37, i64 40, !47, i64 104}
!47 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !43, i64 12, !43, i64 14}
!48 = !{!49, !43, i64 72}
!49 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !35, i64 32, !36, i64 48, !36, i64 56, !42, i64 64, !50, i64 68, !43, i64 72, !43, i64 74, !42, i64 76, !36, i64 80, !42, i64 88, !37, i64 92, !50, i64 104, !50, i64 108}
!50 = !{!"float", !37, i64 0}
!51 = !{!52, !42, i64 32}
!52 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !35, i64 16, !42, i64 32, !42, i64 36, !37, i64 40}
!53 = !{!41, !36, i64 56}
!54 = !{!55, !42, i64 80}
!55 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24, !36, i64 40, !35, i64 48, !35, i64 64, !42, i64 80, !42, i64 84, !43, i64 88, !43, i64 90, !50, i64 92}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!41, !42, i64 28}
!60 = distinct !{!60, !57, !58}
!61 = !{!62, !43, i64 244}
!62 = !{!"Scene", !63, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !35, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !43, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !64, i64 280, !73, i64 4264, !35, i64 4296, !35, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !43, i64 4376, !43, i64 4378, !42, i64 4380, !35, i64 4384, !74, i64 4400, !75, i64 4416, !78, i64 4600, !36, i64 4608, !79, i64 4616, !36, i64 4640, !80, i64 4648, !80, i64 4656, !66, i64 4664, !67, i64 4824, !81, i64 4888, !36, i64 4952}
!63 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !36, i64 112}
!64 = !{!"RenderData", !65, i64 0, !36, i64 248, !36, i64 256, !68, i64 264, !69, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !50, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !43, i64 432, !43, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !42, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !42, i64 484, !42, i64 488, !43, i64 492, !43, i64 494, !42, i64 496, !42, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !37, i64 514, !37, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !70, i64 544, !70, i64 560, !71, i64 576, !35, i64 592, !43, i64 608, !43, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !42, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !50, i64 660, !50, i64 664, !43, i64 668, !43, i64 670, !50, i64 672, !50, i64 676, !37, i64 680, !42, i64 1704, !43, i64 1708, !43, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !42, i64 2520, !43, i64 2524, !43, i64 2526, !50, i64 2528, !50, i64 2532, !43, i64 2536, !43, i64 2538, !50, i64 2540, !43, i64 2544, !43, i64 2546, !42, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !50, i64 2560, !50, i64 2564, !36, i64 2568, !42, i64 2576, !50, i64 2580, !37, i64 2584, !72, i64 2616, !42, i64 3976, !42, i64 3980}
!65 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !43, i64 8, !43, i64 10, !50, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !66, i64 24, !67, i64 184}
!66 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !37, i64 8, !37, i64 72, !50, i64 136, !50, i64 140, !36, i64 144, !36, i64 152}
!67 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!68 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !43, i64 48, !43, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!69 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !50, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !36, i64 64}
!70 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!71 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!72 = !{!"BakeData", !65, i64 0, !37, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !50, i64 1280, !50, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!73 = !{!"AudioData", !42, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !42, i64 16, !43, i64 20, !43, i64 22, !50, i64 24, !50, i64 28}
!74 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!75 = !{!"GameData", !74, i64 0, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !43, i64 32, !37, i64 34, !76, i64 40, !43, i64 64, !43, i64 66, !50, i64 68, !77, i64 72, !50, i64 128, !50, i64 132, !42, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!76 = !{!"GameDome", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !50, i64 8, !50, i64 12, !36, i64 16}
!77 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !42, i64 40, !50, i64 44, !50, i64 48, !43, i64 52, !43, i64 54}
!78 = !{!"UnitSettings", !50, i64 0, !37, i64 4, !37, i64 5, !43, i64 6}
!79 = !{!"PhysicsSettings", !37, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!80 = !{!"long", !37, i64 0}
!81 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!82 = !{!62, !36, i64 120}
!83 = !{!84, !43, i64 30}
!84 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !50, i64 16, !50, i64 20, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !42, i64 32, !42, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !50, i64 176, !50, i64 180}
!85 = !{!86, !42, i64 40}
!86 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !35, i64 16, !36, i64 32, !42, i64 40, !43, i64 44, !43, i64 46, !37, i64 48, !37, i64 64}
!87 = !{!88, !37, i64 142}
!88 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !35, i64 80, !35, i64 96, !36, i64 112, !36, i64 120, !50, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!89 = distinct !{!89, !57, !58}
!90 = !{!41, !36, i64 48}
!91 = !{!41, !36, i64 0}
!92 = distinct !{!92, !57, !58}
!93 = !{!94, !36, i64 40}
!94 = !{!"bAnimChannelType", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!95 = !{!41, !36, i64 8}
!96 = distinct !{!96, !57, !58}
!97 = distinct !{!97, !57, !58}
!98 = !{!99, !43, i64 8}
!99 = !{!"bAnimContext", !36, i64 0, !43, i64 8, !43, i64 10, !43, i64 12, !43, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!100 = !{!55, !36, i64 0}
!101 = !{!49, !36, i64 16}
!102 = !{!103, !36, i64 0}
!103 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !35, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !104, i64 152, !43, i64 184}
!104 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!105 = !{!103, !36, i64 8}
!106 = !{!103, !36, i64 24}
!107 = !{!103, !36, i64 32}
!108 = !{!103, !36, i64 72}
!109 = !{!103, !43, i64 184}
!110 = !{!103, !36, i64 88}
!111 = !{!103, !36, i64 104}
!112 = !{!103, !36, i64 48}
!113 = !{!103, !36, i64 64}
!114 = !{!103, !36, i64 56}
!115 = !{!116, !36, i64 176}
!116 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !43, i64 164, !43, i64 166, !43, i64 168, !43, i64 170, !43, i64 172, !43, i64 174, !36, i64 176}
!117 = !{!118, !36, i64 112}
!118 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !35, i64 128, !36, i64 144, !36, i64 152, !43, i64 160, !37, i64 162}
!119 = !{!99, !36, i64 0}
!120 = !{!121, !37, i64 72}
!121 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !71, i64 56, !37, i64 72, !37, i64 73, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !43, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !35, i64 96, !35, i64 112, !35, i64 128, !35, i64 144}
!122 = !{!99, !36, i64 24}
!123 = !{!99, !36, i64 32}
!124 = !{!71, !42, i64 0}
!125 = !{!71, !42, i64 8}
!126 = !{!71, !42, i64 4}
!127 = !{!71, !42, i64 12}
!128 = !{!129, !43, i64 58}
!129 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !35, i64 16, !42, i64 32, !50, i64 36, !37, i64 40, !43, i64 56, !43, i64 58, !42, i64 60, !36, i64 64, !130, i64 72}
!130 = !{!"View2D", !70, i64 0, !70, i64 16, !71, i64 32, !71, i64 48, !71, i64 64, !37, i64 80, !37, i64 88, !50, i64 96, !50, i64 100, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !36, i64 128, !42, i64 136, !42, i64 140, !36, i64 144, !36, i64 152}
!131 = !{!132, !43, i64 8948}
!132 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !42, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !43, i64 8496, !43, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !35, i64 8536, !35, i64 8552, !35, i64 8568, !35, i64 8584, !35, i64 8600, !35, i64 8616, !35, i64 8632, !37, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !37, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !42, i64 8912, !42, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !50, i64 8956, !50, i64 8960, !42, i64 8964, !43, i64 8968, !43, i64 8970, !50, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !133, i64 8984, !37, i64 9760, !37, i64 9772, !43, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !42, i64 10896, !42, i64 10900, !50, i64 10904, !50, i64 10908, !42, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !134, i64 10928}
!133 = !{!"ColorBand", !43, i64 0, !43, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!134 = !{!"WalkNavigation", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !43, i64 24, !37, i64 26}
!135 = !{!70, !50, i64 8}
!136 = !{!99, !36, i64 40}
!137 = !{!138, !42, i64 96}
!138 = !{!"bDopeSheet", !36, i64 0, !35, i64 8, !36, i64 24, !37, i64 32, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108}
!139 = !{!43, !43, i64 0}
!140 = !{!141, !43, i64 136}
!141 = !{!"Object", !63, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !142, i64 312, !36, i64 360, !35, i64 368, !35, i64 384, !35, i64 400, !35, i64 416, !42, i64 432, !42, i64 436, !36, i64 440, !36, i64 448, !42, i64 456, !42, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !50, i64 616, !50, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !42, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !50, i64 1048, !50, i64 1052, !35, i64 1056, !35, i64 1072, !35, i64 1088, !35, i64 1104, !50, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !42, i64 1144, !42, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !35, i64 1176, !35, i64 1192, !35, i64 1208, !35, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !50, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !80, i64 1304, !80, i64 1312, !42, i64 1320, !42, i64 1324, !35, i64 1328, !35, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !35, i64 1400, !36, i64 1416}
!142 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!143 = !{!141, !36, i64 288}
!144 = distinct !{!144, !57, !58}
!145 = !{!42, !42, i64 0}
!146 = !{!50, !50, i64 0}
!147 = !{!148, !42, i64 2100}
!148 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !35, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !37, i64 2090, !43, i64 2092, !42, i64 2096, !42, i64 2100, !37, i64 2104, !42, i64 2108, !42, i64 2112, !37, i64 2116}
!149 = !{!150, !36, i64 32}
!150 = !{!"Base", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !43, i64 28, !43, i64 30, !36, i64 32}
!151 = !{!141, !36, i64 120}
!152 = !{!150, !42, i64 24}
!153 = !{!141, !43, i64 948}
!154 = !{!138, !36, i64 0}
!155 = distinct !{!155, !57, !58}
!156 = distinct !{!156, !57, !58}
!157 = !{!158, !42, i64 136}
!158 = !{!"bGPdata", !63, i64 0, !35, i64 120, !42, i64 136, !43, i64 140, !43, i64 142, !36, i64 144}
!159 = !{!160, !42, i64 160}
!160 = !{!"Mask", !63, i64 0, !36, i64 120, !35, i64 128, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164}
!161 = !{!94, !36, i64 56}
!162 = !{!138, !42, i64 104}
!163 = !{!37, !37, i64 0}
!164 = !{!99, !43, i64 12}
!165 = !{!99, !43, i64 14}
!166 = distinct !{!166, !57, !58}
!167 = distinct !{!167, !57, !58}
!168 = !{!46, !36, i64 16}
!169 = !{!49, !36, i64 0}
!170 = distinct !{!170, !57, !58}
!171 = distinct !{!171, !57, !58}
!172 = distinct !{!172, !57, !58}
!173 = distinct !{!173, !57, !58}
!174 = !{i64 0, i64 8, !39, i64 8, i64 8, !39}
!175 = !{i8 0, i8 2}
!176 = distinct !{!176, !57, !58}
!177 = !{!46, !36, i64 24}
!178 = !{!179, !36, i64 120}
!179 = !{!"bAction", !63, i64 0, !35, i64 120, !35, i64 136, !35, i64 152, !35, i64 168, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196}
!180 = !{!49, !36, i64 8}
!181 = distinct !{!181, !57, !58}
!182 = !{!179, !36, i64 128}
!183 = distinct !{!183, !57, !58}
!184 = distinct !{!184, !57, !58}
!185 = distinct !{!185, !57, !58}
!186 = distinct !{!186, !57, !58}
!187 = !{!188, !36, i64 0}
!188 = !{!"Link", !36, i64 0, !36, i64 8}
!189 = !{!35, !36, i64 8}
!190 = !{!191, !42, i64 32}
!191 = !{!"tReorderChannelIsland", !36, i64 0, !36, i64 8, !35, i64 16, !42, i64 32}
!192 = distinct !{!192, !57, !58}
!193 = !{ptr @rearrange_island_bottom, ptr @rearrange_island_down, ptr @rearrange_island_top, ptr @rearrange_island_up}
!194 = distinct !{!194, !57, !58}
!195 = !{!191, !36, i64 0}
!196 = distinct !{!196, !57, !58}
!197 = !{!191, !36, i64 8}
!198 = distinct !{!198, !57, !58}
!199 = distinct !{!199, !57, !58}
!200 = distinct !{!200, !57, !58}
!201 = distinct !{!201, !57, !58}
!202 = distinct !{!202, !57, !58}
!203 = distinct !{!203, !57, !58}
!204 = !{!49, !36, i64 24}
!205 = !{!206, !42, i64 292}
!206 = !{!"ChannelDriver", !35, i64 0, !37, i64 16, !36, i64 272, !50, i64 280, !50, i64 284, !42, i64 288, !42, i64 292}
!207 = !{!41, !43, i64 36}
!208 = distinct !{!208, !57, !58}
!209 = !{!55, !36, i64 24}
!210 = !{!52, !36, i64 16}
!211 = !{!52, !36, i64 0}
!212 = distinct !{!212, !57, !58}
!213 = !{!55, !36, i64 48}
!214 = distinct !{!214, !57, !58}
!215 = distinct !{!215, !57, !58}
!216 = distinct !{!216, !57, !58}
!217 = !{!218, !37, i64 336}
!218 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !35, i64 16, !42, i64 32, !50, i64 36, !37, i64 40, !130, i64 56, !36, i64 216, !138, i64 224, !37, i64 336, !37, i64 337, !43, i64 338, !50, i64 340}
!219 = !{!220, !43, i64 240}
!220 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !35, i64 16, !42, i64 32, !50, i64 36, !37, i64 40, !130, i64 56, !36, i64 216, !35, i64 224, !43, i64 240, !43, i64 242, !42, i64 244, !50, i64 248, !42, i64 252}
!221 = distinct !{!221, !57, !58}
