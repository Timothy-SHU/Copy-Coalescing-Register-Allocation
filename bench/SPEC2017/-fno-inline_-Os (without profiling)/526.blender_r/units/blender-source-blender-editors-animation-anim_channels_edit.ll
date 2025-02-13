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
@switch.table.rearrange_get_mode_func = private unnamed_addr constant [5 x ptr] [ptr @rearrange_island_top, ptr @rearrange_island_up, ptr null, ptr @rearrange_island_down, ptr @rearrange_island_bottom], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_set_active_channel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = call i64 @ANIM_animdata_filter(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %3, ptr noundef %1, i32 noundef %2) #12
  %9 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %7) #13, !range !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %11, %46
  %15 = phi ptr [ %47, %46 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !10
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  switch i32 %5, label %46 [
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
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.bActionGroup, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !15
  %25 = and i32 %24, -3
  store i32 %25, ptr %23, align 8, !tbaa !15
  br label %46

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 9
  %30 = load i16, ptr %29, align 8, !tbaa !19
  %31 = and i16 %30, -5
  store i16 %31, ptr %29, align 8, !tbaa !19
  br label %46

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.NlaTrack, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !22
  %37 = and i32 %36, -2
  store i32 %37, ptr %35, align 8, !tbaa !22
  br label %46

38:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.AnimData, ptr %40, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !25
  %45 = and i32 %44, -32769
  store i32 %45, ptr %43, align 8, !tbaa !25
  br label %46

46:                                               ; preds = %20, %26, %32, %19, %42, %38, %14
  %47 = load ptr, ptr %15, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %14, !llvm.loop !27

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
  %54 = load i32, ptr %53, align 8, !tbaa !15
  %55 = or i32 %54, 2
  store i32 %55, ptr %53, align 8, !tbaa !15
  br label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %58 = load i16, ptr %57, align 8, !tbaa !19
  %59 = or i16 %58, 4
  store i16 %59, ptr %57, align 8, !tbaa !19
  br label %64

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !22
  %63 = or i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !22
  br label %64

64:                                               ; preds = %52, %56, %60, %51, %49
  call void @ANIM_animdata_freelist(ptr noundef nonnull %7) #12
  br label %65

65:                                               ; preds = %6, %64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_deselect_anim_channels(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = call i64 @ANIM_animdata_filter(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 9, ptr noundef %1, i32 noundef %2) #12
  %8 = icmp eq i8 %3, 0
  %9 = load ptr, ptr %6, align 8, !tbaa !6
  br i1 %8, label %77, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %9, null
  %12 = icmp eq i32 %4, 0
  %13 = or i1 %11, %12
  br i1 %13, label %77, label %14

14:                                               ; preds = %10, %71
  %15 = phi ptr [ %73, %71 ], [ %9, %10 ]
  %16 = phi i32 [ %72, %71 ], [ %4, %10 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !10
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
  %21 = load i32, ptr %20, align 4, !tbaa !30
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %16, i32 0
  br label %71

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !30
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %16, i32 0
  br label %71

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !30
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 %16, i32 0
  br label %71

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !30
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %16, i32 0
  br label %71

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !30
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 %16, i32 0
  br label %71

49:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.AnimData, ptr %51, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !25
  %56 = and i32 %55, 16384
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 %16, i32 0
  br label %71

59:                                               ; preds = %14
  %60 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !30
  %62 = and i32 %61, 32
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 %16, i32 0
  br label %71

65:                                               ; preds = %14
  %66 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !30
  %68 = and i32 %67, 32
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 %16, i32 0
  br label %71

71:                                               ; preds = %65, %59, %53, %43, %37, %31, %25, %19, %14, %49
  %72 = phi i32 [ %16, %14 ], [ %16, %49 ], [ %24, %19 ], [ %30, %25 ], [ %36, %31 ], [ %42, %37 ], [ %48, %43 ], [ %58, %53 ], [ %64, %59 ], [ %70, %65 ]
  %73 = load ptr, ptr %15, align 8, !tbaa !6
  %74 = icmp eq ptr %73, null
  %75 = icmp eq i32 %72, 0
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %14, !llvm.loop !31

77:                                               ; preds = %71, %10, %5
  %78 = phi i32 [ %4, %5 ], [ %4, %10 ], [ %72, %71 ]
  %79 = icmp eq ptr %9, null
  br i1 %79, label %209, label %80

80:                                               ; preds = %77, %206
  %81 = phi ptr [ %207, %206 ], [ %9, %77 ]
  %82 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !10
  switch i32 %83, label %206 [
    i32 4, label %84
    i32 29, label %195
    i32 6, label %111
    i32 7, label %126
    i32 25, label %141
    i32 30, label %152
    i32 8, label %167
    i32 10, label %167
    i32 11, label %167
    i32 12, label %167
    i32 13, label %167
    i32 14, label %167
    i32 15, label %167
    i32 17, label %167
    i32 18, label %167
    i32 19, label %167
    i32 20, label %167
    i32 16, label %167
    i32 21, label %167
    i32 22, label %167
    i32 23, label %167
    i32 24, label %167
    i32 27, label %184
  ]

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !14
  %87 = getelementptr inbounds %struct.Scene, ptr %86, i64 0, i32 15
  %88 = load i16, ptr %87, align 4, !tbaa !32
  %89 = getelementptr inbounds %struct.Scene, ptr %86, i64 0, i32 1
  switch i32 %78, label %94 [
    i32 2, label %98
    i32 1, label %90
  ]

90:                                               ; preds = %84
  %91 = or i16 %88, 1
  store i16 %91, ptr %87, align 4, !tbaa !32
  %92 = load ptr, ptr %89, align 8, !tbaa !53
  %93 = icmp eq ptr %92, null
  br i1 %93, label %206, label %105

94:                                               ; preds = %84
  %95 = and i16 %88, -2
  store i16 %95, ptr %87, align 4, !tbaa !32
  %96 = load ptr, ptr %89, align 8, !tbaa !53
  %97 = icmp eq ptr %96, null
  br i1 %97, label %206, label %108

98:                                               ; preds = %84
  %99 = xor i16 %88, 1
  store i16 %99, ptr %87, align 4, !tbaa !32
  %100 = load ptr, ptr %89, align 8, !tbaa !53
  %101 = icmp eq ptr %100, null
  br i1 %101, label %206, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.Scene, ptr %86, i64 0, i32 15
  %104 = xor i16 %88, 16385
  store i16 %104, ptr %103, align 4, !tbaa !32
  br label %206

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.Scene, ptr %86, i64 0, i32 15
  %107 = or i16 %88, 16385
  store i16 %107, ptr %106, align 4, !tbaa !32
  br label %206

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.Scene, ptr %86, i64 0, i32 15
  %110 = and i16 %88, -16386
  store i16 %110, ptr %109, align 4, !tbaa !32
  br label %206

111:                                              ; preds = %80
  %112 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !14
  %114 = getelementptr inbounds %struct.bActionGroup, ptr %113, i64 0, i32 3
  %115 = load i32, ptr %114, align 8, !tbaa !15
  switch i32 %78, label %120 [
    i32 2, label %116
    i32 1, label %118
  ]

116:                                              ; preds = %111
  %117 = xor i32 %115, 1
  br label %122

118:                                              ; preds = %111
  %119 = or i32 %115, 1
  br label %122

120:                                              ; preds = %111
  %121 = and i32 %115, -2
  br label %122

122:                                              ; preds = %118, %120, %116
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ], [ %117, %116 ]
  %124 = getelementptr inbounds %struct.bActionGroup, ptr %113, i64 0, i32 3
  %125 = and i32 %123, -3
  store i32 %125, ptr %124, align 8, !tbaa !15
  br label %206

126:                                              ; preds = %80
  %127 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !14
  %129 = getelementptr inbounds %struct.FCurve, ptr %128, i64 0, i32 9
  %130 = load i16, ptr %129, align 8, !tbaa !19
  switch i32 %78, label %135 [
    i32 2, label %131
    i32 1, label %133
  ]

131:                                              ; preds = %126
  %132 = xor i16 %130, 2
  br label %137

133:                                              ; preds = %126
  %134 = or i16 %130, 2
  br label %137

135:                                              ; preds = %126
  %136 = and i16 %130, -3
  br label %137

137:                                              ; preds = %133, %135, %131
  %138 = phi i16 [ %134, %133 ], [ %136, %135 ], [ %132, %131 ]
  %139 = getelementptr inbounds %struct.FCurve, ptr %128, i64 0, i32 9
  %140 = and i16 %138, -5
  store i16 %140, ptr %139, align 8, !tbaa !19
  br label %206

141:                                              ; preds = %80
  %142 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !14
  %144 = getelementptr inbounds %struct.KeyBlock, ptr %143, i64 0, i32 7
  %145 = load i16, ptr %144, align 2, !tbaa !54
  switch i32 %78, label %150 [
    i32 2, label %146
    i32 1, label %148
  ]

146:                                              ; preds = %141
  %147 = xor i16 %145, 2
  store i16 %147, ptr %144, align 2, !tbaa !54
  br label %206

148:                                              ; preds = %141
  %149 = or i16 %145, 2
  store i16 %149, ptr %144, align 2, !tbaa !54
  br label %206

150:                                              ; preds = %141
  %151 = and i16 %145, -3
  store i16 %151, ptr %144, align 2, !tbaa !54
  br label %206

152:                                              ; preds = %80
  %153 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !14
  %155 = getelementptr inbounds %struct.NlaTrack, ptr %154, i64 0, i32 3
  %156 = load i32, ptr %155, align 8, !tbaa !22
  switch i32 %78, label %161 [
    i32 2, label %157
    i32 1, label %159
  ]

157:                                              ; preds = %152
  %158 = xor i32 %156, 2
  br label %163

159:                                              ; preds = %152
  %160 = or i32 %156, 2
  br label %163

161:                                              ; preds = %152
  %162 = and i32 %156, -3
  br label %163

163:                                              ; preds = %159, %161, %157
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ], [ %158, %157 ]
  %165 = getelementptr inbounds %struct.NlaTrack, ptr %154, i64 0, i32 3
  %166 = and i32 %164, -2
  store i32 %166, ptr %165, align 8, !tbaa !22
  br label %206

167:                                              ; preds = %80, %80, %80, %80, %80, %80, %80, %80, %80, %80, %80, %80, %80, %80, %80, %80
  %168 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 10
  %169 = load ptr, ptr %168, align 8, !tbaa !24
  %170 = icmp eq ptr %169, null
  br i1 %170, label %206, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.AnimData, ptr %169, i64 0, i32 7
  %173 = load i32, ptr %172, align 8, !tbaa !25
  switch i32 %78, label %178 [
    i32 2, label %174
    i32 1, label %176
  ]

174:                                              ; preds = %171
  %175 = xor i32 %173, 16384
  br label %180

176:                                              ; preds = %171
  %177 = or i32 %173, 16384
  br label %180

178:                                              ; preds = %171
  %179 = and i32 %173, -16385
  br label %180

180:                                              ; preds = %176, %178, %174
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ], [ %175, %174 ]
  %182 = getelementptr inbounds %struct.AnimData, ptr %169, i64 0, i32 7
  %183 = and i32 %181, -32769
  store i32 %183, ptr %182, align 8, !tbaa !25
  br label %206

184:                                              ; preds = %80
  %185 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !14
  %187 = getelementptr inbounds %struct.bGPDlayer, ptr %186, i64 0, i32 4
  %188 = load i32, ptr %187, align 8, !tbaa !56
  switch i32 %78, label %193 [
    i32 2, label %189
    i32 1, label %191
  ]

189:                                              ; preds = %184
  %190 = xor i32 %188, 32
  store i32 %190, ptr %187, align 8, !tbaa !56
  br label %206

191:                                              ; preds = %184
  %192 = or i32 %188, 32
  store i32 %192, ptr %187, align 8, !tbaa !56
  br label %206

193:                                              ; preds = %184
  %194 = and i32 %188, -33
  store i32 %194, ptr %187, align 8, !tbaa !56
  br label %206

195:                                              ; preds = %80
  %196 = getelementptr inbounds %struct.bAnimListElem, ptr %81, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !14
  %198 = getelementptr inbounds %struct.MaskLayer, ptr %197, i64 0, i32 12
  %199 = load i8, ptr %198, align 2, !tbaa !58
  switch i32 %78, label %204 [
    i32 2, label %200
    i32 1, label %202
  ]

200:                                              ; preds = %195
  %201 = xor i8 %199, 32
  store i8 %201, ptr %198, align 2, !tbaa !58
  br label %206

202:                                              ; preds = %195
  %203 = or i8 %199, 32
  store i8 %203, ptr %198, align 2, !tbaa !58
  br label %206

204:                                              ; preds = %195
  %205 = and i8 %199, -33
  store i8 %205, ptr %198, align 2, !tbaa !58
  br label %206

206:                                              ; preds = %94, %98, %200, %204, %202, %189, %193, %191, %146, %150, %148, %90, %105, %108, %102, %122, %137, %163, %80, %180, %167
  %207 = load ptr, ptr %81, align 8, !tbaa !6
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %80, !llvm.loop !60

209:                                              ; preds = %206, %77
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_flush_setting_anim_channels(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %109, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %1, align 8, !tbaa !29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %109, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 9
  br label %15

15:                                               ; preds = %10, %30
  %16 = phi ptr [ %8, %10 ], [ %31, %30 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %12
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !10
  %23 = load i32, ptr %13, align 8, !tbaa !10
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = load ptr, ptr %14, align 8, !tbaa !61
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %15, %20, %25
  %31 = load ptr, ptr %16, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %106, label %15, !llvm.loop !63

33:                                               ; preds = %25
  %34 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %2) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %106, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.bAnimChannelType, ptr %34, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call signext i16 %38(ptr noundef %0, ptr noundef nonnull %2) #12
  %42 = sext i16 %41 to i32
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ 0, %36 ], [ %42, %40 ]
  %45 = icmp eq i32 %3, 4
  %46 = icmp ne i32 %4, 0
  %47 = and i1 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = icmp ne i32 %3, 4
  %50 = icmp eq i32 %4, 0
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48, %43
  %53 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !66
  %55 = icmp eq ptr %54, null
  br i1 %55, label %85, label %56

56:                                               ; preds = %52, %74
  %57 = phi ptr [ %76, %74 ], [ %54, %52 ]
  %58 = phi i32 [ %72, %74 ], [ %44, %52 ]
  %59 = icmp eq i32 %58, 0
  br label %60

60:                                               ; preds = %56, %81
  %61 = phi ptr [ %57, %56 ], [ %83, %81 ]
  %62 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %61) #12
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.bAnimChannelType, ptr %62, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !64
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = tail call signext i16 %66(ptr noundef %0, ptr noundef nonnull %61) #12
  %70 = sext i16 %69 to i32
  br label %71

