; ModuleID = 'blender/source/blender/editors/animation/anim_channels_defines.c'
source_filename = "blender/source/blender/editors/animation/anim_channels_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.bAnimChannelType = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.StructRNA = type opaque
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.Speaker = type { %struct.ID, ptr, ptr, float, float, float, float, float, float, float, float, float, float, i16, [3 x i16] }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }

@animchannelTypeInfo = internal unnamed_addr global [32 x ptr] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<No name>\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ChanType: <%s> Name: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ChanType: <Unknown - %d>\0A\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"NLA_OT_action_pushdown\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"channel_index\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@ACF_INIT = internal unnamed_addr global i1 false, align 2
@ACF_SUMMARY = internal global %struct.bAnimChannelType { ptr @.str.8, i32 -1, ptr @acf_summary_color, ptr @acf_summary_backdrop, ptr @acf_generic_indention_0, ptr null, ptr @acf_summary_name, ptr null, ptr @acf_summary_icon, ptr @acf_summary_setting_valid, ptr @acf_summary_setting_flag, ptr @acf_summary_setting_ptr }, align 8
@ACF_SCENE = internal global %struct.bAnimChannelType { ptr @.str.10, i32 -1, ptr @acf_generic_root_color, ptr @acf_generic_root_backdrop, ptr @acf_generic_indention_0, ptr null, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_scene_icon, ptr @acf_scene_setting_valid, ptr @acf_scene_setting_flag, ptr @acf_scene_setting_ptr }, align 8
@ACF_OBJECT = internal global %struct.bAnimChannelType { ptr @.str.11, i32 -1, ptr @acf_generic_root_color, ptr @acf_generic_root_backdrop, ptr @acf_generic_indention_0, ptr null, ptr @acf_object_name, ptr @acf_object_name_prop, ptr @acf_object_icon, ptr @acf_object_setting_valid, ptr @acf_object_setting_flag, ptr @acf_object_setting_ptr }, align 8
@ACF_GROUP = internal global %struct.bAnimChannelType { ptr @.str.12, i32 1, ptr @acf_group_color, ptr @acf_group_backdrop, ptr @acf_generic_indention_0, ptr @acf_generic_group_offset, ptr @acf_group_name, ptr @acf_group_name_prop, ptr null, ptr @acf_group_setting_valid, ptr @acf_group_setting_flag, ptr @acf_group_setting_ptr }, align 8
@ACF_FCURVE = internal global %struct.bAnimChannelType { ptr @.str.13, i32 1, ptr @acf_generic_channel_color, ptr @acf_generic_channel_backdrop, ptr @acf_generic_indention_flexible, ptr @acf_generic_group_offset, ptr @acf_fcurve_name, ptr @acf_fcurve_name_prop, ptr null, ptr @acf_fcurve_setting_valid, ptr @acf_fcurve_setting_flag, ptr @acf_fcurve_setting_ptr }, align 8
@ACF_FILLACTD = internal global %struct.bAnimChannelType { ptr @.str.15, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idfill_name_prop, ptr @acf_fillactd_icon, ptr @acf_fillactd_setting_valid, ptr @acf_fillactd_setting_flag, ptr @acf_fillactd_setting_ptr }, align 8
@ACF_FILLDRIVERS = internal global %struct.bAnimChannelType { ptr @.str.16, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_filldrivers_name, ptr null, ptr @acf_filldrivers_icon, ptr @acf_filldrivers_setting_valid, ptr @acf_filldrivers_setting_flag, ptr @acf_filldrivers_setting_ptr }, align 8
@ACF_DSMAT = internal global %struct.bAnimChannelType { ptr @.str.18, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dsmat_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dsmat_setting_flag, ptr @acf_dsmat_setting_ptr }, align 8
@ACF_DSLAM = internal global %struct.bAnimChannelType { ptr @.str.19, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dslam_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dslam_setting_flag, ptr @acf_dslam_setting_ptr }, align 8
@ACF_DSCAM = internal global %struct.bAnimChannelType { ptr @.str.20, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idfill_name_prop, ptr @acf_dscam_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dscam_setting_flag, ptr @acf_dscam_setting_ptr }, align 8
@ACF_DSCUR = internal global %struct.bAnimChannelType { ptr @.str.21, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dscur_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dscur_setting_flag, ptr @acf_dscur_setting_ptr }, align 8
@ACF_DSSKEY = internal global %struct.bAnimChannelType { ptr @.str.22, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dsskey_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dsskey_setting_flag, ptr @acf_dsskey_setting_ptr }, align 8
@ACF_DSWOR = internal global %struct.bAnimChannelType { ptr @.str.23, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idfill_name_prop, ptr @acf_dswor_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dswor_setting_flag, ptr @acf_dswor_setting_ptr }, align 8
@ACF_DSNTREE = internal global %struct.bAnimChannelType { ptr @.str.24, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_dsntree_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dsntree_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dsntree_setting_flag, ptr @acf_dsntree_setting_ptr }, align 8
@ACF_DSPART = internal global %struct.bAnimChannelType { ptr @.str.25, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dspart_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dspart_setting_flag, ptr @acf_dspart_setting_ptr }, align 8
@ACF_DSMBALL = internal global %struct.bAnimChannelType { ptr @.str.26, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dsmball_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dsmball_setting_flag, ptr @acf_dsmball_setting_ptr }, align 8
@ACF_DSARM = internal global %struct.bAnimChannelType { ptr @.str.27, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dsarm_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dsarm_setting_flag, ptr @acf_dsarm_setting_ptr }, align 8
@ACF_DSMESH = internal global %struct.bAnimChannelType { ptr @.str.28, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dsmesh_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dsmesh_setting_flag, ptr @acf_dsmesh_setting_ptr }, align 8
@ACF_DSTEX = internal global %struct.bAnimChannelType { ptr @.str.29, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_dstex_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idfill_name_prop, ptr @acf_dstex_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dstex_setting_flag, ptr @acf_dstex_setting_ptr }, align 8
@ACF_DSLAT = internal global %struct.bAnimChannelType { ptr @.str.30, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dslat_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dslat_setting_flag, ptr @acf_dslat_setting_ptr }, align 8
@ACF_DSLINESTYLE = internal global %struct.bAnimChannelType { ptr @.str.31, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dslinestyle_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dslinestyle_setting_flag, ptr @acf_dslinestyle_setting_ptr }, align 8
@ACF_DSSPK = internal global %struct.bAnimChannelType { ptr @.str.32, i32 -1, ptr @acf_generic_dataexpand_color, ptr @acf_generic_dataexpand_backdrop, ptr @acf_generic_indention_1, ptr @acf_generic_basic_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idblock_name_prop, ptr @acf_dsspk_icon, ptr @acf_generic_dataexpand_setting_valid, ptr @acf_dsspk_setting_flag, ptr @acf_dsspk_setting_ptr }, align 8
@ACF_SHAPEKEY = internal global %struct.bAnimChannelType { ptr @.str.33, i32 1, ptr @acf_generic_channel_color, ptr @acf_generic_channel_backdrop, ptr @acf_generic_indention_0, ptr @acf_generic_basic_offset, ptr @acf_shapekey_name, ptr @acf_shapekey_name_prop, ptr null, ptr @acf_shapekey_setting_valid, ptr @acf_shapekey_setting_flag, ptr @acf_shapekey_setting_ptr }, align 8
@ACF_GPD = internal global %struct.bAnimChannelType { ptr @.str.35, i32 -1, ptr @acf_gpd_color, ptr @acf_group_backdrop, ptr @acf_generic_indention_0, ptr @acf_generic_group_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idfill_name_prop, ptr @acf_gpd_icon, ptr @acf_gpd_setting_valid, ptr @acf_gpd_setting_flag, ptr @acf_gpd_setting_ptr }, align 8
@ACF_GPL = internal global %struct.bAnimChannelType { ptr @.str.36, i32 1, ptr @acf_generic_channel_color, ptr @acf_generic_channel_backdrop, ptr @acf_generic_indention_flexible, ptr @acf_generic_group_offset, ptr @acf_gpl_name, ptr @acf_gpl_name_prop, ptr null, ptr @acf_gpl_setting_valid, ptr @acf_gpl_setting_flag, ptr @acf_gpl_setting_ptr }, align 8
@ACF_MASKDATA = internal global %struct.bAnimChannelType { ptr @.str.37, i32 -1, ptr @acf_mask_color, ptr @acf_group_backdrop, ptr @acf_generic_indention_0, ptr @acf_generic_group_offset, ptr @acf_generic_idblock_name, ptr @acf_generic_idfill_name_prop, ptr @acf_mask_icon, ptr @acf_mask_setting_valid, ptr @acf_mask_setting_flag, ptr @acf_mask_setting_ptr }, align 8
@ACF_MASKLAYER = internal global %struct.bAnimChannelType { ptr @.str.38, i32 1, ptr @acf_generic_channel_color, ptr @acf_generic_channel_backdrop, ptr @acf_generic_indention_flexible, ptr @acf_generic_group_offset, ptr @acf_masklay_name, ptr @acf_masklay_name_prop, ptr null, ptr @acf_masklay_setting_valid, ptr @acf_masklay_setting_flag, ptr @acf_masklay_setting_ptr }, align 8
@ACF_NLATRACK = internal global %struct.bAnimChannelType { ptr @.str.39, i32 1, ptr @acf_nlatrack_color, ptr @acf_generic_channel_backdrop, ptr @acf_generic_indention_flexible, ptr @acf_generic_group_offset, ptr @acf_nlatrack_name, ptr @acf_nlatrack_name_prop, ptr null, ptr @acf_nlatrack_setting_valid, ptr @acf_nlatrack_setting_flag, ptr @acf_nlatrack_setting_ptr }, align 8
@ACF_NLAACTION = internal global %struct.bAnimChannelType { ptr @.str.40, i32 1, ptr @acf_nlaaction_color, ptr @acf_nlaaction_backdrop, ptr @acf_generic_indention_flexible, ptr @acf_generic_group_offset, ptr @acf_nlaaction_name, ptr @acf_nlaaction_name_prop, ptr @acf_nlaaction_icon, ptr @acf_nlaaction_setting_valid, ptr @acf_nlaaction_setting_flag, ptr @acf_nlaaction_setting_ptr }, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"Summary\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Dope Sheet Summary\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@RNA_ActionGroup = external global %struct.StructRNA, align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"F-Curve\00", align 1
@RNA_FCurve = external global %struct.StructRNA, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Ob-Action Filler\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Drivers Filler\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Drivers\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Material Data Expander\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Lamp Expander\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Camera Expander\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Curve Expander\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Shape Key Expander\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"World Expander\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Node Tree Expander\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Particle Data Expander\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Metaball Expander\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Armature Expander\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Mesh Expander\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Texture Data Expander\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Lattice Expander\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Line Style Expander\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Speaker Expander\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Shape Key\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Key %d\00", align 1
@RNA_ShapeKey = external global %struct.StructRNA, align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"GPencil Datablock\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"GPencil Layer\00", align 1
@RNA_GPencilLayer = external global %struct.StructRNA, align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Mask Datablock\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Mask Layer\00", align 1
@RNA_MaskLayer = external global %struct.StructRNA, align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"NLA Track\00", align 1
@RNA_NlaTrack = external global %struct.StructRNA, align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"NLA Active Action\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"<No Action>\00", align 1
@RNA_Action = external global %struct.StructRNA, align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"F-Curve is visible in Graph Editor for editing\00", align 1
@.str.43 = private unnamed_addr constant [49 x i8] c"Channels are visible in Graph Editor for editing\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"Make channels grouped under this channel visible\00", align 1
@.str.45 = private unnamed_addr constant [88 x i8] c"NLA Track is the only one evaluated in this Animation Data block, with all others muted\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"Editability of keyframes for this channel\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"Editability of NLA Strips in this track\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"Does F-Curve contribute to result\00", align 1
@.str.49 = private unnamed_addr constant [84 x i8] c"Temporarily disable NLA stack evaluation (i.e. only the active action is evaluated)\00", align 1
@.str.50 = private unnamed_addr constant [57 x i8] c"Do channels contribute to result (toggle channel muting)\00", align 1
@.str.51 = private unnamed_addr constant [58 x i8] c"Display action without any time remapping (when unpinned)\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [25 x i8] c"<Invalid channel - NULL>\00", align 1
@switch.table.acf_object_icon = private unnamed_addr constant [26 x i32] [i32 234, i32 235, i32 236, i32 243, i32 242, i32 238, i32 159, i32 159, i32 159, i32 159, i32 239, i32 240, i32 244, i32 159, i32 159, i32 159, i32 159, i32 159, i32 159, i32 159, i32 159, i32 159, i32 237, i32 159, i32 159, i32 241], align 4
@switch.table.acf_fcurve_setting_flag = private unnamed_addr constant [5 x i32] [i32 2, i32 8, i32 16, i32 0, i32 1], align 4
@switch.table.acf_shapekey_setting_flag = private unnamed_addr constant [3 x i32] [i32 2, i32 4, i32 1], align 4
@switch.table.acf_gpl_setting_flag = private unnamed_addr constant [3 x i32] [i32 32, i32 2, i32 1], align 4
@switch.table.acf_nlatrack_setting_flag = private unnamed_addr constant [6 x i32] [i32 2, i32 16, i32 4, i32 0, i32 0, i32 8], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local ptr @ANIM_channel_get_typeinfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load i1, ptr @ACF_INIT, align 2
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %6

