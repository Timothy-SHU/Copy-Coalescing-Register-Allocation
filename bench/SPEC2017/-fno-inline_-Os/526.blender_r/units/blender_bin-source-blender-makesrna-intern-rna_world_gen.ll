; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_world_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_world_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_World_texture_slots = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_World_active_texture, ptr @rna_World_animation_data, i32 -1, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_WorldTextureSlots, ptr null }, ptr @World_texture_slots_begin, ptr @World_texture_slots_next, ptr @World_texture_slots_end, ptr @World_texture_slots_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_WorldTextureSlot }, align 8
@RNA_NodeTree = external global %struct.StructRNA, align 8
@rna_WorldTextureSlots_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlots_rna_type, ptr null, i32 -1, ptr @.str.51, i32 128, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldTextureSlots_rna_properties_begin, ptr @WorldTextureSlots_rna_properties_next, ptr @WorldTextureSlots_rna_properties_end, ptr @WorldTextureSlots_rna_properties_get, ptr null, ptr null, ptr @WorldTextureSlots_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_WorldLighting_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_rna_type, ptr null, i32 -1, ptr @.str.51, i32 128, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_rna_properties_begin, ptr @WorldLighting_rna_properties_next, ptr @WorldLighting_rna_properties_end, ptr @WorldLighting_rna_properties_get, ptr null, ptr null, ptr @WorldLighting_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_WorldMistSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldMistSettings_rna_type, ptr null, i32 -1, ptr @.str.51, i32 128, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldMistSettings_rna_properties_begin, ptr @WorldMistSettings_rna_properties_next, ptr @WorldMistSettings_rna_properties_end, ptr @WorldMistSettings_rna_properties_get, ptr null, ptr null, ptr @WorldMistSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@.str = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_World_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_World_texture_slots, ptr null, i32 -1, ptr @.str, i32 8388608, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@rna_World_active_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_World_active_texture_index, ptr @rna_World_texture_slots, i32 -1, ptr @.str.7, i32 8388609, ptr @.str.8, ptr @.str.9, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 102760448, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_active_texture_get, ptr @World_active_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"texture_slots\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Textures\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Texture slots defining the mapping and influence of textures\00", align 1
@RNA_WorldTextureSlots = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WorldLighting, ptr @RNA_World, ptr null, %struct.ListBase { ptr @rna_WorldTextureSlots_rna_properties, ptr @rna_WorldTextureSlots_rna_type } }, ptr @.str.67, ptr null, ptr null, i32 4, ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 17, ptr null, ptr @rna_WorldTextureSlots_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_WorldTextureSlots_add_func, ptr @rna_WorldTextureSlots_clear_func } }, align 8
@RNA_WorldTextureSlot = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MovieClip, ptr @RNA_WorldMistSettings, ptr null, %struct.ListBase { ptr @rna_WorldTextureSlot_use_map_blend, ptr @rna_WorldTextureSlot_zenith_down_factor } }, ptr @.str.186, ptr null, ptr null, i32 4, ptr @.str.187, ptr @.str.188, ptr @.str.3, i32 166, ptr @rna_TextureSlot_name, ptr @rna_TextureSlot_rna_properties, ptr @RNA_TextureSlot, ptr null, ptr null, ptr @rna_TextureSlot_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_World_active_texture_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_World_horizon_color, ptr @rna_World_active_texture, i32 -1, ptr @.str.10, i32 8195, ptr @.str.11, ptr @.str.12, i32 0, ptr @.str.3, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 102760448, ptr null, ptr null, i32 132, i32 1, ptr null, ptr null }, ptr @World_active_texture_index_get, ptr @World_active_texture_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 17, i32 0, i32 17, i32 1, i32 0, ptr null }, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"active_texture\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Active Texture\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Active texture slot being displayed\00", align 1
@RNA_Texture = external global %struct.StructRNA, align 8
@rna_World_horizon_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_World_zenith_color, ptr @rna_World_active_texture_index, i32 -1, ptr @.str.13, i32 8195, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.3, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_World_update, i32 221052928, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @World_horizon_color_get, ptr @World_horizon_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_World_horizon_color_default }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"active_texture_index\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Active Texture Index\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Index of active texture slot\00", align 1
@rna_World_zenith_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_World_ambient_color, ptr @rna_World_horizon_color, i32 -1, ptr @.str.16, i32 8195, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.3, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_World_update, i32 221052928, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @World_zenith_color_get, ptr @World_zenith_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_World_zenith_color_default }, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"horizon_color\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Horizon Color\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Color at the horizon\00", align 1
@rna_World_horizon_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_World_ambient_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_World_exposure, ptr @rna_World_zenith_color, i32 -1, ptr @.str.19, i32 8195, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.3, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 160, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @World_ambient_color_get, ptr @World_ambient_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_World_ambient_color_default }, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"zenith_color\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Zenith Color\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Color at the zenith\00", align 1
@rna_World_zenith_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_World_exposure = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_World_color_range, ptr @rna_World_ambient_color, i32 -1, ptr @.str.22, i32 8195, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 176, i32 4, ptr null, ptr null }, ptr @World_exposure_get, ptr @World_exposure_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"ambient_color\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Ambient Color\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Ambient color of the world\00", align 1
@rna_World_ambient_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_World_color_range = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_World_use_sky_blend, ptr @rna_World_exposure, i32 -1, ptr @.str.25, i32 8195, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @World_color_range_get, ptr @World_color_range_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FC99999A0000000, float 5.000000e+00, float 0x3FC99999A0000000, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Exposure\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"Amount of exponential color correction for light\00", align 1
@rna_World_use_sky_blend = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_World_use_sky_paper, ptr @rna_World_color_range, i32 -1, ptr @.str.28, i32 3, ptr @.str.29, ptr @.str.30, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 221052928, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_use_sky_blend_get, ptr @World_use_sky_blend_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.25 = private unnamed_addr constant [12 x i8] c"color_range\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"The color range that will be mapped to 0-1\00", align 1
@rna_World_use_sky_paper = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_World_use_sky_real, ptr @rna_World_use_sky_blend, i32 -1, ptr @.str.31, i32 3, ptr @.str.32, ptr @.str.33, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 221052928, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_use_sky_paper_get, ptr @World_use_sky_paper_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"use_sky_blend\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Blend Sky\00", align 1
@.str.30 = private unnamed_addr constant [66 x i8] c"Render background with natural progression from horizon to zenith\00", align 1
@rna_World_use_sky_real = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_World_light_settings, ptr @rna_World_use_sky_paper, i32 -1, ptr @.str.34, i32 3, ptr @.str.35, ptr @.str.36, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 221052928, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_use_sky_real_get, ptr @World_use_sky_real_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.31 = private unnamed_addr constant [14 x i8] c"use_sky_paper\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Paper Sky\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Flatten blend or texture coordinates\00", align 1
@rna_World_light_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_World_mist_settings, ptr @rna_World_use_sky_real, i32 -1, ptr @.str.37, i32 8650752, ptr @.str.38, ptr @.str.39, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_light_settings_get, ptr null, ptr null, ptr null, ptr @RNA_WorldLighting }, align 8
@.str.34 = private unnamed_addr constant [13 x i8] c"use_sky_real\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"Real Sky\00", align 1
@.str.36 = private unnamed_addr constant [68 x i8] c"Render background with a real horizon, relative to the camera angle\00", align 1
@rna_World_mist_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_World_node_tree, ptr @rna_World_light_settings, i32 -1, ptr @.str.40, i32 8650752, ptr @.str.41, ptr @.str.42, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_mist_settings_get, ptr null, ptr null, ptr null, ptr @RNA_WorldMistSettings }, align 8
@.str.37 = private unnamed_addr constant [15 x i8] c"light_settings\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Lighting\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"World lighting settings\00", align 1
@RNA_WorldLighting = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WorldMistSettings, ptr @RNA_WorldTextureSlots, ptr null, %struct.ListBase { ptr @rna_WorldLighting_rna_properties, ptr @rna_WorldLighting_sample_method } }, ptr @.str.134, ptr null, ptr null, i32 4, ptr @.str.38, ptr @.str.135, ptr @.str.3, i32 17, ptr null, ptr @rna_WorldLighting_rna_properties, ptr null, ptr @RNA_World, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_World_node_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_World_use_nodes, ptr @rna_World_mist_settings, i32 -1, ptr @.str.43, i32 8388672, ptr @.str.44, ptr @.str.45, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_node_tree_get, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@.str.40 = private unnamed_addr constant [14 x i8] c"mist_settings\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Mist\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"World mist settings\00", align 1
@RNA_WorldMistSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WorldTextureSlot, ptr @RNA_WorldLighting, ptr null, %struct.ListBase { ptr @rna_WorldMistSettings_rna_properties, ptr @rna_WorldMistSettings_falloff } }, ptr @.str.153, ptr null, ptr null, i32 4, ptr @.str.154, ptr @.str.155, ptr @.str.3, i32 17, ptr null, ptr @rna_WorldMistSettings_rna_properties, ptr null, ptr @RNA_World, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_World_use_nodes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_World_node_tree, i32 -1, ptr @.str.46, i32 4194305, ptr @.str.47, ptr @.str.48, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_use_nodes_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @World_use_nodes_get, ptr @World_use_nodes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.43 = private unnamed_addr constant [10 x i8] c"node_tree\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Node Tree\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Node tree for node based worlds\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"use_nodes\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Use Nodes\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"Use shader nodes to render the world\00", align 1
@RNA_KeyMapItem = external global %struct.StructRNA, align 8
@.str.49 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.50 = private unnamed_addr constant [75 x i8] c"World datablock describing the environment and ambient lighting of a scene\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_World = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WorldTextureSlots, ptr @RNA_KeyMapItem, ptr null, %struct.ListBase { ptr @rna_World_animation_data, ptr @rna_World_use_nodes } }, ptr @.str.49, ptr null, ptr null, i32 7, ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 158, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@rna_WorldTextureSlots_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WorldTextureSlots_rna_properties, i32 -1, ptr @.str.54, i32 8912896, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldTextureSlots_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.51 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.54 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.57 = private unnamed_addr constant [5 x i8] c"mtex\00", align 1
@.str.58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"The newly initialized mtex\00", align 1
@rna_WorldTextureSlots_add_mtex = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.57, i32 8388616, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_WorldTextureSlot }, align 8
@rna_WorldTextureSlots_create_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WorldTextureSlots_clear_func, ptr @rna_WorldTextureSlots_add_func, ptr null, %struct.ListBase { ptr @rna_WorldTextureSlots_create_index, ptr @rna_WorldTextureSlots_create_mtex } }, ptr @.str.64, i32 2073, ptr @.str.64, ptr @WorldTextureSlots_create_call, ptr @rna_WorldTextureSlots_create_mtex }, align 8
@.str.60 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@rna_WorldTextureSlots_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WorldTextureSlots_create_func, ptr null, ptr null, %struct.ListBase { ptr @rna_WorldTextureSlots_add_mtex, ptr @rna_WorldTextureSlots_add_mtex } }, ptr @.str.60, i32 2073, ptr @.str.60, ptr @WorldTextureSlots_add_call, ptr @rna_WorldTextureSlots_add_mtex }, align 8
@rna_WorldTextureSlots_create_mtex = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WorldTextureSlots_create_index, i32 -1, ptr @.str.57, i32 8388616, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_WorldTextureSlot }, align 8
@.str.61 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"Slot index to initialize\00", align 1
@rna_WorldTextureSlots_create_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlots_create_mtex, ptr null, i32 -1, ptr @.str.61, i32 7, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_WorldTextureSlots_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_WorldTextureSlots_create_func, ptr null, %struct.ListBase { ptr @rna_WorldTextureSlots_clear_index, ptr @rna_WorldTextureSlots_clear_index } }, ptr @.str.66, i32 2073, ptr @.str.66, ptr @WorldTextureSlots_clear_call, ptr null }, align 8
@.str.64 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"Slot index to clear\00", align 1
@rna_WorldTextureSlots_clear_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.61, i32 7, ptr @.str.62, ptr @.str.65, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.66 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"WorldTextureSlots\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"Texture Slots\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"Collection of texture slots\00", align 1
@rna_WorldLighting_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_use_ambient_occlusion, ptr @rna_WorldLighting_rna_properties, i32 -1, ptr @.str.54, i32 8912896, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_WorldLighting_use_ambient_occlusion = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_ao_factor, ptr @rna_WorldLighting_rna_type, i32 -1, ptr @.str.70, i32 3, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_use_ambient_occlusion_get, ptr @WorldLighting_use_ambient_occlusion_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_WorldLighting_ao_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_ao_blend_type, ptr @rna_WorldLighting_use_ambient_occlusion, i32 -1, ptr @.str.73, i32 8195, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.3, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 280, i32 4, ptr null, ptr null }, ptr @WorldLighting_ao_factor_get, ptr @WorldLighting_ao_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x41E0000000000000, float 0x3FB99999A0000000, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.70 = private unnamed_addr constant [22 x i8] c"use_ambient_occlusion\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"Use Ambient Occlusion\00", align 1
@.str.72 = private unnamed_addr constant [73 x i8] c"Use Ambient Occlusion to add shadowing based on distance between objects\00", align 1
@rna_WorldLighting_ao_blend_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_use_environment_light, ptr @rna_WorldLighting_ao_factor, i32 -1, ptr @.str.76, i32 3, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_ao_blend_type_get, ptr @WorldLighting_ao_blend_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WorldLighting_ao_blend_type_items, i32 2, i32 0 }, align 8
@.str.73 = private unnamed_addr constant [10 x i8] c"ao_factor\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.75 = private unnamed_addr constant [38 x i8] c"Factor for ambient occlusion blending\00", align 1
@rna_WorldLighting_use_environment_light = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_environment_energy, ptr @rna_WorldLighting_ao_blend_type, i32 -1, ptr @.str.79, i32 3, ptr @.str.80, ptr @.str.81, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_use_environment_light_get, ptr @WorldLighting_use_environment_light_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.76 = private unnamed_addr constant [14 x i8] c"ao_blend_type\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"Blend Mode\00", align 1
@.str.78 = private unnamed_addr constant [43 x i8] c"Defines how AO mixes with material shading\00", align 1
@rna_WorldLighting_ao_blend_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.189, i32 0, ptr @.str.190, ptr @.str.191 }, %struct.EnumPropertyItem { i32 0, ptr @.str.192, i32 0, ptr @.str.193, ptr @.str.194 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WorldLighting_environment_energy = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_environment_color, ptr @rna_WorldLighting_use_environment_light, i32 -1, ptr @.str.82, i32 8195, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 316, i32 4, ptr null, ptr null }, ptr @WorldLighting_environment_energy_get, ptr @WorldLighting_environment_energy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.79 = private unnamed_addr constant [22 x i8] c"use_environment_light\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"Use Environment Lighting\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"Add light coming from the environment\00", align 1
@rna_WorldLighting_environment_color = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_use_indirect_light, ptr @rna_WorldLighting_environment_energy, i32 -1, ptr @.str.85, i32 3, ptr @.str.83, ptr @.str.86, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_environment_color_get, ptr @WorldLighting_environment_color_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WorldLighting_environment_color_items, i32 3, i32 0 }, align 8
@.str.82 = private unnamed_addr constant [19 x i8] c"environment_energy\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"Environment Color\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"Defines the strength of environment light\00", align 1
@rna_WorldLighting_use_indirect_light = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_indirect_factor, ptr @rna_WorldLighting_environment_color, i32 -1, ptr @.str.87, i32 3, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_use_indirect_light_get, ptr @WorldLighting_use_indirect_light_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.85 = private unnamed_addr constant [18 x i8] c"environment_color\00", align 1
@.str.86 = private unnamed_addr constant [60 x i8] c"Defines where the color of the environment light comes from\00", align 1
@rna_WorldLighting_environment_color_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.195, i32 0, ptr @.str.196, ptr @.str.197 }, %struct.EnumPropertyItem { i32 1, ptr @.str.198, i32 0, ptr @.str.199, ptr @.str.200 }, %struct.EnumPropertyItem { i32 2, ptr @.str.201, i32 0, ptr @.str.202, ptr @.str.203 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WorldLighting_indirect_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_indirect_bounces, ptr @rna_WorldLighting_use_indirect_light, i32 -1, ptr @.str.90, i32 8195, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.3, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 312, i32 4, ptr null, ptr null }, ptr @WorldLighting_indirect_factor_get, ptr @WorldLighting_indirect_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x41E0000000000000, float 0x3FB99999A0000000, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.87 = private unnamed_addr constant [19 x i8] c"use_indirect_light\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"Use Indirect Lighting\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"Add indirect light bouncing of surrounding objects\00", align 1
@rna_WorldLighting_indirect_bounces = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_gather_method, ptr @rna_WorldLighting_indirect_factor, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.3, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 324, i32 1, ptr null, ptr null }, ptr @WorldLighting_indirect_bounces_get, ptr @WorldLighting_indirect_bounces_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 32767, i32 1, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.90 = private unnamed_addr constant [16 x i8] c"indirect_factor\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"Indirect Factor\00", align 1
@.str.92 = private unnamed_addr constant [60 x i8] c"Factor for how much surrounding objects contribute to light\00", align 1
@rna_WorldLighting_gather_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_passes, ptr @rna_WorldLighting_indirect_bounces, i32 -1, ptr @.str.96, i32 3, ptr @.str.97, ptr @.str.58, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_gather_method_get, ptr @WorldLighting_gather_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WorldLighting_gather_method_items, i32 2, i32 0 }, align 8
@.str.93 = private unnamed_addr constant [17 x i8] c"indirect_bounces\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"Bounces\00", align 1
@.str.95 = private unnamed_addr constant [41 x i8] c"Number of indirect diffuse light bounces\00", align 1
@rna_WorldLighting_passes = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_distance, ptr @rna_WorldLighting_gather_method, i32 -1, ptr @.str.98, i32 8195, ptr @.str.99, ptr @.str.100, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 332, i32 1, ptr null, ptr null }, ptr @WorldLighting_passes_get, ptr @WorldLighting_passes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10, i32 0, i32 10, i32 1, i32 0, ptr null }, align 8
@.str.96 = private unnamed_addr constant [14 x i8] c"gather_method\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"Gather Method\00", align 1
@rna_WorldLighting_gather_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.204, i32 0, ptr @.str.205, ptr @.str.206 }, %struct.EnumPropertyItem { i32 1, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.209 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WorldLighting_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_falloff_strength, ptr @rna_WorldLighting_passes, i32 -1, ptr @.str.101, i32 8195, ptr @.str.102, ptr @.str.103, i32 0, ptr @.str.3, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 272, i32 4, ptr null, ptr null }, ptr @WorldLighting_distance_get, ptr @WorldLighting_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.98 = private unnamed_addr constant [7 x i8] c"passes\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"Passes\00", align 1
@.str.100 = private unnamed_addr constant [56 x i8] c"Number of preprocessing passes to reduce over-occlusion\00", align 1
@rna_WorldLighting_falloff_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_bias, ptr @rna_WorldLighting_distance, i32 -1, ptr @.str.104, i32 8195, ptr @.str.105, ptr @.str.106, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 276, i32 4, ptr null, ptr null }, ptr @WorldLighting_falloff_strength_get, ptr @WorldLighting_falloff_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.101 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.103 = private unnamed_addr constant [71 x i8] c"Length of rays, defines how far away other faces give occlusion effect\00", align 1
@rna_WorldLighting_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_threshold, ptr @rna_WorldLighting_falloff_strength, i32 -1, ptr @.str.107, i32 8195, ptr @.str.108, ptr @.str.109, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 284, i32 4, ptr null, ptr null }, ptr @WorldLighting_bias_get, ptr @WorldLighting_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 5.000000e-01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.104 = private unnamed_addr constant [17 x i8] c"falloff_strength\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.106 = private unnamed_addr constant [82 x i8] c"Attenuation falloff strength, the higher, the less influence distant objects have\00", align 1
@rna_WorldLighting_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_adapt_to_speed, ptr @rna_WorldLighting_bias, i32 -1, ptr @.str.110, i32 8195, ptr @.str.111, ptr @.str.112, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 296, i32 4, ptr null, ptr null }, ptr @WorldLighting_threshold_get, ptr @WorldLighting_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.107 = private unnamed_addr constant [5 x i8] c"bias\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"Bias\00", align 1
@.str.109 = private unnamed_addr constant [98 x i8] c"Bias (in radians) to prevent smoothed faces from showing banding (for Raytrace Constant Jittered)\00", align 1
@rna_WorldLighting_adapt_to_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_error_threshold, ptr @rna_WorldLighting_threshold, i32 -1, ptr @.str.113, i32 8195, ptr @.str.114, ptr @.str.115, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @WorldLighting_adapt_to_speed_get, ptr @WorldLighting_adapt_to_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.110 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.112 = private unnamed_addr constant [114 x i8] c"Samples below this threshold will be considered fully shadowed/unshadowed and skipped (for Raytrace Adaptive QMC)\00", align 1
@rna_WorldLighting_error_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_correction, ptr @rna_WorldLighting_adapt_to_speed, i32 -1, ptr @.str.116, i32 8195, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 304, i32 4, ptr null, ptr null }, ptr @WorldLighting_error_threshold_get, ptr @WorldLighting_error_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F1A36E2E0000000, float 1.000000e+01, float 0x3F1A36E2E0000000, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.113 = private unnamed_addr constant [15 x i8] c"adapt_to_speed\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"Adapt To Speed\00", align 1
@.str.115 = private unnamed_addr constant [183 x i8] c"Use the speed vector pass to reduce AO samples in fast moving pixels - higher values result in more aggressive sample reduction (requires Vec pass enabled, for Raytrace Adaptive QMC)\00", align 1
@rna_WorldLighting_correction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_use_falloff, ptr @rna_WorldLighting_error_threshold, i32 -1, ptr @.str.119, i32 8195, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 308, i32 4, ptr null, ptr null }, ptr @WorldLighting_correction_get, ptr @WorldLighting_correction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.116 = private unnamed_addr constant [16 x i8] c"error_threshold\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"Error Tolerance\00", align 1
@.str.118 = private unnamed_addr constant [41 x i8] c"Low values are slower and higher quality\00", align 1
@rna_WorldLighting_use_falloff = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_use_cache, ptr @rna_WorldLighting_correction, i32 -1, ptr @.str.122, i32 3, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_use_falloff_get, ptr @WorldLighting_use_falloff_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.119 = private unnamed_addr constant [11 x i8] c"correction\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"Correction\00", align 1
@.str.121 = private unnamed_addr constant [62 x i8] c"Ad-hoc correction for over-occlusion due to the approximation\00", align 1
@rna_WorldLighting_use_cache = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_samples, ptr @rna_WorldLighting_use_falloff, i32 -1, ptr @.str.125, i32 3, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_use_cache_get, ptr @WorldLighting_use_cache_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.122 = private unnamed_addr constant [12 x i8] c"use_falloff\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"Falloff\00", align 1
@.str.124 = private unnamed_addr constant [43 x i8] c"Distance will be used to attenuate shadows\00", align 1
@rna_WorldLighting_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldLighting_sample_method, ptr @rna_WorldLighting_use_cache, i32 -1, ptr @.str.128, i32 8195, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 290, i32 1, ptr null, ptr null }, ptr @WorldLighting_samples_get, ptr @WorldLighting_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 128, i32 1, i32 128, i32 1, i32 0, ptr null }, align 8
@.str.125 = private unnamed_addr constant [10 x i8] c"use_cache\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"Pixel Cache\00", align 1
@.str.127 = private unnamed_addr constant [79 x i8] c"Cache AO results in pixels and interpolate over neighboring pixels for speedup\00", align 1
@rna_WorldLighting_sample_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WorldLighting_samples, i32 -1, ptr @.str.131, i32 3, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldLighting_sample_method_get, ptr @WorldLighting_sample_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WorldLighting_sample_method_items, i32 3, i32 0 }, align 8
@.str.128 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"Samples\00", align 1
@.str.130 = private unnamed_addr constant [86 x i8] c"Amount of ray samples. Higher values give smoother results and longer rendering times\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"sample_method\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"Sample Method\00", align 1
@.str.133 = private unnamed_addr constant [52 x i8] c"Method for generating shadow samples (for Raytrace)\00", align 1
@rna_WorldLighting_sample_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.210, i32 0, ptr @.str.211, ptr @.str.212 }, %struct.EnumPropertyItem { i32 1, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.215 }, %struct.EnumPropertyItem { i32 2, ptr @.str.216, i32 0, ptr @.str.217, ptr @.str.218 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.134 = private unnamed_addr constant [14 x i8] c"WorldLighting\00", align 1
@.str.135 = private unnamed_addr constant [31 x i8] c"Lighting for a World datablock\00", align 1
@rna_WorldMistSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldMistSettings_use_mist, ptr @rna_WorldMistSettings_rna_properties, i32 -1, ptr @.str.54, i32 8912896, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldMistSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_WorldMistSettings_use_mist = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldMistSettings_intensity, ptr @rna_WorldMistSettings_rna_type, i32 -1, ptr @.str.136, i32 3, ptr @.str.137, ptr @.str.138, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldMistSettings_use_mist_get, ptr @WorldMistSettings_use_mist_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_WorldMistSettings_intensity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldMistSettings_start, ptr @rna_WorldMistSettings_use_mist, i32 -1, ptr @.str.139, i32 8195, ptr @.str.140, ptr @.str.141, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @WorldMistSettings_intensity_get, ptr @WorldMistSettings_intensity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.136 = private unnamed_addr constant [9 x i8] c"use_mist\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"Use Mist\00", align 1
@.str.138 = private unnamed_addr constant [68 x i8] c"Occlude objects with the environment color as they are further away\00", align 1
@rna_WorldMistSettings_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldMistSettings_depth, ptr @rna_WorldMistSettings_intensity, i32 -1, ptr @.str.142, i32 8195, ptr @.str.143, ptr @.str.144, i32 0, ptr @.str.3, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_draw_mist_update, i32 0, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @WorldMistSettings_start_get, ptr @WorldMistSettings_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.139 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"Minimum\00", align 1
@.str.141 = private unnamed_addr constant [45 x i8] c"Overall minimum intensity of the mist effect\00", align 1
@rna_WorldMistSettings_depth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldMistSettings_height, ptr @rna_WorldMistSettings_start, i32 -1, ptr @.str.145, i32 8195, ptr @.str.146, ptr @.str.147, i32 0, ptr @.str.3, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_draw_mist_update, i32 0, ptr null, ptr null, i32 224, i32 4, ptr null, ptr null }, ptr @WorldMistSettings_depth_get, ptr @WorldMistSettings_depth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.142 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.144 = private unnamed_addr constant [56 x i8] c"Starting distance of the mist, measured from the camera\00", align 1
@rna_WorldMistSettings_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldMistSettings_falloff, ptr @rna_WorldMistSettings_depth, i32 -1, ptr @.str.148, i32 8195, ptr @.str.149, ptr @.str.150, i32 0, ptr @.str.3, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 228, i32 4, ptr null, ptr null }, ptr @WorldMistSettings_height_get, ptr @WorldMistSettings_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.145 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.147 = private unnamed_addr constant [45 x i8] c"Distance over which the mist effect fades in\00", align 1
@rna_WorldMistSettings_falloff = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WorldMistSettings_height, i32 -1, ptr @.str.151, i32 3, ptr @.str.123, ptr @.str.152, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldMistSettings_falloff_get, ptr @WorldMistSettings_falloff_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WorldMistSettings_falloff_items, i32 3, i32 0 }, align 8
@.str.148 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.150 = private unnamed_addr constant [52 x i8] c"Control how much mist density decreases with height\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"falloff\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"Type of transition used to fade mist\00", align 1
@rna_WorldMistSettings_falloff_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.221 }, %struct.EnumPropertyItem { i32 1, ptr @.str.222, i32 0, ptr @.str.223, ptr @.str.224 }, %struct.EnumPropertyItem { i32 2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.227 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.153 = private unnamed_addr constant [18 x i8] c"WorldMistSettings\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"World Mist\00", align 1
@.str.155 = private unnamed_addr constant [37 x i8] c"Mist settings for a World data-block\00", align 1
@rna_WorldTextureSlot_use_map_horizon = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_use_map_zenith_up, ptr @rna_WorldTextureSlot_use_map_blend, i32 -1, ptr @.str.159, i32 3, ptr @.str.160, ptr @.str.161, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldTextureSlot_use_map_horizon_get, ptr @WorldTextureSlot_use_map_horizon_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.156 = private unnamed_addr constant [14 x i8] c"use_map_blend\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.158 = private unnamed_addr constant [47 x i8] c"Affect the color progression of the background\00", align 1
@rna_WorldTextureSlot_use_map_blend = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_use_map_horizon, ptr null, i32 -1, ptr @.str.156, i32 3, ptr @.str.157, ptr @.str.158, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldTextureSlot_use_map_blend_get, ptr @WorldTextureSlot_use_map_blend_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_WorldTextureSlot_use_map_zenith_up = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_use_map_zenith_down, ptr @rna_WorldTextureSlot_use_map_horizon, i32 -1, ptr @.str.162, i32 3, ptr @.str.163, ptr @.str.164, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldTextureSlot_use_map_zenith_up_get, ptr @WorldTextureSlot_use_map_zenith_up_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.159 = private unnamed_addr constant [16 x i8] c"use_map_horizon\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"Horizon\00", align 1
@.str.161 = private unnamed_addr constant [32 x i8] c"Affect the color of the horizon\00", align 1
@rna_WorldTextureSlot_use_map_zenith_down = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_texture_coords, ptr @rna_WorldTextureSlot_use_map_zenith_up, i32 -1, ptr @.str.165, i32 3, ptr @.str.166, ptr @.str.167, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldTextureSlot_use_map_zenith_down_get, ptr @WorldTextureSlot_use_map_zenith_down_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.162 = private unnamed_addr constant [18 x i8] c"use_map_zenith_up\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"Zenith Up\00", align 1
@.str.164 = private unnamed_addr constant [37 x i8] c"Affect the color of the zenith above\00", align 1
@rna_WorldTextureSlot_texture_coords = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_object, ptr @rna_WorldTextureSlot_use_map_zenith_down, i32 -1, ptr @.str.168, i32 3, ptr @.str.169, ptr @.str.170, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldTextureSlot_texture_coords_get, ptr @WorldTextureSlot_texture_coords_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WorldTextureSlot_texture_coords_items, i32 7, i32 128 }, align 8
@.str.165 = private unnamed_addr constant [20 x i8] c"use_map_zenith_down\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"Zenith Down\00", align 1
@.str.167 = private unnamed_addr constant [37 x i8] c"Affect the color of the zenith below\00", align 1
@rna_WorldTextureSlot_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_blend_factor, ptr @rna_WorldTextureSlot_texture_coords, i32 -1, ptr @.str.171, i32 8388609, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WorldTextureSlot_object_get, ptr @WorldTextureSlot_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.168 = private unnamed_addr constant [15 x i8] c"texture_coords\00", align 1
@.str.169 = private unnamed_addr constant [20 x i8] c"Texture Coordinates\00", align 1
@.str.170 = private unnamed_addr constant [64 x i8] c"Texture coordinates used to map the texture onto the background\00", align 1
@rna_WorldTextureSlot_texture_coords_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 128, ptr @.str.228, i32 0, ptr @.str.229, ptr @.str.230 }, %struct.EnumPropertyItem { i32 8, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.233 }, %struct.EnumPropertyItem { i32 64, ptr @.str.234, i32 0, ptr @.str.235, ptr @.str.236 }, %struct.EnumPropertyItem { i32 256, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.239 }, %struct.EnumPropertyItem { i32 2048, ptr @.str.240, i32 0, ptr @.str.241, ptr @.str.242 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.245 }, %struct.EnumPropertyItem { i32 32, ptr @.str.246, i32 0, ptr @.str.172, ptr @.str.247 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WorldTextureSlot_blend_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_horizon_factor, ptr @rna_WorldTextureSlot_object, i32 -1, ptr @.str.174, i32 8195, ptr @.str.175, ptr @.str.176, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 308, i32 4, ptr null, ptr null }, ptr @WorldTextureSlot_blend_factor_get, ptr @WorldTextureSlot_blend_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.171 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.173 = private unnamed_addr constant [58 x i8] c"Object to use for mapping with Object texture coordinates\00", align 1
@rna_WorldTextureSlot_horizon_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_zenith_up_factor, ptr @rna_WorldTextureSlot_blend_factor, i32 -1, ptr @.str.177, i32 8195, ptr @.str.178, ptr @.str.179, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 164, i32 4, ptr null, ptr null }, ptr @WorldTextureSlot_horizon_factor_get, ptr @WorldTextureSlot_horizon_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.174 = private unnamed_addr constant [13 x i8] c"blend_factor\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"Blend Factor\00", align 1
@.str.176 = private unnamed_addr constant [59 x i8] c"Amount texture affects color progression of the background\00", align 1
@rna_WorldTextureSlot_zenith_up_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WorldTextureSlot_zenith_down_factor, ptr @rna_WorldTextureSlot_horizon_factor, i32 -1, ptr @.str.180, i32 8195, ptr @.str.181, ptr @.str.182, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @WorldTextureSlot_zenith_up_factor_get, ptr @WorldTextureSlot_zenith_up_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.177 = private unnamed_addr constant [15 x i8] c"horizon_factor\00", align 1
@.str.178 = private unnamed_addr constant [15 x i8] c"Horizon Factor\00", align 1
@.str.179 = private unnamed_addr constant [44 x i8] c"Amount texture affects color of the horizon\00", align 1
@rna_WorldTextureSlot_zenith_down_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WorldTextureSlot_zenith_up_factor, i32 -1, ptr @.str.183, i32 8195, ptr @.str.184, ptr @.str.185, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_World_update, i32 0, ptr null, ptr null, i32 304, i32 4, ptr null, ptr null }, ptr @WorldTextureSlot_zenith_down_factor_get, ptr @WorldTextureSlot_zenith_down_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.180 = private unnamed_addr constant [17 x i8] c"zenith_up_factor\00", align 1
@.str.181 = private unnamed_addr constant [17 x i8] c"Zenith Up Factor\00", align 1
@.str.182 = private unnamed_addr constant [49 x i8] c"Amount texture affects color of the zenith above\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"zenith_down_factor\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"Zenith Down Factor\00", align 1
@.str.185 = private unnamed_addr constant [49 x i8] c"Amount texture affects color of the zenith below\00", align 1
@RNA_MovieClip = external global %struct.StructRNA, align 8
@.str.186 = private unnamed_addr constant [17 x i8] c"WorldTextureSlot\00", align 1
@.str.187 = private unnamed_addr constant [19 x i8] c"World Texture Slot\00", align 1
@.str.188 = private unnamed_addr constant [47 x i8] c"Texture slot for textures in a World datablock\00", align 1
@rna_TextureSlot_name = external global %struct.StringPropertyRNA, align 8
@rna_TextureSlot_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_TextureSlot = external global %struct.StructRNA, align 8
@.str.189 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.191 = private unnamed_addr constant [70 x i8] c"Multiply direct lighting with ambient occlusion, darkening the result\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.194 = private unnamed_addr constant [21 x i8] c"Add light and shadow\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"PLAIN\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.197 = private unnamed_addr constant [30 x i8] c"Plain diffuse energy (white.)\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"SKY_COLOR\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"Sky Color\00", align 1
@.str.200 = private unnamed_addr constant [48 x i8] c"Use horizon and zenith color for diffuse energy\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"SKY_TEXTURE\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c"Sky Texture\00", align 1
@.str.203 = private unnamed_addr constant [48 x i8] c"Does full Sky texture render for diffuse energy\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"RAYTRACE\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"Raytrace\00", align 1
@.str.206 = private unnamed_addr constant [56 x i8] c"Accurate, but slow when noise-free results are required\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"APPROXIMATE\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"Approximate\00", align 1
@.str.209 = private unnamed_addr constant [41 x i8] c"Inaccurate, but faster and without noise\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"CONSTANT_JITTERED\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"Constant Jittered\00", align 1
@.str.212 = private unnamed_addr constant [33 x i8] c"Fastest and gives the most noise\00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"ADAPTIVE_QMC\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"Adaptive QMC\00", align 1
@.str.215 = private unnamed_addr constant [28 x i8] c"Fast in high-contrast areas\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"CONSTANT_QMC\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"Constant QMC\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"Best quality\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"QUADRATIC\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"Quadratic\00", align 1
@.str.221 = private unnamed_addr constant [26 x i8] c"Use quadratic progression\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.224 = private unnamed_addr constant [23 x i8] c"Use linear progression\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"INVERSE_QUADRATIC\00", align 1
@.str.226 = private unnamed_addr constant [18 x i8] c"Inverse Quadratic\00", align 1
@.str.227 = private unnamed_addr constant [34 x i8] c"Use inverse quadratic progression\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@.str.230 = private unnamed_addr constant [44 x i8] c"Use view vector for the texture coordinates\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.233 = private unnamed_addr constant [67 x i8] c"Use global coordinates for the texture coordinates (interior mist)\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"ANGMAP\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"AngMap\00", align 1
@.str.236 = private unnamed_addr constant [68 x i8] c"Use 360 degree angular coordinates, e.g. for spherical light probes\00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c"SPHERE\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.239 = private unnamed_addr constant [61 x i8] c"For 360 degree panorama sky, spherical mapped, only top half\00", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"EQUIRECT\00", align 1
@.str.241 = private unnamed_addr constant [16 x i8] c"Equirectangular\00", align 1
@.str.242 = private unnamed_addr constant [53 x i8] c"For 360 degree panorama sky, equirectangular mapping\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"TUBE\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"Tube\00", align 1
@.str.245 = private unnamed_addr constant [63 x i8] c"For 360 degree panorama sky, cylindrical mapped, only top half\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.247 = private unnamed_addr constant [56 x i8] c"Use linked object's coordinates for texture coordinates\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_texture_slots_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_World_texture_slots, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_World_mtex_begin(ptr noundef %0, ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @World_texture_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_World_mtex_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !51 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 70
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 18, i8 noundef zeroext 0, ptr noundef null) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @World_texture_slots_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !52 {
  %3 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_WorldTextureSlot, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_texture_slots_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @World_texture_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_texture_slots_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_active_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_World_active_texture_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_World_active_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @give_current_world_texture(ptr noundef %4) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_active_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_World_active_texture_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_World_active_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @set_current_world_texture(ptr noundef %4, ptr noundef %6) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @World_active_texture_index_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !55
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_active_texture_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 17)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 4
  store i16 %7, ptr %8, align 4, !tbaa !55
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_horizon_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !58

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_horizon_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !56
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !60

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_zenith_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 9
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !61
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !62

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_zenith_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 9
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !61
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !63

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_ambient_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 12
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !64
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !65

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_ambient_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 12
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !64
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !66

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @World_exposure_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !67
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_exposure_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @World_color_range_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !68
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_color_range_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3FC99999A0000000
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0x3FC99999A0000000, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @World_use_sky_blend_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 22
  %5 = load i16, ptr %4, align 8, !tbaa !69
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_use_sky_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 22
  %7 = load i16, ptr %6, align 8, !tbaa !69
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @World_use_sky_paper_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 22
  %5 = load i16, ptr %4, align 8, !tbaa !69
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_use_sky_paper_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 22
  %7 = load i16, ptr %6, align 8, !tbaa !69
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @World_use_sky_real_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 22
  %5 = load i16, ptr %4, align 8, !tbaa !69
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_use_sky_real_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 22
  %7 = load i16, ptr %6, align 8, !tbaa !69
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_light_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_World_lighting_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_World_lighting_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !70 {
  %3 = load ptr, ptr %1, align 8, !tbaa !71
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_WorldLighting, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_mist_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_World_mist_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_World_mist_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !72 {
  %3 = load ptr, ptr %1, align 8, !tbaa !71
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_WorldMistSettings, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @World_node_tree_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 75
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NodeTree, ptr noundef %6) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @World_use_nodes_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 72
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @World_use_nodes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 72
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlots_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_WorldTextureSlots_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @WorldTextureSlots_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WorldTextureSlots_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !75 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlots_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @WorldTextureSlots_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlots_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WorldTextureSlots_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlots_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldLighting_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_WorldLighting_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @WorldLighting_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WorldLighting_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !76 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldLighting_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @WorldLighting_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldLighting_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WorldLighting_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldLighting_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_use_ambient_occlusion_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_use_ambient_occlusion_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 23
  %7 = load i16, ptr %6, align 2, !tbaa !77
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_ao_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 48
  %5 = load float, ptr %4, align 8, !tbaa !78
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_ao_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x41E0000000000000
  %7 = select i1 %6, float 0x41E0000000000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 48
  store float %8, ptr %9, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_ao_blend_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 52
  %5 = load i16, ptr %4, align 4, !tbaa !79
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_ao_blend_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 52
  store i16 %5, ptr %6, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_use_environment_light_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_use_environment_light_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 23
  %7 = load i16, ptr %6, align 2, !tbaa !77
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_environment_energy_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 59
  %5 = load float, ptr %4, align 4, !tbaa !80
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_environment_energy_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 59
  store float %1, ptr %5, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_environment_color_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 53
  %5 = load i16, ptr %4, align 2, !tbaa !81
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_environment_color_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 53
  store i16 %5, ptr %6, align 2, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_use_indirect_light_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_use_indirect_light_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 23
  %7 = load i16, ptr %6, align 2, !tbaa !77
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_indirect_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 58
  %5 = load float, ptr %4, align 8, !tbaa !82
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_indirect_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x41E0000000000000
  %7 = select i1 %6, float 0x41E0000000000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 58
  store float %8, ptr %9, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_indirect_bounces_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 61
  %5 = load i16, ptr %4, align 4, !tbaa !83
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_indirect_bounces_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 61
  store i16 %7, ptr %8, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_gather_method_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 64
  %5 = load i16, ptr %4, align 2, !tbaa !84
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_gather_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 64
  store i16 %5, ptr %6, align 2, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_passes_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 65
  %5 = load i16, ptr %4, align 4, !tbaa !85
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_passes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 65
  store i16 %7, ptr %8, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_distance_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 8, !tbaa !86
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 46
  store float %1, ptr %5, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_falloff_strength_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 47
  %5 = load float, ptr %4, align 4, !tbaa !87
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_falloff_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 47
  store float %1, ptr %5, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_bias_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 49
  %5 = load float, ptr %4, align 4, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e-01
  %7 = select i1 %6, float 5.000000e-01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 49
  store float %8, ptr %9, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_threshold_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 54
  %5 = load float, ptr %4, align 8, !tbaa !89
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 54
  store float %8, ptr %9, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_adapt_to_speed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 55
  %5 = load float, ptr %4, align 4, !tbaa !90
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_adapt_to_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 55
  store float %8, ptr %9, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_error_threshold_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 56
  %5 = load float, ptr %4, align 8, !tbaa !91
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_error_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F1A36E2E0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F1A36E2E0000000, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 56
  store float %8, ptr %9, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldLighting_correction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 57
  %5 = load float, ptr %4, align 4, !tbaa !92
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_correction_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 57
  store float %8, ptr %9, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_use_falloff_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 50
  %5 = load i16, ptr %4, align 8, !tbaa !93
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_use_falloff_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 50
  %7 = load i16, ptr %6, align 8, !tbaa !93
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_use_cache_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 50
  %5 = load i16, ptr %4, align 8, !tbaa !93
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_use_cache_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 50
  %7 = load i16, ptr %6, align 8, !tbaa !93
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_samples_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 51
  %5 = load i16, ptr %4, align 2, !tbaa !94
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 128)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 51
  store i16 %7, ptr %8, align 2, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldLighting_sample_method_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 63
  %5 = load i16, ptr %4, align 8, !tbaa !95
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldLighting_sample_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 63
  store i16 %5, ptr %6, align 8, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldMistSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_WorldMistSettings_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @WorldMistSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WorldMistSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !96 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldMistSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @WorldMistSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldMistSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WorldMistSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldMistSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldMistSettings_use_mist_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldMistSettings_use_mist_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 23
  %7 = load i16, ptr %6, align 2, !tbaa !77
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldMistSettings_intensity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 8, !tbaa !97
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldMistSettings_intensity_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 30
  store float %8, ptr %9, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldMistSettings_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 31
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldMistSettings_start_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 31
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldMistSettings_depth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 32
  %5 = load float, ptr %4, align 8, !tbaa !99
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldMistSettings_depth_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 32
  store float %8, ptr %9, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldMistSettings_height_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 33
  %5 = load float, ptr %4, align 4, !tbaa !100
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldMistSettings_height_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 33
  store float %8, ptr %9, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldMistSettings_falloff_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !101
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldMistSettings_falloff_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 5
  store i16 %5, ptr %6, align 2, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldTextureSlot_use_map_blend_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !102
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_use_map_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !102
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldTextureSlot_use_map_horizon_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !102
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_use_map_horizon_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !102
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldTextureSlot_use_map_zenith_up_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !102
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_use_map_zenith_up_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !102
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldTextureSlot_use_map_zenith_down_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !102
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_use_map_zenith_down_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !102
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WorldTextureSlot_texture_coords_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i16, ptr %3, align 8, !tbaa !104
  %5 = sext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_texture_coords_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  store i16 %5, ptr %4, align 8, !tbaa !104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlot_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlot_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !105
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldTextureSlot_blend_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 64
  %5 = load float, ptr %4, align 4, !tbaa !106
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_blend_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 64
  store float %1, ptr %5, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldTextureSlot_horizon_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 28
  %5 = load float, ptr %4, align 4, !tbaa !107
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_horizon_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 28
  store float %1, ptr %5, align 4, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldTextureSlot_zenith_up_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 62
  %5 = load float, ptr %4, align 4, !tbaa !108
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_zenith_up_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 62
  store float %1, ptr %5, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WorldTextureSlot_zenith_down_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 63
  %5 = load float, ptr %4, align 8, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WorldTextureSlot_zenith_down_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 63
  store float %1, ptr %5, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WorldTextureSlots_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @rna_mtex_texture_slots_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @rna_mtex_texture_slots_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlots_add_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !71
  %6 = load ptr, ptr %3, align 8, !tbaa !110
  %7 = tail call ptr @rna_mtex_texture_slots_add(ptr noundef %5, ptr noundef %0, ptr noundef %1) #11
  store ptr %7, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WorldTextureSlots_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @rna_mtex_texture_slots_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @rna_mtex_texture_slots_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlots_create_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !71
  %6 = load ptr, ptr %3, align 8, !tbaa !110
  %7 = load i32, ptr %6, align 4, !tbaa !112
  %8 = getelementptr inbounds i8, ptr %6, i64 4
  %9 = tail call ptr @rna_mtex_texture_slots_create(ptr noundef %5, ptr noundef %0, ptr noundef %1, i32 noundef %7) #11
  store ptr %9, ptr %8, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlots_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @rna_mtex_texture_slots_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_mtex_texture_slots_clear(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WorldTextureSlots_clear_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !71
  %6 = load ptr, ptr %3, align 8, !tbaa !110
  %7 = load i32, ptr %6, align 4, !tbaa !112
  tail call void @rna_mtex_texture_slots_clear(ptr noundef %5, ptr noundef %0, ptr noundef %1, i32 noundef %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_World_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !113 {
  %4 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #11
  tail call void @WM_main_add_notifier(i32 noundef 218103808, ptr noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_World_use_nodes_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !114 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 72
  %6 = load i16, ptr %5, align 2, !tbaa !74
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 75
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_node_shader_default(ptr noundef %0, ptr noundef nonnull %4) #11
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  tail call void @rna_World_update(ptr poison, ptr poison, ptr noundef nonnull %1) #12
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #2

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_World_draw_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !115 {
  %4 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #11
  tail call void @WM_main_add_notifier(i32 noundef 221052928, ptr noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_World_draw_mist_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !116 {
  %4 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #11
  tail call void @WM_main_add_notifier(i32 noundef 221052928, ptr noundef %4) #11
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef null) #11
  ret void
}

; Function Attrs: optsize
declare ptr @rna_TextureSlot_path(ptr noundef) #2

; Function Attrs: optsize
declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rna_iterator_array_dereference_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_world_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_current_world_texture(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 120}
!41 = !{!"World", !42, i64 0, !37, i64 120, !43, i64 128, !43, i64 130, !43, i64 132, !43, i64 134, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !43, i64 200, !43, i64 202, !43, i64 204, !43, i64 206, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !43, i64 264, !43, i64 266, !43, i64 268, !43, i64 270, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !43, i64 288, !43, i64 290, !43, i64 292, !43, i64 294, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !43, i64 324, !43, i64 326, !43, i64 328, !43, i64 330, !43, i64 332, !43, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !43, i64 504, !43, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"float", !38, i64 0}
!46 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!47 = !{!37, !37, i64 0}
!48 = !{!49, !37, i64 48}
!49 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!50 = !{!49, !44, i64 128}
!51 = !{!"rna_world_gen.c:rna_World_mtex_begin"}
!52 = !{!"rna_world_gen.c:World_texture_slots_get"}
!53 = !{!"rna_world_gen.c:rna_World_active_texture_get"}
!54 = !{!"rna_world_gen.c:rna_World_active_texture_set"}
!55 = !{!41, !43, i64 132}
!56 = !{!41, !45, i64 136}
!57 = !{!45, !45, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !59}
!61 = !{!41, !45, i64 148}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = !{!41, !45, i64 160}
!65 = distinct !{!65, !59}
!66 = distinct !{!66, !59}
!67 = !{!41, !45, i64 176}
!68 = !{!41, !45, i64 180}
!69 = !{!41, !43, i64 200}
!70 = !{!"rna_world_gen.c:rna_World_lighting_get"}
!71 = !{!35, !37, i64 0}
!72 = !{!"rna_world_gen.c:rna_World_mist_get"}
!73 = !{!41, !37, i64 520}
!74 = !{!41, !43, i64 506}
!75 = !{!"rna_world_gen.c:WorldTextureSlots_rna_properties_get"}
!76 = !{!"rna_world_gen.c:WorldLighting_rna_properties_get"}
!77 = !{!41, !43, i64 202}
!78 = !{!41, !45, i64 280}
!79 = !{!41, !43, i64 292}
!80 = !{!41, !45, i64 316}
!81 = !{!41, !43, i64 294}
!82 = !{!41, !45, i64 312}
!83 = !{!41, !43, i64 324}
!84 = !{!41, !43, i64 330}
!85 = !{!41, !43, i64 332}
!86 = !{!41, !45, i64 272}
!87 = !{!41, !45, i64 276}
!88 = !{!41, !45, i64 284}
!89 = !{!41, !45, i64 296}
!90 = !{!41, !45, i64 300}
!91 = !{!41, !45, i64 304}
!92 = !{!41, !45, i64 308}
!93 = !{!41, !43, i64 288}
!94 = !{!41, !43, i64 290}
!95 = !{!41, !43, i64 328}
!96 = !{!"rna_world_gen.c:WorldMistSettings_rna_properties_get"}
!97 = !{!41, !45, i64 216}
!98 = !{!41, !45, i64 220}
!99 = !{!41, !45, i64 224}
!100 = !{!41, !45, i64 228}
!101 = !{!41, !43, i64 134}
!102 = !{!103, !43, i64 2}
!103 = !{!"MTex", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !45, i64 116, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !43, i64 128, !43, i64 130, !38, i64 132, !38, i64 133, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308}
!104 = !{!103, !43, i64 0}
!105 = !{!103, !37, i64 8}
!106 = !{!103, !45, i64 308}
!107 = !{!103, !45, i64 164}
!108 = !{!103, !45, i64 300}
!109 = !{!103, !45, i64 304}
!110 = !{!111, !37, i64 0}
!111 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!112 = !{!44, !44, i64 0}
!113 = !{!"rna_world_gen.c:rna_World_update"}
!114 = !{!"rna_world_gen.c:rna_World_use_nodes_update"}
!115 = !{!"rna_world_gen.c:rna_World_draw_update"}
!116 = !{!"rna_world_gen.c:rna_World_draw_mist_update"}