71:                                               ; preds = %64, %68
  %72 = phi i32 [ %70, %68 ], [ 0, %64 ]
  %73 = icmp slt i32 %72, %58
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  tail call void @ANIM_channel_setting_set(ptr noundef %0, ptr noundef nonnull %61, i32 noundef %3, i32 noundef %4) #12
  %75 = getelementptr inbounds %struct.bAnimListElem, ptr %61, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !66
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %56, !llvm.loop !67

78:                                               ; preds = %71
  %79 = icmp sgt i32 %72, 0
  %80 = and i1 %59, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %60, %78
  %82 = getelementptr inbounds %struct.bAnimListElem, ptr %61, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !66
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %60, !llvm.loop !67

85:                                               ; preds = %74, %78, %81, %52, %48
  %86 = load ptr, ptr %16, align 8, !tbaa !62
  %87 = icmp eq ptr %86, null
  br i1 %87, label %109, label %88

88:                                               ; preds = %85, %103
  %89 = phi ptr [ %104, %103 ], [ %86, %85 ]
  %90 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %89) #12
  %91 = icmp eq ptr %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bAnimChannelType, ptr %90, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = tail call signext i16 %94(ptr noundef %0, ptr noundef nonnull %89) #12
  %98 = sext i16 %97 to i32
  br label %99

99:                                               ; preds = %92, %96
  %100 = phi i32 [ %98, %96 ], [ 0, %92 ]
  %101 = icmp sgt i32 %100, %44
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  tail call void @ANIM_channel_setting_set(ptr noundef %0, ptr noundef nonnull %89, i32 noundef %3, i32 noundef %4) #12
  br label %103

103:                                              ; preds = %88, %102
  %104 = load ptr, ptr %89, align 8, !tbaa !62
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %88

106:                                              ; preds = %30, %33
  %107 = phi ptr [ @str, %33 ], [ @str.113, %30 ]
  %108 = tail call i32 @puts(ptr nonnull dereferenceable(1) %107)
  br label %109

109:                                              ; preds = %103, %99, %106, %85, %5, %7
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_channel_setting_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = load i16, ptr %10, align 8, !tbaa !68
  %12 = icmp eq i16 %11, 6
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  tail call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %2) #12
  br label %40

15:                                               ; preds = %9, %7
  %16 = load ptr, ptr %1, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  tail call void @action_groups_remove_channel(ptr noundef nonnull %16, ptr noundef nonnull %2) #12
  %23 = getelementptr inbounds %struct.bActionGroup, ptr %20, i64 0, i32 2
  %24 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %23) #13, !range !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 3
  tail call void @BLI_freelinkN(ptr noundef nonnull %27, ptr noundef nonnull %20) #12
  br label %30

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %29, ptr noundef nonnull %2) #12
  br label %30

30:                                               ; preds = %22, %26, %28
  %31 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 1
  %32 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %31) #13, !range !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !25
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @id_us_min(ptr noundef nonnull %16) #12
  store ptr null, ptr %1, align 8, !tbaa !70
  br label %40

40:                                               ; preds = %30, %34, %39, %15, %13
  tail call void @free_fcurve(ptr noundef nonnull %2) #12
  br label %41

41:                                               ; preds = %3, %40
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_animchannels() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_select_all_toggle) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_select_border) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_click) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_rename) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_find) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_setting_enable) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_setting_disable) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_setting_toggle) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_delete) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_editable_toggle) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_move) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_expand) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_collapse) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_visibility_toggle) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_visibility_set) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_fcurves_enable) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_clean_empty) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_group) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_channels_ungroup) #12
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_select_all_toggle(ptr nocapture noundef %0) #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_deselectall_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_nla_tweakmode_off, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_select_border(ptr noundef %0) #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_borderselect_exec, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_nla_tweakmode_off, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !79
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_click(ptr nocapture noundef %0) #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @animchannels_mouseclick_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.28) #12
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !80
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28) #12
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_rename(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @animchannels_rename_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_find(ptr nocapture noundef %0) #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @animchannels_find_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_find_exec, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animchannels_find_poll, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.45) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_setting_enable(ptr nocapture noundef %0) #0 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_setflag_exec, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_animchannel_setflag_types, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #12
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @prop_animchannel_settings_types, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.28) #12
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_setting_disable(ptr nocapture noundef %0) #0 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_setflag_exec, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_animchannel_setflag_types, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #12
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @prop_animchannel_settings_types, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.28) #12
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_setting_toggle(ptr nocapture noundef %0) #0 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_setflag_exec, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_animchannel_setflag_types, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #12
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @prop_animchannel_settings_types, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.28) #12
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_delete(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.67, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_delete_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_editable_toggle(ptr nocapture noundef %0) #0 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_setflag_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_animchannel_setflag_types, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.28) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !80
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.50, ptr noundef nonnull @prop_animchannel_settings_types, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.28) #12
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 524288) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_rearrange_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_nla_tweakmode_off, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_animchannel_rearrange_types, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.28) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_expand(ptr nocapture noundef %0) #0 {
  store ptr @.str.88, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.89, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_expand_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_collapse(ptr nocapture noundef %0) #0 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.93, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_collapse_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_active, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.94) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_visibility_toggle(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.96, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_visibility_toggle_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_visibility_set(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.97, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.98, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_visibility_set_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_graphedit_active, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_fcurves_enable(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.100, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.101, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_enable_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animchannels_enable_poll, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_clean_empty(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.102, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.104, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_clean_empty_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animedit_poll_channels_nla_tweakmode_off, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_channels_group(ptr nocapture noundef %0) #0 {
  store ptr @.str.105, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_group_exec, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animchannels_grouping_poll, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef 64, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_channels_ungroup(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.111, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.112, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @animchannels_ungroup_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @animchannels_grouping_poll, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_animchannels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0) #12
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 1) #12
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 0) #12
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef 1) #12
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0) #12
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef 1) #12
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 20483, i32 noundef -1, i32 noundef 0, i32 noundef 0) #12
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 119, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 119, i32 noundef 1, i32 noundef 3, i32 noundef 0) #12
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 119, i32 noundef 1, i32 noundef 4, i32 noundef 0) #12
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %29, ptr noundef nonnull @.str.18, i32 noundef 0) #12
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %30, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %32, ptr noundef nonnull @.str.18, i32 noundef 0) #12
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %35, ptr noundef nonnull @.str.20, i32 noundef -1) #12
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %38, ptr noundef nonnull @.str.20, i32 noundef 1) #12
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 168, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %39, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %41, ptr noundef nonnull @.str.20, i32 noundef -2) #12
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 169, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %42, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %44, ptr noundef nonnull @.str.20, i32 noundef 2) #12
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 103, i32 noundef 1, i32 noundef 4, i32 noundef 0) #12
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 118, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_deselectall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.9) #12
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %3, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !68
  %14 = sext i16 %13 to i32
  br i1 %10, label %16, label %15

15:                                               ; preds = %6
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %3, ptr noundef %11, i32 noundef %14, i8 noundef zeroext 0, i32 noundef 3) #13
  br label %17

16:                                               ; preds = %6
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %3, ptr noundef %11, i32 noundef %14, i8 noundef zeroext 1, i32 noundef 1) #13
  br label %17

17:                                               ; preds = %16, %15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599622, ptr noundef null) #12
  br label %18

18:                                               ; preds = %2, %17
  %19 = phi i32 [ 4, %17 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animedit_poll_channels_nla_tweakmode_off(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = icmp eq ptr %2, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !90
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
  %15 = load i16, ptr %14, align 4, !tbaa !32
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8, %8, %13
  br label %19

19:                                               ; preds = %8, %11, %13, %1, %5, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %5 ], [ 0, %1 ], [ 0, %13 ], [ 0, %11 ], [ 0, %8 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %4) #12
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.31) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !87
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.4) #12
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr %3, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !68
  %19 = sext i16 %18 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %3, ptr noundef %16, i32 noundef %19, i8 noundef zeroext 1, i32 noundef 0) #13
  br label %20

20:                                               ; preds = %15, %7
  %21 = icmp eq i32 %10, 3
  %22 = zext i1 %21 to i16
  call fastcc void @borderselect_anim_channels(ptr noundef nonnull %3, ptr noundef nonnull %4, i16 noundef signext %22) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599622, ptr noundef null) #12
  br label %23