6:                                                ; preds = %3, %5
  %7 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !38
  %9 = icmp ult i32 %8, 32
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %6, %1, %10
  %15 = phi ptr [ %13, %10 ], [ null, %1 ], [ null, %6 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_channel_debug_print_info(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #1 {
  %3 = alloca [256 x i8], align 16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = load i1, ptr @ACF_INIT, align 2
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %8

8:                                                ; preds = %7, %5
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = icmp ult i32 %10, 32
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext nneg i32 %10 to i64
  %14 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %2, %8, %12
  %17 = phi ptr [ %15, %12 ], [ null, %2 ], [ null, %8 ]
  %18 = icmp sgt i16 %1, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %19
  %20 = phi i16 [ %22, %19 ], [ %1, %16 ]
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %22 = add nsw i16 %20, -1
  %23 = icmp sgt i16 %20, 1
  br i1 %23, label %19, label %24, !llvm.loop !42

24:                                               ; preds = %19, %16
  %25 = icmp eq ptr %17, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #15
  %27 = getelementptr inbounds %struct.bAnimChannelType, ptr %17, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void %28(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %33

31:                                               ; preds = %26
  %32 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i64 noundef 256) #15
  br label %33

33:                                               ; preds = %31, %30
  %34 = load ptr, ptr %17, align 8, !tbaa !47
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %34, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #15
  br label %43

36:                                               ; preds = %24
  br i1 %4, label %41, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !38
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %39)
  br label %43

41:                                               ; preds = %36
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %43

43:                                               ; preds = %37, %41, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local signext i16 @ANIM_channel_setting_get(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = load i1, ptr @ACF_INIT, align 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %3, %10, %14
  %19 = phi ptr [ %17, %14 ], [ null, %3 ], [ null, %10 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %72, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call zeroext i8 %23(ptr noundef %0, ptr noundef %1, i32 noundef %2) #15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %72, label %28

28:                                               ; preds = %25, %21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  %29 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = call i32 %30(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5) #15
  %32 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = call ptr %33(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #15
  %35 = icmp ne ptr %34, null
  %36 = icmp ne i32 %31, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %69

38:                                               ; preds = %28
  %39 = load i16, ptr %4, align 2, !tbaa !51
  switch i16 %39, label %69 [
    i16 4, label %40
    i16 2, label %49
    i16 1, label %59
  ]

40:                                               ; preds = %38
  %41 = load i8, ptr %5, align 1, !tbaa !52
  %42 = icmp eq i8 %41, 0
  %43 = load i32, ptr %34, align 4, !tbaa !53
  %44 = and i32 %43, %31
  %45 = icmp eq i32 %44, 0
  %46 = icmp ne i32 %44, 0
  %47 = select i1 %42, i1 %46, i1 %45
  %48 = zext i1 %47 to i16
  br label %69

49:                                               ; preds = %38
  %50 = load i8, ptr %5, align 1, !tbaa !52
  %51 = icmp eq i8 %50, 0
  %52 = load i16, ptr %34, align 2, !tbaa !51
  %53 = sext i16 %52 to i32
  %54 = and i32 %31, %53
  %55 = icmp eq i32 %54, 0
  %56 = icmp ne i32 %54, 0
  %57 = select i1 %51, i1 %56, i1 %55
  %58 = zext i1 %57 to i16
  br label %69

59:                                               ; preds = %38
  %60 = load i8, ptr %5, align 1, !tbaa !52
  %61 = icmp eq i8 %60, 0
  %62 = load i8, ptr %34, align 1, !tbaa !52
  %63 = zext i8 %62 to i32
  %64 = and i32 %31, %63
  %65 = icmp eq i32 %64, 0
  %66 = icmp ne i32 %64, 0
  %67 = select i1 %61, i1 %66, i1 %65
  %68 = zext i1 %67 to i16
  br label %69

69:                                               ; preds = %28, %38, %59, %49, %40
  %70 = phi i1 [ false, %59 ], [ false, %49 ], [ false, %40 ], [ true, %38 ], [ true, %28 ]
  %71 = phi i16 [ %68, %59 ], [ %58, %49 ], [ %48, %40 ], [ undef, %38 ], [ undef, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br i1 %70, label %72, label %73

72:                                               ; preds = %69, %25, %18
  br label %73

73:                                               ; preds = %69, %72
  %74 = phi i16 [ -1, %72 ], [ %71, %69 ]
  ret i16 %74
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_channel_setting_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = icmp eq ptr %1, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = load i1, ptr @ACF_INIT, align 2
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = icmp ult i32 %13, 32
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %4, %11, %15
  %20 = phi ptr [ %18, %15 ], [ null, %4 ], [ null, %11 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %109, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call zeroext i8 %24(ptr noundef %0, ptr noundef %1, i32 noundef %2) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %109, label %29

29:                                               ; preds = %26, %22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  %30 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = call i32 %31(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %6) #15
  %33 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = call ptr %34(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #15
  %36 = icmp ne ptr %35, null
  %37 = icmp ne i32 %32, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %108

39:                                               ; preds = %29
  %40 = load i16, ptr %5, align 2, !tbaa !51
  switch i16 %40, label %108 [
    i16 4, label %41
    i16 2, label %66
    i16 1, label %87
  ]

41:                                               ; preds = %39
  %42 = load i8, ptr %6, align 1, !tbaa !52
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  switch i32 %3, label %52 [
    i32 2, label %45
    i32 1, label %48
  ]

45:                                               ; preds = %44
  %46 = load i32, ptr %35, align 4, !tbaa !53
  %47 = xor i32 %46, %32
  store i32 %47, ptr %35, align 4, !tbaa !53
  br label %108

48:                                               ; preds = %44
  %49 = xor i32 %32, -1
  %50 = load i32, ptr %35, align 4, !tbaa !53
  %51 = and i32 %50, %49
  store i32 %51, ptr %35, align 4, !tbaa !53
  br label %108

52:                                               ; preds = %44
  %53 = load i32, ptr %35, align 4, !tbaa !53
  %54 = or i32 %53, %32
  store i32 %54, ptr %35, align 4, !tbaa !53
  br label %108

55:                                               ; preds = %41
  switch i32 %3, label %62 [
    i32 2, label %56
    i32 1, label %59
  ]

56:                                               ; preds = %55
  %57 = load i32, ptr %35, align 4, !tbaa !53
  %58 = xor i32 %57, %32
  store i32 %58, ptr %35, align 4, !tbaa !53
  br label %108

59:                                               ; preds = %55
  %60 = load i32, ptr %35, align 4, !tbaa !53
  %61 = or i32 %60, %32
  store i32 %61, ptr %35, align 4, !tbaa !53
  br label %108

62:                                               ; preds = %55
  %63 = xor i32 %32, -1
  %64 = load i32, ptr %35, align 4, !tbaa !53
  %65 = and i32 %64, %63
  store i32 %65, ptr %35, align 4, !tbaa !53
  br label %108

66:                                               ; preds = %39
  %67 = load i8, ptr %6, align 1, !tbaa !52
  %68 = icmp eq i8 %67, 0
  %69 = load i16, ptr %35, align 2, !tbaa !51
  %70 = trunc i32 %32 to i16
  br i1 %68, label %79, label %71

71:                                               ; preds = %66
  switch i32 %3, label %77 [
    i32 2, label %72
    i32 1, label %74
  ]

72:                                               ; preds = %71
  %73 = xor i16 %69, %70
  store i16 %73, ptr %35, align 2, !tbaa !51
  br label %108

74:                                               ; preds = %71
  %75 = xor i16 %70, -1
  %76 = and i16 %69, %75
  store i16 %76, ptr %35, align 2, !tbaa !51
  br label %108

77:                                               ; preds = %71
  %78 = or i16 %69, %70
  store i16 %78, ptr %35, align 2, !tbaa !51
  br label %108

79:                                               ; preds = %66
  switch i32 %3, label %84 [
    i32 2, label %80
    i32 1, label %82
  ]

80:                                               ; preds = %79
  %81 = xor i16 %69, %70
  store i16 %81, ptr %35, align 2, !tbaa !51
  br label %108

82:                                               ; preds = %79
  %83 = or i16 %69, %70
  store i16 %83, ptr %35, align 2, !tbaa !51
  br label %108

84:                                               ; preds = %79
  %85 = xor i16 %70, -1
  %86 = and i16 %69, %85
  store i16 %86, ptr %35, align 2, !tbaa !51
  br label %108

87:                                               ; preds = %39
  %88 = load i8, ptr %6, align 1, !tbaa !52
  %89 = icmp eq i8 %88, 0
  %90 = load i8, ptr %35, align 1, !tbaa !52
  %91 = trunc i32 %32 to i8
  br i1 %89, label %100, label %92

92:                                               ; preds = %87
  switch i32 %3, label %98 [
    i32 2, label %93
    i32 1, label %95
  ]

93:                                               ; preds = %92
  %94 = xor i8 %90, %91
  store i8 %94, ptr %35, align 1, !tbaa !52
  br label %108

95:                                               ; preds = %92
  %96 = xor i8 %91, -1
  %97 = and i8 %90, %96
  store i8 %97, ptr %35, align 1, !tbaa !52
  br label %108

98:                                               ; preds = %92
  %99 = or i8 %90, %91
  store i8 %99, ptr %35, align 1, !tbaa !52
  br label %108

100:                                              ; preds = %87
  switch i32 %3, label %105 [
    i32 2, label %101
    i32 1, label %103
  ]

101:                                              ; preds = %100
  %102 = xor i8 %90, %91
  store i8 %102, ptr %35, align 1, !tbaa !52
  br label %108

103:                                              ; preds = %100
  %104 = or i8 %90, %91
  store i8 %104, ptr %35, align 1, !tbaa !52
  br label %108

105:                                              ; preds = %100
  %106 = xor i8 %91, -1
  %107 = and i8 %90, %106
  store i8 %107, ptr %35, align 1, !tbaa !52
  br label %108

108:                                              ; preds = %95, %98, %93, %103, %105, %101, %74, %77, %72, %82, %84, %80, %48, %52, %45, %59, %62, %56, %39, %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
  br label %109

109:                                              ; preds = %108, %26, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_channel_draw(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #1 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca [3 x float], align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = load i1, ptr @ACF_INIT, align 2
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = icmp ult i32 %13, 32
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %4, %11, %15
  %20 = phi ptr [ %18, %15 ], [ null, %4 ], [ null, %11 ]
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %20, null
  %24 = or i1 %7, %23
  br i1 %24, label %232, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call signext i16 %27(ptr noundef %0, ptr noundef %1) #15
  br label %31

31:                                               ; preds = %25, %29
  %32 = phi i16 [ %30, %29 ], [ 0, %25 ]
  %33 = fsub float %3, %2
  %34 = fmul float %33, 5.000000e-01
  %35 = fadd float %34, %2
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %37 = sitofp i16 %36 to float
  %38 = fmul float %37, 0x3FEB333340000000
  %39 = tail call float @llvm.fmuladd.f32(float %38, float -5.000000e-01, float %35)
  %40 = tail call float @llvm.fmuladd.f32(float %37, float 0xBFC99999A0000000, float %35)
  %41 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = tail call zeroext i8 %42(ptr noundef %0, ptr noundef %1, i32 noundef 0) #15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %31
  %46 = tail call signext i16 @ANIM_channel_setting_get(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %47

47:                                               ; preds = %31, %45
  %48 = phi i16 [ %46, %45 ], [ 0, %31 ]
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  tail call void @glEnable(i32 noundef 3042) #15
  %49 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void %50(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #15
  br label %53

53:                                               ; preds = %52, %47
  %54 = load ptr, ptr %41, align 8, !tbaa !48
  %55 = tail call zeroext i8 %54(ptr noundef %0, ptr noundef %1, i32 noundef 3) #15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %59 = sitofp i16 %58 to float
  %60 = sitofp i16 %32 to float
  %61 = tail call float @llvm.fmuladd.f32(float %59, float 0x3FEB333340000000, float %60)
  %62 = fptosi float %61 to i16
  br label %63

63:                                               ; preds = %57, %53
  %64 = phi i16 [ %62, %57 ], [ %32, %53 ]
  %65 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !64
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = sitofp i16 %64 to float
  %70 = tail call i32 %66(ptr noundef %1) #15
  tail call void @UI_icon_draw(float noundef %69, float noundef %39, i32 noundef %70) #15
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %72 = sitofp i16 %71 to float
  %73 = tail call float @llvm.fmuladd.f32(float %72, float 0x3FEB333340000000, float %69)
  %74 = fptosi float %73 to i16
  br label %75

75:                                               ; preds = %68, %63
  %76 = phi i16 [ %74, %68 ], [ %64, %63 ]
  tail call void @glDisable(i32 noundef 3042) #15
  %77 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !65
  %79 = icmp eq ptr %78, null
  br i1 %79, label %119, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %82 = load i16, ptr %81, align 4, !tbaa !66
  %83 = icmp eq i16 %82, 2
  br i1 %83, label %84, label %106

84:                                               ; preds = %80
  %85 = load ptr, ptr %41, align 8, !tbaa !48
  %86 = tail call zeroext i8 %85(ptr noundef %0, ptr noundef %1, i32 noundef 4) #15
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !38
  %91 = icmp eq i32 %90, 7
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !67
  %95 = getelementptr inbounds %struct.FCurve, ptr %94, i64 0, i32 14
  tail call void @glColor3fv(ptr noundef nonnull %95) #15
  %96 = sitofp i16 %76 to float
  %97 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %98 = sitofp i16 %97 to float
  %99 = tail call float @llvm.fmuladd.f32(float %98, float 0x3FEB333340000000, float %96)
  tail call void @glRectf(float noundef %96, float noundef %2, float noundef %99, float noundef %3) #15
  br label %100

100:                                              ; preds = %92, %88
  %101 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %102 = sitofp i16 %101 to float
  %103 = sitofp i16 %76 to float
  %104 = tail call float @llvm.fmuladd.f32(float %102, float 0x3FEB333340000000, float %103)
  %105 = fptosi float %104 to i16
  br label %119

106:                                              ; preds = %84, %80
  %107 = load i16, ptr %81, align 4, !tbaa !66
  %108 = icmp eq i16 %107, 13
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load ptr, ptr %41, align 8, !tbaa !48
  %111 = tail call zeroext i8 %110(ptr noundef %0, ptr noundef %1, i32 noundef 5) #15
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %115 = sitofp i16 %114 to float
  %116 = sitofp i16 %76 to float
  %117 = tail call float @llvm.fmuladd.f32(float %115, float 0x3FEB333340000000, float %116)
  %118 = fptosi float %117 to i16
  br label %119

119:                                              ; preds = %100, %113, %109, %106, %75
  %120 = phi i16 [ %105, %100 ], [ %118, %113 ], [ %76, %109 ], [ %76, %106 ], [ %76, %75 ]
  %121 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !45
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #15
  %125 = icmp eq i16 %48, 0
  %126 = select i1 %125, i32 3, i32 4
  tail call void @UI_ThemeColor(i32 noundef %126) #15
  %127 = load ptr, ptr %121, align 8, !tbaa !45
  call void %127(ptr noundef %1, ptr noundef nonnull %5) #15
  %128 = add i16 %120, 3
  %129 = sitofp i16 %128 to float
  call void @UI_DrawString(float noundef %129, float noundef %40, ptr noundef nonnull %5) #15
  %130 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !38
  %132 = icmp eq i32 %131, 7
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 4
  %135 = load i32, ptr %134, align 4, !tbaa !68
  %136 = and i32 %135, 1024
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  call void @glColor3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glLineWidth(float noundef 2.000000e+00) #15
  %139 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 1, i32 1
  %140 = load float, ptr %139, align 4, !tbaa !69
  call void @fdrawline(float noundef %129, float noundef %2, float noundef %140, float noundef %2) #15
  call void @glLineWidth(float noundef 1.000000e+00) #15
  br label %141

141:                                              ; preds = %138, %133, %124
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #15
  br label %142

142:                                              ; preds = %119, %141
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %143 = getelementptr inbounds %struct.bAnimChannelType, ptr %20, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !73
  call void %144(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #15
  call void @glColor3fv(ptr noundef nonnull %6) #15
  %145 = load ptr, ptr %77, align 8, !tbaa !65
  %146 = icmp eq ptr %145, null
  br i1 %146, label %159, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %149 = load i16, ptr %148, align 4, !tbaa !66
  switch i16 %149, label %159 [
    i16 12, label %150
    i16 2, label %154
  ]

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.SpaceAction, ptr %145, i64 0, i32 11
  %152 = load i16, ptr %151, align 2, !tbaa !74
  %153 = and i16 %152, 2
  br label %159

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.SpaceIpo, ptr %145, i64 0, i32 11
  %156 = load i32, ptr %155, align 4, !tbaa !77
  %157 = trunc i32 %156 to i16
  %158 = and i16 %157, 128
  br label %159

159:                                              ; preds = %147, %150, %154, %142
  %160 = phi i16 [ %158, %154 ], [ %153, %150 ], [ 0, %142 ], [ 0, %147 ]
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %174, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 4
  %164 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 4, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !79
  %166 = load i32, ptr %163, align 4, !tbaa !80
  %167 = sub nsw i32 %165, %166
  %168 = sitofp i32 %167 to float
  %169 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %170 = sitofp i16 %169 to float
  %171 = fmul float %170, 0x3FE99999A0000000
  %172 = fmul float %171, 5.000000e-01
  %173 = fcmp olt float %172, %168
  br i1 %173, label %174, label %214

174:                                              ; preds = %162, %159
  %175 = load ptr, ptr %41, align 8, !tbaa !48
  %176 = call zeroext i8 %175(ptr noundef %0, ptr noundef %1, i32 noundef 1) #15
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %180 = sitofp i16 %179 to float
  %181 = call float @llvm.fmuladd.f32(float %180, float 0x3FEB333340000000, float 0.000000e+00)
  %182 = fptosi float %181 to i16
  br label %183

183:                                              ; preds = %178, %174
  %184 = phi i16 [ %182, %178 ], [ 0, %174 ]
  %185 = load ptr, ptr %41, align 8, !tbaa !48
  %186 = call zeroext i8 %185(ptr noundef %0, ptr noundef %1, i32 noundef 2) #15
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %183
  %189 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %190 = sitofp i16 %189 to float
  %191 = sitofp i16 %184 to float
  %192 = call float @llvm.fmuladd.f32(float %190, float 0x3FEB333340000000, float %191)
  %193 = fptosi float %192 to i16
  br label %194

194:                                              ; preds = %188, %183
  %195 = phi i16 [ %193, %188 ], [ %184, %183 ]
  %196 = load ptr, ptr %41, align 8, !tbaa !48
  %197 = call zeroext i8 %196(ptr noundef %0, ptr noundef %1, i32 noundef 6) #15
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %194
  %200 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %201 = sitofp i16 %200 to float
  %202 = sitofp i16 %195 to float
  %203 = call float @llvm.fmuladd.f32(float %201, float 0x3FEB333340000000, float %202)
  %204 = fptosi float %203 to i16
  br label %205

205:                                              ; preds = %199, %194
  %206 = phi i16 [ %204, %199 ], [ %195, %194 ]
  %207 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %208 = load i32, ptr %207, align 8, !tbaa !38
  %209 = icmp eq i32 %208, 31
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %212 = sitofp i16 %211 to float
  %213 = fmul float %212, 0x3FB99999A0000000
  br label %214

214:                                              ; preds = %205, %210, %162
  %215 = phi float [ %213, %210 ], [ 0.000000e+00, %205 ], [ 0.000000e+00, %162 ]
  %216 = phi i16 [ %206, %210 ], [ %206, %205 ], [ 0, %162 ]
  br i1 %161, label %224, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %219 = load i32, ptr %218, align 8, !tbaa !38
  switch i32 %219, label %224 [
    i32 7, label %220
    i32 25, label %220
  ]

220:                                              ; preds = %217, %217
  %221 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %222 = shl i16 %221, 2
  %223 = add i16 %222, %216
  br label %224

224:                                              ; preds = %217, %220, %214
  %225 = phi i16 [ %223, %220 ], [ %216, %214 ], [ %216, %217 ]
  %226 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 1, i32 1
  %227 = load float, ptr %226, align 4, !tbaa !69
  %228 = sitofp i16 %225 to float
  %229 = fsub float %227, %228
  %230 = fadd float %215, %2
  %231 = fadd float %227, 1.000000e+02
  call void @glRectf(float noundef %229, float noundef %230, float noundef %231, float noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %232

232:                                              ; preds = %19, %224
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glEnable(i32 noundef) local_unnamed_addr #4

declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @glDisable(i32 noundef) local_unnamed_addr #4

declare void @glColor3fv(ptr noundef) local_unnamed_addr #4

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #4

declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #4

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @glLineWidth(float noundef) local_unnamed_addr #4

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_channel_draw_widgets(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, float noundef %5, i64 noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca ptr, align 8
  %13 = icmp eq ptr %2, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %7
  %15 = load i1, ptr @ACF_INIT, align 2
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %17

17:                                               ; preds = %16, %14
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !38
  %20 = icmp ult i32 %19, 32
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = zext nneg i32 %19 to i64
  %23 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  br label %25

25:                                               ; preds = %7, %17, %21
  %26 = phi ptr [ %24, %21 ], [ null, %7 ], [ null, %17 ]
  %27 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = icmp eq ptr %26, null
  %30 = icmp eq ptr %3, null
  %31 = or i1 %30, %29
  %32 = or i1 %13, %31
  br i1 %32, label %300, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.bAnimChannelType, ptr %26, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call signext i16 %35(ptr noundef %1, ptr noundef %2) #15
  br label %39

39:                                               ; preds = %33, %37
  %40 = phi i16 [ %38, %37 ], [ 0, %33 ]
  %41 = fsub float %5, %4
  %42 = fmul float %41, 5.000000e-01
  %43 = fadd float %42, %4
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %45 = sitofp i16 %44 to float
  %46 = fmul float %45, 0x3FEB333340000000
  %47 = tail call float @llvm.fmuladd.f32(float %46, float -5.000000e-01, float %43)
  tail call void @uiBlockSetEmboss(ptr noundef %3, i8 noundef zeroext 1) #15
  %48 = getelementptr inbounds %struct.bAnimChannelType, ptr %26, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = tail call zeroext i8 %49(ptr noundef %1, ptr noundef %2, i32 noundef 3) #15
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %39
  %53 = sext i16 %40 to i32
  %54 = fptosi float %47 to i32
  tail call fastcc void @draw_setting_widget(ptr noundef %1, ptr noundef %2, ptr noundef %26, ptr noundef %3, i32 noundef %53, i32 noundef %54, i32 noundef 3)
  %55 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %56 = sitofp i16 %55 to float
  %57 = sitofp i16 %40 to float
  %58 = tail call float @llvm.fmuladd.f32(float %56, float 0x3FEB333340000000, float %57)
  %59 = fptosi float %58 to i16
  br label %60

60:                                               ; preds = %52, %39
  %61 = phi i16 [ %59, %52 ], [ %40, %39 ]
  %62 = getelementptr inbounds %struct.bAnimChannelType, ptr %26, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !64
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %67 = sitofp i16 %66 to float
  %68 = sitofp i16 %61 to float
  %69 = tail call float @llvm.fmuladd.f32(float %67, float 0x3FEB333340000000, float %68)
  %70 = fptosi float %69 to i16
  br label %71

71:                                               ; preds = %65, %60
  %72 = phi i16 [ %70, %65 ], [ %61, %60 ]
  %73 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !65
  %75 = icmp eq ptr %74, null
  br i1 %75, label %100, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 3
  %78 = load i16, ptr %77, align 4, !tbaa !66
  %79 = icmp eq i16 %78, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load ptr, ptr %48, align 8, !tbaa !48
  %82 = tail call zeroext i8 %81(ptr noundef %1, ptr noundef %2, i32 noundef 4) #15
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80, %76
  %85 = load i16, ptr %77, align 4, !tbaa !66
  %86 = icmp eq i16 %85, 13
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load ptr, ptr %48, align 8, !tbaa !48
  %89 = tail call zeroext i8 %88(ptr noundef %1, ptr noundef %2, i32 noundef 5) #15
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %87, %80
  %92 = phi i32 [ 4, %80 ], [ 5, %87 ]
  %93 = sext i16 %72 to i32
  %94 = fptosi float %47 to i32
  tail call fastcc void @draw_setting_widget(ptr noundef %1, ptr noundef %2, ptr noundef %26, ptr noundef %3, i32 noundef %93, i32 noundef %94, i32 noundef %92)
  %95 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %96 = sitofp i16 %95 to float
  %97 = sitofp i16 %72 to float
  %98 = tail call float @llvm.fmuladd.f32(float %96, float 0x3FEB333340000000, float %97)
  %99 = fptosi float %98 to i16
  br label %100

100:                                              ; preds = %91, %87, %84, %71
  %101 = phi i16 [ %72, %87 ], [ %72, %84 ], [ %72, %71 ], [ %99, %91 ]
  %102 = getelementptr inbounds %struct.bAnimChannelType, ptr %26, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !81
  %104 = icmp eq ptr %103, null
  br i1 %104, label %132, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !82
  %108 = icmp eq ptr %107, null
  br i1 %108, label %132, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.bDopeSheet, ptr %107, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !83
  %112 = sext i32 %111 to i64
  %113 = add i64 %6, 1
  %114 = icmp eq i64 %113, %112
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  store ptr null, ptr %9, align 8, !tbaa !34
  %116 = call zeroext i8 %103(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %115
  call void @uiBlockSetEmboss(ptr noundef %3, i8 noundef zeroext 0) #15
  %119 = sext i16 %101 to i32
  %120 = add nsw i32 %119, 3
  %121 = fptosi float %4 to i32
  %122 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %123 = mul i16 %122, 5
  %124 = fptosi float %41 to i16
  %125 = load ptr, ptr %9, align 8, !tbaa !34
  %126 = call ptr @RNA_property_identifier(ptr noundef %125) #15
  %127 = call ptr @uiDefButR(ptr noundef %3, i32 noundef 3072, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %120, i32 noundef %121, i16 noundef signext %123, i16 noundef signext %124, ptr noundef nonnull %8, ptr noundef %126, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #15
  %128 = load ptr, ptr %106, align 8, !tbaa !82
  call void @uiButSetFunc(ptr noundef %127, ptr noundef nonnull @achannel_setting_rename_done_cb, ptr noundef %128, ptr noundef null) #15
  %129 = load ptr, ptr %27, align 8, !tbaa !54
  %130 = call zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %129, ptr noundef %3, ptr noundef %127) #15
  call void @uiBlockSetEmboss(ptr noundef %3, i8 noundef zeroext 1) #15
  br label %131

131:                                              ; preds = %118, %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  br label %132

132:                                              ; preds = %100, %105, %131, %109
  %133 = load ptr, ptr %73, align 8, !tbaa !65
  %134 = icmp eq ptr %133, null
  br i1 %134, label %147, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 3
  %137 = load i16, ptr %136, align 4, !tbaa !66
  switch i16 %137, label %147 [
    i16 12, label %138
    i16 2, label %142
  ]

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.SpaceAction, ptr %133, i64 0, i32 11
  %140 = load i16, ptr %139, align 2, !tbaa !74
  %141 = and i16 %140, 2
  br label %147

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.SpaceIpo, ptr %133, i64 0, i32 11
  %144 = load i32, ptr %143, align 4, !tbaa !77
  %145 = trunc i32 %144 to i16
  %146 = and i16 %145, 128
  br label %147

147:                                              ; preds = %135, %138, %142, %132
  %148 = phi i16 [ %146, %142 ], [ %141, %138 ], [ 0, %132 ], [ 0, %135 ]
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 4
  %152 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 4, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !79
  %154 = load i32, ptr %151, align 4, !tbaa !80
  %155 = sub nsw i32 %153, %154
  %156 = sitofp i32 %155 to float
  %157 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %158 = sitofp i16 %157 to float
  %159 = fmul float %158, 0x3FE99999A0000000
  %160 = fmul float %159, 5.000000e-01
  %161 = fcmp olt float %160, %156
  br i1 %161, label %162, label %240

162:                                              ; preds = %150, %147
  %163 = load ptr, ptr %48, align 8, !tbaa !48
  %164 = call zeroext i8 %163(ptr noundef %1, ptr noundef %2, i32 noundef 1) #15
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %177, label %166

166:                                              ; preds = %162
  %167 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %168 = sitofp i16 %167 to float
  %169 = call float @llvm.fmuladd.f32(float %168, float 0x3FEB333340000000, float 0.000000e+00)
  %170 = fptosi float %169 to i16
  %171 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 1, i32 1
  %172 = load float, ptr %171, align 4, !tbaa !69
  %173 = fptosi float %172 to i32
  %174 = sext i16 %170 to i32
  %175 = sub nsw i32 %173, %174
  %176 = fptosi float %47 to i32
  call fastcc void @draw_setting_widget(ptr noundef %1, ptr noundef %2, ptr noundef %26, ptr noundef %3, i32 noundef %175, i32 noundef %176, i32 noundef 1)
  br label %177

177:                                              ; preds = %166, %162
  %178 = phi i16 [ %170, %166 ], [ 0, %162 ]
  %179 = load ptr, ptr %48, align 8, !tbaa !48
  %180 = call zeroext i8 %179(ptr noundef %1, ptr noundef %2, i32 noundef 2) #15
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %177
  %183 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %184 = sitofp i16 %183 to float
  %185 = sitofp i16 %178 to float
  %186 = call float @llvm.fmuladd.f32(float %184, float 0x3FEB333340000000, float %185)
  %187 = fptosi float %186 to i16
  %188 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 1, i32 1
  %189 = load float, ptr %188, align 4, !tbaa !69
  %190 = fptosi float %189 to i32
  %191 = sext i16 %187 to i32
  %192 = sub nsw i32 %190, %191
  %193 = fptosi float %47 to i32
  call fastcc void @draw_setting_widget(ptr noundef %1, ptr noundef %2, ptr noundef %26, ptr noundef %3, i32 noundef %192, i32 noundef %193, i32 noundef 2)
  br label %194

194:                                              ; preds = %182, %177
  %195 = phi i16 [ %187, %182 ], [ %178, %177 ]
  %196 = load ptr, ptr %48, align 8, !tbaa !48
  %197 = call zeroext i8 %196(ptr noundef %1, ptr noundef %2, i32 noundef 6) #15
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %194
  %200 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %201 = sitofp i16 %200 to float
  %202 = sitofp i16 %195 to float
  %203 = call float @llvm.fmuladd.f32(float %201, float 0x3FEB333340000000, float %202)
  %204 = fptosi float %203 to i16
  %205 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 1, i32 1
  %206 = load float, ptr %205, align 4, !tbaa !69
  %207 = fptosi float %206 to i32
  %208 = sext i16 %204 to i32
  %209 = sub nsw i32 %207, %208
  %210 = fptosi float %47 to i32
  call fastcc void @draw_setting_widget(ptr noundef %1, ptr noundef %2, ptr noundef %26, ptr noundef %3, i32 noundef %209, i32 noundef %210, i32 noundef 6)
  br label %211

211:                                              ; preds = %199, %194
  %212 = phi i16 [ %204, %199 ], [ %195, %194 ]
  %213 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 3
  %214 = load i32, ptr %213, align 8, !tbaa !38
  %215 = icmp eq i32 %214, 31
  br i1 %215, label %216, label %240

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 10
  %218 = load ptr, ptr %217, align 8, !tbaa !84
  %219 = icmp eq ptr %218, null
  br i1 %219, label %240, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %218, align 8, !tbaa !85
  %222 = icmp eq ptr %221, null
  br i1 %222, label %240, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.AnimData, ptr %218, i64 0, i32 7
  %225 = load i32, ptr %224, align 8, !tbaa !87
  %226 = and i32 %225, 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %223
  call void @uiBlockSetEmboss(ptr noundef %3, i8 noundef zeroext 0) #15
  %229 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %230 = add i16 %229, %212
  %231 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 1, i32 1
  %232 = load float, ptr %231, align 4, !tbaa !69
  %233 = fptosi float %232 to i32
  %234 = sext i16 %230 to i32
  %235 = sub nsw i32 %233, %234
  %236 = fptosi float %47 to i32
  %237 = call ptr @uiDefIconButO(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 524, i32 noundef %235, i32 noundef %236, i16 noundef signext %229, i16 noundef signext %229, ptr noundef null) #15
  %238 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %237) #15
  %239 = trunc i64 %6 to i32
  call void @RNA_int_set(ptr noundef %238, ptr noundef nonnull @.str.7, i32 noundef %239) #15
  call void @uiBlockSetEmboss(ptr noundef %3, i8 noundef zeroext 1) #15
  br label %240

240:                                              ; preds = %211, %216, %220, %223, %228, %150
  %241 = phi i16 [ %212, %223 ], [ %230, %228 ], [ %212, %220 ], [ %212, %216 ], [ %212, %211 ], [ 0, %150 ]
  br i1 %149, label %300, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 3
  %244 = load i32, ptr %243, align 8, !tbaa !38
  switch i32 %244, label %300 [
    i32 7, label %245
    i32 25, label %245
  ]

245:                                              ; preds = %242, %242
  %246 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %247 = shl i16 %246, 2
  %248 = add i16 %247, %241
  call void @uiBlockSetEmboss(ptr noundef %3, i8 noundef zeroext 0) #15
  %249 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 9
  %250 = load ptr, ptr %249, align 8, !tbaa !88
  %251 = icmp eq ptr %250, null
  br i1 %251, label %300, label %252

252:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  %253 = load i32, ptr %243, align 8, !tbaa !38
  switch i32 %253, label %265 [
    i32 7, label %254
    i32 25, label %261
  ]

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !67
  %257 = getelementptr inbounds %struct.FCurve, ptr %256, i64 0, i32 12
  %258 = load ptr, ptr %257, align 8, !tbaa !89
  %259 = getelementptr inbounds %struct.FCurve, ptr %256, i64 0, i32 11
  %260 = load i32, ptr %259, align 4, !tbaa !91
  br label %265

261:                                              ; preds = %252
  %262 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !67
  %264 = call ptr @BKE_keyblock_curval_rnapath_get(ptr noundef nonnull %250, ptr noundef %263) #15
  br label %265

265:                                              ; preds = %252, %261, %254
  %266 = phi i32 [ %260, %254 ], [ 0, %261 ], [ 0, %252 ]
  %267 = phi i1 [ true, %254 ], [ false, %261 ], [ true, %252 ]
  %268 = phi ptr [ %258, %254 ], [ %264, %261 ], [ null, %252 ]
  %269 = icmp eq ptr %268, null
  br i1 %269, label %299, label %270

270:                                              ; preds = %265
  %271 = load ptr, ptr %249, align 8, !tbaa !88
  call void @RNA_id_pointer_create(ptr noundef %271, ptr noundef nonnull %10) #15
  %272 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %10, ptr noundef nonnull %268, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %296, label %274

274:                                              ; preds = %270
  %275 = load ptr, ptr %12, align 8, !tbaa !34
  %276 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 1, i32 1
  %277 = load float, ptr %276, align 4, !tbaa !69
  %278 = fptosi float %277 to i32
  %279 = sext i16 %248 to i32
  %280 = sub nsw i32 %278, %279
  %281 = fptosi float %47 to i32
  %282 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %283 = sext i16 %282 to i32
  %284 = shl nsw i32 %283, 2
  %285 = fptosi float %5 to i32
  %286 = sitofp i32 %285 to float
  %287 = fsub float %286, %4
  %288 = fptosi float %287 to i32
  %289 = call ptr @uiDefAutoButR(ptr noundef %3, ptr noundef nonnull %11, ptr noundef %275, i32 noundef %266, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %280, i32 noundef %281, i32 noundef %284, i32 noundef %288) #15
  %290 = load i32, ptr %243, align 8, !tbaa !38
  %291 = icmp eq i32 %290, 25
  %292 = load ptr, ptr %249, align 8, !tbaa !88
  %293 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !67
  %295 = select i1 %291, ptr @achannel_setting_slider_shapekey_cb, ptr @achannel_setting_slider_cb
  call void @uiButSetFunc(ptr noundef %289, ptr noundef nonnull %295, ptr noundef %292, ptr noundef %294) #15
  br label %296

296:                                              ; preds = %274, %270
  br i1 %267, label %299, label %297

297:                                              ; preds = %296
  %298 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %298(ptr noundef nonnull %268) #15
  br label %299

299:                                              ; preds = %296, %297, %265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  br label %300

300:                                              ; preds = %242, %299, %245, %240, %25
  ret void
}

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_setting_widget(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 {
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  %10 = getelementptr inbounds %struct.bAnimChannelType, ptr %2, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = call i32 %11(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %9) #15
  %13 = getelementptr inbounds %struct.bAnimChannelType, ptr %2, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = call ptr %14(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %8) #15
  switch i32 %6, label %45 [
    i32 4, label %16
    i32 3, label %46
    i32 5, label %21
    i32 1, label %22
    i32 2, label %27
    i32 6, label %40
  ]

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !38
  %19 = icmp eq i32 %18, 7
  %20 = select i1 %19, ptr @.str.42, ptr @.str.43
  br label %46

21:                                               ; preds = %7
  br label %46

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 7
  %24 = load i16, ptr %23, align 2, !tbaa !92
  %25 = icmp eq i16 %24, 4
  %26 = select i1 %25, ptr @.str.47, ptr @.str.46
  br label %46

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !38
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = icmp eq ptr %0, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %35 = load i16, ptr %34, align 4, !tbaa !66
  %36 = icmp ne i16 %35, 13
  %37 = icmp eq i32 %29, 30
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %46

39:                                               ; preds = %33, %31
  br label %46

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !38
  %43 = icmp eq i32 %42, 31
  %44 = select i1 %43, ptr @.str.51, ptr null
  br label %46

45:                                               ; preds = %7
  unreachable

46:                                               ; preds = %40, %33, %27, %22, %7, %16, %39, %21
  %47 = phi i32 [ 515, %39 ], [ 520, %21 ], [ 517, %16 ], [ 4, %7 ], [ 40, %22 ], [ 515, %27 ], [ 515, %33 ], [ 42, %40 ]
  %48 = phi ptr [ @.str.50, %39 ], [ @.str.45, %21 ], [ %20, %16 ], [ @.str.44, %7 ], [ %26, %22 ], [ @.str.48, %27 ], [ @.str.49, %33 ], [ %44, %40 ]
  %49 = load i8, ptr %9, align 1, !tbaa !52
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 6656, i32 17408
  %52 = icmp ne ptr %15, null
  %53 = icmp ne i32 %12, 0
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %90

55:                                               ; preds = %46
  %56 = load i16, ptr %8, align 2, !tbaa !51
  switch i16 %56, label %75 [
    i16 4, label %57
    i16 2, label %63
    i16 1, label %69
  ]

57:                                               ; preds = %55
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %59 = sitofp i16 %58 to float
  %60 = fmul float %59, 0x3FEB333340000000
  %61 = fptosi float %60 to i16
  %62 = call ptr @uiDefIconButBitI(ptr noundef %3, i32 noundef %51, i32 noundef %12, i32 noundef 0, i32 noundef %47, i32 noundef %4, i32 noundef %5, i16 noundef signext %61, i16 noundef signext %61, ptr noundef nonnull %15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %48) #15
  br label %75

63:                                               ; preds = %55
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %65 = sitofp i16 %64 to float
  %66 = fmul float %65, 0x3FEB333340000000
  %67 = fptosi float %66 to i16
  %68 = call ptr @uiDefIconButBitS(ptr noundef %3, i32 noundef %51, i32 noundef %12, i32 noundef 0, i32 noundef %47, i32 noundef %4, i32 noundef %5, i16 noundef signext %67, i16 noundef signext %67, ptr noundef nonnull %15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %48) #15
  br label %75

69:                                               ; preds = %55
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %71 = sitofp i16 %70 to float
  %72 = fmul float %71, 0x3FEB333340000000
  %73 = fptosi float %72 to i16
  %74 = call ptr @uiDefIconButBitC(ptr noundef %3, i32 noundef %51, i32 noundef %12, i32 noundef 0, i32 noundef %47, i32 noundef %4, i32 noundef %5, i16 noundef signext %73, i16 noundef signext %73, ptr noundef nonnull %15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %48) #15
  br label %75

75:                                               ; preds = %55, %69, %63, %57
  %76 = phi ptr [ null, %55 ], [ %74, %69 ], [ %68, %63 ], [ %62, %57 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  switch i32 %6, label %89 [
    i32 4, label %79
    i32 1, label %79
    i32 2, label %79
    i32 6, label %79
    i32 5, label %84
  ]

79:                                               ; preds = %78, %78, %78, %78
  %80 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %81 = call ptr %80(ptr noundef %1) #15
  %82 = zext nneg i32 %6 to i64
  %83 = inttoptr i64 %82 to ptr
  call void @uiButSetNFunc(ptr noundef nonnull %76, ptr noundef nonnull @achannel_setting_flush_widget_cb, ptr noundef %81, ptr noundef %83) #15
  br label %90

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !84
  %87 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !67
  call void @uiButSetFunc(ptr noundef nonnull %76, ptr noundef nonnull @achannel_nlatrack_solo_widget_cb, ptr noundef %86, ptr noundef %88) #15
  br label %90

89:                                               ; preds = %78
  call void @uiButSetFunc(ptr noundef nonnull %76, ptr noundef nonnull @achannel_setting_widget_cb, ptr noundef null, ptr noundef null) #15
  br label %90

90:                                               ; preds = %75, %89, %84, %79, %46
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #4

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @achannel_setting_rename_done_cb(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %1, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !83
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599621, ptr noundef null) #15
  ret void
}

declare zeroext i8 @uiButActiveOnly(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #4

declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #4

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @BKE_keyblock_curval_rnapath_get(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @uiDefAutoButR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @achannel_setting_slider_shapekey_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @BKE_keyblock_curval_rnapath_get(ptr noundef %1, ptr noundef %2) #15
  %8 = tail call ptr @CTX_wm_reports(ptr noundef %0) #15
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %9, i16 noundef signext 1) #15
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %4) #15
  %13 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = sitofp i32 %11 to float
  %17 = call ptr @verify_adt_action(ptr noundef %1, i16 noundef signext 1) #15
  %18 = call ptr @verify_fcurve(ptr noundef %17, ptr noundef null, ptr noundef nonnull %5, ptr noundef %7, i32 noundef 0, i16 noundef signext 1) #15
  %19 = call zeroext i8 @fcurve_frame_has_keyframe(ptr noundef %18, float noundef %16, i16 noundef signext 0) #15
  %20 = icmp eq i8 %19, 0
  %21 = or i16 %12, 16
  %22 = select i1 %20, i16 %12, i16 %21
  %23 = load ptr, ptr %6, align 8, !tbaa !34
  %24 = call zeroext i8 @insert_keyframe_direct(ptr noundef %8, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %23, ptr noundef %18, float noundef %16, i16 noundef signext %22) #15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #15
  br label %27

27:                                               ; preds = %15, %26, %3
  %28 = icmp eq ptr %7, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %30(ptr noundef nonnull %7) #15
  br label %31

31:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @achannel_setting_slider_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_wm_reports(ptr noundef %0) #15
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !93
  %11 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %8, i16 noundef signext 1) #15
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %4) #15
  %12 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %4, ptr noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = sitofp i32 %10 to float
  %18 = call zeroext i8 @fcurve_frame_has_keyframe(ptr noundef %2, float noundef %17, i16 noundef signext 0) #15
  %19 = icmp eq i8 %18, 0
  %20 = or i16 %11, 16
  %21 = select i1 %19, i16 %11, i16 %20
  %22 = load ptr, ptr %6, align 8, !tbaa !34
  %23 = call zeroext i8 @insert_keyframe_direct(ptr noundef %7, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %22, ptr noundef %2, float noundef %17, i16 noundef signext %21) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #15
  br label %26

26:                                               ; preds = %16, %25, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_summary_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @UI_GetThemeColor3fv(i32 noundef 165, ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_summary_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #1 {
  %5 = alloca [3 x float], align 4
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i1, ptr @ACF_INIT, align 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = icmp ult i32 %11, 32
  tail call void @llvm.assume(i1 %12)
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %18 = getelementptr inbounds %struct.bAnimChannelType, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  call void %19(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #15
  call void @glColor3fv(ptr noundef nonnull %5) #15
  call void @uiSetRoundBox(i32 noundef 9) #15
  %20 = fadd float %2, -2.000000e+00
  %21 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 1, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !69
  %23 = fadd float %22, 1.000000e+02
  call void @uiDrawBox(i32 noundef 9, float noundef 0.000000e+00, float noundef %20, float noundef %23, float noundef %3, float noundef 8.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef signext i16 @acf_generic_indention_0(ptr nocapture readnone %0, ptr nocapture readnone %1) #7 {
  ret i16 0
}

; Function Attrs: nounwind uwtable
define internal void @acf_summary_name(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i64 noundef 256) #15
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_summary_icon(ptr nocapture readnone %0) #7 {
  ret i32 29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_summary_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_summary_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp eq i32 %1, 3
  %5 = zext i1 %4 to i8
  %6 = zext i1 %4 to i32
  store i8 %5, ptr %2, align 1, !tbaa !52
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_summary_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 3
  %11 = load i16, ptr %10, align 4, !tbaa !66
  %12 = icmp eq i16 %11, 12
  %13 = icmp eq i32 %1, 3
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  store i16 4, ptr %2, align 2, !tbaa !51
  %16 = getelementptr inbounds %struct.SpaceAction, ptr %7, i64 0, i32 8, i32 5
  br label %18

17:                                               ; preds = %9, %3
  store i16 0, ptr %2, align 2, !tbaa !51
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi ptr [ %16, %15 ], [ null, %17 ]
  ret ptr %19
}

declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #4

declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @acf_generic_root_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @UI_GetThemeColor3fv(i32 noundef 131, ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_generic_root_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #1 {
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load i1, ptr @ACF_INIT, align 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %4, %10, %14
  %19 = phi ptr [ %17, %14 ], [ null, %4 ], [ null, %10 ]
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = tail call signext i16 @ANIM_channel_setting_get(ptr noundef %0, ptr noundef %1, i32 noundef 3)
  %23 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = tail call signext i16 %24(ptr noundef %0, ptr noundef %1) #15
  %28 = sitofp i16 %27 to float
  br label %29

29:                                               ; preds = %18, %26
  %30 = phi float [ %28, %26 ], [ 0.000000e+00, %18 ]
  %31 = icmp eq i16 %22, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %32 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  call void %33(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #15
  call void @glColor3fv(ptr noundef nonnull %5) #15
  %34 = select i1 %31, i32 9, i32 1
  call void @uiSetRoundBox(i32 noundef %34) #15
  %35 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 1, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !69
  %37 = fadd float %36, 1.000000e+02
  call void @uiDrawBox(i32 noundef 9, float noundef %30, float noundef %2, float noundef %37, float noundef %3, float noundef 8.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_generic_idblock_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #15
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_generic_idblock_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  tail call void @RNA_id_pointer_create(ptr noundef %5, ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = tail call ptr @RNA_struct_name_property(ptr noundef %7) #15
  store ptr %8, ptr %2, align 8, !tbaa !34
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_scene_icon(ptr nocapture readnone %0) #7 {
  ret i32 156
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @acf_scene_setting_valid(ptr noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #10 {
  switch i32 %2, label %16 [
    i32 2, label %4
    i32 4, label %10
    i32 0, label %17
    i32 3, label %17
  ]

4:                                                ; preds = %3
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 4, !tbaa !66
  %9 = icmp eq i16 %8, 13
  br label %17

10:                                               ; preds = %3
  %11 = icmp eq ptr %0, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 4, !tbaa !66
  %15 = icmp eq i16 %14, 2
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %3, %3, %10, %12, %4, %6, %16
  %18 = phi i1 [ false, %16 ], [ false, %4 ], [ %9, %6 ], [ false, %10 ], [ %15, %12 ], [ true, %3 ], [ true, %3 ]
  %19 = zext i1 %18 to i8
  ret i8 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_scene_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 0, label %8
    i32 3, label %4
    i32 2, label %5
    i32 4, label %6
  ]

4:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

5:                                                ; preds = %3
  br label %8

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 65536, %6 ], [ 2, %5 ], [ 2, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_scene_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %16 [
    i32 0, label %6
    i32 3, label %8
    i32 2, label %10
    i32 4, label %10
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 15
  br label %16

8:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %9 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 15
  br label %16

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  store i16 4, ptr %2, align 2, !tbaa !51
  %15 = getelementptr inbounds %struct.AnimData, ptr %12, i64 0, i32 7
  br label %16

16:                                               ; preds = %3, %10, %14, %8, %6
  %17 = phi ptr [ %15, %14 ], [ %9, %8 ], [ %7, %6 ], [ null, %10 ], [ null, %3 ]
  ret ptr %17
}

declare ptr @RNA_struct_name_property(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @acf_object_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %11, i64 noundef 256) #15
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_object_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  tail call void @RNA_id_pointer_create(ptr noundef %5, ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = tail call ptr @RNA_struct_name_property(ptr noundef %7) #15
  store ptr %8, ptr %2, align 8, !tbaa !34
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @acf_object_icon(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !118
  %8 = icmp ult i16 %7, 26
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = zext nneg i16 %7 to i64
  %11 = getelementptr inbounds [26 x i32], ptr @switch.table.acf_object_icon, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ 159, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @acf_object_setting_valid(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  switch i32 %2, label %24 [
    i32 2, label %8
    i32 4, label %14
    i32 0, label %25
    i32 3, label %25
  ]

8:                                                ; preds = %3
  %9 = icmp eq ptr %0, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 4, !tbaa !66
  %13 = icmp eq i16 %12, 13
  br label %25

14:                                               ; preds = %3
  %15 = icmp eq ptr %0, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %18 = load i16, ptr %17, align 4, !tbaa !66
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = icmp ne ptr %22, null
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %3, %3, %14, %16, %20, %8, %10, %24
  %26 = phi i1 [ false, %24 ], [ false, %8 ], [ %13, %10 ], [ false, %16 ], [ false, %14 ], [ %23, %20 ], [ true, %3 ], [ true, %3 ]
  %27 = zext i1 %26 to i8
  ret i8 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_object_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 0, label %8
    i32 3, label %4
    i32 2, label %5
    i32 4, label %6
  ]

4:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

5:                                                ; preds = %3
  br label %8

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 65536, %6 ], [ 2, %5 ], [ 1024, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_object_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %18 [
    i32 0, label %8
    i32 3, label %10
    i32 2, label %12
    i32 4, label %12
  ]

8:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %9 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 53
  br label %18

10:                                               ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %11 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 59
  br label %18

12:                                               ; preds = %3, %3
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  store i16 4, ptr %2, align 2, !tbaa !51
  %17 = getelementptr inbounds %struct.AnimData, ptr %14, i64 0, i32 7
  br label %18

18:                                               ; preds = %3, %12, %16, %10, %8
  %19 = phi ptr [ %17, %16 ], [ %11, %10 ], [ %9, %8 ], [ null, %12 ], [ null, %3 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define internal void @acf_group_color(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = alloca [3 x i8], align 1
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 4, !tbaa !66
  switch i16 %12, label %51 [
    i16 12, label %13
    i16 2, label %18
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceAction, ptr %8, i64 0, i32 11
  %15 = load i16, ptr %14, align 2, !tbaa !74
  %16 = and i16 %15, 128
  %17 = icmp eq i16 %16, 0
  br label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.SpaceIpo, ptr %8, i64 0, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !77
  %21 = and i32 %20, 8192
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %13, %18
  %24 = phi i1 [ %22, %18 ], [ %17, %13 ]
  br i1 %24, label %25, label %51

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !122
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #15
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !68
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds i8, ptr %4, i64 1
  %35 = getelementptr inbounds i8, ptr %4, i64 2
  br i1 %33, label %42, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 6, i32 1
  %38 = load i8, ptr %37, align 1, !tbaa !52
  store i8 %38, ptr %4, align 1, !tbaa !52
  %39 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 6, i32 1, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !52
  store i8 %40, ptr %34, align 1, !tbaa !52
  %41 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 6, i32 1, i64 2
  br label %48

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 6
  %44 = load i8, ptr %43, align 1, !tbaa !52
  store i8 %44, ptr %4, align 1, !tbaa !52
  %45 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 6, i32 0, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !52
  store i8 %46, ptr %34, align 1, !tbaa !52
  %47 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 6, i32 0, i64 2
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi ptr [ %47, %42 ], [ %41, %36 ]
  %50 = load i8, ptr %49, align 1, !tbaa !52
  store i8 %50, ptr %35, align 1, !tbaa !52
  call void @rgb_uchar_to_float(ptr noundef %2, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #15
  br label %58

51:                                               ; preds = %10, %3, %25, %23
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !68
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 31, i32 noundef 10, ptr noundef %2) #15
  br label %58

57:                                               ; preds = %51
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 30, i32 noundef 20, ptr noundef %2) #15
  br label %58

58:                                               ; preds = %56, %57, %48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_group_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #1 {
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load i1, ptr @ACF_INIT, align 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %4, %10, %14
  %19 = phi ptr [ %17, %14 ], [ null, %4 ], [ null, %10 ]
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = tail call signext i16 @ANIM_channel_setting_get(ptr noundef %0, ptr noundef %1, i32 noundef 3)
  %23 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = tail call signext i16 %24(ptr noundef %0, ptr noundef %1) #15
  %28 = sitofp i16 %27 to float
  br label %29

29:                                               ; preds = %18, %26
  %30 = phi float [ %28, %26 ], [ 0.000000e+00, %18 ]
  %31 = icmp eq i16 %22, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %32 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  call void %33(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #15
  call void @glColor3fv(ptr noundef nonnull %5) #15
  %34 = select i1 %31, i32 9, i32 1
  call void @uiSetRoundBox(i32 noundef %34) #15
  %35 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 1, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !69
  %37 = fadd float %36, 1.000000e+02
  call void @uiDrawBox(i32 noundef 9, float noundef %30, float noundef %2, float noundef %37, float noundef %3, float noundef 8.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i16 @acf_generic_group_offset(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load i1, ptr @ACF_INIT, align 2
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %2, %7, %11
  %16 = phi ptr [ %14, %11 ], [ null, %2 ], [ null, %7 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bAnimChannelType, ptr %16, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !125
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = tail call signext i16 %20(ptr noundef %0, ptr noundef %1) #15
  %24 = sitofp i16 %23 to float
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %26 = sitofp i16 %25 to float
  %27 = fmul float %26, 0x3FD6666660000000
  %28 = fmul float %27, %24
  %29 = fptosi float %28 to i16
  br label %30

30:                                               ; preds = %15, %18, %22
  %31 = phi i16 [ %29, %22 ], [ 0, %18 ], [ 0, %15 ]
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %77, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4
  %37 = load i16, ptr %36, align 8, !tbaa !51
  switch i16 %37, label %47 [
    i16 17748, label %38
    i16 16717, label %41
    i16 16720, label %41
  ]

38:                                               ; preds = %35
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %40 = add i16 %39, %31
  br label %57

41:                                               ; preds = %35, %35
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %43 = sitofp i16 %42 to float
  %44 = fmul float %43, 0x3FE6666660000000
  %45 = fptosi float %44 to i16
  %46 = add i16 %31, %45
  br label %57

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %49 = load i16, ptr %48, align 8, !tbaa !126
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %53 = sitofp i16 %52 to float
  %54 = fmul float %53, 0x3FE6666660000000
  %55 = fptosi float %54 to i16
  %56 = add i16 %31, %55
  br label %57

57:                                               ; preds = %41, %51, %47, %38
  %58 = phi i16 [ %40, %38 ], [ %46, %41 ], [ %56, %51 ], [ %31, %47 ]
  %59 = icmp eq i16 %37, 21582
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.bNodeTree, ptr %33, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !127
  switch i32 %62, label %74 [
    i32 0, label %63
    i32 2, label %68
  ]

63:                                               ; preds = %60
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %65 = sitofp i16 %64 to float
  %66 = fmul float %65, 0x3FD6666660000000
  %67 = fptosi float %66 to i16
  br label %74

68:                                               ; preds = %60
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %70 = sitofp i16 %69 to float
  %71 = fmul float %70, 0x3FD6666660000000
  %72 = fmul float %71, 2.000000e+00
  %73 = fptosi float %72 to i16
  br label %74

74:                                               ; preds = %60, %63, %68
  %75 = phi i16 [ %73, %68 ], [ %67, %63 ], [ 0, %60 ]
  %76 = add i16 %75, %58
  br label %77

77:                                               ; preds = %57, %74, %30
  %78 = phi i16 [ %76, %74 ], [ %58, %57 ], [ %31, %30 ]
  ret i16 %78
}

; Function Attrs: nounwind uwtable
define internal void @acf_group_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 5
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #15
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_group_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %7, ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = tail call ptr @RNA_struct_name_property(ptr noundef %9) #15
  store ptr %10, ptr %2, align 8, !tbaa !34
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @acf_group_setting_valid(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #10 {
  switch i32 %2, label %9 [
    i32 5, label %10
    i32 4, label %4
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 4, !tbaa !66
  %7 = icmp eq i16 %6, 2
  %8 = zext i1 %7 to i8
  br label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %3, %9, %4
  %11 = phi i8 [ 1, %9 ], [ %8, %4 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @acf_group_setting_flag(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %12 [
    i32 0, label %13
    i32 3, label %4
    i32 2, label %9
    i32 1, label %10
    i32 4, label %11
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 4, !tbaa !66
  %7 = icmp eq i16 %6, 2
  %8 = select i1 %7, i32 64, i32 8
  br label %13

9:                                                ; preds = %3
  br label %13

10:                                               ; preds = %3
  br label %13

11:                                               ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %3, %12, %11, %10, %9, %4
  %14 = phi i32 [ 0, %12 ], [ 32, %11 ], [ 4, %10 ], [ 16, %9 ], [ %8, %4 ], [ 1, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_group_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  ret ptr %6
}

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @UI_GetThemeColorShade3fv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal signext i16 @acf_generic_basic_offset(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load i1, ptr @ACF_INIT, align 2
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %2, %7, %11
  %16 = phi ptr [ %14, %11 ], [ null, %2 ], [ null, %7 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bAnimChannelType, ptr %16, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !125
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = tail call signext i16 %20(ptr noundef %0, ptr noundef %1) #15
  %24 = sitofp i16 %23 to float
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %26 = sitofp i16 %25 to float
  %27 = fmul float %26, 0x3FD6666660000000
  %28 = fmul float %27, %24
  %29 = fptosi float %28 to i16
  br label %30

30:                                               ; preds = %15, %18, %22
  %31 = phi i16 [ %29, %22 ], [ 0, %18 ], [ 0, %15 ]
  ret i16 %31
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @acf_generic_channel_color(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca [3 x i8], align 1
  %5 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %5)
  %6 = load i1, ptr @ACF_INIT, align 2
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = icmp ult i32 %10, 32
  tail call void @llvm.assume(i1 %11)
  %12 = zext nneg i32 %10 to i64
  %13 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.bAnimChannelType, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !125
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %8
  %19 = tail call signext i16 %16(ptr noundef %0, ptr noundef nonnull %1) #15
  %20 = sext i16 %19 to i32
  br label %21

21:                                               ; preds = %8, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %8 ]
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %28 = load i16, ptr %27, align 4, !tbaa !66
  switch i16 %28, label %39 [
    i16 12, label %29
    i16 2, label %34
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.SpaceAction, ptr %24, i64 0, i32 11
  %31 = load i16, ptr %30, align 2, !tbaa !74
  %32 = and i16 %31, 128
  %33 = icmp eq i16 %32, 0
  br label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.SpaceIpo, ptr %24, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !77
  %37 = and i32 %36, 8192
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %21, %26, %29, %34
  %40 = phi i1 [ false, %26 ], [ %38, %34 ], [ %33, %29 ], [ false, %21 ]
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !38
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.FCurve, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !130
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi ptr [ %48, %44 ], [ null, %39 ]
  %51 = icmp ne ptr %50, null
  %52 = select i1 %40, i1 %51, i1 false
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !122
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #15
  %58 = getelementptr inbounds i8, ptr %4, i64 1
  %59 = getelementptr inbounds i8, ptr %4, i64 2
  switch i32 %22, label %72 [
    i32 2, label %60
    i32 1, label %66
  ]

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6
  %62 = load i8, ptr %61, align 1, !tbaa !52
  store i8 %62, ptr %4, align 1, !tbaa !52
  %63 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6, i32 0, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !52
  store i8 %64, ptr %58, align 1, !tbaa !52
  %65 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6, i32 0, i64 2
  br label %78

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6, i32 1
  %68 = load i8, ptr %67, align 1, !tbaa !52
  store i8 %68, ptr %4, align 1, !tbaa !52
  %69 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6, i32 1, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !52
  store i8 %70, ptr %58, align 1, !tbaa !52
  %71 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6, i32 1, i64 2
  br label %78

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6, i32 2
  %74 = load i8, ptr %73, align 1, !tbaa !52
  store i8 %74, ptr %4, align 1, !tbaa !52
  %75 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6, i32 2, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !52
  store i8 %76, ptr %58, align 1, !tbaa !52
  %77 = getelementptr inbounds %struct.bActionGroup, ptr %50, i64 0, i32 6, i32 2, i64 2
  br label %78

78:                                               ; preds = %66, %72, %60
  %79 = phi ptr [ %71, %66 ], [ %77, %72 ], [ %65, %60 ]
  %80 = load i8, ptr %79, align 1, !tbaa !52
  store i8 %80, ptr %59, align 1, !tbaa !52
  call void @rgb_uchar_to_float(ptr noundef %2, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #15
  br label %84

81:                                               ; preds = %53, %49
  %82 = mul nsw i32 %22, -20
  %83 = add nsw i32 %82, 20
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 10, i32 noundef %83, ptr noundef %2) #15
  br label %84

84:                                               ; preds = %81, %78
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_generic_channel_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #1 {
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load i1, ptr @ACF_INIT, align 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %4, %10, %14
  %19 = phi ptr [ %17, %14 ], [ null, %4 ], [ null, %10 ]
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = tail call signext i16 %23(ptr noundef %0, ptr noundef %1) #15
  %27 = sitofp i16 %26 to float
  br label %28

28:                                               ; preds = %18, %25
  %29 = phi float [ %27, %25 ], [ 0.000000e+00, %18 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %30 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  call void %31(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #15
  call void @glColor3fv(ptr noundef nonnull %5) #15
  %32 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 1, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !69
  %34 = fadd float %33, 1.000000e+02
  call void @glRectf(float noundef %29, float noundef %2, float noundef %34, float noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal signext i16 @acf_generic_indention_flexible(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !38
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i16
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i16 [ %12, %6 ], [ 0, %2 ]
  ret i16 %14
}

; Function Attrs: nounwind uwtable
define internal void @acf_fcurve_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call i32 @getname_anim_fcurve(ptr noundef %1, ptr noundef %4, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_fcurve_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !131
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  tail call void @RNA_pointer_create(ptr noundef %12, ptr noundef nonnull @RNA_FCurve, ptr noundef %5, ptr noundef %1) #15
  %13 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef nonnull @.str.14) #15
  br label %14

14:                                               ; preds = %3, %10
  %15 = phi ptr [ %13, %10 ], [ null, %3 ]
  store ptr %15, ptr %2, align 8, !tbaa !34
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i8
  ret i8 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @acf_fcurve_setting_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #11 {
  switch i32 %2, label %14 [
    i32 5, label %15
    i32 3, label %15
    i32 1, label %4
    i32 4, label %10
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !132
  %9 = icmp ne ptr %8, null
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 4, !tbaa !66
  %13 = icmp eq i16 %12, 2
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %4, %3, %3, %14, %10
  %16 = phi i1 [ true, %14 ], [ %13, %10 ], [ false, %3 ], [ false, %3 ], [ %9, %4 ]
  %17 = zext i1 %16 to i8
  ret i8 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_fcurve_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp ult i32 %1, 5
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds [5 x i32], ptr @switch.table.acf_fcurve_setting_flag, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_fcurve_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 2, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  ret ptr %6
}

declare i32 @getname_anim_fcurve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @acf_generic_dataexpand_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @UI_GetThemeColor3fv(i32 noundef 132, ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_generic_dataexpand_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #1 {
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load i1, ptr @ACF_INIT, align 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %4, %10, %14
  %19 = phi ptr [ %17, %14 ], [ null, %4 ], [ null, %10 ]
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = tail call signext i16 %23(ptr noundef %0, ptr noundef %1) #15
  %27 = sitofp i16 %26 to float
  br label %28

28:                                               ; preds = %18, %25
  %29 = phi float [ %27, %25 ], [ 0.000000e+00, %18 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %30 = getelementptr inbounds %struct.bAnimChannelType, ptr %19, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  call void %31(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #15
  call void @glColor3fv(ptr noundef nonnull %5) #15
  %32 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 1, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !69
  %34 = fadd float %33, 1.000000e+02
  call void @glRectf(float noundef %29, float noundef %2, float noundef %34, float noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef signext i16 @acf_generic_indention_1(ptr nocapture readnone %0, ptr nocapture readnone %1) #7 {
  ret i16 1
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_generic_idfill_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  tail call void @RNA_id_pointer_create(ptr noundef %5, ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = tail call ptr @RNA_struct_name_property(ptr noundef %7) #15
  store ptr %8, ptr %2, align 8, !tbaa !34
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_fillactd_icon(ptr nocapture readnone %0) #7 {
  ret i32 115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_fillactd_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %2, 3
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_fillactd_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %5 [
    i32 0, label %6
    i32 3, label %4
  ]

4:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %3, %5, %4
  %7 = phi i32 [ 0, %5 ], [ 1, %4 ], [ 16384, %3 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @acf_fillactd_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 0, label %8
    i32 3, label %12
  ]

8:                                                ; preds = %3
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %11 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 7
  br label %14

12:                                               ; preds = %3
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.bAction, ptr %5, i64 0, i32 5
  br label %14

14:                                               ; preds = %3, %8, %12, %10
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @acf_filldrivers_name(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull @.str.17, i64 noundef 256) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_filldrivers_icon(ptr nocapture readnone %0) #7 {
  ret i32 519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_filldrivers_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_filldrivers_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp eq i32 %1, 3
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %2, align 1
  %6 = select i1 %4, i32 1024, i32 0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @acf_filldrivers_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  %6 = icmp eq i32 %1, 3
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  store i16 4, ptr %2, align 2, !tbaa !51
  %8 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 7
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dsmat_icon(ptr nocapture readnone %0) #7 {
  ret i32 165
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @acf_generic_dataexpand_setting_valid(ptr noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #10 {
  switch i32 %2, label %11 [
    i32 3, label %12
    i32 2, label %4
    i32 0, label %12
  ]

4:                                                ; preds = %3
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 4, !tbaa !66
  %9 = icmp eq i16 %8, 13
  %10 = zext i1 %9 to i8
  br label %12

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %3, %4, %6, %3, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %3 ], [ 0, %4 ], [ %10, %6 ], [ 1, %3 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsmat_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %6 [
    i32 3, label %7
    i32 2, label %7
    i32 4, label %4
    i32 0, label %5
  ]

4:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %7

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %3, %3, %6, %5, %4
  %8 = phi i32 [ 0, %6 ], [ 16384, %5 ], [ 65536, %4 ], [ 2, %3 ], [ 2, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsmat_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 3
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dslam_icon(ptr nocapture readnone %0) #7 {
  ret i32 164
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dslam_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dslam_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Lamp, ptr %5, i64 0, i32 3
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Lamp, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dscam_icon(ptr nocapture readnone %0) #7 {
  ret i32 168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dscam_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 64, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dscam_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Camera, ptr %5, i64 0, i32 4
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Camera, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal i32 @acf_dscur_icon(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call signext i16 @BKE_curve_type_get(ptr noundef %3) #15
  %5 = icmp eq i16 %4, 3
  %6 = select i1 %5, i32 188, i32 161
  %7 = icmp eq i16 %4, 4
  %8 = select i1 %7, i32 186, i32 %6
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dscur_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 2048, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dscur_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 4, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 23
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

declare signext i16 @BKE_curve_type_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dsskey_icon(ptr nocapture readnone %0) #7 {
  ret i32 176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsskey_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsskey_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 12
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !144
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dswor_icon(ptr nocapture readnone %0) #7 {
  ret i32 158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dswor_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dswor_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.World, ptr %5, i64 0, i32 66
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.World, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal signext i16 @acf_dsntree_offset(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %1, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = load i1, ptr @ACF_INIT, align 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %9

9:                                                ; preds = %8, %6
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %2, %9, %13
  %18 = phi ptr [ %16, %13 ], [ null, %2 ], [ null, %9 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bAnimChannelType, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !125
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = tail call signext i16 %22(ptr noundef %0, ptr noundef %1) #15
  %26 = sitofp i16 %25 to float
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %28 = sitofp i16 %27 to float
  %29 = fmul float %28, 0x3FD6666660000000
  %30 = fmul float %29, %26
  %31 = fptosi float %30 to i16
  br label %32

32:                                               ; preds = %17, %20, %24
  %33 = phi i16 [ %31, %24 ], [ 0, %20 ], [ 0, %17 ]
  %34 = icmp eq ptr %4, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !127
  switch i32 %37, label %49 [
    i32 0, label %38
    i32 2, label %43
  ]

38:                                               ; preds = %35
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %40 = sitofp i16 %39 to float
  %41 = fmul float %40, 0x3FD6666660000000
  %42 = fptosi float %41 to i16
  br label %49

43:                                               ; preds = %35
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %45 = sitofp i16 %44 to float
  %46 = fmul float %45, 0x3FD6666660000000
  %47 = fmul float %46, 2.000000e+00
  %48 = fptosi float %47 to i16
  br label %49

49:                                               ; preds = %32, %35, %38, %43
  %50 = phi i16 [ %48, %43 ], [ %42, %38 ], [ 0, %35 ], [ 0, %32 ]
  %51 = add i16 %50, %33
  ret i16 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dsntree_icon(ptr nocapture readnone %0) #7 {
  ret i32 119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsntree_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsntree_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 4, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 12
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !148
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dspart_icon(ptr nocapture readnone %0) #7 {
  ret i32 169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dspart_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 8, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dspart_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 4, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 5
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dsmball_icon(ptr nocapture readnone %0) #7 {
  ret i32 162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsmball_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsmball_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 1, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 8
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !151
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dsarm_icon(ptr nocapture readnone %0) #7 {
  ret i32 172
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsarm_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 8192, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsarm_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 4, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 8
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dsmesh_icon(ptr nocapture readnone %0) #7 {
  ret i32 160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsmesh_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 512, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsmesh_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 38
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !155
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef signext i16 @acf_dstex_offset(ptr nocapture readnone %0, ptr nocapture readnone %1) #7 {
  ret i16 14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dstex_icon(ptr nocapture readnone %0) #7 {
  ret i32 166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dstex_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 512, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dstex_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 31
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !158
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dslat_icon(ptr nocapture readnone %0) #7 {
  ret i32 163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dslat_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 4, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dslat_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 5
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dslinestyle_icon(ptr nocapture readnone %0) #7 {
  ret i32 198
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dslinestyle_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dslinestyle_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 4, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %5, i64 0, i32 9
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_dsspk_icon(ptr nocapture readnone %0) #7 {
  ret i32 90
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsspk_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  switch i32 %1, label %7 [
    i32 3, label %8
    i32 2, label %4
    i32 4, label %5
    i32 0, label %6
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !52
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %3, %7, %6, %5, %4
  %9 = phi i32 [ 0, %7 ], [ 16384, %6 ], [ 65536, %5 ], [ 2, %4 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsspk_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  switch i32 %1, label %14 [
    i32 3, label %6
    i32 0, label %8
    i32 2, label %8
    i32 4, label %8
  ]

6:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.Speaker, ptr %5, i64 0, i32 13
  br label %14

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.Speaker, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !165
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i16 4, ptr %2, align 2, !tbaa !51
  %13 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  br label %14

14:                                               ; preds = %3, %8, %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ], [ null, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @acf_shapekey_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 11
  %10 = load i8, ptr %9, align 8, !tbaa !52
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #15
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !167
  %17 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %1, i64 noundef 256, ptr noundef nonnull @.str.34, i32 noundef %16) #15
  br label %18

18:                                               ; preds = %12, %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_shapekey_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %5, i64 0, i32 11
  %9 = load i8, ptr %8, align 8, !tbaa !52
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  tail call void @RNA_pointer_create(ptr noundef %13, ptr noundef nonnull @RNA_ShapeKey, ptr noundef nonnull %5, ptr noundef %1) #15
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !112
  %16 = tail call ptr @RNA_struct_name_property(ptr noundef %15) #15
  store ptr %16, ptr %2, align 8, !tbaa !34
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %3, %7, %11
  %20 = phi i8 [ %18, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_shapekey_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #7 {
  %4 = icmp ult i32 %2, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_shapekey_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds [3 x i32], ptr @switch.table.acf_shapekey_setting_flag, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @acf_shapekey_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 0, ptr %2, align 2, !tbaa !51
  %6 = icmp ult i32 %1, 3
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  store i16 2, ptr %2, align 2, !tbaa !51
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %5, i64 0, i32 7
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  ret ptr %10
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @acf_gpd_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 132, i32 noundef 20, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_gpd_icon(ptr nocapture readnone %0) #7 {
  ret i32 197
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_gpd_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %2, 3
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_gpd_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp eq i32 %1, 3
  %5 = select i1 %4, i32 4, i32 0
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 1, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_gpd_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 2
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @acf_gpl_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 8
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #15
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_gpl_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef nonnull %5, ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call ptr @RNA_struct_name_property(ptr noundef %11) #15
  store ptr %12, ptr %2, align 8, !tbaa !34
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i8 [ %14, %7 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_gpl_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #7 {
  %4 = add i32 %2, -6
  %5 = icmp ult i32 %4, -3
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_gpl_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds [3 x i32], ptr @switch.table.acf_gpl_setting_flag, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_gpl_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %5, i64 0, i32 4
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @acf_mask_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 132, i32 noundef 20, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @acf_mask_icon(ptr nocapture readnone %0) #7 {
  ret i32 467
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_mask_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %2, 3
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_mask_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp eq i32 %1, 3
  %5 = select i1 %4, i32 16, i32 0
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 1, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_mask_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 7
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @acf_masklay_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 2
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #15
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_masklay_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_MaskLayer, ptr noundef nonnull %5, ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call ptr @RNA_struct_name_property(ptr noundef %11) #15
  store ptr %12, ptr %2, align 8, !tbaa !34
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i8 [ %14, %7 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_masklay_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #7 {
  %4 = add i32 %2, -6
  %5 = icmp ult i32 %4, -3
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_masklay_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 16, i32 0
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 32, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_masklay_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 1, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %5, i64 0, i32 12
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @acf_nlatrack_color(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.NlaTrack, ptr %5, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !168
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 -20, i32 20
  br label %20

20:                                               ; preds = %14, %9, %3
  %21 = phi i32 [ 20, %9 ], [ 20, %3 ], [ %19, %14 ]
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 10, i32 noundef %21, ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_nlatrack_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 5
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #15
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_nlatrack_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NlaTrack, ptr noundef nonnull %5, ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call ptr @RNA_struct_name_property(ptr noundef %11) #15
  store ptr %12, ptr %2, align 8, !tbaa !34
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i8 [ %14, %7 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @acf_nlatrack_setting_valid(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  switch i32 %2, label %24 [
    i32 0, label %25
    i32 5, label %25
    i32 1, label %6
    i32 2, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.NlaTrack, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !168
  %11 = and i32 %10, 1025
  %12 = icmp eq i32 %11, 1025
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = icmp eq ptr %5, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !87
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = trunc i32 %10 to i8
  %22 = lshr i8 %21, 3
  %23 = and i8 %22, 1
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %6, %13, %15, %20, %3, %3, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %3 ], [ 1, %3 ], [ %23, %20 ], [ 1, %15 ], [ 1, %13 ], [ 0, %6 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_nlatrack_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp ult i32 %1, 6
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds [6 x i32], ptr @switch.table.acf_nlatrack_setting_flag, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_nlatrack_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %5, i64 0, i32 3
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @acf_nlaaction_color(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  call void @nla_action_get_color(ptr noundef %6, ptr noundef %8, ptr noundef nonnull %4) #15
  %9 = load float, ptr %4, align 16, !tbaa !170
  store float %9, ptr %2, align 4, !tbaa !170
  %10 = getelementptr inbounds float, ptr %4, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !170
  %12 = getelementptr inbounds float, ptr %2, i64 1
  store float %11, ptr %12, align 4, !tbaa !170
  %13 = getelementptr inbounds float, ptr %4, i64 2
  %14 = load float, ptr %13, align 8, !tbaa !170
  %15 = getelementptr inbounds float, ptr %2, i64 2
  store float %14, ptr %15, align 4, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_nlaaction_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #1 {
  %5 = alloca [4 x float], align 16
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i1, ptr @ACF_INIT, align 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !34
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !34
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !34
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = icmp ult i32 %11, 32
  tail call void @llvm.assume(i1 %12)
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.bAnimChannelType, ptr %15, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = tail call signext i16 %21(ptr noundef %0, ptr noundef nonnull %1) #15
  %25 = sitofp i16 %24 to float
  br label %26

26:                                               ; preds = %9, %23
  %27 = phi float [ %25, %23 ], [ 0.000000e+00, %9 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  call void @nla_action_get_color(ptr noundef %19, ptr noundef %29, ptr noundef nonnull %5) #15
  %30 = icmp eq ptr %19, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.AnimData, ptr %19, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !87
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  call void @glColor3fv(ptr noundef nonnull %5) #15
  br label %48

37:                                               ; preds = %31
  %38 = and i32 %33, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, float 1.000000e+00, float 0x3FD3333340000000
  br label %41

41:                                               ; preds = %26, %37
  %42 = phi float [ %40, %37 ], [ 1.000000e+00, %26 ]
  %43 = load float, ptr %5, align 16, !tbaa !170
  %44 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !170
  %46 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %47 = load float, ptr %46, align 8, !tbaa !170
  call void @glColor4f(float noundef %43, float noundef %45, float noundef %47, float noundef %42) #15
  br label %48

48:                                               ; preds = %41, %36
  call void @uiSetRoundBox(i32 noundef 1) #15
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %50 = sitofp i16 %49 to float
  %51 = call float @llvm.fmuladd.f32(float %50, float 0x3FB99999A0000000, float %2)
  %52 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 1, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !69
  %54 = call float @llvm.fmuladd.f32(float %50, float 0x3FB99999A0000000, float %3)
  %55 = fadd float %54, -1.000000e+00
  call void @uiDrawBox(i32 noundef 9, float noundef %27, float noundef %51, float noundef %53, float noundef %55, float noundef 8.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @acf_nlaaction_name(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %9 = select i1 %7, ptr @.str.41, ptr %8
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #15
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @acf_nlaaction_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_Action, ptr noundef nonnull %5, ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call ptr @RNA_struct_name_property(ptr noundef %11) #15
  store ptr %12, ptr %2, align 8, !tbaa !34
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i8 [ %14, %7 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @acf_nlaaction_icon(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !87
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %11

11:                                               ; preds = %5, %10
  %12 = phi i32 [ 115, %10 ], [ 504, %5 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @acf_nlaaction_setting_valid(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp eq i32 %2, 6
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %7
  br label %15

15:                                               ; preds = %3, %9, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %9 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_nlaaction_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp eq i32 %1, 6
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %2, align 1
  %6 = select i1 %4, i32 8, i32 0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_nlaaction_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 7
  ret ptr %6
}

declare void @nla_action_get_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

declare ptr @uiDefIconButBitS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

declare ptr @uiDefIconButBitC(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @achannel_setting_flush_widget_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = ptrtoint ptr %2 to i64
  %7 = trunc i64 %6 to i32
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #15
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #15
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef %7)
  %14 = icmp eq i16 %13, -1
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = sext i16 %13 to i32
  %17 = load ptr, ptr %4, align 8, !tbaa !171
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %19 = load i16, ptr %18, align 8, !tbaa !126
  %20 = sext i16 %19 to i32
  %21 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 9, ptr noundef %17, i32 noundef %20) #15
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef %16) #15
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #15
  br label %22

22:                                               ; preds = %12, %3, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @achannel_nlatrack_solo_widget_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !168
  %6 = xor i32 %5, 8
  store i32 %6, ptr %4, align 8, !tbaa !168
  tail call void @BKE_nlatrack_solo_toggle(ptr noundef %1, ptr noundef %2) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599621, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @achannel_setting_widget_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #1 {
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #15
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ANIM_flush_setting_anim_channels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #4

declare void @BKE_nlatrack_solo_toggle(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #4

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #4

declare ptr @verify_adt_action(ptr noundef, i16 noundef signext) local_unnamed_addr #4

declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #4

declare zeroext i8 @fcurve_frame_has_keyframe(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #4

declare zeroext i8 @insert_keyframe_direct(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 24}
!39 = !{!"bAnimListElem", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !41, i64 36, !41, i64 38, !35, i64 40, !35, i64 48, !35, i64 56}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !35, i64 48}
!46 = !{!"bAnimChannelType", !35, i64 0, !40, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88}
!47 = !{!46, !35, i64 0}
!48 = !{!46, !35, i64 72}
!49 = !{!46, !35, i64 80}
!50 = !{!46, !35, i64 88}
!51 = !{!41, !41, i64 0}
!52 = !{!36, !36, i64 0}
!53 = !{!40, !40, i64 0}
!54 = !{!55, !35, i64 32}
!55 = !{!"bAnimContext", !35, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72}
!56 = !{!46, !35, i64 40}
!57 = !{!58, !41, i64 8948}
!58 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !41, i64 8496, !41, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !59, i64 8536, !59, i64 8552, !59, i64 8568, !59, i64 8584, !59, i64 8600, !59, i64 8616, !59, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !40, i64 8912, !40, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !60, i64 8956, !60, i64 8960, !40, i64 8964, !41, i64 8968, !41, i64 8970, !60, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !61, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !60, i64 10904, !60, i64 10908, !40, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !62, i64 10928}
!59 = !{!"ListBase", !35, i64 0, !35, i64 8}
!60 = !{!"float", !36, i64 0}
!61 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!62 = !{!"WalkNavigation", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !41, i64 24, !36, i64 26}
!63 = !{!46, !35, i64 24}
!64 = !{!46, !35, i64 64}
!65 = !{!55, !35, i64 24}
!66 = !{!55, !41, i64 12}
!67 = !{!39, !35, i64 16}
!68 = !{!39, !40, i64 28}
!69 = !{!70, !60, i64 20}
!70 = !{!"View2D", !71, i64 0, !71, i64 16, !72, i64 32, !72, i64 48, !72, i64 64, !36, i64 80, !36, i64 88, !60, i64 96, !60, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!71 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!72 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!73 = !{!46, !35, i64 16}
!74 = !{!75, !41, i64 338}
!75 = !{!"SpaceAction", !35, i64 0, !35, i64 8, !59, i64 16, !40, i64 32, !60, i64 36, !36, i64 40, !70, i64 56, !35, i64 216, !76, i64 224, !36, i64 336, !36, i64 337, !41, i64 338, !60, i64 340}
!76 = !{!"bDopeSheet", !35, i64 0, !59, i64 8, !35, i64 24, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108}
!77 = !{!78, !40, i64 244}
!78 = !{!"SpaceIpo", !35, i64 0, !35, i64 8, !59, i64 16, !40, i64 32, !60, i64 36, !36, i64 40, !70, i64 56, !35, i64 216, !59, i64 224, !41, i64 240, !41, i64 242, !40, i64 244, !60, i64 248, !40, i64 252}
!79 = !{!72, !40, i64 4}
!80 = !{!72, !40, i64 0}
!81 = !{!46, !35, i64 56}
!82 = !{!55, !35, i64 40}
!83 = !{!76, !40, i64 104}
!84 = !{!39, !35, i64 56}
!85 = !{!86, !35, i64 0}
!86 = !{!"AnimData", !35, i64 0, !35, i64 8, !35, i64 16, !59, i64 24, !35, i64 40, !59, i64 48, !59, i64 64, !40, i64 80, !40, i64 84, !41, i64 88, !41, i64 90, !60, i64 92}
!87 = !{!86, !40, i64 80}
!88 = !{!39, !35, i64 48}
!89 = !{!90, !35, i64 80}
!90 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !59, i64 32, !35, i64 48, !35, i64 56, !40, i64 64, !60, i64 68, !41, i64 72, !41, i64 74, !40, i64 76, !35, i64 80, !40, i64 88, !36, i64 92, !60, i64 104, !60, i64 108}
!91 = !{!90, !40, i64 76}
!92 = !{!39, !41, i64 38}
!93 = !{!94, !40, i64 680}
!94 = !{!"Scene", !95, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !59, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !96, i64 280, !103, i64 4264, !59, i64 4296, !59, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !59, i64 4384, !104, i64 4400, !105, i64 4416, !108, i64 4600, !35, i64 4608, !109, i64 4616, !35, i64 4640, !110, i64 4648, !110, i64 4656, !98, i64 4664, !99, i64 4824, !111, i64 4888, !35, i64 4952}
!95 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!96 = !{!"RenderData", !97, i64 0, !35, i64 248, !35, i64 256, !100, i64 264, !101, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !60, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !71, i64 544, !71, i64 560, !72, i64 576, !59, i64 592, !41, i64 608, !41, i64 610, !60, i64 612, !60, i64 616, !60, i64 620, !60, i64 624, !40, i64 628, !60, i64 632, !60, i64 636, !60, i64 640, !60, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !60, i64 660, !60, i64 664, !41, i64 668, !41, i64 670, !60, i64 672, !60, i64 676, !36, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !60, i64 2528, !60, i64 2532, !41, i64 2536, !41, i64 2538, !60, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !60, i64 2560, !60, i64 2564, !35, i64 2568, !40, i64 2576, !60, i64 2580, !36, i64 2584, !102, i64 2616, !40, i64 3976, !40, i64 3980}
!97 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !60, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !98, i64 24, !99, i64 184}
!98 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !60, i64 136, !60, i64 140, !35, i64 144, !35, i64 152}
!99 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!100 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!101 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !60, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!102 = !{!"BakeData", !97, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !60, i64 1280, !60, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!103 = !{!"AudioData", !40, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !60, i64 24, !60, i64 28}
!104 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!105 = !{!"GameData", !104, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !106, i64 40, !41, i64 64, !41, i64 66, !60, i64 68, !107, i64 72, !60, i64 128, !60, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180}
!106 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !60, i64 8, !60, i64 12, !35, i64 16}
!107 = !{!"RecastData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !40, i64 40, !60, i64 44, !60, i64 48, !41, i64 52, !41, i64 54}
!108 = !{!"UnitSettings", !60, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!109 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!110 = !{!"long", !36, i64 0}
!111 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!112 = !{!113, !35, i64 8}
!113 = !{!"PointerRNA", !114, i64 0, !35, i64 8, !35, i64 16}
!114 = !{!"", !35, i64 0}
!115 = !{!94, !35, i64 120}
!116 = !{!117, !35, i64 32}
!117 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !35, i64 32}
!118 = !{!119, !41, i64 136}
!119 = !{!"Object", !95, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !120, i64 312, !35, i64 360, !59, i64 368, !59, i64 384, !59, i64 400, !59, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !60, i64 616, !60, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !60, i64 1048, !60, i64 1052, !59, i64 1056, !59, i64 1072, !59, i64 1088, !59, i64 1104, !60, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !59, i64 1176, !59, i64 1192, !59, i64 1208, !59, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !60, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !110, i64 1304, !110, i64 1312, !40, i64 1320, !40, i64 1324, !59, i64 1328, !59, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !59, i64 1400, !35, i64 1416}
!120 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!121 = !{!119, !35, i64 120}
!122 = !{!123, !40, i64 36}
!123 = !{!"bActionGroup", !35, i64 0, !35, i64 8, !59, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !124, i64 104}
!124 = !{!"ThemeWireColor", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 12, !41, i64 14}
!125 = !{!46, !35, i64 32}
!126 = !{!55, !41, i64 8}
!127 = !{!128, !40, i64 256}
!128 = !{!"bNodeTree", !95, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !59, i64 224, !59, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !41, i64 276, !41, i64 278, !40, i64 280, !40, i64 284, !41, i64 288, !41, i64 290, !40, i64 292, !71, i64 296, !59, i64 312, !59, i64 328, !35, i64 344, !129, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!129 = !{!"bNodeInstanceKey", !40, i64 0}
!130 = !{!90, !35, i64 16}
!131 = !{!90, !41, i64 72}
!132 = !{!90, !35, i64 48}
!133 = !{!134, !35, i64 120}
!134 = !{!"Material", !95, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !60, i64 216, !60, i64 220, !135, i64 224, !136, i64 312, !60, i64 328, !60, i64 332, !60, i64 336, !60, i64 340, !60, i64 344, !60, i64 348, !60, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !36, i64 362, !36, i64 363, !60, i64 364, !60, i64 368, !41, i64 372, !41, i64 374, !60, i64 376, !60, i64 380, !60, i64 384, !60, i64 388, !41, i64 392, !41, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !60, i64 420, !60, i64 424, !60, i64 428, !60, i64 432, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !60, i64 456, !36, i64 460, !60, i64 524, !60, i64 528, !60, i64 532, !40, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !36, i64 550, !36, i64 551, !41, i64 552, !41, i64 554, !60, i64 556, !60, i64 560, !36, i64 564, !60, i64 580, !60, i64 584, !41, i64 588, !41, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !41, i64 612, !41, i64 614, !60, i64 616, !60, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !60, i64 800, !60, i64 804, !60, i64 808, !60, i64 812, !60, i64 816, !41, i64 820, !41, i64 822, !36, i64 824, !36, i64 836, !60, i64 848, !60, i64 852, !60, i64 856, !60, i64 860, !60, i64 864, !60, i64 868, !60, i64 872, !41, i64 876, !41, i64 878, !40, i64 880, !41, i64 884, !41, i64 886, !36, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !36, i64 914, !35, i64 920, !59, i64 928}
!135 = !{!"VolumeSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !60, i64 52, !60, i64 56, !60, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !60, i64 72, !60, i64 76, !60, i64 80, !60, i64 84}
!136 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!137 = !{!138, !35, i64 120}
!138 = !{!"Lamp", !95, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !40, i64 132, !41, i64 136, !41, i64 138, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !35, i64 200, !41, i64 208, !41, i64 210, !60, i64 212, !60, i64 216, !60, i64 220, !60, i64 224, !60, i64 228, !60, i64 232, !60, i64 236, !41, i64 240, !41, i64 242, !41, i64 244, !41, i64 246, !36, i64 248, !36, i64 249, !41, i64 250, !41, i64 252, !41, i64 254, !41, i64 256, !41, i64 258, !60, i64 260, !60, i64 264, !60, i64 268, !60, i64 272, !41, i64 276, !41, i64 278, !41, i64 280, !41, i64 282, !41, i64 284, !41, i64 286, !60, i64 288, !60, i64 292, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 312, !60, i64 316, !60, i64 320, !60, i64 324, !60, i64 328, !60, i64 332, !60, i64 336, !41, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !41, i64 496, !41, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!139 = !{!140, !35, i64 120}
!140 = !{!"Camera", !95, i64 0, !35, i64 120, !36, i64 128, !36, i64 129, !41, i64 130, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !35, i64 176, !35, i64 184, !36, i64 192, !36, i64 193}
!141 = !{!142, !35, i64 120}
!142 = !{!"Curve", !95, i64 0, !35, i64 120, !35, i64 128, !59, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !60, i64 252, !60, i64 256, !40, i64 260, !41, i64 264, !41, i64 266, !40, i64 268, !60, i64 272, !60, i64 276, !60, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !40, i64 292, !40, i64 296, !36, i64 300, !41, i64 304, !36, i64 306, !36, i64 307, !60, i64 308, !60, i64 312, !60, i64 316, !60, i64 320, !60, i64 324, !60, i64 328, !60, i64 332, !60, i64 336, !60, i64 340, !60, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !40, i64 488, !40, i64 492, !35, i64 496, !143, i64 504, !60, i64 512, !60, i64 516, !60, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!143 = !{!"CharInfo", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !41, i64 6}
!144 = !{!145, !35, i64 120}
!145 = !{!"Key", !95, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !40, i64 168, !40, i64 172, !59, i64 176, !35, i64 192, !35, i64 200, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !60, i64 216, !40, i64 220}
!146 = !{!147, !35, i64 120}
!147 = !{!"World", !95, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !60, i64 216, !60, i64 220, !60, i64 224, !60, i64 228, !60, i64 232, !60, i64 236, !60, i64 240, !60, i64 244, !60, i64 248, !60, i64 252, !60, i64 256, !60, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !60, i64 272, !60, i64 276, !60, i64 280, !60, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 312, !60, i64 316, !60, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !41, i64 504, !41, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!148 = !{!128, !35, i64 120}
!149 = !{!150, !35, i64 120}
!150 = !{!"ParticleSettings", !95, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !40, i64 152, !40, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !40, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !60, i64 232, !60, i64 236, !36, i64 240, !36, i64 248, !60, i64 256, !60, i64 260, !60, i64 264, !41, i64 268, !41, i64 270, !60, i64 272, !60, i64 276, !60, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 312, !60, i64 316, !36, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !41, i64 340, !36, i64 342, !60, i64 348, !60, i64 352, !60, i64 356, !60, i64 360, !60, i64 364, !60, i64 368, !60, i64 372, !36, i64 376, !60, i64 388, !60, i64 392, !60, i64 396, !60, i64 400, !60, i64 404, !60, i64 408, !60, i64 412, !36, i64 416, !60, i64 428, !60, i64 432, !60, i64 436, !60, i64 440, !40, i64 444, !40, i64 448, !60, i64 452, !60, i64 456, !60, i64 460, !60, i64 464, !60, i64 468, !60, i64 472, !60, i64 476, !60, i64 480, !60, i64 484, !60, i64 488, !60, i64 492, !60, i64 496, !60, i64 500, !60, i64 504, !60, i64 508, !60, i64 512, !60, i64 516, !60, i64 520, !60, i64 524, !60, i64 528, !60, i64 532, !60, i64 536, !60, i64 540, !60, i64 544, !60, i64 548, !36, i64 552, !60, i64 560, !60, i64 564, !40, i64 568, !40, i64 572, !36, i64 576, !35, i64 720, !59, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !41, i64 792, !36, i64 794}
!151 = !{!152, !35, i64 120}
!152 = !{!"MetaBall", !95, i64 0, !35, i64 120, !59, i64 128, !59, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 185, !41, i64 186, !41, i64 188, !41, i64 190, !36, i64 192, !36, i64 204, !36, i64 216, !60, i64 228, !60, i64 232, !60, i64 236, !35, i64 240}
!153 = !{!154, !35, i64 120}
!154 = !{!"bArmature", !95, i64 0, !35, i64 120, !59, i64 128, !59, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !41, i64 208, !41, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!155 = !{!156, !35, i64 120}
!156 = !{!"Mesh", !95, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !157, i64 280, !157, i64 480, !157, i64 680, !157, i64 880, !157, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !41, i64 1348, !41, i64 1350, !60, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !41, i64 1366, !35, i64 1368}
!157 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!158 = !{!159, !35, i64 120}
!159 = !{!"Tex", !95, i64 0, !35, i64 120, !60, i64 128, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !60, i64 236, !60, i64 240, !60, i64 244, !60, i64 248, !40, i64 252, !40, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !160, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!160 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!161 = !{!162, !35, i64 120}
!162 = !{!"Lattice", !95, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !41, i64 136, !41, i64 138, !41, i64 140, !41, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !40, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!163 = !{!164, !35, i64 120}
!164 = !{!"FreestyleLineStyle", !95, i64 0, !35, i64 120, !60, i64 128, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !40, i64 148, !60, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !40, i64 192, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !40, i64 208, !40, i64 212, !60, i64 216, !41, i64 220, !41, i64 222, !41, i64 224, !36, i64 226, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !40, i64 244, !36, i64 248, !35, i64 392, !59, i64 400, !59, i64 416, !59, i64 432, !59, i64 448}
!165 = !{!166, !35, i64 120}
!166 = !{!"Speaker", !95, i64 0, !35, i64 120, !35, i64 128, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !41, i64 176, !36, i64 178}
!167 = !{!39, !40, i64 32}
!168 = !{!169, !40, i64 32}
!169 = !{!"NlaTrack", !35, i64 0, !35, i64 8, !59, i64 16, !40, i64 32, !40, i64 36, !36, i64 40}
!170 = !{!60, !60, i64 0}
!171 = !{!55, !35, i64 0}
