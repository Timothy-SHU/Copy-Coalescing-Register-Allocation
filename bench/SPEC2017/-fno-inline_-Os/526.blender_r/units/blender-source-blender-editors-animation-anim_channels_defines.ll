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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @ANIM_channel_get_typeinfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  tail call fastcc void @ANIM_init_channel_typeinfo_data() #15
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp ult i32 %5, 32
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  br label %11

11:                                               ; preds = %3, %1, %7
  %12 = phi ptr [ %10, %7 ], [ null, %1 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @ANIM_init_channel_typeinfo_data() unnamed_addr #1 !PGOFuncName !42 {
  %1 = load i1, ptr @ACF_INIT, align 2
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  store i1 true, ptr @ACF_INIT, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @animchannelTypeInfo, i8 0, i64 24, i1 false)
  store ptr @ACF_SUMMARY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 3), align 8, !tbaa !41
  store ptr @ACF_SCENE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 4), align 16, !tbaa !41
  store ptr @ACF_OBJECT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 5), align 8, !tbaa !41
  store ptr @ACF_GROUP, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 6), align 16, !tbaa !41
  store ptr @ACF_FCURVE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 7), align 8, !tbaa !41
  store ptr @ACF_FILLACTD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 8), align 16, !tbaa !41
  store ptr @ACF_FILLDRIVERS, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 9), align 8, !tbaa !41
  store ptr @ACF_DSMAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 10), align 16, !tbaa !41
  store ptr @ACF_DSLAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 11), align 8, !tbaa !41
  store ptr @ACF_DSCAM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 12), align 16, !tbaa !41
  store ptr @ACF_DSCUR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 13), align 8, !tbaa !41
  store ptr @ACF_DSSKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 14), align 16, !tbaa !41
  store ptr @ACF_DSWOR, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 15), align 8, !tbaa !41
  store ptr @ACF_DSNTREE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 16), align 16, !tbaa !41
  store ptr @ACF_DSPART, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 17), align 8, !tbaa !41
  store ptr @ACF_DSMBALL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 18), align 16, !tbaa !41
  store ptr @ACF_DSARM, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 19), align 8, !tbaa !41
  store ptr @ACF_DSMESH, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 20), align 16, !tbaa !41
  store ptr @ACF_DSTEX, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 21), align 8, !tbaa !41
  store ptr @ACF_DSLAT, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 22), align 16, !tbaa !41
  store ptr @ACF_DSLINESTYLE, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 23), align 8, !tbaa !41
  store ptr @ACF_DSSPK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 24), align 16, !tbaa !41
  store ptr @ACF_SHAPEKEY, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 25), align 8, !tbaa !41
  store ptr @ACF_GPD, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 26), align 16, !tbaa !41
  store ptr @ACF_GPL, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 27), align 8, !tbaa !41
  store ptr @ACF_MASKDATA, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 28), align 16, !tbaa !41
  store ptr @ACF_MASKLAYER, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 29), align 8, !tbaa !41
  store ptr @ACF_NLATRACK, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 30), align 16, !tbaa !41
  store ptr @ACF_NLAACTION, ptr getelementptr inbounds ([32 x ptr], ptr @animchannelTypeInfo, i64 0, i64 31), align 8, !tbaa !41
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_channel_debug_print_info(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #2 {
  %3 = alloca [256 x i8], align 16
  %4 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %0) #15
  %5 = icmp sgt i16 %1, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2, %6
  %7 = phi i16 [ %9, %6 ], [ %1, %2 ]
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) #15
  %9 = add nsw i16 %7, -1
  %10 = icmp ugt i16 %7, 1
  br i1 %10, label %6, label %11, !llvm.loop !43

11:                                               ; preds = %6, %2
  %12 = icmp eq ptr %4, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  %14 = getelementptr inbounds %struct.bAnimChannelType, ptr %4, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void %15(ptr noundef %0, ptr noundef nonnull %3) #17
  br label %20

18:                                               ; preds = %13
  %19 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i64 noundef 256) #17
  br label %20

20:                                               ; preds = %18, %17
  %21 = load ptr, ptr %4, align 8, !tbaa !47
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %21, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  br label %31

23:                                               ; preds = %11
  %24 = icmp eq ptr %0, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !34
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %27) #15
  br label %31

29:                                               ; preds = %23
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %31