23:                                               ; preds = %2, %20
  %24 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %24
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @borderselect_anim_channels(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !68
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %14 = load i32, ptr %1, align 4, !tbaa !94
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !95
  %18 = add nsw i32 %17, 2
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  call void @UI_view2d_region_to_view(ptr noundef nonnull %10, float noundef %15, float noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %20) #12
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !96
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !97
  %26 = add nsw i32 %25, -2
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %29 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  call void @UI_view2d_region_to_view(ptr noundef nonnull %10, float noundef %23, float noundef %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #12
  %30 = load ptr, ptr %0, align 8, !tbaa !89
  %31 = load i16, ptr %11, align 8, !tbaa !68
  %32 = sext i16 %31 to i32
  %33 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %30, i32 noundef %32) #12
  %34 = load ptr, ptr %4, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %131, label %36

36:                                               ; preds = %3
  %37 = icmp eq i16 %12, 7
  %38 = sitofp i16 %13 to float
  %39 = fmul float %38, 0xBFE99999A0000000
  %40 = select i1 %37, float 0.000000e+00, float %39
  %41 = icmp eq ptr %7, null
  %42 = getelementptr inbounds %struct.SpaceNla, ptr %7, i64 0, i32 7
  %43 = zext nneg i16 %2 to i32
  %44 = icmp eq i16 %2, 1
  %45 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  br label %46

46:                                               ; preds = %36, %128
  %47 = phi ptr [ %34, %36 ], [ %129, %128 ]
  %48 = phi float [ %40, %36 ], [ %77, %128 ]
  %49 = load i16, ptr %11, align 8, !tbaa !68
  %50 = icmp eq i16 %49, 7
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  br i1 %41, label %52, label %54

52:                                               ; preds = %51
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !98
  br label %62

54:                                               ; preds = %51
  %55 = load i16, ptr %42, align 2, !tbaa !102
  %56 = and i16 %55, 32
  %57 = icmp eq i16 %56, 0
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !98
  br i1 %57, label %62, label %59

59:                                               ; preds = %54
  %60 = sitofp i16 %58 to float
  %61 = fmul float %60, 0x3FE99999A0000000
  br label %66

62:                                               ; preds = %52, %54
  %63 = phi i16 [ %53, %52 ], [ %58, %54 ]
  %64 = sitofp i16 %63 to float
  %65 = fmul float %64, 0x3FF3333340000000
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi float [ %64, %62 ], [ %60, %59 ]
  %68 = phi float [ %65, %62 ], [ %61, %59 ]
  %69 = call float @llvm.fmuladd.f32(float %67, float 0x3FB99999A0000000, float %68)
  br label %75

70:                                               ; preds = %46
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !98
  %72 = sitofp i16 %71 to float
  %73 = fmul float %72, 0x3FB99999A0000000
  %74 = call float @llvm.fmuladd.f32(float %72, float 0x3FE99999A0000000, float %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi float [ %69, %66 ], [ %74, %70 ]
  %77 = fsub float %48, %76
  %78 = load float, ptr %20, align 4, !tbaa !105
  %79 = fcmp olt float %48, %78
  %80 = load float, ptr %29, align 4
  %81 = fcmp ogt float %77, %80
  %82 = select i1 %79, i1 true, i1 %81
  br i1 %82, label %128, label %83

83:                                               ; preds = %75
  call void @ANIM_channel_setting_set(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef 0, i32 noundef %43) #12
  %84 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !10
  switch i32 %85, label %128 [
    i32 6, label %86
    i32 30, label %119
  ]

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !14
  %89 = load ptr, ptr %45, align 8, !tbaa !106
  %90 = getelementptr inbounds %struct.bDopeSheet, ptr %89, i64 0, i32 4
  %91 = load i32, ptr %90, align 8, !tbaa !107
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 9
  %96 = load ptr, ptr %95, align 8, !tbaa !61
  %97 = icmp eq ptr %96, null
  br i1 %97, label %115, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ID, ptr %96, i64 0, i32 4
  %100 = load i16, ptr %99, align 8, !tbaa !109
  %101 = icmp eq i16 %100, 16975
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.Object, ptr %96, i64 0, i32 3
  %104 = load i16, ptr %103, align 8, !tbaa !110
  %105 = icmp eq i16 %104, 25
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.Object, ptr %96, i64 0, i32 18
  %108 = load ptr, ptr %107, align 8, !tbaa !113
  %109 = getelementptr inbounds %struct.bActionGroup, ptr %88, i64 0, i32 5
  %110 = call ptr @BKE_pose_channel_find_name(ptr noundef %108, ptr noundef nonnull %109) #12
  %111 = getelementptr inbounds %struct.bActionGroup, ptr %88, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !15
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  call void @ED_pose_bone_select(ptr noundef nonnull %96, ptr noundef %110, i8 noundef zeroext %114) #12
  br label %115

115:                                              ; preds = %106, %102, %94, %98, %86
  %116 = getelementptr inbounds %struct.bActionGroup, ptr %88, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !15
  %118 = and i32 %117, -3
  store i32 %118, ptr %116, align 8, !tbaa !15
  br label %128

119:                                              ; preds = %83
  %120 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !14
  %122 = getelementptr inbounds %struct.NlaTrack, ptr %121, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !22
  br i1 %44, label %124, label %126

124:                                              ; preds = %119
  %125 = or i32 %123, 2
  store i32 %125, ptr %122, align 8, !tbaa !22
  br label %128

126:                                              ; preds = %119
  %127 = and i32 %123, -3
  store i32 %127, ptr %122, align 8, !tbaa !22
  br label %128

128:                                              ; preds = %126, %124, %115, %83, %75
  %129 = load ptr, ptr %47, align 8, !tbaa !6
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %46, !llvm.loop !114

131:                                              ; preds = %128, %3
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_pose_bone_select(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_mouseclick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.4) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load ptr, ptr %14, align 8, !tbaa !87
  %20 = call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.5) #12
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i16 1, i16 -1
  br label %23

23:                                               ; preds = %18, %10
  %24 = phi i16 [ 8, %10 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !115
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !115
  %30 = sitofp i32 %29 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %13, float noundef %27, float noundef %30, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !98
  %32 = sext i16 %31 to i32
  %33 = mul nsw i32 %32, 10
  %34 = sitofp i32 %33 to float
  %35 = sitofp i16 %31 to float
  %36 = fmul float %35, 0x3FB99999A0000000
  %37 = call float @llvm.fmuladd.f32(float %35, float 0x3FE99999A0000000, float %36)
  %38 = fmul float %35, 0x3FD99999A0000000
  %39 = load float, ptr %6, align 4, !tbaa !116
  %40 = load float, ptr %7, align 4, !tbaa !116
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %13, float noundef %34, float noundef %37, float noundef 0.000000e+00, float noundef %38, float noundef %39, float noundef %40, ptr noundef null, ptr noundef nonnull %5) #12
  %41 = load i32, ptr %5, align 4, !tbaa !115
  %42 = call fastcc i32 @mouse_anim_channels(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %41, i16 noundef signext %24) #13, !range !117
  %43 = or disjoint i32 %42, 234881024
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %43, ptr noundef null) #12
  br label %44

44:                                               ; preds = %3, %23
  %45 = phi i32 [ 4, %23 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #11
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animedit_poll_channels_active(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !90
  switch i8 %9, label %10 [
    i8 12, label %11
    i8 2, label %11
    i8 13, label %11
  ]

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7, %7, %7, %1, %4
  %12 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %10 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mouse_anim_channels(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %1, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !68
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 11, ptr noundef %6, i32 noundef %9) #12
  %11 = call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %2) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !118
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %297, label %17

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %2) #13
  br label %297

19:                                               ; preds = %4
  %20 = icmp eq i16 %3, -1
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !10
  br i1 %20, label %23, label %25

23:                                               ; preds = %19
  %24 = icmp eq i32 %22, 6
  br i1 %24, label %137, label %297

25:                                               ; preds = %19
  switch i32 %22, label %291 [
    i32 4, label %26
    i32 5, label %47
    i32 8, label %111
    i32 10, label %111
    i32 11, label %111
    i32 12, label %111
    i32 13, label %111
    i32 14, label %111
    i32 15, label %111
    i32 17, label %111
    i32 18, label %111
    i32 19, label %111
    i32 20, label %111
    i32 16, label %111
    i32 21, label %111
    i32 22, label %111
    i32 23, label %111
    i32 24, label %111
    i32 6, label %137
    i32 7, label %213
    i32 25, label %234
    i32 26, label %249
    i32 27, label %255
    i32 28, label %270
    i32 29, label %276
  ]

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = icmp eq i16 %3, 8
  %32 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 15
  %33 = load i16, ptr %32, align 4, !tbaa !32
  %34 = icmp eq ptr %30, null
  br i1 %31, label %35, label %41

35:                                               ; preds = %26
  %36 = xor i16 %33, 1
  store i16 %36, ptr %32, align 4, !tbaa !32
  br i1 %34, label %297, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.AnimData, ptr %30, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !25
  %40 = xor i32 %39, 16384
  store i32 %40, ptr %38, align 8, !tbaa !25
  br label %297

41:                                               ; preds = %26
  %42 = or i16 %33, 1
  store i16 %42, ptr %32, align 4, !tbaa !32
  br i1 %34, label %297, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.AnimData, ptr %30, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !25
  %46 = or i32 %45, 16384
  store i32 %46, ptr %44, align 8, !tbaa !25
  br label %297

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  %50 = getelementptr inbounds %struct.Base, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !122
  %54 = icmp eq i16 %3, 8
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.Base, ptr %49, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !123
  %58 = xor i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !123
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 53
  store i16 %59, ptr %60, align 4, !tbaa !124
  %61 = icmp eq ptr %53, null
  br i1 %61, label %103, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.AnimData, ptr %53, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !25
  %65 = xor i32 %64, 16384
  store i32 %65, ptr %63, align 8, !tbaa !25
  br label %104

66:                                               ; preds = %47
  %67 = load ptr, ptr %1, align 8, !tbaa !89
  %68 = load ptr, ptr %67, align 8, !tbaa !125
  %69 = getelementptr inbounds %struct.Scene, ptr %68, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %91, label %72

72:                                               ; preds = %66, %88
  %73 = phi ptr [ %89, %88 ], [ %70, %66 ]
  %74 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !123
  %76 = and i32 %75, -2
  store i32 %76, ptr %74, align 8, !tbaa !123
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !120
  %80 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 53
  store i16 %77, ptr %80, align 4, !tbaa !124
  %81 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !122
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.AnimData, ptr %82, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !25
  %87 = and i32 %86, -49153
  store i32 %87, ptr %85, align 8, !tbaa !25
  br label %88

88:                                               ; preds = %72, %84
  %89 = load ptr, ptr %73, align 8, !tbaa !6
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %72, !llvm.loop !126

91:                                               ; preds = %88, %66
  %92 = getelementptr inbounds %struct.Base, ptr %49, i64 0, i32 4
  %93 = load i32, ptr %92, align 8, !tbaa !123
  %94 = or i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !123
  %95 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 53
  %96 = load i16, ptr %95, align 4, !tbaa !124
  %97 = or i16 %96, 1
  store i16 %97, ptr %95, align 4, !tbaa !124
  %98 = icmp eq ptr %53, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.AnimData, ptr %53, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !25
  %102 = or i32 %101, 16384
  store i32 %102, ptr %100, align 8, !tbaa !25
  br label %104

103:                                              ; preds = %91, %55
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %49) #12
  br label %297

104:                                              ; preds = %62, %99
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %49) #12
  %105 = getelementptr inbounds %struct.AnimData, ptr %53, i64 0, i32 7
  %106 = load i32, ptr %105, align 8, !tbaa !25
  %107 = and i32 %106, 16384
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %297, label %109

109:                                              ; preds = %104
  %110 = or i32 %106, 32768
  store i32 %110, ptr %105, align 8, !tbaa !25
  br label %297

111:                                              ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %112 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 10
  %113 = load ptr, ptr %112, align 8, !tbaa !24
  %114 = icmp eq ptr %113, null
  br i1 %114, label %297, label %115

115:                                              ; preds = %111
  %116 = icmp eq i16 %3, 8
  br i1 %116, label %125, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr %1, align 8, !tbaa !89
  %119 = load i16, ptr %7, align 8, !tbaa !68
  %120 = sext i16 %119 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %118, i32 noundef %120, i8 noundef zeroext 0, i32 noundef 0) #13
  %121 = load ptr, ptr %112, align 8, !tbaa !24
  %122 = getelementptr inbounds %struct.AnimData, ptr %121, i64 0, i32 7
  %123 = load i32, ptr %122, align 8, !tbaa !25
  %124 = or i32 %123, 16384
  store i32 %124, ptr %122, align 8, !tbaa !25
  br label %129

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.AnimData, ptr %113, i64 0, i32 7
  %127 = load i32, ptr %126, align 8, !tbaa !25
  %128 = xor i32 %127, 16384
  store i32 %128, ptr %126, align 8, !tbaa !25
  br label %129

129:                                              ; preds = %125, %117
  %130 = phi i32 [ %124, %117 ], [ %128, %125 ]
  %131 = phi ptr [ %121, %117 ], [ %113, %125 ]
  %132 = and i32 %130, 16384
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %297, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.AnimData, ptr %131, i64 0, i32 7
  %136 = or i32 %130, 32768
  store i32 %136, ptr %135, align 8, !tbaa !25
  br label %297

137:                                              ; preds = %23, %25
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !14
  %140 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 8
  %141 = load ptr, ptr %140, align 8, !tbaa !106
  %142 = getelementptr inbounds %struct.bDopeSheet, ptr %141, i64 0, i32 4
  %143 = load i32, ptr %142, align 8, !tbaa !107
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 9
  %148 = load ptr, ptr %147, align 8, !tbaa !61
  %149 = icmp eq ptr %148, null
  br i1 %149, label %163, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.ID, ptr %148, i64 0, i32 4
  %152 = load i16, ptr %151, align 8, !tbaa !109
  %153 = icmp eq i16 %152, 16975
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.Object, ptr %148, i64 0, i32 3
  %156 = load i16, ptr %155, align 8, !tbaa !110
  %157 = icmp eq i16 %156, 25
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.Object, ptr %148, i64 0, i32 18
  %160 = load ptr, ptr %159, align 8, !tbaa !113
  %161 = getelementptr inbounds %struct.bActionGroup, ptr %139, i64 0, i32 5
  %162 = call ptr @BKE_pose_channel_find_name(ptr noundef %160, ptr noundef nonnull %161) #12
  br label %163

163:                                              ; preds = %146, %150, %158, %154, %137
  %164 = phi ptr [ %162, %158 ], [ null, %154 ], [ null, %150 ], [ null, %146 ], [ null, %137 ]
  %165 = phi ptr [ %148, %158 ], [ %148, %154 ], [ null, %150 ], [ null, %146 ], [ null, %137 ]
  %166 = icmp eq i16 %3, 8
  br i1 %166, label %191, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %1, align 8, !tbaa !89
  %169 = load i16, ptr %7, align 8, !tbaa !68
  %170 = sext i16 %169 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %168, i32 noundef %170, i8 noundef zeroext 0, i32 noundef 0) #13
  %171 = icmp eq ptr %164, null
  br i1 %20, label %172, label %189

172:                                              ; preds = %167
  br i1 %171, label %174, label %173

173:                                              ; preds = %172
  call void @ED_pose_de_selectall(ptr noundef %165, i32 noundef 2, i8 noundef zeroext 0) #12
  br label %174

174:                                              ; preds = %173, %172
  %175 = getelementptr inbounds %struct.bActionGroup, ptr %139, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !6
  %177 = icmp eq ptr %176, null
  br i1 %177, label %197, label %178

178:                                              ; preds = %174, %183
  %179 = phi ptr [ %187, %183 ], [ %176, %174 ]
  %180 = getelementptr inbounds %struct.FCurve, ptr %179, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !71
  %182 = icmp eq ptr %181, %139
  br i1 %182, label %183, label %197

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.FCurve, ptr %179, i64 0, i32 9
  %185 = load i16, ptr %184, align 8, !tbaa !19
  %186 = or i16 %185, 2
  store i16 %186, ptr %184, align 8, !tbaa !19
  %187 = load ptr, ptr %179, align 8, !tbaa !6
  %188 = icmp eq ptr %187, null
  br i1 %188, label %197, label %178, !llvm.loop !127

189:                                              ; preds = %167
  br i1 %171, label %197, label %190

190:                                              ; preds = %189
  call void @ED_pose_de_selectall(ptr noundef %165, i32 noundef 2, i8 noundef zeroext 0) #12
  br label %197

191:                                              ; preds = %163
  %192 = getelementptr inbounds %struct.bActionGroup, ptr %139, i64 0, i32 3
  %193 = load i32, ptr %192, align 8, !tbaa !15
  %194 = xor i32 %193, 1
  store i32 %194, ptr %192, align 8, !tbaa !15
  %195 = and i32 %193, 1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %207

197:                                              ; preds = %183, %178, %189, %190, %174
  %198 = getelementptr inbounds %struct.bActionGroup, ptr %139, i64 0, i32 3
  %199 = load i32, ptr %198, align 8, !tbaa !15
  %200 = or i32 %199, 1
  store i32 %200, ptr %198, align 8, !tbaa !15
  br label %201

201:                                              ; preds = %197, %191
  %202 = load ptr, ptr %1, align 8, !tbaa !89
  %203 = load i16, ptr %7, align 8, !tbaa !68
  %204 = sext i16 %203 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %1, ptr noundef %202, i32 noundef %204, i32 noundef 11, ptr noundef nonnull %139, i32 noundef 6) #13
  %205 = icmp eq ptr %164, null
  br i1 %205, label %297, label %206

206:                                              ; preds = %201
  call void @ED_pose_bone_select(ptr noundef %165, ptr noundef nonnull %164, i8 noundef zeroext 1) #12
  br label %297

207:                                              ; preds = %191
  %208 = load ptr, ptr %1, align 8, !tbaa !89
  %209 = load i16, ptr %7, align 8, !tbaa !68
  %210 = sext i16 %209 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %1, ptr noundef %208, i32 noundef %210, i32 noundef 11, ptr noundef null, i32 noundef 6) #13
  %211 = icmp eq ptr %164, null
  br i1 %211, label %297, label %212

212:                                              ; preds = %207
  call void @ED_pose_bone_select(ptr noundef %165, ptr noundef nonnull %164, i8 noundef zeroext 0) #12
  br label %297

213:                                              ; preds = %25
  %214 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !14
  %216 = icmp eq i16 %3, 8
  br i1 %216, label %224, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %1, align 8, !tbaa !89
  %219 = load i16, ptr %7, align 8, !tbaa !68
  %220 = sext i16 %219 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %218, i32 noundef %220, i8 noundef zeroext 0, i32 noundef 0) #13
  %221 = getelementptr inbounds %struct.FCurve, ptr %215, i64 0, i32 9
  %222 = load i16, ptr %221, align 8, !tbaa !19
  %223 = or i16 %222, 2
  store i16 %223, ptr %221, align 8, !tbaa !19
  br label %230

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.FCurve, ptr %215, i64 0, i32 9
  %226 = load i16, ptr %225, align 8, !tbaa !19
  %227 = xor i16 %226, 2
  store i16 %227, ptr %225, align 8, !tbaa !19
  %228 = and i16 %226, 2
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %230, label %297

230:                                              ; preds = %217, %224
  %231 = load ptr, ptr %1, align 8, !tbaa !89
  %232 = load i16, ptr %7, align 8, !tbaa !68
  %233 = sext i16 %232 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %1, ptr noundef %231, i32 noundef %233, i32 noundef 11, ptr noundef nonnull %215, i32 noundef 7) #13
  br label %297

234:                                              ; preds = %25
  %235 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !14
  %237 = icmp eq i16 %3, 8
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.KeyBlock, ptr %236, i64 0, i32 7
  %240 = load i16, ptr %239, align 2, !tbaa !54
  %241 = xor i16 %240, 2
  store i16 %241, ptr %239, align 2, !tbaa !54
  br label %297

242:                                              ; preds = %234
  %243 = load ptr, ptr %1, align 8, !tbaa !89
  %244 = load i16, ptr %7, align 8, !tbaa !68
  %245 = sext i16 %244 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %243, i32 noundef %245, i8 noundef zeroext 0, i32 noundef 0) #13
  %246 = getelementptr inbounds %struct.KeyBlock, ptr %236, i64 0, i32 7
  %247 = load i16, ptr %246, align 2, !tbaa !54
  %248 = or i16 %247, 2
  store i16 %248, ptr %246, align 2, !tbaa !54
  br label %297

249:                                              ; preds = %25
  %250 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !14
  %252 = getelementptr inbounds %struct.bGPdata, ptr %251, i64 0, i32 2
  %253 = load i32, ptr %252, align 8, !tbaa !128
  %254 = xor i32 %253, 4
  store i32 %254, ptr %252, align 8, !tbaa !128
  br label %297

255:                                              ; preds = %25
  %256 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !14
  %258 = icmp eq i16 %3, 8
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.bGPDlayer, ptr %257, i64 0, i32 4
  %261 = load i32, ptr %260, align 8, !tbaa !56
  %262 = xor i32 %261, 32
  store i32 %262, ptr %260, align 8, !tbaa !56
  br label %297

263:                                              ; preds = %255
  %264 = load ptr, ptr %1, align 8, !tbaa !89
  %265 = load i16, ptr %7, align 8, !tbaa !68
  %266 = sext i16 %265 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %264, i32 noundef %266, i8 noundef zeroext 0, i32 noundef 0) #13
  %267 = getelementptr inbounds %struct.bGPDlayer, ptr %257, i64 0, i32 4
  %268 = load i32, ptr %267, align 8, !tbaa !56
  %269 = or i32 %268, 32
  store i32 %269, ptr %267, align 8, !tbaa !56
  br label %297

270:                                              ; preds = %25
  %271 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !14
  %273 = getelementptr inbounds %struct.Mask, ptr %272, i64 0, i32 7
  %274 = load i32, ptr %273, align 8, !tbaa !130
  %275 = xor i32 %274, 16
  store i32 %275, ptr %273, align 8, !tbaa !130
  br label %297

276:                                              ; preds = %25
  %277 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !14
  %279 = icmp eq i16 %3, 8
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.MaskLayer, ptr %278, i64 0, i32 12
  %282 = load i8, ptr %281, align 2, !tbaa !58
  %283 = xor i8 %282, 32
  store i8 %283, ptr %281, align 2, !tbaa !58
  br label %297

284:                                              ; preds = %276
  %285 = load ptr, ptr %1, align 8, !tbaa !89
  %286 = load i16, ptr %7, align 8, !tbaa !68
  %287 = sext i16 %286 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %285, i32 noundef %287, i8 noundef zeroext 0, i32 noundef 0) #13
  %288 = getelementptr inbounds %struct.MaskLayer, ptr %278, i64 0, i32 12
  %289 = load i8, ptr %288, align 2, !tbaa !58
  %290 = or i8 %289, 32
  store i8 %290, ptr %288, align 2, !tbaa !58
  br label %297

291:                                              ; preds = %25
  %292 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !118
  %293 = and i32 %292, 1
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %291
  %296 = call i32 @puts(ptr nonnull dereferenceable(1) @str.114)
  br label %297

297:                                              ; preds = %249, %270, %295, %291, %41, %43, %35, %37, %109, %104, %129, %134, %111, %207, %212, %201, %206, %230, %224, %242, %238, %263, %259, %284, %280, %103, %23, %13, %17
  %298 = phi i32 [ 0, %17 ], [ 0, %13 ], [ 0, %23 ], [ 0, %295 ], [ 0, %291 ], [ 4718593, %270 ], [ 4718593, %249 ], [ 4718598, %41 ], [ 4718598, %43 ], [ 4718598, %35 ], [ 4718598, %37 ], [ 4718598, %109 ], [ 4718598, %104 ], [ 4718598, %129 ], [ 4718598, %134 ], [ 4718598, %111 ], [ 4718598, %207 ], [ 4718598, %212 ], [ 4718598, %201 ], [ 4718598, %206 ], [ 4718598, %230 ], [ 4718598, %224 ], [ 4718598, %242 ], [ 4718598, %238 ], [ 4718593, %263 ], [ 4718593, %259 ], [ 4718593, %284 ], [ 4718593, %280 ], [ 4718598, %103 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i32 %298
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_pose_de_selectall(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_rename_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %66, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !115
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !115
  %19 = sitofp i32 %18 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %13, float noundef %16, float noundef %19, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %21 = load i16, ptr %20, align 8, !tbaa !68
  %22 = icmp eq i16 %21, 7
  br i1 %22, label %23, label %53

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !98
  %27 = sext i16 %26 to i32
  %28 = mul nsw i32 %27, 10
  %29 = sitofp i32 %28 to float
  %30 = icmp eq ptr %25, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = sitofp i16 %26 to float
  br label %43

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.SpaceNla, ptr %25, i64 0, i32 7
  %35 = load i16, ptr %34, align 2, !tbaa !102
  %36 = and i16 %35, 32
  %37 = icmp eq i16 %36, 0
  %38 = sitofp i16 %26 to float
  br i1 %37, label %43, label %39

39:                                               ; preds = %33
  %40 = fmul float %38, 0x3FE99999A0000000
  %41 = call float @llvm.fmuladd.f32(float %38, float 0x3FB99999A0000000, float %40)
  %42 = fmul float %38, 0x3FD99999A0000000
  br label %48

43:                                               ; preds = %33, %31
  %44 = phi float [ %32, %31 ], [ %38, %33 ]
  %45 = fmul float %44, 0x3FF3333340000000
  %46 = call float @llvm.fmuladd.f32(float %44, float 0x3FB99999A0000000, float %45)
  %47 = fmul float %44, 0x3FE3333340000000
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi float [ %41, %39 ], [ %46, %43 ]
  %50 = phi float [ %42, %39 ], [ %47, %43 ]
  %51 = load float, ptr %6, align 4, !tbaa !116
  %52 = load float, ptr %7, align 4, !tbaa !116
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %13, float noundef %29, float noundef %49, float noundef 0.000000e+00, float noundef %50, float noundef %51, float noundef %52, ptr noundef null, ptr noundef nonnull %5) #12
  br label %64

53:                                               ; preds = %10
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !98
  %55 = sext i16 %54 to i32
  %56 = mul nsw i32 %55, 10
  %57 = sitofp i32 %56 to float
  %58 = sitofp i16 %54 to float
  %59 = fmul float %58, 0x3FB99999A0000000
  %60 = call float @llvm.fmuladd.f32(float %58, float 0x3FE99999A0000000, float %59)
  %61 = fmul float %58, 0x3FD99999A0000000
  %62 = load float, ptr %6, align 4, !tbaa !116
  %63 = load float, ptr %7, align 4, !tbaa !116
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %13, float noundef %57, float noundef %60, float noundef 0.000000e+00, float noundef %61, float noundef %62, float noundef %63, ptr noundef null, ptr noundef nonnull %5) #12
  br label %64