31:                                               ; preds = %25, %29, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @ANIM_channel_setting_get(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i8 %10(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %12, %8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  %16 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = call i32 %17(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5) #17
  %19 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = call ptr %20(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #17
  %22 = icmp ne ptr %21, null
  %23 = icmp ne i32 %18, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %59

25:                                               ; preds = %15
  %26 = load i16, ptr %4, align 2, !tbaa !51
  switch i16 %26, label %59 [
    i16 4, label %27
    i16 2, label %36
    i16 1, label %46
  ]

27:                                               ; preds = %25
  %28 = load i8, ptr %5, align 1, !tbaa !52
  %29 = icmp eq i8 %28, 0
  %30 = load i32, ptr %21, align 4, !tbaa !53
  %31 = and i32 %30, %18
  br i1 %29, label %34, label %32

32:                                               ; preds = %27
  %33 = icmp eq i32 %31, 0
  br label %56

34:                                               ; preds = %27
  %35 = icmp ne i32 %31, 0
  br label %56

36:                                               ; preds = %25
  %37 = load i8, ptr %5, align 1, !tbaa !52
  %38 = icmp eq i8 %37, 0
  %39 = load i16, ptr %21, align 2, !tbaa !51
  %40 = sext i16 %39 to i32
  %41 = and i32 %18, %40
  br i1 %38, label %44, label %42

42:                                               ; preds = %36
  %43 = icmp eq i32 %41, 0
  br label %56

44:                                               ; preds = %36
  %45 = icmp ne i32 %41, 0
  br label %56

46:                                               ; preds = %25
  %47 = load i8, ptr %5, align 1, !tbaa !52
  %48 = icmp eq i8 %47, 0
  %49 = load i8, ptr %21, align 1, !tbaa !52
  %50 = zext i8 %49 to i32
  %51 = and i32 %18, %50
  br i1 %48, label %54, label %52

52:                                               ; preds = %46
  %53 = icmp eq i32 %51, 0
  br label %56

54:                                               ; preds = %46
  %55 = icmp ne i32 %51, 0
  br label %56

56:                                               ; preds = %52, %54, %42, %44, %32, %34
  %57 = phi i1 [ %33, %32 ], [ %35, %34 ], [ %43, %42 ], [ %45, %44 ], [ %53, %52 ], [ %55, %54 ]
  %58 = zext i1 %57 to i16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  br label %60

59:                                               ; preds = %15, %25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  br label %60

60:                                               ; preds = %3, %12, %59, %56
  %61 = phi i16 [ %58, %56 ], [ -1, %59 ], [ -1, %12 ], [ -1, %3 ]
  ret i16 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_channel_setting_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %96, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i8 %11(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %96, label %16

16:                                               ; preds = %13, %9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %17 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = call i32 %18(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %6) #17
  %20 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = call ptr %21(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #17
  %23 = icmp ne ptr %22, null
  %24 = icmp ne i32 %19, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %95

26:                                               ; preds = %16
  %27 = load i16, ptr %5, align 2, !tbaa !51
  switch i16 %27, label %95 [
    i16 4, label %28
    i16 2, label %53
    i16 1, label %74
  ]

28:                                               ; preds = %26
  %29 = load i8, ptr %6, align 1, !tbaa !52
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  switch i32 %3, label %39 [
    i32 2, label %32
    i32 1, label %35
  ]

32:                                               ; preds = %31
  %33 = load i32, ptr %22, align 4, !tbaa !53
  %34 = xor i32 %33, %19
  store i32 %34, ptr %22, align 4, !tbaa !53
  br label %95

35:                                               ; preds = %31
  %36 = xor i32 %19, -1
  %37 = load i32, ptr %22, align 4, !tbaa !53
  %38 = and i32 %37, %36
  store i32 %38, ptr %22, align 4, !tbaa !53
  br label %95

39:                                               ; preds = %31
  %40 = load i32, ptr %22, align 4, !tbaa !53
  %41 = or i32 %40, %19
  store i32 %41, ptr %22, align 4, !tbaa !53
  br label %95

42:                                               ; preds = %28
  switch i32 %3, label %49 [
    i32 2, label %43
    i32 1, label %46
  ]

43:                                               ; preds = %42
  %44 = load i32, ptr %22, align 4, !tbaa !53
  %45 = xor i32 %44, %19
  store i32 %45, ptr %22, align 4, !tbaa !53
  br label %95

46:                                               ; preds = %42
  %47 = load i32, ptr %22, align 4, !tbaa !53
  %48 = or i32 %47, %19
  store i32 %48, ptr %22, align 4, !tbaa !53
  br label %95

49:                                               ; preds = %42
  %50 = xor i32 %19, -1
  %51 = load i32, ptr %22, align 4, !tbaa !53
  %52 = and i32 %51, %50
  store i32 %52, ptr %22, align 4, !tbaa !53
  br label %95

53:                                               ; preds = %26
  %54 = load i8, ptr %6, align 1, !tbaa !52
  %55 = icmp eq i8 %54, 0
  %56 = load i16, ptr %22, align 2, !tbaa !51
  %57 = trunc i32 %19 to i16
  br i1 %55, label %66, label %58

58:                                               ; preds = %53
  switch i32 %3, label %64 [
    i32 2, label %59
    i32 1, label %61
  ]

59:                                               ; preds = %58
  %60 = xor i16 %56, %57
  store i16 %60, ptr %22, align 2, !tbaa !51
  br label %95

61:                                               ; preds = %58
  %62 = xor i16 %57, -1
  %63 = and i16 %56, %62
  store i16 %63, ptr %22, align 2, !tbaa !51
  br label %95

64:                                               ; preds = %58
  %65 = or i16 %56, %57
  store i16 %65, ptr %22, align 2, !tbaa !51
  br label %95

66:                                               ; preds = %53
  switch i32 %3, label %71 [
    i32 2, label %67
    i32 1, label %69
  ]

67:                                               ; preds = %66
  %68 = xor i16 %56, %57
  store i16 %68, ptr %22, align 2, !tbaa !51
  br label %95

69:                                               ; preds = %66
  %70 = or i16 %56, %57
  store i16 %70, ptr %22, align 2, !tbaa !51
  br label %95

71:                                               ; preds = %66
  %72 = xor i16 %57, -1
  %73 = and i16 %56, %72
  store i16 %73, ptr %22, align 2, !tbaa !51
  br label %95

74:                                               ; preds = %26
  %75 = load i8, ptr %6, align 1, !tbaa !52
  %76 = icmp eq i8 %75, 0
  %77 = load i8, ptr %22, align 1, !tbaa !52
  %78 = trunc i32 %19 to i8
  br i1 %76, label %87, label %79

79:                                               ; preds = %74
  switch i32 %3, label %85 [
    i32 2, label %80
    i32 1, label %82
  ]

80:                                               ; preds = %79
  %81 = xor i8 %77, %78
  store i8 %81, ptr %22, align 1, !tbaa !52
  br label %95

82:                                               ; preds = %79
  %83 = xor i8 %78, -1
  %84 = and i8 %77, %83
  store i8 %84, ptr %22, align 1, !tbaa !52
  br label %95

85:                                               ; preds = %79
  %86 = or i8 %77, %78
  store i8 %86, ptr %22, align 1, !tbaa !52
  br label %95

87:                                               ; preds = %74
  switch i32 %3, label %92 [
    i32 2, label %88
    i32 1, label %90
  ]

88:                                               ; preds = %87
  %89 = xor i8 %77, %78
  store i8 %89, ptr %22, align 1, !tbaa !52
  br label %95

90:                                               ; preds = %87
  %91 = or i8 %77, %78
  store i8 %91, ptr %22, align 1, !tbaa !52
  br label %95

92:                                               ; preds = %87
  %93 = xor i8 %78, -1
  %94 = and i8 %77, %93
  store i8 %94, ptr %22, align 1, !tbaa !52
  br label %95

95:                                               ; preds = %82, %85, %80, %90, %92, %88, %61, %64, %59, %69, %71, %67, %35, %39, %32, %46, %49, %43, %26, %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  br label %96

96:                                               ; preds = %95, %13, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_channel_draw(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %7, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %11, %10
  br i1 %12, label %224, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call signext i16 %15(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi i16 [ %18, %17 ], [ 0, %13 ]
  %21 = fsub float %3, %2
  %22 = fmul float %21, 5.000000e-01
  %23 = fadd float %22, %2
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %25 = sitofp i16 %24 to float
  %26 = fmul float %25, 0x3FEB333340000000
  %27 = tail call float @llvm.fmuladd.f32(float %26, float -5.000000e-01, float %23)
  %28 = tail call float @llvm.fmuladd.f32(float %25, float 0xBFC99999A0000000, float %23)
  %29 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = tail call zeroext i8 %30(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = tail call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #15
  br label %35

35:                                               ; preds = %19, %33
  %36 = phi i16 [ %34, %33 ], [ 0, %19 ]
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  tail call void @glEnable(i32 noundef 3042) #17
  %37 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !63
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void %38(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2, float noundef %3) #17
  br label %41

41:                                               ; preds = %40, %35
  %42 = load ptr, ptr %29, align 8, !tbaa !48
  %43 = tail call zeroext i8 %42(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %47 = sitofp i16 %46 to float
  %48 = sitofp i16 %20 to float
  %49 = tail call float @llvm.fmuladd.f32(float %47, float 0x3FEB333340000000, float %48)
  %50 = fptosi float %49 to i16
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi i16 [ %50, %45 ], [ %20, %41 ]
  %53 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = sitofp i16 %52 to float
  %58 = tail call i32 %54(ptr noundef nonnull %1) #17
  tail call void @UI_icon_draw(float noundef %57, float noundef %27, i32 noundef %58) #17
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %60 = sitofp i16 %59 to float
  %61 = tail call float @llvm.fmuladd.f32(float %60, float 0x3FEB333340000000, float %57)
  %62 = fptosi float %61 to i16
  br label %63

63:                                               ; preds = %56, %51
  %64 = phi i16 [ %62, %56 ], [ %52, %51 ]
  tail call void @glDisable(i32 noundef 3042) #17
  %65 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !65
  %67 = icmp eq ptr %66, null
  br i1 %67, label %111, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %70 = load i16, ptr %69, align 4, !tbaa !66
  %71 = icmp eq i16 %70, 2
  br i1 %71, label %72, label %98

72:                                               ; preds = %68
  %73 = load ptr, ptr %29, align 8, !tbaa !48
  %74 = tail call zeroext i8 %73(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4) #17
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !34
  %79 = icmp eq i32 %78, 7
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = sitofp i16 %64 to float
  br label %90

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !67
  %85 = getelementptr inbounds %struct.FCurve, ptr %84, i64 0, i32 14
  tail call void @glColor3fv(ptr noundef nonnull %85) #17
  %86 = sitofp i16 %64 to float
  %87 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %88 = sitofp i16 %87 to float
  %89 = tail call float @llvm.fmuladd.f32(float %88, float 0x3FEB333340000000, float %86)
  tail call void @glRectf(float noundef %86, float noundef %2, float noundef %89, float noundef %3) #17
  br label %90

90:                                               ; preds = %80, %82
  %91 = phi float [ %81, %80 ], [ %86, %82 ]
  %92 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %93 = sitofp i16 %92 to float
  %94 = tail call float @llvm.fmuladd.f32(float %93, float 0x3FEB333340000000, float %91)
  %95 = fptosi float %94 to i16
  br label %111

96:                                               ; preds = %72
  %97 = load i16, ptr %69, align 4, !tbaa !66
  br label %98

98:                                               ; preds = %96, %68
  %99 = phi i16 [ %97, %96 ], [ %70, %68 ]
  %100 = icmp eq i16 %99, 13
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load ptr, ptr %29, align 8, !tbaa !48
  %103 = tail call zeroext i8 %102(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 5) #17
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %107 = sitofp i16 %106 to float
  %108 = sitofp i16 %64 to float
  %109 = tail call float @llvm.fmuladd.f32(float %107, float 0x3FEB333340000000, float %108)
  %110 = fptosi float %109 to i16
  br label %111

111:                                              ; preds = %90, %105, %101, %98, %63
  %112 = phi i16 [ %95, %90 ], [ %110, %105 ], [ %64, %101 ], [ %64, %98 ], [ %64, %63 ]
  %113 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !45
  %115 = icmp eq ptr %114, null
  br i1 %115, label %134, label %116

116:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #16
  %117 = icmp eq i16 %36, 0
  %118 = select i1 %117, i32 3, i32 4
  tail call void @UI_ThemeColor(i32 noundef %118) #17
  %119 = load ptr, ptr %113, align 8, !tbaa !45
  call void %119(ptr noundef nonnull %1, ptr noundef nonnull %5) #17
  %120 = add i16 %112, 3
  %121 = sitofp i16 %120 to float
  call void @UI_DrawString(float noundef %121, float noundef %28, ptr noundef nonnull %5) #17
  %122 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !34
  %124 = icmp eq i32 %123, 7
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 4
  %127 = load i32, ptr %126, align 4, !tbaa !68
  %128 = and i32 %127, 1024
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  call void @glColor3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #17
  call void @glLineWidth(float noundef 2.000000e+00) #17
  %131 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 1, i32 1
  %132 = load float, ptr %131, align 4, !tbaa !69
  call void @fdrawline(float noundef %121, float noundef %2, float noundef %132, float noundef %2) #17
  call void @glLineWidth(float noundef 1.000000e+00) #17
  br label %133

133:                                              ; preds = %130, %125, %116
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #16
  br label %134

134:                                              ; preds = %111, %133
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %135 = getelementptr inbounds %struct.bAnimChannelType, ptr %7, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !73
  call void %136(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #17
  call void @glColor3fv(ptr noundef nonnull %6) #17
  %137 = load ptr, ptr %65, align 8, !tbaa !65
  %138 = icmp eq ptr %137, null
  br i1 %138, label %166, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %141 = load i16, ptr %140, align 4, !tbaa !66
  switch i16 %141, label %166 [
    i16 12, label %142
    i16 2, label %146
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.SpaceAction, ptr %137, i64 0, i32 11
  %144 = load i16, ptr %143, align 2, !tbaa !74
  %145 = and i16 %144, 2
  br label %151

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.SpaceIpo, ptr %137, i64 0, i32 11
  %148 = load i32, ptr %147, align 4, !tbaa !77
  %149 = trunc i32 %148 to i16
  %150 = and i16 %149, 128
  br label %151

151:                                              ; preds = %142, %146
  %152 = phi i16 [ %150, %146 ], [ %145, %142 ]
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 4
  %156 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %155) #15
  %157 = sitofp i32 %156 to float
  %158 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %159 = sitofp i16 %158 to float
  %160 = fmul float %159, 0x3FE99999A0000000
  %161 = fmul float %160, 5.000000e-01
  %162 = fcmp olt float %161, %157
  br i1 %162, label %166, label %163

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %165 = load i32, ptr %164, align 8, !tbaa !34
  br label %208

166:                                              ; preds = %139, %134, %154, %151
  %167 = phi i1 [ false, %154 ], [ true, %151 ], [ true, %134 ], [ true, %139 ]
  %168 = load ptr, ptr %29, align 8, !tbaa !48
  %169 = call zeroext i8 %168(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) #17
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %173 = sitofp i16 %172 to float
  %174 = call float @llvm.fmuladd.f32(float %173, float 0x3FEB333340000000, float 0.000000e+00)
  %175 = fptosi float %174 to i16
  br label %176

176:                                              ; preds = %171, %166
  %177 = phi i16 [ %175, %171 ], [ 0, %166 ]
  %178 = load ptr, ptr %29, align 8, !tbaa !48
  %179 = call zeroext i8 %178(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2) #17
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %176
  %182 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %183 = sitofp i16 %182 to float
  %184 = sitofp i16 %177 to float
  %185 = call float @llvm.fmuladd.f32(float %183, float 0x3FEB333340000000, float %184)
  %186 = fptosi float %185 to i16
  br label %187

187:                                              ; preds = %181, %176
  %188 = phi i16 [ %186, %181 ], [ %177, %176 ]
  %189 = load ptr, ptr %29, align 8, !tbaa !48
  %190 = call zeroext i8 %189(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 6) #17
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %187
  %193 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %194 = sitofp i16 %193 to float
  %195 = sitofp i16 %188 to float
  %196 = call float @llvm.fmuladd.f32(float %194, float 0x3FEB333340000000, float %195)
  %197 = fptosi float %196 to i16
  br label %198

198:                                              ; preds = %192, %187
  %199 = phi i16 [ %197, %192 ], [ %188, %187 ]
  %200 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %201 = load i32, ptr %200, align 8, !tbaa !34
  %202 = icmp eq i32 %201, 31
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %205 = sitofp i16 %204 to float
  %206 = fmul float %205, 0x3FB99999A0000000
  br label %215

207:                                              ; preds = %198
  br i1 %167, label %215, label %208

208:                                              ; preds = %163, %207
  %209 = phi i32 [ %201, %207 ], [ %165, %163 ]
  %210 = phi i16 [ %199, %207 ], [ 0, %163 ]
  switch i32 %209, label %215 [
    i32 7, label %211
    i32 25, label %211
  ]

211:                                              ; preds = %208, %208
  %212 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %213 = shl i16 %212, 2
  %214 = add i16 %213, %210
  br label %215

215:                                              ; preds = %203, %208, %211, %207
  %216 = phi float [ 0.000000e+00, %211 ], [ 0.000000e+00, %207 ], [ 0.000000e+00, %208 ], [ %206, %203 ]
  %217 = phi i16 [ %214, %211 ], [ %199, %207 ], [ %210, %208 ], [ %199, %203 ]
  %218 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 1, i32 1
  %219 = load float, ptr %218, align 4, !tbaa !69
  %220 = sitofp i16 %217 to float
  %221 = fsub float %219, %220
  %222 = fadd float %216, %2
  %223 = fadd float %219, 1.000000e+02
  call void @glRectf(float noundef %221, float noundef %222, float noundef %223, float noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  br label %224

224:                                              ; preds = %4, %215
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = load i32, ptr %0, align 4, !tbaa !81
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_channel_draw_widgets(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, float noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca ptr, align 8
  %13 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %2) #15
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %13, null
  %17 = icmp eq ptr %2, null
  %18 = or i1 %17, %16
  %19 = icmp eq ptr %3, null
  %20 = or i1 %19, %18
  br i1 %20, label %288, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.bAnimChannelType, ptr %13, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call signext i16 %23(ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi i16 [ %26, %25 ], [ 0, %21 ]
  %29 = fsub float %5, %4
  %30 = fmul float %29, 5.000000e-01
  %31 = fadd float %30, %4
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %33 = sitofp i16 %32 to float
  %34 = fmul float %33, 0x3FEB333340000000
  %35 = tail call float @llvm.fmuladd.f32(float %34, float -5.000000e-01, float %31)
  tail call void @uiBlockSetEmboss(ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  %36 = getelementptr inbounds %struct.bAnimChannelType, ptr %13, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = tail call zeroext i8 %37(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 3) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %27
  %41 = sext i16 %28 to i32
  %42 = fptosi float %35 to i32
  tail call fastcc void @draw_setting_widget(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef nonnull %3, i32 noundef %41, i32 noundef %42, i32 noundef 3) #15
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %44 = sitofp i16 %43 to float
  %45 = sitofp i16 %28 to float
  %46 = tail call float @llvm.fmuladd.f32(float %44, float 0x3FEB333340000000, float %45)
  %47 = fptosi float %46 to i16
  br label %48

48:                                               ; preds = %40, %27
  %49 = phi i16 [ %47, %40 ], [ %28, %27 ]
  %50 = getelementptr inbounds %struct.bAnimChannelType, ptr %13, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %55 = sitofp i16 %54 to float
  %56 = sitofp i16 %49 to float
  %57 = tail call float @llvm.fmuladd.f32(float %55, float 0x3FEB333340000000, float %56)
  %58 = fptosi float %57 to i16
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi i16 [ %58, %53 ], [ %49, %48 ]
  %61 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !65
  %63 = icmp eq ptr %62, null
  br i1 %63, label %90, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 3
  %66 = load i16, ptr %65, align 4, !tbaa !66
  %67 = icmp eq i16 %66, 2
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load ptr, ptr %36, align 8, !tbaa !48
  %70 = tail call zeroext i8 %69(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 4) #17
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i16, ptr %65, align 4, !tbaa !66
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi i16 [ %73, %72 ], [ %66, %64 ]
  %76 = icmp eq i16 %75, 13
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load ptr, ptr %36, align 8, !tbaa !48
  %79 = tail call zeroext i8 %78(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 5) #17
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77, %68
  %82 = phi i32 [ 4, %68 ], [ 5, %77 ]
  %83 = sext i16 %60 to i32
  %84 = fptosi float %35 to i32
  tail call fastcc void @draw_setting_widget(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef nonnull %3, i32 noundef %83, i32 noundef %84, i32 noundef %82) #15
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %86 = sitofp i16 %85 to float
  %87 = sitofp i16 %60 to float
  %88 = tail call float @llvm.fmuladd.f32(float %86, float 0x3FEB333340000000, float %87)
  %89 = fptosi float %88 to i16
  br label %90

90:                                               ; preds = %81, %77, %74, %59
  %91 = phi i16 [ %60, %77 ], [ %60, %74 ], [ %60, %59 ], [ %89, %81 ]
  %92 = getelementptr inbounds %struct.bAnimChannelType, ptr %13, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !82
  %94 = icmp eq ptr %93, null
  br i1 %94, label %122, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !83
  %98 = icmp eq ptr %97, null
  br i1 %98, label %122, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.bDopeSheet, ptr %97, i64 0, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !84
  %102 = sext i32 %101 to i64
  %103 = add i64 %6, 1
  %104 = icmp eq i64 %103, %102
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store ptr null, ptr %9, align 8, !tbaa !41
  %106 = call zeroext i8 %93(ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %105
  call void @uiBlockSetEmboss(ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  %109 = sext i16 %91 to i32
  %110 = add nsw i32 %109, 3
  %111 = fptosi float %4 to i32
  %112 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %113 = mul i16 %112, 5
  %114 = fptosi float %29 to i16
  %115 = load ptr, ptr %9, align 8, !tbaa !41
  %116 = call ptr @RNA_property_identifier(ptr noundef %115) #17
  %117 = call ptr @uiDefButR(ptr noundef nonnull %3, i32 noundef 3072, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %110, i32 noundef %111, i16 noundef signext %113, i16 noundef signext %114, ptr noundef nonnull %8, ptr noundef %116, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #17
  %118 = load ptr, ptr %96, align 8, !tbaa !83
  call void @uiButSetFunc(ptr noundef %117, ptr noundef nonnull @achannel_setting_rename_done_cb, ptr noundef %118, ptr noundef null) #17
  %119 = load ptr, ptr %14, align 8, !tbaa !54
  %120 = call zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %119, ptr noundef nonnull %3, ptr noundef %117) #17
  call void @uiBlockSetEmboss(ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  br label %121

121:                                              ; preds = %108, %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %122

122:                                              ; preds = %90, %95, %121, %99
  %123 = load ptr, ptr %61, align 8, !tbaa !65
  %124 = icmp eq ptr %123, null
  br i1 %124, label %149, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 3
  %127 = load i16, ptr %126, align 4, !tbaa !66
  switch i16 %127, label %149 [
    i16 12, label %128
    i16 2, label %132
  ]

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.SpaceAction, ptr %123, i64 0, i32 11
  %130 = load i16, ptr %129, align 2, !tbaa !74
  %131 = and i16 %130, 2
  br label %137

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.SpaceIpo, ptr %123, i64 0, i32 11
  %134 = load i32, ptr %133, align 4, !tbaa !77
  %135 = trunc i32 %134 to i16
  %136 = and i16 %135, 128
  br label %137

137:                                              ; preds = %128, %132
  %138 = phi i16 [ %136, %132 ], [ %131, %128 ]
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 4
  %142 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %141) #15
  %143 = sitofp i32 %142 to float
  %144 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %145 = sitofp i16 %144 to float
  %146 = fmul float %145, 0x3FE99999A0000000
  %147 = fmul float %146, 5.000000e-01
  %148 = fcmp olt float %147, %143
  br i1 %148, label %149, label %229

149:                                              ; preds = %125, %122, %140, %137
  %150 = phi i1 [ false, %140 ], [ true, %137 ], [ true, %122 ], [ true, %125 ]
  %151 = load ptr, ptr %36, align 8, !tbaa !48
  %152 = call zeroext i8 %151(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #17
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %149
  %155 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %156 = sitofp i16 %155 to float
  %157 = call float @llvm.fmuladd.f32(float %156, float 0x3FEB333340000000, float 0.000000e+00)
  %158 = fptosi float %157 to i16
  %159 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 1, i32 1
  %160 = load float, ptr %159, align 4, !tbaa !69
  %161 = fptosi float %160 to i32
  %162 = sext i16 %158 to i32
  %163 = sub nsw i32 %161, %162
  %164 = fptosi float %35 to i32
  call fastcc void @draw_setting_widget(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef nonnull %3, i32 noundef %163, i32 noundef %164, i32 noundef 1) #15
  br label %165

165:                                              ; preds = %154, %149
  %166 = phi i16 [ %158, %154 ], [ 0, %149 ]
  %167 = load ptr, ptr %36, align 8, !tbaa !48
  %168 = call zeroext i8 %167(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 2) #17
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %165
  %171 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %172 = sitofp i16 %171 to float
  %173 = sitofp i16 %166 to float
  %174 = call float @llvm.fmuladd.f32(float %172, float 0x3FEB333340000000, float %173)
  %175 = fptosi float %174 to i16
  %176 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 1, i32 1
  %177 = load float, ptr %176, align 4, !tbaa !69
  %178 = fptosi float %177 to i32
  %179 = sext i16 %175 to i32
  %180 = sub nsw i32 %178, %179
  %181 = fptosi float %35 to i32
  call fastcc void @draw_setting_widget(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef nonnull %3, i32 noundef %180, i32 noundef %181, i32 noundef 2) #15
  br label %182

182:                                              ; preds = %170, %165
  %183 = phi i16 [ %175, %170 ], [ %166, %165 ]
  %184 = load ptr, ptr %36, align 8, !tbaa !48
  %185 = call zeroext i8 %184(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 6) #17
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %199, label %187

187:                                              ; preds = %182
  %188 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %189 = sitofp i16 %188 to float
  %190 = sitofp i16 %183 to float
  %191 = call float @llvm.fmuladd.f32(float %189, float 0x3FEB333340000000, float %190)
  %192 = fptosi float %191 to i16
  %193 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 1, i32 1
  %194 = load float, ptr %193, align 4, !tbaa !69
  %195 = fptosi float %194 to i32
  %196 = sext i16 %192 to i32
  %197 = sub nsw i32 %195, %196
  %198 = fptosi float %35 to i32
  call fastcc void @draw_setting_widget(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef nonnull %3, i32 noundef %197, i32 noundef %198, i32 noundef 6) #15
  br label %199

199:                                              ; preds = %187, %182
  %200 = phi i16 [ %192, %187 ], [ %183, %182 ]
  %201 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 3
  %202 = load i32, ptr %201, align 8, !tbaa !34
  %203 = icmp eq i32 %202, 31
  br i1 %203, label %204, label %228

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 10
  %206 = load ptr, ptr %205, align 8, !tbaa !85
  %207 = icmp eq ptr %206, null
  br i1 %207, label %228, label %208

208:                                              ; preds = %204
  %209 = load ptr, ptr %206, align 8, !tbaa !86
  %210 = icmp eq ptr %209, null
  br i1 %210, label %228, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.AnimData, ptr %206, i64 0, i32 7
  %213 = load i32, ptr %212, align 8, !tbaa !88
  %214 = and i32 %213, 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %211
  call void @uiBlockSetEmboss(ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  %217 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %218 = add i16 %217, %200
  %219 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 1, i32 1
  %220 = load float, ptr %219, align 4, !tbaa !69
  %221 = fptosi float %220 to i32
  %222 = sext i16 %218 to i32
  %223 = sub nsw i32 %221, %222
  %224 = fptosi float %35 to i32
  %225 = call ptr @uiDefIconButO(ptr noundef nonnull %3, i32 noundef 512, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 524, i32 noundef %223, i32 noundef %224, i16 noundef signext %217, i16 noundef signext %217, ptr noundef null) #17
  %226 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %225) #17
  %227 = trunc i64 %6 to i32
  call void @RNA_int_set(ptr noundef %226, ptr noundef nonnull @.str.7, i32 noundef %227) #17
  call void @uiBlockSetEmboss(ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  br i1 %150, label %288, label %229

228:                                              ; preds = %199, %204, %208, %211
  br i1 %150, label %288, label %229

229:                                              ; preds = %140, %216, %228
  %230 = phi i16 [ %200, %228 ], [ %218, %216 ], [ 0, %140 ]
  %231 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 3
  %232 = load i32, ptr %231, align 8, !tbaa !34
  switch i32 %232, label %288 [
    i32 7, label %233
    i32 25, label %233
  ]

233:                                              ; preds = %229, %229
  %234 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %235 = shl i16 %234, 2
  %236 = add i16 %235, %230
  call void @uiBlockSetEmboss(ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  %237 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 9
  %238 = load ptr, ptr %237, align 8, !tbaa !89
  %239 = icmp eq ptr %238, null
  br i1 %239, label %288, label %240

240:                                              ; preds = %233
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %241 = load i32, ptr %231, align 8, !tbaa !34
  switch i32 %241, label %287 [
    i32 7, label %242
    i32 25, label %249
  ]

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !67
  %245 = getelementptr inbounds %struct.FCurve, ptr %244, i64 0, i32 12
  %246 = load ptr, ptr %245, align 8, !tbaa !90
  %247 = getelementptr inbounds %struct.FCurve, ptr %244, i64 0, i32 11
  %248 = load i32, ptr %247, align 4, !tbaa !92
  br label %253

249:                                              ; preds = %240
  %250 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !67
  %252 = call ptr @BKE_keyblock_curval_rnapath_get(ptr noundef nonnull %238, ptr noundef %251) #17
  br label %253

253:                                              ; preds = %249, %242
  %254 = phi i32 [ %248, %242 ], [ 0, %249 ]
  %255 = phi i1 [ true, %242 ], [ false, %249 ]
  %256 = phi ptr [ %246, %242 ], [ %252, %249 ]
  %257 = icmp eq ptr %256, null
  br i1 %257, label %287, label %258

258:                                              ; preds = %253
  %259 = load ptr, ptr %237, align 8, !tbaa !89
  call void @RNA_id_pointer_create(ptr noundef %259, ptr noundef nonnull %10) #17
  %260 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %10, ptr noundef nonnull %256, ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %284, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr %12, align 8, !tbaa !41
  %264 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 1, i32 1
  %265 = load float, ptr %264, align 4, !tbaa !69
  %266 = fptosi float %265 to i32
  %267 = sext i16 %236 to i32
  %268 = sub nsw i32 %266, %267
  %269 = fptosi float %35 to i32
  %270 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %271 = sext i16 %270 to i32
  %272 = shl nsw i32 %271, 2
  %273 = fptosi float %5 to i32
  %274 = sitofp i32 %273 to float
  %275 = fsub float %274, %4
  %276 = fptosi float %275 to i32
  %277 = call ptr @uiDefAutoButR(ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef %263, i32 noundef %254, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %268, i32 noundef %269, i32 noundef %272, i32 noundef %276) #17
  %278 = load i32, ptr %231, align 8, !tbaa !34
  %279 = icmp eq i32 %278, 25
  %280 = load ptr, ptr %237, align 8, !tbaa !89
  %281 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !67
  %283 = select i1 %279, ptr @achannel_setting_slider_shapekey_cb, ptr @achannel_setting_slider_cb
  call void @uiButSetFunc(ptr noundef %277, ptr noundef nonnull %283, ptr noundef %280, ptr noundef %282) #17
  br label %284

284:                                              ; preds = %262, %258
  br i1 %255, label %287, label %285

285:                                              ; preds = %284
  %286 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %286(ptr noundef nonnull %256) #17
  br label %287

287:                                              ; preds = %240, %284, %285, %253
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  br label %288

288:                                              ; preds = %216, %229, %287, %233, %228, %7
  ret void
}

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_setting_widget(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #2 !PGOFuncName !93 {
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #16
  %10 = getelementptr inbounds %struct.bAnimChannelType, ptr %2, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = call i32 %11(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %9) #17
  %13 = getelementptr inbounds %struct.bAnimChannelType, ptr %2, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = call ptr %14(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %8) #17
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
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i32 %18, 7
  %20 = select i1 %19, ptr @.str.42, ptr @.str.43
  br label %46

21:                                               ; preds = %7
  br label %46

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 7
  %24 = load i16, ptr %23, align 2, !tbaa !94
  %25 = icmp eq i16 %24, 4
  %26 = select i1 %25, ptr @.str.47, ptr @.str.46
  br label %46

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !34
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
  %42 = load i32, ptr %41, align 8, !tbaa !34
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
  switch i16 %56, label %90 [
    i16 4, label %57
    i16 2, label %63
    i16 1, label %69
  ]

57:                                               ; preds = %55
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %59 = sitofp i16 %58 to float
  %60 = fmul float %59, 0x3FEB333340000000
  %61 = fptosi float %60 to i16
  %62 = call ptr @uiDefIconButBitI(ptr noundef %3, i32 noundef %51, i32 noundef %12, i32 noundef 0, i32 noundef %47, i32 noundef %4, i32 noundef %5, i16 noundef signext %61, i16 noundef signext %61, ptr noundef nonnull %15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %48) #17
  br label %75

63:                                               ; preds = %55
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %65 = sitofp i16 %64 to float
  %66 = fmul float %65, 0x3FEB333340000000
  %67 = fptosi float %66 to i16
  %68 = call ptr @uiDefIconButBitS(ptr noundef %3, i32 noundef %51, i32 noundef %12, i32 noundef 0, i32 noundef %47, i32 noundef %4, i32 noundef %5, i16 noundef signext %67, i16 noundef signext %67, ptr noundef nonnull %15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %48) #17
  br label %75

69:                                               ; preds = %55
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %71 = sitofp i16 %70 to float
  %72 = fmul float %71, 0x3FEB333340000000
  %73 = fptosi float %72 to i16
  %74 = call ptr @uiDefIconButBitC(ptr noundef %3, i32 noundef %51, i32 noundef %12, i32 noundef 0, i32 noundef %47, i32 noundef %4, i32 noundef %5, i16 noundef signext %73, i16 noundef signext %73, ptr noundef nonnull %15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %48) #17
  br label %75

75:                                               ; preds = %69, %63, %57
  %76 = phi ptr [ %74, %69 ], [ %68, %63 ], [ %62, %57 ]
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
  %80 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %81 = call ptr %80(ptr noundef %1) #17
  %82 = zext nneg i32 %6 to i64
  %83 = inttoptr i64 %82 to ptr
  call void @uiButSetNFunc(ptr noundef nonnull %76, ptr noundef nonnull @achannel_setting_flush_widget_cb, ptr noundef %81, ptr noundef %83) #17
  br label %90

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !85
  %87 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !67
  call void @uiButSetFunc(ptr noundef nonnull %76, ptr noundef nonnull @achannel_nlatrack_solo_widget_cb, ptr noundef %86, ptr noundef %88) #17
  br label %90

89:                                               ; preds = %78
  call void @uiButSetFunc(ptr noundef nonnull %76, ptr noundef nonnull @achannel_setting_widget_cb, ptr noundef null, ptr noundef null) #17
  br label %90

90:                                               ; preds = %55, %75, %89, %84, %79, %46
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @achannel_setting_rename_done_cb(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #2 !PGOFuncName !95 {
  %4 = getelementptr inbounds %struct.bDopeSheet, ptr %1, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !84
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599621, ptr noundef null) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @uiButActiveOnly(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_keyblock_curval_rnapath_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @uiDefAutoButR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @achannel_setting_slider_shapekey_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !96 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @BKE_keyblock_curval_rnapath_get(ptr noundef %1, ptr noundef %2) #17
  %8 = tail call ptr @CTX_wm_reports(ptr noundef %0) #17
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !97
  %12 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %9, i16 noundef signext 1) #17
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %4) #17
  %13 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = sitofp i32 %11 to float
  %17 = call ptr @verify_adt_action(ptr noundef %1, i16 noundef signext 1) #17
  %18 = call ptr @verify_fcurve(ptr noundef %17, ptr noundef null, ptr noundef nonnull %5, ptr noundef %7, i32 noundef 0, i16 noundef signext 1) #17
  %19 = call zeroext i8 @fcurve_frame_has_keyframe(ptr noundef %18, float noundef %16, i16 noundef signext 0) #17
  %20 = icmp eq i8 %19, 0
  %21 = or i16 %12, 16
  %22 = select i1 %20, i16 %12, i16 %21
  %23 = load ptr, ptr %6, align 8, !tbaa !41
  %24 = call zeroext i8 @insert_keyframe_direct(ptr noundef %8, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %23, ptr noundef %18, float noundef %16, i16 noundef signext %22) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #17
  br label %27

27:                                               ; preds = %15, %26, %3
  %28 = icmp eq ptr %7, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %30(ptr noundef nonnull %7) #17
  br label %31

31:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @achannel_setting_slider_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !116 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_wm_reports(ptr noundef %0) #17
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !97
  %11 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %8, i16 noundef signext 1) #17
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %4) #17
  %12 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %4, ptr noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = sitofp i32 %10 to float
  %18 = call zeroext i8 @fcurve_frame_has_keyframe(ptr noundef nonnull %2, float noundef %17, i16 noundef signext 0) #17
  %19 = icmp eq i8 %18, 0
  %20 = or i16 %11, 16
  %21 = select i1 %19, i16 %11, i16 %20
  %22 = load ptr, ptr %6, align 8, !tbaa !41
  %23 = call zeroext i8 @insert_keyframe_direct(ptr noundef %7, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %22, ptr noundef nonnull %2, float noundef %17, i16 noundef signext %21) #17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #17
  br label %26

26:                                               ; preds = %16, %25, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_summary_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #2 !PGOFuncName !117 {
  tail call void @UI_GetThemeColor3fv(i32 noundef 165, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_summary_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #2 !PGOFuncName !118 {
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %9 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  call void %10(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #17
  call void @glColor3fv(ptr noundef nonnull %5) #17
  call void @uiSetRoundBox(i32 noundef 9) #17
  %11 = fadd float %2, -2.000000e+00
  %12 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !69
  %14 = fadd float %13, 1.000000e+02
  call void @uiDrawBox(i32 noundef 9, float noundef 0.000000e+00, float noundef %11, float noundef %14, float noundef %3, float noundef 8.000000e+00) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef signext i16 @acf_generic_indention_0(ptr nocapture readnone %0, ptr nocapture readnone %1) #9 !PGOFuncName !119 {
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_summary_name(ptr nocapture readnone %0, ptr noundef %1) #2 !PGOFuncName !120 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i64 noundef 256) #17
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_summary_icon(ptr nocapture readnone %0) #9 !PGOFuncName !121 {
  ret i32 29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_summary_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 !PGOFuncName !122 {
  %4 = icmp eq i32 %2, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_summary_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !123 {
  %4 = icmp eq i32 %1, 3
  %5 = zext i1 %4 to i8
  %6 = zext i1 %4 to i32
  store i8 %5, ptr %2, align 1, !tbaa !52
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_summary_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !124 {
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

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_generic_root_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #2 !PGOFuncName !125 {
  tail call void @UI_GetThemeColor3fv(i32 noundef 131, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_generic_root_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #2 !PGOFuncName !126 {
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call signext i16 @ANIM_channel_setting_get(ptr noundef %0, ptr noundef %1, i32 noundef 3) #15
  %10 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = tail call signext i16 %11(ptr noundef nonnull %0, ptr noundef %1) #17
  %15 = sitofp i16 %14 to float
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi float [ %15, %13 ], [ 0.000000e+00, %4 ]
  %18 = icmp eq i16 %9, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %19 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  call void %20(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17
  call void @glColor3fv(ptr noundef nonnull %5) #17
  %21 = select i1 %18, i32 9, i32 1
  call void @uiSetRoundBox(i32 noundef %21) #17
  %22 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !69
  %24 = fadd float %23, 1.000000e+02
  call void @uiDrawBox(i32 noundef 9, float noundef %17, float noundef %2, float noundef %24, float noundef %3, float noundef 8.000000e+00) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_generic_idblock_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !127 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #17
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_generic_idblock_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !128 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  tail call void @RNA_id_pointer_create(ptr noundef %5, ptr noundef %1) #17
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call ptr @RNA_struct_name_property(ptr noundef %7) #17
  store ptr %8, ptr %2, align 8, !tbaa !41
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_scene_icon(ptr nocapture readnone %0) #9 !PGOFuncName !132 {
  ret i32 156
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @acf_scene_setting_valid(ptr noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #7 !PGOFuncName !133 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_scene_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !134 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_scene_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !135 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !136
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

; Function Attrs: optsize
declare ptr @RNA_struct_name_property(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_object_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %11, i64 noundef 256) #17
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_object_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !140 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  tail call void @RNA_id_pointer_create(ptr noundef %5, ptr noundef %1) #17
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call ptr @RNA_struct_name_property(ptr noundef %7) #17
  store ptr %8, ptr %2, align 8, !tbaa !41
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @acf_object_icon(ptr nocapture noundef readonly %0) #12 !PGOFuncName !141 {
  %2 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !142
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @acf_object_setting_valid(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #12 !PGOFuncName !145 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !138
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
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  %23 = icmp ne ptr %22, null
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %3, %3, %14, %16, %20, %8, %10, %24
  %26 = phi i1 [ false, %24 ], [ false, %8 ], [ %13, %10 ], [ false, %16 ], [ false, %14 ], [ %23, %20 ], [ true, %3 ], [ true, %3 ]
  %27 = zext i1 %26 to i8
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_object_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !147 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_object_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !148 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !138
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
  %14 = load ptr, ptr %13, align 8, !tbaa !146
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_group_color(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 !PGOFuncName !149 {
  %4 = alloca [3 x i8], align 1
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call fastcc zeroext i8 @acf_show_channel_colors(ptr noundef %0) #15, !range !150
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !151
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #16
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 6
  %19 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 6, i32 1
  %20 = select i1 %17, ptr %18, ptr %19
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %4, ptr noundef nonnull %20) #15
  call void @rgb_uchar_to_float(ptr noundef %2, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #16
  br label %28

21:                                               ; preds = %9, %3
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !68
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 31, i32 noundef 10, ptr noundef %2) #17
  br label %28

27:                                               ; preds = %21
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 30, i32 noundef 20, ptr noundef %2) #17
  br label %28

28:                                               ; preds = %26, %27, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_group_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #2 !PGOFuncName !154 {
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call signext i16 @ANIM_channel_setting_get(ptr noundef %0, ptr noundef %1, i32 noundef 3) #15
  %10 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = tail call signext i16 %11(ptr noundef nonnull %0, ptr noundef %1) #17
  %15 = sitofp i16 %14 to float
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi float [ %15, %13 ], [ 0.000000e+00, %4 ]
  %18 = icmp eq i16 %9, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %19 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  call void %20(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17
  call void @glColor3fv(ptr noundef nonnull %5) #17
  %21 = select i1 %18, i32 9, i32 1
  call void @uiSetRoundBox(i32 noundef %21) #17
  %22 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !69
  %24 = fadd float %23, 1.000000e+02
  call void @uiDrawBox(i32 noundef 9, float noundef %17, float noundef %2, float noundef %24, float noundef %3, float noundef 8.000000e+00) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal signext i16 @acf_generic_group_offset(ptr noundef %0, ptr noundef %1) #2 !PGOFuncName !155 {
  %3 = tail call signext i16 @acf_generic_basic_offset(ptr noundef %0, ptr noundef %1) #15
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !51
  switch i16 %9, label %19 [
    i16 17748, label %10
    i16 16717, label %13
    i16 16720, label %13
  ]

10:                                               ; preds = %7
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %12 = add i16 %11, %3
  br label %35

13:                                               ; preds = %7, %7
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, 0x3FE6666660000000
  %17 = fptosi float %16 to i16
  %18 = add i16 %3, %17
  br label %35

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %21 = load i16, ptr %20, align 8, !tbaa !156
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %25 = sitofp i16 %24 to float
  %26 = fmul float %25, 0x3FE6666660000000
  %27 = fptosi float %26 to i16
  %28 = add i16 %3, %27
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i16 [ %28, %23 ], [ %3, %19 ]
  %31 = icmp eq i16 %9, 21582
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = tail call fastcc signext i16 @acf_nodetree_rootType_offset(ptr noundef nonnull %5) #15
  %34 = add i16 %33, %30
  br label %35

35:                                               ; preds = %10, %13, %29, %32, %2
  %36 = phi i16 [ %34, %32 ], [ %30, %29 ], [ %3, %2 ], [ %18, %13 ], [ %12, %10 ]
  ret i16 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_group_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !157 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 5
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #17
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_group_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !158 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %7, ptr noundef %1) #17
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = tail call ptr @RNA_struct_name_property(ptr noundef %9) #17
  store ptr %10, ptr %2, align 8, !tbaa !41
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @acf_group_setting_valid(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #7 !PGOFuncName !159 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @acf_group_setting_flag(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !160 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_group_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !161 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 3
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @acf_show_channel_colors(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !66
  switch i16 %7, label %18 [
    i16 12, label %8
    i16 2, label %13
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 11
  %10 = load i16, ptr %9, align 2, !tbaa !74
  %11 = and i16 %10, 128
  %12 = icmp eq i16 %11, 0
  br label %18

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !77
  %16 = and i32 %15, 8192
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %8, %13, %5, %1
  %19 = phi i1 [ false, %5 ], [ %17, %13 ], [ %12, %8 ], [ false, %1 ]
  %20 = zext i1 %19 to i8
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !163 {
  %3 = load i8, ptr %1, align 1, !tbaa !52
  store i8 %3, ptr %0, align 1, !tbaa !52
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !52
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !52
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !52
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_GetThemeColorShade3fv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal signext i16 @acf_generic_basic_offset(ptr noundef %0, ptr noundef %1) #2 !PGOFuncName !164 {
  %3 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bAnimChannelType, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !165
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = tail call signext i16 %7(ptr noundef %0, ptr noundef %1) #17
  %11 = sitofp i16 %10 to float
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3FD6666660000000
  %15 = fmul float %14, %11
  %16 = fptosi float %15 to i16
  br label %17

17:                                               ; preds = %2, %5, %9
  %18 = phi i16 [ %16, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i16 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc signext i16 @acf_nodetree_rootType_offset(ptr noundef readonly %0) unnamed_addr #12 !PGOFuncName !166 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !167
  switch i32 %5, label %17 [
    i32 0, label %6
    i32 2, label %11
  ]

6:                                                ; preds = %3
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3FD6666660000000
  %10 = fptosi float %9 to i16
  br label %17

11:                                               ; preds = %3
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3FD6666660000000
  %15 = fmul float %14, 2.000000e+00
  %16 = fptosi float %15 to i16
  br label %17

17:                                               ; preds = %1, %3, %11, %6
  %18 = phi i16 [ %16, %11 ], [ %10, %6 ], [ 0, %3 ], [ 0, %1 ]
  ret i16 %18
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_generic_channel_color(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !170 {
  %4 = alloca [3 x i8], align 1
  %5 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.bAnimChannelType, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !165
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call signext i16 %7(ptr noundef %0, ptr noundef %1) #17
  %11 = sext i16 %10 to i32
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i8 @acf_show_channel_colors(ptr noundef %0) #15, !range !150
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !171
  %23 = icmp ne i8 %18, 0
  %24 = icmp ne ptr %22, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.bActionGroup, ptr %22, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !151
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #16
  switch i32 %13, label %35 [
    i32 2, label %31
    i32 1, label %33
  ]

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.bActionGroup, ptr %22, i64 0, i32 6
  br label %37

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bActionGroup, ptr %22, i64 0, i32 6, i32 1
  br label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bActionGroup, ptr %22, i64 0, i32 6, i32 2
  br label %37

37:                                               ; preds = %33, %35, %31
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ], [ %32, %31 ]
  call fastcc void @copy_v3_v3_char(ptr noundef nonnull %4, ptr noundef nonnull %38) #15
  call void @rgb_uchar_to_float(ptr noundef %2, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #16
  br label %42

39:                                               ; preds = %12, %26, %17
  %40 = mul nsw i32 %13, -20
  %41 = add nsw i32 %40, 20
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 10, i32 noundef %41, ptr noundef %2) #17
  br label %42

42:                                               ; preds = %39, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_generic_channel_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #2 !PGOFuncName !172 {
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = tail call signext i16 %10(ptr noundef nonnull %0, ptr noundef %1) #17
  %14 = sitofp i16 %13 to float
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi float [ %14, %12 ], [ 0.000000e+00, %4 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %17 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  call void %18(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17
  call void @glColor3fv(ptr noundef nonnull %5) #17
  %19 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !69
  %21 = fadd float %20, 1.000000e+02
  call void @glRectf(float noundef %16, float noundef %2, float noundef %21, float noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal signext i16 @acf_generic_indention_flexible(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #12 !PGOFuncName !173 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !171
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i16
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i16 [ %12, %6 ], [ 0, %2 ]
  ret i16 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_fcurve_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !174 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call i32 @getname_anim_fcurve(ptr noundef %1, ptr noundef %4, ptr noundef %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_fcurve_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !175 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !176
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  tail call void @RNA_pointer_create(ptr noundef %12, ptr noundef nonnull @RNA_FCurve, ptr noundef nonnull %5, ptr noundef %1) #17
  %13 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef nonnull @.str.14) #17
  br label %14

14:                                               ; preds = %3, %10
  %15 = phi ptr [ %13, %10 ], [ null, %3 ]
  store ptr %15, ptr %2, align 8, !tbaa !41
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i8
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @acf_fcurve_setting_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #12 !PGOFuncName !177 {
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
  %8 = load ptr, ptr %7, align 8, !tbaa !178
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_fcurve_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !179 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_fcurve_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !180 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 2, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 9
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @getname_anim_fcurve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_generic_dataexpand_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #2 !PGOFuncName !181 {
  tail call void @UI_GetThemeColor3fv(i32 noundef 132, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_generic_dataexpand_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #2 !PGOFuncName !182 {
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = tail call signext i16 %10(ptr noundef nonnull %0, ptr noundef %1) #17
  %14 = sitofp i16 %13 to float
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi float [ %14, %12 ], [ 0.000000e+00, %4 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %17 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  call void %18(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17
  call void @glColor3fv(ptr noundef nonnull %5) #17
  %19 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !69
  %21 = fadd float %20, 1.000000e+02
  call void @glRectf(float noundef %16, float noundef %2, float noundef %21, float noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef signext i16 @acf_generic_indention_1(ptr nocapture readnone %0, ptr nocapture readnone %1) #9 !PGOFuncName !183 {
  ret i16 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_generic_idfill_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !184 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  tail call void @RNA_id_pointer_create(ptr noundef %5, ptr noundef %1) #17
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call ptr @RNA_struct_name_property(ptr noundef %7) #17
  store ptr %8, ptr %2, align 8, !tbaa !41
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_fillactd_icon(ptr nocapture readnone %0) #9 !PGOFuncName !185 {
  ret i32 115
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_fillactd_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 !PGOFuncName !186 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %2, 3
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_fillactd_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !187 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal ptr @acf_fillactd_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !188 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !85
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_filldrivers_name(ptr nocapture readnone %0, ptr noundef %1) #2 !PGOFuncName !189 {
  %3 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull @.str.17, i64 noundef 256) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_filldrivers_icon(ptr nocapture readnone %0) #9 !PGOFuncName !190 {
  ret i32 519
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_filldrivers_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 !PGOFuncName !191 {
  %4 = icmp eq i32 %2, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_filldrivers_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !192 {
  %4 = icmp eq i32 %1, 3
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %2, align 1
  %6 = select i1 %4, i32 1024, i32 0
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal ptr @acf_filldrivers_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !193 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dsmat_icon(ptr nocapture readnone %0) #9 !PGOFuncName !194 {
  ret i32 165
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @acf_generic_dataexpand_setting_valid(ptr noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #7 !PGOFuncName !195 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsmat_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !196 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsmat_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !197 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !198
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dslam_icon(ptr nocapture readnone %0) #9 !PGOFuncName !202 {
  ret i32 164
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dslam_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !203 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dslam_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !204 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !205
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dscam_icon(ptr nocapture readnone %0) #9 !PGOFuncName !207 {
  ret i32 168
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dscam_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !208 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dscam_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !209 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !210
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

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @acf_dscur_icon(ptr nocapture noundef readonly %0) #2 !PGOFuncName !212 {
  %2 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call signext i16 @BKE_curve_type_get(ptr noundef %3) #17
  %5 = icmp eq i16 %4, 3
  %6 = select i1 %5, i32 188, i32 161
  %7 = icmp eq i16 %4, 4
  %8 = select i1 %7, i32 186, i32 %6
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dscur_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !213 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dscur_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !214 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !215
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

; Function Attrs: optsize
declare signext i16 @BKE_curve_type_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dsskey_icon(ptr nocapture readnone %0) #9 !PGOFuncName !218 {
  ret i32 176
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsskey_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !219 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsskey_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !220 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !221
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dswor_icon(ptr nocapture readnone %0) #9 !PGOFuncName !223 {
  ret i32 158
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dswor_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !224 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dswor_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !225 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !226
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

; Function Attrs: noinline nounwind optsize uwtable
define internal signext i16 @acf_dsntree_offset(ptr noundef %0, ptr noundef %1) #2 !PGOFuncName !228 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call signext i16 @acf_generic_basic_offset(ptr noundef %0, ptr noundef %1) #15
  %6 = tail call fastcc signext i16 @acf_nodetree_rootType_offset(ptr noundef %4) #15
  %7 = add i16 %6, %5
  ret i16 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dsntree_icon(ptr nocapture readnone %0) #9 !PGOFuncName !229 {
  ret i32 119
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsntree_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !230 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsntree_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !231 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !232
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dspart_icon(ptr nocapture readnone %0) #9 !PGOFuncName !233 {
  ret i32 169
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dspart_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !234 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dspart_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !235 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !236
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dsmball_icon(ptr nocapture readnone %0) #9 !PGOFuncName !238 {
  ret i32 162
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsmball_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !239 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsmball_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !240 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !241
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dsarm_icon(ptr nocapture readnone %0) #9 !PGOFuncName !243 {
  ret i32 172
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsarm_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !244 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsarm_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !245 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !246
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dsmesh_icon(ptr nocapture readnone %0) #9 !PGOFuncName !248 {
  ret i32 160
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsmesh_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !249 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsmesh_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !250 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !251
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef signext i16 @acf_dstex_offset(ptr nocapture readnone %0, ptr nocapture readnone %1) #9 !PGOFuncName !254 {
  ret i16 14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dstex_icon(ptr nocapture readnone %0) #9 !PGOFuncName !255 {
  ret i32 166
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dstex_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !256 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dstex_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !257 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !258
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dslat_icon(ptr nocapture readnone %0) #9 !PGOFuncName !261 {
  ret i32 163
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dslat_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !262 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dslat_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !263 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !264
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dslinestyle_icon(ptr nocapture readnone %0) #9 !PGOFuncName !266 {
  ret i32 198
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dslinestyle_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !267 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dslinestyle_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !268 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !269
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_dsspk_icon(ptr nocapture readnone %0) #9 !PGOFuncName !271 {
  ret i32 90
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_dsspk_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !272 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @acf_dsspk_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 !PGOFuncName !273 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !274
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_shapekey_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !276 {
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
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #17
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !277
  %17 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %1, i64 noundef 256, ptr noundef nonnull @.str.34, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %12, %14, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_shapekey_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !278 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  tail call void @RNA_pointer_create(ptr noundef %13, ptr noundef nonnull @RNA_ShapeKey, ptr noundef nonnull %5, ptr noundef %1) #17
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = tail call ptr @RNA_struct_name_property(ptr noundef %15) #17
  store ptr %16, ptr %2, align 8, !tbaa !41
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %3, %7, %11
  %20 = phi i8 [ %18, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_shapekey_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 !PGOFuncName !279 {
  %4 = icmp ult i32 %2, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_shapekey_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !280 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal ptr @acf_shapekey_setting_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !281 {
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

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_gpd_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #2 !PGOFuncName !282 {
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 132, i32 noundef 20, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_gpd_icon(ptr nocapture readnone %0) #9 !PGOFuncName !283 {
  ret i32 197
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_gpd_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 !PGOFuncName !284 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %2, 3
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_gpd_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !285 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp eq i32 %1, 3
  %5 = select i1 %4, i32 4, i32 0
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 1, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_gpd_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !286 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 2
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_gpl_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !287 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 8
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #17
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_gpl_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !288 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef nonnull %5, ptr noundef %1) #17
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = tail call ptr @RNA_struct_name_property(ptr noundef %11) #17
  store ptr %12, ptr %2, align 8, !tbaa !41
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i8 [ %14, %7 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_gpl_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 !PGOFuncName !289 {
  %4 = add i32 %2, -6
  %5 = icmp ult i32 %4, -3
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_gpl_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !290 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_gpl_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !291 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %5, i64 0, i32 4
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_mask_color(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #2 !PGOFuncName !292 {
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 132, i32 noundef 20, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @acf_mask_icon(ptr nocapture readnone %0) #9 !PGOFuncName !293 {
  ret i32 467
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_mask_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 !PGOFuncName !294 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %2, 3
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_mask_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !295 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp eq i32 %1, 3
  %5 = select i1 %4, i32 16, i32 0
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 1, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_mask_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !296 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 7
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_masklay_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !297 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 2
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #17
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_masklay_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !298 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_MaskLayer, ptr noundef nonnull %5, ptr noundef %1) #17
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = tail call ptr @RNA_struct_name_property(ptr noundef %11) #17
  store ptr %12, ptr %2, align 8, !tbaa !41
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i8 [ %14, %7 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @acf_masklay_setting_valid(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2) #9 !PGOFuncName !299 {
  %4 = add i32 %2, -6
  %5 = icmp ult i32 %4, -3
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_masklay_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !300 {
  store i8 0, ptr %2, align 1, !tbaa !52
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 16, i32 0
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 32, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_masklay_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !301 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 1, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %5, i64 0, i32 12
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_nlatrack_color(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 !PGOFuncName !302 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !88
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.NlaTrack, ptr %5, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !303
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 -20, i32 20
  br label %20

20:                                               ; preds = %14, %9, %3
  %21 = phi i32 [ 20, %9 ], [ 20, %3 ], [ %19, %14 ]
  tail call void @UI_GetThemeColorShade3fv(i32 noundef 10, i32 noundef %21, ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_nlatrack_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !305 {
  %3 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.NlaTrack, ptr %4, i64 0, i32 5
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #17
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_nlatrack_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !306 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_NlaTrack, ptr noundef nonnull %5, ptr noundef %1) #17
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = tail call ptr @RNA_struct_name_property(ptr noundef %11) #17
  store ptr %12, ptr %2, align 8, !tbaa !41
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i8 [ %14, %7 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @acf_nlatrack_setting_valid(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #12 !PGOFuncName !307 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !85
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
  %10 = load i32, ptr %9, align 8, !tbaa !303
  %11 = and i32 %10, 1025
  %12 = icmp eq i32 %11, 1025
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = icmp eq ptr %5, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !88
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_nlatrack_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !308 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_nlatrack_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !309 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %5, i64 0, i32 3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_nlaaction_color(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !310 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  call void @nla_action_get_color(ptr noundef %6, ptr noundef %8, ptr noundef nonnull %4) #17
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_nlaaction_backdrop(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #2 !PGOFuncName !311 {
  %5 = alloca [4 x float], align 16
  %6 = tail call ptr @ANIM_channel_get_typeinfo(ptr noundef %1) #15
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.bAnimChannelType, ptr %6, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = tail call signext i16 %12(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  %16 = sitofp i16 %15 to float
  br label %17

17:                                               ; preds = %4, %14
  %18 = phi float [ %16, %14 ], [ 0.000000e+00, %4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  call void @nla_action_get_color(ptr noundef %10, ptr noundef %20, ptr noundef nonnull %5) #17
  %21 = icmp eq ptr %10, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !88
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  call void @glColor3fv(ptr noundef nonnull %5) #17
  br label %39

28:                                               ; preds = %22
  %29 = and i32 %24, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, float 1.000000e+00, float 0x3FD3333340000000
  br label %32

32:                                               ; preds = %17, %28
  %33 = phi float [ %31, %28 ], [ 1.000000e+00, %17 ]
  %34 = load float, ptr %5, align 16, !tbaa !312
  %35 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !312
  %37 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %38 = load float, ptr %37, align 8, !tbaa !312
  call void @glColor4f(float noundef %34, float noundef %36, float noundef %38, float noundef %33) #17
  br label %39

39:                                               ; preds = %32, %27
  call void @uiSetRoundBox(i32 noundef 1) #17
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %41 = sitofp i16 %40 to float
  %42 = call float @llvm.fmuladd.f32(float %41, float 0x3FB99999A0000000, float %2)
  %43 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !69
  %45 = call float @llvm.fmuladd.f32(float %41, float 0x3FB99999A0000000, float %3)
  %46 = fadd float %45, -1.000000e+00
  call void @uiDrawBox(i32 noundef 9, float noundef %18, float noundef %42, float noundef %44, float noundef %46, float noundef 8.000000e+00) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @acf_nlaaction_name(ptr nocapture noundef readonly %0, ptr noundef %1) #2 !PGOFuncName !313 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %9 = select i1 %7, ptr @.str.41, ptr %8
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %9, i64 noundef 256) #17
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @acf_nlaaction_name_prop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !314 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_Action, ptr noundef nonnull %5, ptr noundef %1) #17
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = tail call ptr @RNA_struct_name_property(ptr noundef %11) #17
  store ptr %12, ptr %2, align 8, !tbaa !41
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i8 [ %14, %7 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @acf_nlaaction_icon(ptr nocapture noundef readonly %0) #12 !PGOFuncName !315 {
  %2 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !88
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %11

11:                                               ; preds = %5, %10
  %12 = phi i32 [ 115, %10 ], [ 504, %5 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @acf_nlaaction_setting_valid(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #12 !PGOFuncName !316 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %2, 6
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !88
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %7
  br label %15

15:                                               ; preds = %3, %9, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %9 ], [ 0, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @acf_nlaaction_setting_flag(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 !PGOFuncName !317 {
  %4 = icmp eq i32 %1, 6
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %2, align 1
  %6 = select i1 %4, i32 8, i32 0
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @acf_nlaaction_setting_ptr(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture noundef writeonly %2) #13 !PGOFuncName !318 {
  %4 = getelementptr inbounds %struct.bAnimListElem, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  store i16 4, ptr %2, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.AnimData, ptr %5, i64 0, i32 7
  ret ptr %6
}

; Function Attrs: optsize
declare void @nla_action_get_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !319 {
  %3 = load float, ptr %1, align 4, !tbaa !312
  store float %3, ptr %0, align 4, !tbaa !312
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !312
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !312
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !312
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !312
  ret void
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @uiDefIconButBitS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @uiDefIconButBitC(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @achannel_setting_flush_widget_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !320 {
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = ptrtoint ptr %2 to i64
  %7 = trunc i64 %6 to i32
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #17
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #17
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = call signext i16 @ANIM_channel_setting_get(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef %7) #15
  %14 = icmp eq i16 %13, -1
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = sext i16 %13 to i32
  %17 = load ptr, ptr %4, align 8, !tbaa !321
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %19 = load i16, ptr %18, align 8, !tbaa !156
  %20 = sext i16 %19 to i32
  %21 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 9, ptr noundef %17, i32 noundef %20) #17
  call void @ANIM_flush_setting_anim_channels(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef %16) #17
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #17
  br label %22

22:                                               ; preds = %12, %3, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @achannel_nlatrack_solo_widget_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !322 {
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !303
  %6 = xor i32 %5, 8
  store i32 %6, ptr %4, align 8, !tbaa !303
  tail call void @BKE_nlatrack_solo_toggle(ptr noundef %1, ptr noundef %2) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599621, ptr noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @achannel_setting_widget_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 !PGOFuncName !323 {
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599617, ptr noundef null) #17
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ANIM_flush_setting_anim_channels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_nlatrack_solo_toggle(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @verify_adt_action(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @fcurve_frame_has_keyframe(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @insert_keyframe_direct(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }

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
!34 = !{!35, !39, i64 24}
!35 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !40, i64 36, !40, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!36, !36, i64 0}
!42 = !{!"anim_channels_defines.c:ANIM_init_channel_typeinfo_data"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !36, i64 48}
!46 = !{!"bAnimChannelType", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!47 = !{!46, !36, i64 0}
!48 = !{!46, !36, i64 72}
!49 = !{!46, !36, i64 80}
!50 = !{!46, !36, i64 88}
!51 = !{!40, !40, i64 0}
!52 = !{!37, !37, i64 0}
!53 = !{!39, !39, i64 0}
!54 = !{!55, !36, i64 32}
!55 = !{!"bAnimContext", !36, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!56 = !{!46, !36, i64 40}
!57 = !{!58, !40, i64 8948}
!58 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !39, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !40, i64 8496, !40, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !59, i64 8536, !59, i64 8552, !59, i64 8568, !59, i64 8584, !59, i64 8600, !59, i64 8616, !59, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !39, i64 8912, !39, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !60, i64 8956, !60, i64 8960, !39, i64 8964, !40, i64 8968, !40, i64 8970, !60, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !61, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !39, i64 10896, !39, i64 10900, !60, i64 10904, !60, i64 10908, !39, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !62, i64 10928}
!59 = !{!"ListBase", !36, i64 0, !36, i64 8}
!60 = !{!"float", !37, i64 0}
!61 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!62 = !{!"WalkNavigation", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !40, i64 24, !37, i64 26}
!63 = !{!46, !36, i64 24}
!64 = !{!46, !36, i64 64}
!65 = !{!55, !36, i64 24}
!66 = !{!55, !40, i64 12}
!67 = !{!35, !36, i64 16}
!68 = !{!35, !39, i64 28}
!69 = !{!70, !60, i64 20}
!70 = !{!"View2D", !71, i64 0, !71, i64 16, !72, i64 32, !72, i64 48, !72, i64 64, !37, i64 80, !37, i64 88, !60, i64 96, !60, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!71 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!72 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!73 = !{!46, !36, i64 16}
!74 = !{!75, !40, i64 338}
!75 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !59, i64 16, !39, i64 32, !60, i64 36, !37, i64 40, !70, i64 56, !36, i64 216, !76, i64 224, !37, i64 336, !37, i64 337, !40, i64 338, !60, i64 340}
!76 = !{!"bDopeSheet", !36, i64 0, !59, i64 8, !36, i64 24, !37, i64 32, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108}
!77 = !{!78, !39, i64 244}
!78 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !59, i64 16, !39, i64 32, !60, i64 36, !37, i64 40, !70, i64 56, !36, i64 216, !59, i64 224, !40, i64 240, !40, i64 242, !39, i64 244, !60, i64 248, !39, i64 252}
!79 = !{!"anim_channels_defines.c:BLI_rcti_size_x"}
!80 = !{!72, !39, i64 4}
!81 = !{!72, !39, i64 0}
!82 = !{!46, !36, i64 56}
!83 = !{!55, !36, i64 40}
!84 = !{!76, !39, i64 104}
!85 = !{!35, !36, i64 56}
!86 = !{!87, !36, i64 0}
!87 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !59, i64 24, !36, i64 40, !59, i64 48, !59, i64 64, !39, i64 80, !39, i64 84, !40, i64 88, !40, i64 90, !60, i64 92}
!88 = !{!87, !39, i64 80}
!89 = !{!35, !36, i64 48}
!90 = !{!91, !36, i64 80}
!91 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !59, i64 32, !36, i64 48, !36, i64 56, !39, i64 64, !60, i64 68, !40, i64 72, !40, i64 74, !39, i64 76, !36, i64 80, !39, i64 88, !37, i64 92, !60, i64 104, !60, i64 108}
!92 = !{!91, !39, i64 76}
!93 = !{!"anim_channels_defines.c:draw_setting_widget"}
!94 = !{!35, !40, i64 38}
!95 = !{!"anim_channels_defines.c:achannel_setting_rename_done_cb"}
!96 = !{!"anim_channels_defines.c:achannel_setting_slider_shapekey_cb"}
!97 = !{!98, !39, i64 680}
!98 = !{!"Scene", !99, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !59, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !100, i64 280, !107, i64 4264, !59, i64 4296, !59, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !39, i64 4380, !59, i64 4384, !108, i64 4400, !109, i64 4416, !112, i64 4600, !36, i64 4608, !113, i64 4616, !36, i64 4640, !114, i64 4648, !114, i64 4656, !102, i64 4664, !103, i64 4824, !115, i64 4888, !36, i64 4952}
!99 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!100 = !{!"RenderData", !101, i64 0, !36, i64 248, !36, i64 256, !104, i64 264, !105, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !60, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !71, i64 544, !71, i64 560, !72, i64 576, !59, i64 592, !40, i64 608, !40, i64 610, !60, i64 612, !60, i64 616, !60, i64 620, !60, i64 624, !39, i64 628, !60, i64 632, !60, i64 636, !60, i64 640, !60, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !60, i64 660, !60, i64 664, !40, i64 668, !40, i64 670, !60, i64 672, !60, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !60, i64 2528, !60, i64 2532, !40, i64 2536, !40, i64 2538, !60, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !60, i64 2560, !60, i64 2564, !36, i64 2568, !39, i64 2576, !60, i64 2580, !37, i64 2584, !106, i64 2616, !39, i64 3976, !39, i64 3980}
!101 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !60, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !102, i64 24, !103, i64 184}
!102 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !60, i64 136, !60, i64 140, !36, i64 144, !36, i64 152}
!103 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!104 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!105 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !60, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!106 = !{!"BakeData", !101, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !60, i64 1280, !60, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!107 = !{!"AudioData", !39, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !39, i64 16, !40, i64 20, !40, i64 22, !60, i64 24, !60, i64 28}
!108 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!109 = !{!"GameData", !108, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !110, i64 40, !40, i64 64, !40, i64 66, !60, i64 68, !111, i64 72, !60, i64 128, !60, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180}
!110 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !60, i64 8, !60, i64 12, !36, i64 16}
!111 = !{!"RecastData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !39, i64 40, !60, i64 44, !60, i64 48, !40, i64 52, !40, i64 54}
!112 = !{!"UnitSettings", !60, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!113 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!114 = !{!"long", !37, i64 0}
!115 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!116 = !{!"anim_channels_defines.c:achannel_setting_slider_cb"}
!117 = !{!"anim_channels_defines.c:acf_summary_color"}
!118 = !{!"anim_channels_defines.c:acf_summary_backdrop"}
!119 = !{!"anim_channels_defines.c:acf_generic_indention_0"}
!120 = !{!"anim_channels_defines.c:acf_summary_name"}
!121 = !{!"anim_channels_defines.c:acf_summary_icon"}
!122 = !{!"anim_channels_defines.c:acf_summary_setting_valid"}
!123 = !{!"anim_channels_defines.c:acf_summary_setting_flag"}
!124 = !{!"anim_channels_defines.c:acf_summary_setting_ptr"}
!125 = !{!"anim_channels_defines.c:acf_generic_root_color"}
!126 = !{!"anim_channels_defines.c:acf_generic_root_backdrop"}
!127 = !{!"anim_channels_defines.c:acf_generic_idblock_name"}
!128 = !{!"anim_channels_defines.c:acf_generic_idblock_name_prop"}
!129 = !{!130, !36, i64 8}
!130 = !{!"PointerRNA", !131, i64 0, !36, i64 8, !36, i64 16}
!131 = !{!"", !36, i64 0}
!132 = !{!"anim_channels_defines.c:acf_scene_icon"}
!133 = !{!"anim_channels_defines.c:acf_scene_setting_valid"}
!134 = !{!"anim_channels_defines.c:acf_scene_setting_flag"}
!135 = !{!"anim_channels_defines.c:acf_scene_setting_ptr"}
!136 = !{!98, !36, i64 120}
!137 = !{!"anim_channels_defines.c:acf_object_name"}
!138 = !{!139, !36, i64 32}
!139 = !{!"Base", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !36, i64 32}
!140 = !{!"anim_channels_defines.c:acf_object_name_prop"}
!141 = !{!"anim_channels_defines.c:acf_object_icon"}
!142 = !{!143, !40, i64 136}
!143 = !{!"Object", !99, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !144, i64 312, !36, i64 360, !59, i64 368, !59, i64 384, !59, i64 400, !59, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !60, i64 616, !60, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !60, i64 1048, !60, i64 1052, !59, i64 1056, !59, i64 1072, !59, i64 1088, !59, i64 1104, !60, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !59, i64 1176, !59, i64 1192, !59, i64 1208, !59, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !60, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !114, i64 1304, !114, i64 1312, !39, i64 1320, !39, i64 1324, !59, i64 1328, !59, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !59, i64 1400, !36, i64 1416}
!144 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!145 = !{!"anim_channels_defines.c:acf_object_setting_valid"}
!146 = !{!143, !36, i64 120}
!147 = !{!"anim_channels_defines.c:acf_object_setting_flag"}
!148 = !{!"anim_channels_defines.c:acf_object_setting_ptr"}
!149 = !{!"anim_channels_defines.c:acf_group_color"}
!150 = !{i8 0, i8 2}
!151 = !{!152, !39, i64 36}
!152 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !59, i64 16, !39, i64 32, !39, i64 36, !37, i64 40, !153, i64 104}
!153 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !40, i64 12, !40, i64 14}
!154 = !{!"anim_channels_defines.c:acf_group_backdrop"}
!155 = !{!"anim_channels_defines.c:acf_generic_group_offset"}
!156 = !{!55, !40, i64 8}
!157 = !{!"anim_channels_defines.c:acf_group_name"}
!158 = !{!"anim_channels_defines.c:acf_group_name_prop"}
!159 = !{!"anim_channels_defines.c:acf_group_setting_valid"}
!160 = !{!"anim_channels_defines.c:acf_group_setting_flag"}
!161 = !{!"anim_channels_defines.c:acf_group_setting_ptr"}
!162 = !{!"anim_channels_defines.c:acf_show_channel_colors"}
!163 = !{!"anim_channels_defines.c:copy_v3_v3_char"}
!164 = !{!"anim_channels_defines.c:acf_generic_basic_offset"}
!165 = !{!46, !36, i64 32}
!166 = !{!"anim_channels_defines.c:acf_nodetree_rootType_offset"}
!167 = !{!168, !39, i64 256}
!168 = !{!"bNodeTree", !99, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !59, i64 224, !59, i64 240, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !40, i64 276, !40, i64 278, !39, i64 280, !39, i64 284, !40, i64 288, !40, i64 290, !39, i64 292, !71, i64 296, !59, i64 312, !59, i64 328, !36, i64 344, !169, i64 352, !39, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!169 = !{!"bNodeInstanceKey", !39, i64 0}
!170 = !{!"anim_channels_defines.c:acf_generic_channel_color"}
!171 = !{!91, !36, i64 16}
!172 = !{!"anim_channels_defines.c:acf_generic_channel_backdrop"}
!173 = !{!"anim_channels_defines.c:acf_generic_indention_flexible"}
!174 = !{!"anim_channels_defines.c:acf_fcurve_name"}
!175 = !{!"anim_channels_defines.c:acf_fcurve_name_prop"}
!176 = !{!91, !40, i64 72}
!177 = !{!"anim_channels_defines.c:acf_fcurve_setting_valid"}
!178 = !{!91, !36, i64 48}
!179 = !{!"anim_channels_defines.c:acf_fcurve_setting_flag"}
!180 = !{!"anim_channels_defines.c:acf_fcurve_setting_ptr"}
!181 = !{!"anim_channels_defines.c:acf_generic_dataexpand_color"}
!182 = !{!"anim_channels_defines.c:acf_generic_dataexpand_backdrop"}
!183 = !{!"anim_channels_defines.c:acf_generic_indention_1"}
!184 = !{!"anim_channels_defines.c:acf_generic_idfill_name_prop"}
!185 = !{!"anim_channels_defines.c:acf_fillactd_icon"}
!186 = !{!"anim_channels_defines.c:acf_fillactd_setting_valid"}
!187 = !{!"anim_channels_defines.c:acf_fillactd_setting_flag"}
!188 = !{!"anim_channels_defines.c:acf_fillactd_setting_ptr"}
!189 = !{!"anim_channels_defines.c:acf_filldrivers_name"}
!190 = !{!"anim_channels_defines.c:acf_filldrivers_icon"}
!191 = !{!"anim_channels_defines.c:acf_filldrivers_setting_valid"}
!192 = !{!"anim_channels_defines.c:acf_filldrivers_setting_flag"}
!193 = !{!"anim_channels_defines.c:acf_filldrivers_setting_ptr"}
!194 = !{!"anim_channels_defines.c:acf_dsmat_icon"}
!195 = !{!"anim_channels_defines.c:acf_generic_dataexpand_setting_valid"}
!196 = !{!"anim_channels_defines.c:acf_dsmat_setting_flag"}
!197 = !{!"anim_channels_defines.c:acf_dsmat_setting_ptr"}
!198 = !{!199, !36, i64 120}
!199 = !{!"Material", !99, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !60, i64 216, !60, i64 220, !200, i64 224, !201, i64 312, !60, i64 328, !60, i64 332, !60, i64 336, !60, i64 340, !60, i64 344, !60, i64 348, !60, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !60, i64 364, !60, i64 368, !40, i64 372, !40, i64 374, !60, i64 376, !60, i64 380, !60, i64 384, !60, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !60, i64 420, !60, i64 424, !60, i64 428, !60, i64 432, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !60, i64 456, !37, i64 460, !60, i64 524, !60, i64 528, !60, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !60, i64 556, !60, i64 560, !37, i64 564, !60, i64 580, !60, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !60, i64 616, !60, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !60, i64 800, !60, i64 804, !60, i64 808, !60, i64 812, !60, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !60, i64 848, !60, i64 852, !60, i64 856, !60, i64 860, !60, i64 864, !60, i64 868, !60, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !59, i64 928}
!200 = !{!"VolumeSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !60, i64 52, !60, i64 56, !60, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !60, i64 72, !60, i64 76, !60, i64 80, !60, i64 84}
!201 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!202 = !{!"anim_channels_defines.c:acf_dslam_icon"}
!203 = !{!"anim_channels_defines.c:acf_dslam_setting_flag"}
!204 = !{!"anim_channels_defines.c:acf_dslam_setting_ptr"}
!205 = !{!206, !36, i64 120}
!206 = !{!"Lamp", !99, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !40, i64 136, !40, i64 138, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !60, i64 212, !60, i64 216, !60, i64 220, !60, i64 224, !60, i64 228, !60, i64 232, !60, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !60, i64 260, !60, i64 264, !60, i64 268, !60, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !60, i64 288, !60, i64 292, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 312, !60, i64 316, !60, i64 320, !60, i64 324, !60, i64 328, !60, i64 332, !60, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!207 = !{!"anim_channels_defines.c:acf_dscam_icon"}
!208 = !{!"anim_channels_defines.c:acf_dscam_setting_flag"}
!209 = !{!"anim_channels_defines.c:acf_dscam_setting_ptr"}
!210 = !{!211, !36, i64 120}
!211 = !{!"Camera", !99, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !40, i64 130, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!212 = !{!"anim_channels_defines.c:acf_dscur_icon"}
!213 = !{!"anim_channels_defines.c:acf_dscur_setting_flag"}
!214 = !{!"anim_channels_defines.c:acf_dscur_setting_ptr"}
!215 = !{!216, !36, i64 120}
!216 = !{!"Curve", !99, i64 0, !36, i64 120, !36, i64 128, !59, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !60, i64 252, !60, i64 256, !39, i64 260, !40, i64 264, !40, i64 266, !39, i64 268, !60, i64 272, !60, i64 276, !60, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !39, i64 292, !39, i64 296, !37, i64 300, !40, i64 304, !37, i64 306, !37, i64 307, !60, i64 308, !60, i64 312, !60, i64 316, !60, i64 320, !60, i64 324, !60, i64 328, !60, i64 332, !60, i64 336, !60, i64 340, !60, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !39, i64 488, !39, i64 492, !36, i64 496, !217, i64 504, !60, i64 512, !60, i64 516, !60, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!217 = !{!"CharInfo", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !40, i64 6}
!218 = !{!"anim_channels_defines.c:acf_dsskey_icon"}
!219 = !{!"anim_channels_defines.c:acf_dsskey_setting_flag"}
!220 = !{!"anim_channels_defines.c:acf_dsskey_setting_ptr"}
!221 = !{!222, !36, i64 120}
!222 = !{!"Key", !99, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !39, i64 168, !39, i64 172, !59, i64 176, !36, i64 192, !36, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !60, i64 216, !39, i64 220}
!223 = !{!"anim_channels_defines.c:acf_dswor_icon"}
!224 = !{!"anim_channels_defines.c:acf_dswor_setting_flag"}
!225 = !{!"anim_channels_defines.c:acf_dswor_setting_ptr"}
!226 = !{!227, !36, i64 120}
!227 = !{!"World", !99, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !60, i64 216, !60, i64 220, !60, i64 224, !60, i64 228, !60, i64 232, !60, i64 236, !60, i64 240, !60, i64 244, !60, i64 248, !60, i64 252, !60, i64 256, !60, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !60, i64 272, !60, i64 276, !60, i64 280, !60, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 312, !60, i64 316, !60, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!228 = !{!"anim_channels_defines.c:acf_dsntree_offset"}
!229 = !{!"anim_channels_defines.c:acf_dsntree_icon"}
!230 = !{!"anim_channels_defines.c:acf_dsntree_setting_flag"}
!231 = !{!"anim_channels_defines.c:acf_dsntree_setting_ptr"}
!232 = !{!168, !36, i64 120}
!233 = !{!"anim_channels_defines.c:acf_dspart_icon"}
!234 = !{!"anim_channels_defines.c:acf_dspart_setting_flag"}
!235 = !{!"anim_channels_defines.c:acf_dspart_setting_ptr"}
!236 = !{!237, !36, i64 120}
!237 = !{!"ParticleSettings", !99, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !39, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !39, i64 176, !39, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !60, i64 232, !60, i64 236, !37, i64 240, !37, i64 248, !60, i64 256, !60, i64 260, !60, i64 264, !40, i64 268, !40, i64 270, !60, i64 272, !60, i64 276, !60, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 312, !60, i64 316, !37, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !40, i64 340, !37, i64 342, !60, i64 348, !60, i64 352, !60, i64 356, !60, i64 360, !60, i64 364, !60, i64 368, !60, i64 372, !37, i64 376, !60, i64 388, !60, i64 392, !60, i64 396, !60, i64 400, !60, i64 404, !60, i64 408, !60, i64 412, !37, i64 416, !60, i64 428, !60, i64 432, !60, i64 436, !60, i64 440, !39, i64 444, !39, i64 448, !60, i64 452, !60, i64 456, !60, i64 460, !60, i64 464, !60, i64 468, !60, i64 472, !60, i64 476, !60, i64 480, !60, i64 484, !60, i64 488, !60, i64 492, !60, i64 496, !60, i64 500, !60, i64 504, !60, i64 508, !60, i64 512, !60, i64 516, !60, i64 520, !60, i64 524, !60, i64 528, !60, i64 532, !60, i64 536, !60, i64 540, !60, i64 544, !60, i64 548, !37, i64 552, !60, i64 560, !60, i64 564, !39, i64 568, !39, i64 572, !37, i64 576, !36, i64 720, !59, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !40, i64 792, !37, i64 794}
!238 = !{!"anim_channels_defines.c:acf_dsmball_icon"}
!239 = !{!"anim_channels_defines.c:acf_dsmball_setting_flag"}
!240 = !{!"anim_channels_defines.c:acf_dsmball_setting_ptr"}
!241 = !{!242, !36, i64 120}
!242 = !{!"MetaBall", !99, i64 0, !36, i64 120, !59, i64 128, !59, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !60, i64 228, !60, i64 232, !60, i64 236, !36, i64 240}
!243 = !{!"anim_channels_defines.c:acf_dsarm_icon"}
!244 = !{!"anim_channels_defines.c:acf_dsarm_setting_flag"}
!245 = !{!"anim_channels_defines.c:acf_dsarm_setting_ptr"}
!246 = !{!247, !36, i64 120}
!247 = !{!"bArmature", !99, i64 0, !36, i64 120, !59, i64 128, !59, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !40, i64 208, !40, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252}
!248 = !{!"anim_channels_defines.c:acf_dsmesh_icon"}
!249 = !{!"anim_channels_defines.c:acf_dsmesh_setting_flag"}
!250 = !{!"anim_channels_defines.c:acf_dsmesh_setting_ptr"}
!251 = !{!252, !36, i64 120}
!252 = !{!"Mesh", !99, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !253, i64 280, !253, i64 480, !253, i64 680, !253, i64 880, !253, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !40, i64 1348, !40, i64 1350, !60, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !40, i64 1366, !36, i64 1368}
!253 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!254 = !{!"anim_channels_defines.c:acf_dstex_offset"}
!255 = !{!"anim_channels_defines.c:acf_dstex_icon"}
!256 = !{!"anim_channels_defines.c:acf_dstex_setting_flag"}
!257 = !{!"anim_channels_defines.c:acf_dstex_setting_ptr"}
!258 = !{!259, !36, i64 120}
!259 = !{!"Tex", !99, i64 0, !36, i64 120, !60, i64 128, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !60, i64 236, !60, i64 240, !60, i64 244, !60, i64 248, !39, i64 252, !39, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !260, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!260 = !{!"ImageUser", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !39, i64 36}
!261 = !{!"anim_channels_defines.c:acf_dslat_icon"}
!262 = !{!"anim_channels_defines.c:acf_dslat_setting_flag"}
!263 = !{!"anim_channels_defines.c:acf_dslat_setting_ptr"}
!264 = !{!265, !36, i64 120}
!265 = !{!"Lattice", !99, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !39, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!266 = !{!"anim_channels_defines.c:acf_dslinestyle_icon"}
!267 = !{!"anim_channels_defines.c:acf_dslinestyle_setting_flag"}
!268 = !{!"anim_channels_defines.c:acf_dslinestyle_setting_ptr"}
!269 = !{!270, !36, i64 120}
!270 = !{!"FreestyleLineStyle", !99, i64 0, !36, i64 120, !60, i64 128, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !39, i64 148, !60, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !39, i64 192, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !39, i64 208, !39, i64 212, !60, i64 216, !40, i64 220, !40, i64 222, !40, i64 224, !37, i64 226, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !39, i64 244, !37, i64 248, !36, i64 392, !59, i64 400, !59, i64 416, !59, i64 432, !59, i64 448}
!271 = !{!"anim_channels_defines.c:acf_dsspk_icon"}
!272 = !{!"anim_channels_defines.c:acf_dsspk_setting_flag"}
!273 = !{!"anim_channels_defines.c:acf_dsspk_setting_ptr"}
!274 = !{!275, !36, i64 120}
!275 = !{!"Speaker", !99, i64 0, !36, i64 120, !36, i64 128, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !40, i64 176, !37, i64 178}
!276 = !{!"anim_channels_defines.c:acf_shapekey_name"}
!277 = !{!35, !39, i64 32}
!278 = !{!"anim_channels_defines.c:acf_shapekey_name_prop"}
!279 = !{!"anim_channels_defines.c:acf_shapekey_setting_valid"}
!280 = !{!"anim_channels_defines.c:acf_shapekey_setting_flag"}
!281 = !{!"anim_channels_defines.c:acf_shapekey_setting_ptr"}
!282 = !{!"anim_channels_defines.c:acf_gpd_color"}
!283 = !{!"anim_channels_defines.c:acf_gpd_icon"}
!284 = !{!"anim_channels_defines.c:acf_gpd_setting_valid"}
!285 = !{!"anim_channels_defines.c:acf_gpd_setting_flag"}
!286 = !{!"anim_channels_defines.c:acf_gpd_setting_ptr"}
!287 = !{!"anim_channels_defines.c:acf_gpl_name"}
!288 = !{!"anim_channels_defines.c:acf_gpl_name_prop"}
!289 = !{!"anim_channels_defines.c:acf_gpl_setting_valid"}
!290 = !{!"anim_channels_defines.c:acf_gpl_setting_flag"}
!291 = !{!"anim_channels_defines.c:acf_gpl_setting_ptr"}
!292 = !{!"anim_channels_defines.c:acf_mask_color"}
!293 = !{!"anim_channels_defines.c:acf_mask_icon"}
!294 = !{!"anim_channels_defines.c:acf_mask_setting_valid"}
!295 = !{!"anim_channels_defines.c:acf_mask_setting_flag"}
!296 = !{!"anim_channels_defines.c:acf_mask_setting_ptr"}
!297 = !{!"anim_channels_defines.c:acf_masklay_name"}
!298 = !{!"anim_channels_defines.c:acf_masklay_name_prop"}
!299 = !{!"anim_channels_defines.c:acf_masklay_setting_valid"}
!300 = !{!"anim_channels_defines.c:acf_masklay_setting_flag"}
!301 = !{!"anim_channels_defines.c:acf_masklay_setting_ptr"}
!302 = !{!"anim_channels_defines.c:acf_nlatrack_color"}
!303 = !{!304, !39, i64 32}
!304 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !59, i64 16, !39, i64 32, !39, i64 36, !37, i64 40}
!305 = !{!"anim_channels_defines.c:acf_nlatrack_name"}
!306 = !{!"anim_channels_defines.c:acf_nlatrack_name_prop"}
!307 = !{!"anim_channels_defines.c:acf_nlatrack_setting_valid"}
!308 = !{!"anim_channels_defines.c:acf_nlatrack_setting_flag"}
!309 = !{!"anim_channels_defines.c:acf_nlatrack_setting_ptr"}
!310 = !{!"anim_channels_defines.c:acf_nlaaction_color"}
!311 = !{!"anim_channels_defines.c:acf_nlaaction_backdrop"}
!312 = !{!60, !60, i64 0}
!313 = !{!"anim_channels_defines.c:acf_nlaaction_name"}
!314 = !{!"anim_channels_defines.c:acf_nlaaction_name_prop"}
!315 = !{!"anim_channels_defines.c:acf_nlaaction_icon"}
!316 = !{!"anim_channels_defines.c:acf_nlaaction_setting_valid"}
!317 = !{!"anim_channels_defines.c:acf_nlaaction_setting_flag"}
!318 = !{!"anim_channels_defines.c:acf_nlaaction_setting_ptr"}
!319 = !{!"anim_channels_defines.c:copy_v3_v3"}
!320 = !{!"anim_channels_defines.c:achannel_setting_flush_widget_cb"}
!321 = !{!55, !36, i64 0}
!322 = !{!"anim_channels_defines.c:achannel_nlatrack_solo_widget_cb"}
!323 = !{!"anim_channels_defines.c:achannel_setting_widget_cb"}