64:                                               ; preds = %53, %48
  %65 = load i32, ptr %5, align 4, !tbaa !115
  call fastcc void @rename_anim_channels(ptr noundef nonnull %4, i32 noundef %65) #13
  br label %66

66:                                               ; preds = %3, %64
  %67 = phi i32 [ 4, %64 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #11
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rename_anim_channels(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %0, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !68
  %9 = sext i16 %8 to i32
  %10 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 11, ptr noundef %6, i32 noundef %9) #12
  %11 = call ptr @BLI_findlink(ptr noundef nonnull %3, i32 noundef %1) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !118
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %1) #13
  br label %19

19:                                               ; preds = %17, %13
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #12
  br label %41

20:                                               ; preds = %2
  %21 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %11) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bAnimChannelType, ptr %21, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %28 = call zeroext i8 %25(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = add nsw i32 %1, 1
  %36 = getelementptr inbounds %struct.bDopeSheet, ptr %32, i64 0, i32 6
  store i32 %35, ptr %36, align 8, !tbaa !133
  br label %37

37:                                               ; preds = %30, %34, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %38

38:                                               ; preds = %37, %23, %20
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #12
  %39 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  call void @ED_region_tag_redraw(ptr noundef %40) #12
  br label %41

41:                                               ; preds = %38, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @animchannels_find_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #11
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.bDopeSheet, ptr %11, i64 0, i32 3
  call void @RNA_string_set(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull %12) #12
  %13 = call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %14

14:                                               ; preds = %3, %7
  %15 = phi i32 [ %13, %7 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #11
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_find_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %struct.bDopeSheet, ptr %10, i64 0, i32 3
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.43, ptr noundef nonnull %11) #12
  %12 = load ptr, ptr %9, align 8, !tbaa !106
  %13 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !134
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !107
  %18 = and i32 %17, -134217729
  %19 = select i1 %15, i32 0, i32 134217728
  %20 = or disjoint i32 %18, %19
  store i32 %20, ptr %16, align 8, !tbaa !107
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %21

21:                                               ; preds = %2, %6
  %22 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_find_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !90
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

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_setflag_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.48) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !87
  %11 = call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.50) #12
  %12 = icmp ne i32 %11, 3
  %13 = zext i1 %12 to i8
  call fastcc void @setflag_anim_channels(ptr noundef nonnull %3, i32 noundef %11, i32 noundef %9, i8 noundef zeroext 1, i8 noundef zeroext %13) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setflag_anim_channels(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !68
  %13 = sext i16 %12 to i32
  %14 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 9, ptr noundef %10, i32 noundef %13) #12
  br label %15

15:                                               ; preds = %9, %5
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 4, !tbaa !135
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !136
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %19, %23
  %25 = phi i32 [ 2059, %23 ], [ 2061, %19 ]
  %26 = icmp eq i8 %3, 0
  %27 = or disjoint i32 %25, 64
  %28 = select i1 %26, i32 %25, i32 %27
  %29 = load ptr, ptr %0, align 8, !tbaa !89
  %30 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %31 = load i16, ptr %30, align 8, !tbaa !68
  %32 = sext i16 %31 to i32
  %33 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %28, ptr noundef %29, i32 noundef %32) #12
  %34 = icmp eq i32 %2, 3
  br i1 %34, label %35, label %42

35:                                               ; preds = %24, %39
  %36 = phi ptr [ %37, %39 ], [ %6, %24 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %37, i32 noundef %1) #12
  %41 = icmp sgt i16 %40, 0
  br i1 %41, label %42, label %35, !llvm.loop !137

42:                                               ; preds = %39, %35, %24
  %43 = phi i32 [ %2, %24 ], [ 0, %39 ], [ 1, %35 ]
  %44 = load ptr, ptr %6, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42, %52
  %47 = phi ptr [ %53, %52 ], [ %44, %42 ]
  %48 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef %1) #12
  %49 = icmp eq i16 %48, -1
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  call void @ANIM_channel_setting_set(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef %1, i32 noundef %43) #12
  br i1 %8, label %52, label %51

51:                                               ; preds = %50
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %47, i32 noundef %1, i32 noundef %43) #13
  br label %52

52:                                               ; preds = %50, %51, %46
  %53 = load ptr, ptr %47, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %46, !llvm.loop !138

55:                                               ; preds = %52, %42
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #12
  call void @BLI_freelistN(ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare signext i16 @ANIM_channel_setting_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %83, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !68
  switch i16 %9, label %10 [
    i16 2, label %83
    i16 6, label %53
  ]

10:                                               ; preds = %7
  %11 = sext i16 %9 to i32
  %12 = load ptr, ptr %3, align 8, !tbaa !89
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2379, ptr noundef %12, i32 noundef %11) #12
  %14 = load ptr, ptr %4, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %50, label %16

16:                                               ; preds = %10, %47
  %17 = phi ptr [ %48, %47 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !10
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %17, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bActionGroup, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27, %36
  %32 = phi ptr [ %37, %36 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.FCurve, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = icmp eq ptr %34, %23
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !140
  %38 = load ptr, ptr %25, align 8, !tbaa !70
  call void @action_groups_remove_channel(ptr noundef %38, ptr noundef nonnull %32) #12
  call void @free_fcurve(ptr noundef nonnull %32) #12
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %31, !llvm.loop !141

40:                                               ; preds = %31, %36, %27
  %41 = load ptr, ptr %25, align 8, !tbaa !70
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.bAction, ptr %41, i64 0, i32 3
  call void @BLI_freelinkN(ptr noundef nonnull %44, ptr noundef %23) #12
  br label %47

45:                                               ; preds = %40
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !6
  call void %46(ptr noundef %23) #12
  br label %47

47:                                               ; preds = %21, %45, %43, %16
  %48 = load ptr, ptr %17, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %16, !llvm.loop !142

50:                                               ; preds = %47, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  %51 = load i16, ptr %8, align 8, !tbaa !68
  %52 = sext i16 %51 to i32
  br label %53

53:                                               ; preds = %7, %50
  %54 = phi i32 [ 6, %7 ], [ %52, %50 ]
  %55 = load ptr, ptr %3, align 8, !tbaa !89
  %56 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2371, ptr noundef %55, i32 noundef %54) #12
  %57 = load ptr, ptr %4, align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %82, label %59

59:                                               ; preds = %53, %79
  %60 = phi ptr [ %80, %79 ], [ %57, %53 ]
  %61 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !10
  switch i32 %62, label %79 [
    i32 7, label %63
    i32 27, label %68
    i32 29, label %74
  ]

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !24
  %66 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !14
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef nonnull %3, ptr noundef %65, ptr noundef %67) #13
  br label %79

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !14
  call void @free_gpencil_frames(ptr noundef %72) #12
  %73 = getelementptr inbounds %struct.bGPdata, ptr %70, i64 0, i32 1
  call void @BLI_freelinkN(ptr noundef nonnull %73, ptr noundef %72) #12
  br label %79

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !61
  %77 = getelementptr inbounds %struct.bAnimListElem, ptr %60, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !14
  call void @BKE_mask_layer_remove(ptr noundef %76, ptr noundef %78) #12
  br label %79

79:                                               ; preds = %63, %68, %74, %59
  %80 = load ptr, ptr %60, align 8, !tbaa !6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %59, !llvm.loop !143

82:                                               ; preds = %79, %53
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %83

83:                                               ; preds = %7, %2, %82
  %84 = phi i32 [ 4, %82 ], [ 2, %2 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %84
}

; Function Attrs: optsize
declare void @free_gpencil_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mask_layer_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_rearrange_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.20) #12
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !68
  switch i16 %12, label %19 [
    i16 3, label %13
    i16 9, label %15
    i16 1, label %17
  ]

13:                                               ; preds = %7
  %14 = call i32 @puts(ptr nonnull dereferenceable(1) @str.117)
  br label %46

15:                                               ; preds = %7
  %16 = call i32 @puts(ptr nonnull dereferenceable(1) @str.116)
  br label %46

17:                                               ; preds = %7
  %18 = load ptr, ptr %3, align 8, !tbaa !89
  call fastcc void @rearrange_action_channels(ptr noundef nonnull %3, ptr noundef %18, i32 noundef %10) #13
  br label %46

19:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr %3, align 8, !tbaa !89
  %21 = sext i16 %12 to i32
  %22 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1027, ptr noundef %20, i32 noundef %21) #12
  %23 = load ptr, ptr %4, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %19, %42
  %26 = phi ptr [ %43, %42 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = load i16, ptr %11, align 8, !tbaa !68
  switch i16 %29, label %32 [
    i16 7, label %30
    i16 6, label %31
  ]

30:                                               ; preds = %25
  call fastcc void @rearrange_nla_channels(ptr noundef nonnull %3, ptr noundef %28, i32 noundef %10) #13
  br label %42

31:                                               ; preds = %25
  call fastcc void @rearrange_driver_channels(ptr noundef nonnull %3, ptr noundef %28, i32 noundef %10) #13
  br label %42

32:                                               ; preds = %25
  %33 = load ptr, ptr %28, align 8, !tbaa !70
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call fastcc void @rearrange_action_channels(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef %10) #13
  br label %42

36:                                               ; preds = %32
  %37 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !118
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 @puts(ptr nonnull dereferenceable(1) @str.115)
  br label %42

42:                                               ; preds = %35, %40, %36, %31, %30
  %43 = load ptr, ptr %26, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %25, !llvm.loop !144

45:                                               ; preds = %42, %19
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %46

46:                                               ; preds = %15, %45, %17, %13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %47

47:                                               ; preds = %2, %46
  %48 = phi i32 [ 4, %46 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rearrange_action_channels(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.bActionGroup, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = tail call fastcc ptr @rearrange_get_mode_func(i32 noundef %2) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %3
  call fastcc void @split_groups_action_temp(ptr noundef %1, ptr noundef nonnull %4) #13
  call fastcc void @rearrange_animchannels_filter_visible(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 6) #13
  %9 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 3
  %10 = call fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef %2, i32 noundef 6, ptr noundef nonnull %5) #13, !range !5
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  call fastcc void @rearrange_animchannels_filter_visible(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 7) #13
  %13 = load ptr, ptr %9, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %0, null
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %39
  %19 = phi ptr [ %13, %15 ], [ %40, %39 ]
  br i1 %16, label %25, label %20

20:                                               ; preds = %18
  %21 = load i16, ptr %17, align 4, !tbaa !135
  %22 = icmp eq i16 %21, 2
  %23 = getelementptr inbounds %struct.bActionGroup, ptr %19, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !15
  br i1 %22, label %33, label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.bActionGroup, ptr %19, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !15
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %36

30:                                               ; preds = %20
  %31 = and i32 %24, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %36

33:                                               ; preds = %20
  %34 = and i32 %24, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30, %33, %25
  %37 = getelementptr inbounds %struct.bActionGroup, ptr %19, i64 0, i32 2
  %38 = call fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef nonnull %37, ptr noundef nonnull %6, i32 noundef %2, i32 noundef 7, ptr noundef nonnull %5) #13, !range !5
  br label %39

39:                                               ; preds = %30, %25, %33, %36
  %40 = load ptr, ptr %19, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %18, !llvm.loop !145

42:                                               ; preds = %39, %12
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  br label %43

43:                                               ; preds = %42, %8
  call fastcc void @join_groups_action_temp(ptr noundef %1) #13
  br label %44

44:                                               ; preds = %3, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rearrange_nla_channels(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = sub nsw i32 0, %2
  %6 = tail call fastcc ptr @rearrange_get_mode_func(i32 noundef %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  call fastcc void @rearrange_animchannels_filter_visible(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 30) #13
  %9 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 3
  %10 = call fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef %5, i32 noundef 30, ptr noundef nonnull %4) #13, !range !5
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  br label %11

11:                                               ; preds = %3, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rearrange_driver_channels(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call fastcc ptr @rearrange_get_mode_func(i32 noundef %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !25
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  call fastcc void @rearrange_animchannels_filter_visible(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 7) #13
  %13 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  %14 = call fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef nonnull %13, ptr noundef nonnull %5, i32 noundef %2, i32 noundef 7, ptr noundef nonnull %4) #13, !range !5
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  br label %15

15:                                               ; preds = %7, %3, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef ptr @rearrange_get_mode_func(i32 noundef %0) unnamed_addr #8 {
  %2 = add i32 %0, 2
  %3 = icmp ult i32 %2, 5
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [5 x ptr], ptr @switch.table.rearrange_get_mode_func, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_groups_action_temp(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %20
  %11 = phi ptr [ %6, %8 ], [ %21, %20 ]
  %12 = getelementptr inbounds %struct.bActionGroup, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bActionGroup, ptr %11, i64 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  %18 = load ptr, ptr %17, align 8, !tbaa !140
  store ptr %18, ptr %9, align 8, !tbaa !147
  %19 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 1
  store ptr null, ptr %19, align 8, !tbaa !149
  store ptr null, ptr %17, align 8, !tbaa !140
  br label %20

20:                                               ; preds = %10, %15
  %21 = load ptr, ptr %11, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !150

23:                                               ; preds = %20, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %1, i8 0, i64 120, i1 false)
  %24 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 3
  store i32 1073741832, ptr %24, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 5
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull @.str.77, i64 noundef 64) #12
  %27 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !147
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 1
  store ptr null, ptr %31, align 8, !tbaa !149
  %32 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2
  store ptr %28, ptr %32, align 8, !tbaa !139
  store ptr null, ptr %27, align 8, !tbaa !147
  %33 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !151
  store ptr null, ptr %34, align 8, !tbaa !140
  %35 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !146
  store ptr null, ptr %33, align 8, !tbaa !151
  %36 = load ptr, ptr %32, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %30, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %30 ]
  %40 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 2
  store ptr %1, ptr %40, align 8, !tbaa !71
  %41 = load ptr, ptr %39, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !llvm.loop !152

43:                                               ; preds = %38, %30, %23
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %1) #12
  br label %44

44:                                               ; preds = %2, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rearrange_animchannels_filter_visible(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %1, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !68
  %8 = sext i16 %7 to i32
  %9 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %5, i32 noundef %8) #12
  %10 = load ptr, ptr %4, align 8, !tbaa !29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %3, %19
  %13 = phi ptr [ %14, %19 ], [ %10, %3 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !10
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %13) #12
  br label %19

19:                                               ; preds = %12, %18
  %20 = icmp eq ptr %14, null
  br i1 %20, label %21, label %12, !llvm.loop !153

21:                                               ; preds = %19, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @rearrange_animchannel_islands(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %0) #13, !range !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %17, %12 ], [ %10, %9 ]
  %14 = call ptr @BLI_findptr(ptr noundef %4, ptr noundef nonnull %13, i32 noundef 16) #12
  %15 = icmp eq ptr %14, null
  %16 = zext i1 %15 to i8
  %17 = load ptr, ptr %13, align 8, !tbaa !155
  call fastcc void @rearrange_animchannel_add_to_islands(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef %3, i8 noundef zeroext %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !llvm.loop !157

19:                                               ; preds = %12
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds %struct.ListBase, ptr %6, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = icmp sgt i32 %2, 0
  %26 = select i1 %25, ptr %22, ptr %20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24, %40
  %29 = phi ptr [ %33, %40 ], [ %26, %24 ]
  %30 = phi i8 [ %41, %40 ], [ 0, %24 ]
  %31 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %29, i64 0, i32 1
  %32 = select i1 %25, ptr %31, ptr %29
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = call zeroext i8 %1(ptr noundef nonnull %6, ptr noundef nonnull %29) #12, !callees !158
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %29, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !159
  %39 = or i32 %38, 4
  store i32 %39, ptr %37, align 8, !tbaa !159
  br label %40

40:                                               ; preds = %28, %36
  %41 = phi i8 [ 1, %36 ], [ %30, %28 ]
  %42 = icmp eq ptr %33, null
  br i1 %42, label %43, label %28, !llvm.loop !161

43:                                               ; preds = %40, %9, %24, %19
  %44 = phi i8 [ 0, %19 ], [ 0, %24 ], [ 0, %9 ], [ %41, %40 ]
  call fastcc void @rearrange_animchannel_flatten_islands(ptr noundef nonnull %6, ptr noundef nonnull %0) #13
  br label %45

45:                                               ; preds = %5, %43
  %46 = phi i8 [ %44, %43 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @join_groups_action_temp(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %25
  %9 = phi ptr [ %4, %6 ], [ %26, %25 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %10 = getelementptr inbounds %struct.bActionGroup, ptr %9, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !154
  tail call void @BLI_movelisttolist(ptr noundef nonnull %7, ptr noundef nonnull %10) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !154
  %11 = getelementptr inbounds %struct.bActionGroup, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !15
  %13 = and i32 %12, 2147483647
  store i32 %13, ptr %11, align 8, !tbaa !15
  %14 = and i32 %12, 1073741824
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %10, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !71
  %22 = load ptr, ptr %20, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !162

24:                                               ; preds = %19, %16
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  br label %28

25:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  %26 = load ptr, ptr %9, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8, !llvm.loop !163

28:                                               ; preds = %25, %1, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @rearrange_island_top(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @rearrange_island_ok(ptr noundef %1) #13, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !29
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @rearrange_island_up(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @rearrange_island_ok(ptr noundef %1) #13, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %10
  %6 = phi ptr [ %8, %10 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !159
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !165

15:                                               ; preds = %10
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #12
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %1) #12
  br label %16

16:                                               ; preds = %5, %2, %15
  %17 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %5 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @rearrange_island_down(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @rearrange_island_ok(ptr noundef %1) #13, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %9
  %6 = phi ptr [ %7, %9 ], [ %1, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !166
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !159
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !167

14:                                               ; preds = %9
  %15 = and i32 %11, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #12
  tail call void @BLI_insertlinkafter(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1) #12
  br label %18

18:                                               ; preds = %5, %14, %2, %17
  %19 = phi i8 [ 1, %17 ], [ 0, %2 ], [ 0, %14 ], [ 0, %5 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @rearrange_island_bottom(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @rearrange_island_ok(ptr noundef %1) #13, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !168
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #12
  %8 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !159
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %14

13:                                               ; preds = %5
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %1) #12
  br label %14

14:                                               ; preds = %2, %12, %13
  %15 = phi i8 [ 1, %13 ], [ 1, %12 ], [ 0, %2 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rearrange_island_ok(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !159
  %4 = and i32 %3, 7
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rearrange_animchannel_add_to_islands(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !168
  switch i32 %3, label %29 [
    i32 6, label %8
    i32 7, label %19
    i32 30, label %24
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = trunc i32 %10 to i8
  %14 = lshr exact i8 %13, 1
  %15 = and i8 %14, 1
  %16 = select i1 %12, i8 %15, i8 1
  %17 = and i32 %10, 1073741824
  %18 = icmp eq i32 %17, 0
  br label %31

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %21 = load i16, ptr %20, align 8, !tbaa !19
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 2
  br label %31

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %2, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !22
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 2
  br label %31

29:                                               ; preds = %5
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %3) #13
  br label %68

31:                                               ; preds = %24, %19, %8
  %32 = phi i1 [ true, %24 ], [ true, %19 ], [ %18, %8 ]
  %33 = phi i8 [ %28, %24 ], [ %23, %19 ], [ %16, %8 ]
  %34 = icmp eq ptr %7, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %7, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !159
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  %40 = icmp eq i8 %33, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = and i32 %37, 8
  %44 = zext nneg i8 %4 to i32
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %65, label %46

46:                                               ; preds = %42, %35, %31
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !6
  %48 = tail call ptr %47(i64 noundef 40, ptr noundef nonnull @.str.79) #12
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %48) #12
  %49 = icmp eq i8 %33, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %48, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !159
  %53 = or i32 %52, 1
  store i32 %53, ptr %51, align 8, !tbaa !159
  br label %54

54:                                               ; preds = %50, %46
  br i1 %32, label %59, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %48, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !159
  %58 = or i32 %57, 2
  store i32 %58, ptr %56, align 8, !tbaa !159
  br label %59

59:                                               ; preds = %55, %54
  %60 = icmp eq i8 %4, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %48, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !159
  %64 = or i32 %63, 8
  store i32 %64, ptr %62, align 8, !tbaa !159
  br label %65

65:                                               ; preds = %59, %61, %42
  %66 = phi ptr [ %48, %61 ], [ %48, %59 ], [ %7, %42 ]
  tail call void @BLI_remlink(ptr noundef %1, ptr noundef nonnull %2) #12
  %67 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %66, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %67, ptr noundef nonnull %2) #12
  br label %68

68:                                               ; preds = %65, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rearrange_animchannel_flatten_islands(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !166
  %8 = getelementptr inbounds %struct.tReorderChannelIsland, ptr %6, i64 0, i32 2
  tail call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %8) #12
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %6) #12
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %5, !llvm.loop !169

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_expand_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.18) #12
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  call fastcc void @setflag_anim_channels(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 1, i8 noundef zeroext %11, i8 noundef zeroext 0) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_collapse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  %4 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.18) #12
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  call fastcc void @setflag_anim_channels(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0, i8 noundef zeroext %11, i8 noundef zeroext 0) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i32 [ 4, %6 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_visibility_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !68
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 2057, ptr noundef %9, i32 noundef %12) #12
  %14 = load ptr, ptr %3, align 8, !tbaa !89
  %15 = load i16, ptr %10, align 8, !tbaa !68
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2115, ptr noundef %14, i32 noundef %16) #12
  br label %18

18:                                               ; preds = %22, %8
  %19 = phi ptr [ %4, %8 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %3, ptr noundef nonnull %20, i32 noundef 4) #12
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %18, label %25, !llvm.loop !170

25:                                               ; preds = %22, %18
  %26 = phi i32 [ 0, %22 ], [ 1, %18 ]
  %27 = load ptr, ptr %4, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = zext i1 %21 to i32
  br label %31

31:                                               ; preds = %29, %37
  %32 = phi ptr [ %27, %29 ], [ %38, %37 ]
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !10
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  call void @ANIM_channel_setting_set(ptr noundef nonnull %3, ptr noundef nonnull %32, i32 noundef 4, i32 noundef %26) #12
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %32, i32 noundef 4, i32 noundef %30) #13
  br label %37

37:                                               ; preds = %31, %36
  %38 = load ptr, ptr %32, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %31, !llvm.loop !171

40:                                               ; preds = %37, %25
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %41

41:                                               ; preds = %2, %40
  %42 = phi i32 [ 4, %40 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %42
}

; Function Attrs: optsize
declare i32 @ED_operator_graphedit_active(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_visibility_set_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !68
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 2057, ptr noundef %9, i32 noundef %12) #12
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 3
  %15 = load i16, ptr %14, align 4, !tbaa !135
  %16 = icmp eq i16 %15, 2
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 4
  %18 = load i16, ptr %17, align 2
  %19 = icmp ne i16 %18, 2
  %20 = select i1 %16, i1 %19, i1 false
  %21 = select i1 %20, i32 2181, i32 2179
  %22 = load ptr, ptr %3, align 8, !tbaa !89
  %23 = load i16, ptr %10, align 8, !tbaa !68
  %24 = sext i16 %23 to i32
  %25 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %21, ptr noundef %22, i32 noundef %24) #12
  %26 = load ptr, ptr %4, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %8, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %8 ]
  call void @ANIM_channel_setting_set(ptr noundef nonnull %3, ptr noundef nonnull %29, i32 noundef 4, i32 noundef 0) #12
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %29, i32 noundef 4, i32 noundef 0) #13
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28, !llvm.loop !172

32:                                               ; preds = %28, %8
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  %33 = load ptr, ptr %3, align 8, !tbaa !89
  %34 = load i16, ptr %10, align 8, !tbaa !68
  %35 = sext i16 %34 to i32
  %36 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2112, ptr noundef %33, i32 noundef %35) #12
  %37 = load ptr, ptr %4, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %32, %45
  %40 = phi ptr [ %46, %45 ], [ %37, %32 ]
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !10
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  call void @ANIM_channel_setting_set(ptr noundef nonnull %3, ptr noundef nonnull %40, i32 noundef 4, i32 noundef 1) #12
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %40, i32 noundef 4, i32 noundef 1) #13
  br label %45

45:                                               ; preds = %39, %44
  %46 = load ptr, ptr %40, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39, !llvm.loop !173

48:                                               ; preds = %45, %32
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %49

49:                                               ; preds = %2, %48
  %50 = phi i32 [ 4, %48 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_enable_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !68
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2049, ptr noundef %8, i32 noundef %11) #12
  %13 = load ptr, ptr %4, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %7, %29
  %16 = phi ptr [ %33, %29 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 9
  %20 = load i16, ptr %19, align 8, !tbaa !19
  %21 = and i16 %20, -1025
  store i16 %21, ptr %19, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !174
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.ChannelDriver, ptr %23, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !175
  %28 = and i32 %27, -2
  store i32 %28, ptr %26, align 4, !tbaa !175
  br label %29

29:                                               ; preds = %25, %15
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 6
  %31 = load i16, ptr %30, align 4, !tbaa !177
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 4, !tbaa !177
  %33 = load ptr, ptr %16, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15, !llvm.loop !178

35:                                               ; preds = %29, %7
  call void @ANIM_animdata_update(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %36

36:                                               ; preds = %2, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @animchannels_enable_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !90
  %10 = icmp eq i8 %9, 12
  %11 = icmp eq i8 %9, 2
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %7, %1, %4
  %15 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %13, %7 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @ANIM_animdata_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_clean_empty_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !68
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1027, ptr noundef %8, i32 noundef %11) #12
  %13 = load ptr, ptr %4, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %7, %47
  %16 = phi ptr [ %48, %47 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %15
  br label %28

28:                                               ; preds = %23, %27
  %29 = phi i1 [ true, %27 ], [ false, %23 ]
  %30 = getelementptr inbounds %struct.AnimData, ptr %20, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !179
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28, %38
  %34 = phi ptr [ %39, %38 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct.NlaTrack, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !180
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8, !tbaa !181
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33, !llvm.loop !182

41:                                               ; preds = %38, %28
  %42 = getelementptr inbounds %struct.AnimData, ptr %20, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !183
  %44 = icmp eq ptr %43, null
  %45 = select i1 %29, i1 %44, i1 false
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @BKE_free_animdata(ptr noundef %18) #12
  br label %47

47:                                               ; preds = %33, %46, %41
  %48 = load ptr, ptr %16, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %15, !llvm.loop !184

50:                                               ; preds = %47, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 4, %50 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %52
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_group_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %6 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.107, ptr noundef nonnull %4) #12
  %11 = load i8, ptr %4, align 16, !tbaa !134
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %3, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !68
  %17 = sext i16 %16 to i32
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 3075, ptr noundef %14, i32 noundef %17) #12
  %19 = load ptr, ptr %5, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %13, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %13 ]
  call fastcc void @animchannels_group_channels(ptr noundef nonnull %3, ptr noundef nonnull %22, ptr noundef nonnull %4) #13
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !185

25:                                               ; preds = %21, %13
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %26

26:                                               ; preds = %8, %25, %2
  %27 = phi i32 [ 2, %2 ], [ 4, %25 ], [ 4, %8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @animchannels_grouping_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #12
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !90
  switch i8 %10, label %21 [
    i8 12, label %11
    i8 2, label %17
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceAction, ptr %8, i64 0, i32 9
  %13 = load i8, ptr %12, align 8, !tbaa !186
  %14 = icmp eq i8 %13, 3
  %15 = icmp eq i8 %13, 0
  %16 = or i1 %14, %15
  br label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.SpaceIpo, ptr %8, i64 0, i32 9
  %19 = load i16, ptr %18, align 8, !tbaa !188
  %20 = icmp eq i16 %19, 0
  br label %21

21:                                               ; preds = %17, %11, %7, %1, %4
  %22 = phi i1 [ false, %4 ], [ false, %1 ], [ false, %7 ], [ %16, %11 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animchannels_group_channels(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %10 = call i64 @ANIM_animdata_filter(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 67, ptr noundef nonnull %1, i32 noundef 8) #12
  %11 = load ptr, ptr %4, align 8, !tbaa !29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %9
  %14 = call ptr @action_groups_add_new(ptr noundef nonnull %7, ptr noundef %2) #12
  %15 = load ptr, ptr %4, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bAction, ptr %7, i64 0, i32 3
  br label %19

19:                                               ; preds = %17, %31
  %20 = phi ptr [ %15, %17 ], [ %32, %31 ]
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  call void @action_groups_remove_channel(ptr noundef nonnull %7, ptr noundef %22) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.bActionGroup, ptr %24, i64 0, i32 2
  %28 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %27) #13, !range !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @BLI_freelinkN(ptr noundef nonnull %18, ptr noundef nonnull %24) #12
  br label %31

31:                                               ; preds = %30, %26, %19
  call void @action_groups_add_channel(ptr noundef nonnull %7, ptr noundef %14, ptr noundef nonnull %22) #12
  %32 = load ptr, ptr %20, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %19, !llvm.loop !190

34:                                               ; preds = %31, %13, %9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %35

35:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: optsize
declare ptr @action_groups_add_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @animchannels_ungroup_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !68
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2115, ptr noundef %8, i32 noundef %11) #12
  %13 = load ptr, ptr %4, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %7, %36
  %16 = phi ptr [ %37, %36 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  call void @action_groups_remove_channel(ptr noundef nonnull %21, ptr noundef nonnull %25) #12
  %30 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 1
  call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef nonnull %25) #12
  %31 = getelementptr inbounds %struct.bActionGroup, ptr %27, i64 0, i32 2
  %32 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %31) #13, !range !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 3
  call void @BLI_freelinkN(ptr noundef nonnull %35, ptr noundef nonnull %27) #12
  br label %36

36:                                               ; preds = %23, %34, %29, %15, %20
  %37 = load ptr, ptr %16, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %15, !llvm.loop !191

39:                                               ; preds = %36, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #12
  br label %40

40:                                               ; preds = %2, %39
  %41 = phi i32 [ 4, %39 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  ret i32 %41
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i8 0, i8 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 24}
!11 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !13, i64 36, !13, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!12 = !{!"int", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!11, !7, i64 16}
!15 = !{!16, !12, i64 32}
!16 = !{!"bActionGroup", !7, i64 0, !7, i64 8, !17, i64 16, !12, i64 32, !12, i64 36, !8, i64 40, !18, i64 104}
!17 = !{!"ListBase", !7, i64 0, !7, i64 8}
!18 = !{!"ThemeWireColor", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 12, !13, i64 14}
!19 = !{!20, !13, i64 72}
!20 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !17, i64 32, !7, i64 48, !7, i64 56, !12, i64 64, !21, i64 68, !13, i64 72, !13, i64 74, !12, i64 76, !7, i64 80, !12, i64 88, !8, i64 92, !21, i64 104, !21, i64 108}
!21 = !{!"float", !8, i64 0}
!22 = !{!23, !12, i64 32}
!23 = !{!"NlaTrack", !7, i64 0, !7, i64 8, !17, i64 16, !12, i64 32, !12, i64 36, !8, i64 40}
!24 = !{!11, !7, i64 56}
!25 = !{!26, !12, i64 80}
!26 = !{!"AnimData", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24, !7, i64 40, !17, i64 48, !17, i64 64, !12, i64 80, !12, i64 84, !13, i64 88, !13, i64 90, !21, i64 92}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!17, !7, i64 0}
!30 = !{!11, !12, i64 28}
!31 = distinct !{!31, !28}
!32 = !{!33, !13, i64 244}
!33 = !{!"Scene", !34, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !17, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !13, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !35, i64 280, !44, i64 4264, !17, i64 4296, !17, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !13, i64 4376, !13, i64 4378, !12, i64 4380, !17, i64 4384, !45, i64 4400, !46, i64 4416, !49, i64 4600, !7, i64 4608, !50, i64 4616, !7, i64 4640, !51, i64 4648, !51, i64 4656, !37, i64 4664, !38, i64 4824, !52, i64 4888, !7, i64 4952}
!34 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !13, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !7, i64 112}
!35 = !{!"RenderData", !36, i64 0, !7, i64 248, !7, i64 256, !39, i64 264, !40, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !21, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !13, i64 432, !13, i64 434, !21, i64 436, !21, i64 440, !21, i64 444, !21, i64 448, !21, i64 452, !13, i64 456, !13, i64 458, !13, i64 460, !13, i64 462, !13, i64 464, !13, i64 466, !12, i64 468, !13, i64 472, !13, i64 474, !13, i64 476, !13, i64 478, !13, i64 480, !13, i64 482, !12, i64 484, !12, i64 488, !13, i64 492, !13, i64 494, !12, i64 496, !12, i64 500, !13, i64 504, !13, i64 506, !13, i64 508, !13, i64 510, !13, i64 512, !8, i64 514, !8, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !13, i64 528, !13, i64 530, !13, i64 532, !13, i64 534, !13, i64 536, !13, i64 538, !13, i64 540, !13, i64 542, !41, i64 544, !41, i64 560, !42, i64 576, !17, i64 592, !13, i64 608, !13, i64 610, !21, i64 612, !21, i64 616, !21, i64 620, !21, i64 624, !12, i64 628, !21, i64 632, !21, i64 636, !21, i64 640, !21, i64 644, !13, i64 648, !13, i64 650, !13, i64 652, !13, i64 654, !13, i64 656, !13, i64 658, !21, i64 660, !21, i64 664, !13, i64 668, !13, i64 670, !21, i64 672, !21, i64 676, !8, i64 680, !12, i64 1704, !13, i64 1708, !13, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !12, i64 2520, !13, i64 2524, !13, i64 2526, !21, i64 2528, !21, i64 2532, !13, i64 2536, !13, i64 2538, !21, i64 2540, !13, i64 2544, !13, i64 2546, !12, i64 2548, !13, i64 2552, !13, i64 2554, !13, i64 2556, !13, i64 2558, !21, i64 2560, !21, i64 2564, !7, i64 2568, !12, i64 2576, !21, i64 2580, !8, i64 2584, !43, i64 2616, !12, i64 3976, !12, i64 3980}
!36 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !13, i64 8, !13, i64 10, !21, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !37, i64 24, !38, i64 184}
!37 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 72, !21, i64 136, !21, i64 140, !7, i64 144, !7, i64 152}
!38 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!39 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !13, i64 48, !13, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!40 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !21, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !7, i64 64}
!41 = !{!"rctf", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!42 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!43 = !{!"BakeData", !36, i64 0, !8, i64 248, !13, i64 1272, !13, i64 1274, !13, i64 1276, !13, i64 1278, !21, i64 1280, !21, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!44 = !{!"AudioData", !12, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !12, i64 16, !13, i64 20, !13, i64 22, !21, i64 24, !21, i64 28}
!45 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!46 = !{!"GameData", !45, i64 0, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !13, i64 32, !8, i64 34, !47, i64 40, !13, i64 64, !13, i64 66, !21, i64 68, !48, i64 72, !21, i64 128, !21, i64 132, !12, i64 136, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !21, i64 164, !21, i64 168, !21, i64 172, !21, i64 176, !21, i64 180}
!47 = !{!"GameDome", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !21, i64 8, !21, i64 12, !7, i64 16}
!48 = !{!"RecastData", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !12, i64 40, !21, i64 44, !21, i64 48, !13, i64 52, !13, i64 54}
!49 = !{!"UnitSettings", !21, i64 0, !8, i64 4, !8, i64 5, !13, i64 6}
!50 = !{!"PhysicsSettings", !8, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!51 = !{!"long", !8, i64 0}
!52 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!53 = !{!33, !7, i64 120}
!54 = !{!55, !13, i64 30}
!55 = !{!"KeyBlock", !7, i64 0, !7, i64 8, !21, i64 16, !21, i64 20, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !12, i64 32, !12, i64 36, !7, i64 40, !8, i64 48, !8, i64 112, !21, i64 176, !21, i64 180}
!56 = !{!57, !12, i64 40}
!57 = !{!"bGPDlayer", !7, i64 0, !7, i64 8, !17, i64 16, !7, i64 32, !12, i64 40, !13, i64 44, !13, i64 46, !8, i64 48, !8, i64 64}
!58 = !{!59, !8, i64 142}
!59 = !{!"MaskLayer", !7, i64 0, !7, i64 8, !8, i64 16, !17, i64 80, !17, i64 96, !7, i64 112, !7, i64 120, !21, i64 128, !8, i64 132, !8, i64 133, !8, i64 134, !8, i64 135, !8, i64 142, !8, i64 143}
!60 = distinct !{!60, !28}
!61 = !{!11, !7, i64 48}
!62 = !{!11, !7, i64 0}
!63 = distinct !{!63, !28}
!64 = !{!65, !7, i64 40}
!65 = !{!"bAnimChannelType", !7, i64 0, !12, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!66 = !{!11, !7, i64 8}
!67 = distinct !{!67, !28}
!68 = !{!69, !13, i64 8}
!69 = !{!"bAnimContext", !7, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!70 = !{!26, !7, i64 0}
!71 = !{!20, !7, i64 16}
!72 = !{!73, !7, i64 0}
!73 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !17, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !74, i64 152, !13, i64 184}
!74 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!75 = !{!73, !7, i64 8}
!76 = !{!73, !7, i64 24}
!77 = !{!73, !7, i64 32}
!78 = !{!73, !7, i64 72}
!79 = !{!73, !13, i64 184}
!80 = !{!73, !7, i64 88}
!81 = !{!73, !7, i64 104}
!82 = !{!73, !7, i64 48}
!83 = !{!73, !7, i64 64}
!84 = !{!73, !7, i64 56}
!85 = !{!86, !7, i64 176}
!86 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !13, i64 164, !13, i64 166, !13, i64 168, !13, i64 170, !13, i64 172, !13, i64 174, !7, i64 176}
!87 = !{!88, !7, i64 112}
!88 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !17, i64 128, !7, i64 144, !7, i64 152, !13, i64 160, !8, i64 162}
!89 = !{!69, !7, i64 0}
!90 = !{!91, !8, i64 72}
!91 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !42, i64 56, !8, i64 72, !8, i64 73, !13, i64 74, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !13, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !17, i64 96, !17, i64 112, !17, i64 128, !17, i64 144}
!92 = !{!69, !7, i64 24}
!93 = !{!69, !7, i64 32}
!94 = !{!42, !12, i64 0}
!95 = !{!42, !12, i64 8}
!96 = !{!42, !12, i64 4}
!97 = !{!42, !12, i64 12}
!98 = !{!99, !13, i64 8948}
!99 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !12, i64 8468, !13, i64 8472, !13, i64 8474, !13, i64 8476, !13, i64 8478, !13, i64 8480, !13, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !13, i64 8496, !13, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !13, i64 8528, !13, i64 8530, !13, i64 8532, !13, i64 8534, !17, i64 8536, !17, i64 8552, !17, i64 8568, !17, i64 8584, !17, i64 8600, !17, i64 8616, !17, i64 8632, !8, i64 8648, !13, i64 8712, !13, i64 8714, !13, i64 8716, !13, i64 8718, !13, i64 8720, !13, i64 8722, !13, i64 8724, !13, i64 8726, !8, i64 8728, !13, i64 8896, !13, i64 8898, !13, i64 8900, !13, i64 8902, !13, i64 8904, !13, i64 8906, !13, i64 8908, !13, i64 8910, !12, i64 8912, !12, i64 8916, !13, i64 8920, !13, i64 8922, !13, i64 8924, !13, i64 8926, !13, i64 8928, !13, i64 8930, !13, i64 8932, !13, i64 8934, !13, i64 8936, !13, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !13, i64 8944, !13, i64 8946, !13, i64 8948, !13, i64 8950, !13, i64 8952, !13, i64 8954, !21, i64 8956, !21, i64 8960, !12, i64 8964, !13, i64 8968, !13, i64 8970, !21, i64 8972, !13, i64 8976, !13, i64 8978, !13, i64 8980, !13, i64 8982, !100, i64 8984, !8, i64 9760, !8, i64 9772, !13, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !12, i64 10896, !12, i64 10900, !21, i64 10904, !21, i64 10908, !12, i64 10912, !13, i64 10916, !13, i64 10918, !13, i64 10920, !13, i64 10922, !13, i64 10924, !13, i64 10926, !101, i64 10928}
!100 = !{!"ColorBand", !13, i64 0, !13, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!101 = !{!"WalkNavigation", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !13, i64 24, !8, i64 26}
!102 = !{!103, !13, i64 58}
!103 = !{!"SpaceNla", !7, i64 0, !7, i64 8, !17, i64 16, !12, i64 32, !21, i64 36, !8, i64 40, !13, i64 56, !13, i64 58, !12, i64 60, !7, i64 64, !104, i64 72}
!104 = !{!"View2D", !41, i64 0, !41, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !8, i64 80, !8, i64 88, !21, i64 96, !21, i64 100, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !13, i64 112, !13, i64 114, !13, i64 116, !13, i64 118, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !7, i64 128, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!105 = !{!41, !21, i64 8}
!106 = !{!69, !7, i64 40}
!107 = !{!108, !12, i64 96}
!108 = !{!"bDopeSheet", !7, i64 0, !17, i64 8, !7, i64 24, !8, i64 32, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108}
!109 = !{!13, !13, i64 0}
!110 = !{!111, !13, i64 136}
!111 = !{!"Object", !34, i64 0, !7, i64 120, !7, i64 128, !13, i64 136, !13, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !112, i64 312, !7, i64 360, !17, i64 368, !17, i64 384, !17, i64 400, !17, i64 416, !12, i64 432, !12, i64 436, !7, i64 440, !7, i64 448, !12, i64 456, !12, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !21, i64 616, !21, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !12, i64 944, !13, i64 948, !13, i64 950, !13, i64 952, !13, i64 954, !13, i64 956, !13, i64 958, !13, i64 960, !13, i64 962, !13, i64 964, !8, i64 966, !8, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !21, i64 988, !21, i64 992, !21, i64 996, !21, i64 1000, !21, i64 1004, !21, i64 1008, !21, i64 1012, !21, i64 1016, !21, i64 1020, !21, i64 1024, !21, i64 1028, !21, i64 1032, !13, i64 1036, !13, i64 1038, !13, i64 1040, !8, i64 1042, !8, i64 1043, !13, i64 1044, !8, i64 1046, !8, i64 1047, !21, i64 1048, !21, i64 1052, !17, i64 1056, !17, i64 1072, !17, i64 1088, !17, i64 1104, !21, i64 1120, !13, i64 1124, !13, i64 1126, !8, i64 1128, !12, i64 1144, !12, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !13, i64 1162, !8, i64 1164, !17, i64 1176, !17, i64 1192, !17, i64 1208, !17, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !13, i64 1266, !21, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !51, i64 1304, !51, i64 1312, !12, i64 1320, !12, i64 1324, !17, i64 1328, !17, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !17, i64 1400, !7, i64 1416}
!112 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!113 = !{!111, !7, i64 288}
!114 = distinct !{!114, !28}
!115 = !{!12, !12, i64 0}
!116 = !{!21, !21, i64 0}
!117 = !{i32 0, i32 4718599}
!118 = !{!119, !12, i64 2100}
!119 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !17, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !13, i64 2084, !13, i64 2086, !13, i64 2088, !8, i64 2090, !13, i64 2092, !12, i64 2096, !12, i64 2100, !8, i64 2104, !12, i64 2108, !12, i64 2112, !8, i64 2116}
!120 = !{!121, !7, i64 32}
!121 = !{!"Base", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !13, i64 28, !13, i64 30, !7, i64 32}
!122 = !{!111, !7, i64 120}
!123 = !{!121, !12, i64 24}
!124 = !{!111, !13, i64 948}
!125 = !{!108, !7, i64 0}
!126 = distinct !{!126, !28}
!127 = distinct !{!127, !28}
!128 = !{!129, !12, i64 136}
!129 = !{!"bGPdata", !34, i64 0, !17, i64 120, !12, i64 136, !13, i64 140, !13, i64 142, !7, i64 144}
!130 = !{!131, !12, i64 160}
!131 = !{!"Mask", !34, i64 0, !7, i64 120, !17, i64 128, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164}
!132 = !{!65, !7, i64 56}
!133 = !{!108, !12, i64 104}
!134 = !{!8, !8, i64 0}
!135 = !{!69, !13, i64 12}
!136 = !{!69, !13, i64 14}
!137 = distinct !{!137, !28}
!138 = distinct !{!138, !28}
!139 = !{!16, !7, i64 16}
!140 = !{!20, !7, i64 0}
!141 = distinct !{!141, !28}
!142 = distinct !{!142, !28}
!143 = distinct !{!143, !28}
!144 = distinct !{!144, !28}
!145 = distinct !{!145, !28}
!146 = !{!16, !7, i64 24}
!147 = !{!148, !7, i64 120}
!148 = !{!"bAction", !34, i64 0, !17, i64 120, !17, i64 136, !17, i64 152, !17, i64 168, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196}
!149 = !{!20, !7, i64 8}
!150 = distinct !{!150, !28}
!151 = !{!148, !7, i64 128}
!152 = distinct !{!152, !28}
!153 = distinct !{!153, !28}
!154 = !{i64 0, i64 8, !6, i64 8, i64 8, !6}
!155 = !{!156, !7, i64 0}
!156 = !{!"Link", !7, i64 0, !7, i64 8}
!157 = distinct !{!157, !28}
!158 = !{ptr @rearrange_island_bottom, ptr @rearrange_island_down, ptr @rearrange_island_top, ptr @rearrange_island_up}
!159 = !{!160, !12, i64 32}
!160 = !{!"tReorderChannelIsland", !7, i64 0, !7, i64 8, !17, i64 16, !12, i64 32}
!161 = distinct !{!161, !28}
!162 = distinct !{!162, !28}
!163 = distinct !{!163, !28}
!164 = !{!160, !7, i64 8}
!165 = distinct !{!165, !28}
!166 = !{!160, !7, i64 0}
!167 = distinct !{!167, !28}
!168 = !{!17, !7, i64 8}
!169 = distinct !{!169, !28}
!170 = distinct !{!170, !28}
!171 = distinct !{!171, !28}
!172 = distinct !{!172, !28}
!173 = distinct !{!173, !28}
!174 = !{!20, !7, i64 24}
!175 = !{!176, !12, i64 292}
!176 = !{!"ChannelDriver", !17, i64 0, !8, i64 16, !7, i64 272, !21, i64 280, !21, i64 284, !12, i64 288, !12, i64 292}
!177 = !{!11, !13, i64 36}
!178 = distinct !{!178, !28}
!179 = !{!26, !7, i64 24}
!180 = !{!23, !7, i64 16}
!181 = !{!23, !7, i64 0}
!182 = distinct !{!182, !28}
!183 = !{!26, !7, i64 48}
!184 = distinct !{!184, !28}
!185 = distinct !{!185, !28}
!186 = !{!187, !8, i64 336}
!187 = !{!"SpaceAction", !7, i64 0, !7, i64 8, !17, i64 16, !12, i64 32, !21, i64 36, !8, i64 40, !104, i64 56, !7, i64 216, !108, i64 224, !8, i64 336, !8, i64 337, !13, i64 338, !21, i64 340}
!188 = !{!189, !13, i64 240}
!189 = !{!"SpaceIpo", !7, i64 0, !7, i64 8, !17, i64 16, !12, i64 32, !21, i64 36, !8, i64 40, !104, i64 56, !7, i64 216, !17, i64 224, !13, i64 240, !13, i64 242, !12, i64 244, !21, i64 248, !12, i64 252}
!190 = distinct !{!190, !28}
!191 = distinct !{!191, !28}
