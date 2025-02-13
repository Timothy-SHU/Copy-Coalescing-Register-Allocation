; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_lamp_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_lamp_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@RNA_NodeTree = external global %struct.StructRNA, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_Lamp_texture_slots = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_active_texture, ptr @rna_Lamp_animation_data, i32 -1, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.37, i32 0, ptr @.str.7, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_LampTextureSlots, ptr null }, ptr @Lamp_texture_slots_begin, ptr @Lamp_texture_slots_next, ptr @Lamp_texture_slots_end, ptr @Lamp_texture_slots_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_LampTextureSlot }, align 8
@rna_LampTextureSlots_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_LampTextureSlots_rna_type, ptr null, i32 -1, ptr @.str.45, i32 128, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.7, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampTextureSlots_rna_properties_begin, ptr @LampTextureSlots_rna_properties_next, ptr @LampTextureSlots_rna_properties_end, ptr @LampTextureSlots_rna_properties_get, ptr null, ptr null, ptr @LampTextureSlots_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_CurveMapping = external global %struct.StructRNA, align 8
@rna_LampSkySettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_rna_type, ptr null, i32 -1, ptr @.str.45, i32 128, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.7, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampSkySettings_rna_properties_begin, ptr @LampSkySettings_rna_properties_next, ptr @LampSkySettings_rna_properties_end, ptr @LampSkySettings_rna_properties_get, ptr null, ptr null, ptr @LampSkySettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@rna_Lamp_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_energy, ptr @rna_Lamp_type, i32 -1, ptr @.str.4, i32 8195, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 176, i32 4, ptr null, ptr null }, ptr @Lamp_distance_get, ptr @Lamp_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 0x41E0000000000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Type of Lamp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@rna_Lamp_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.280, i32 0, ptr @.str.281, ptr @.str.282 }, %struct.EnumPropertyItem { i32 1, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.285 }, %struct.EnumPropertyItem { i32 2, ptr @.str.286, i32 0, ptr @.str.287, ptr @.str.288 }, %struct.EnumPropertyItem { i32 3, ptr @.str.289, i32 0, ptr @.str.290, ptr @.str.291 }, %struct.EnumPropertyItem { i32 4, ptr @.str.292, i32 0, ptr @.str.293, ptr @.str.294 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Lamp_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_distance, ptr null, i32 -1, ptr @.str, i32 3, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_type_get, ptr @Lamp_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Lamp_type_items, i32 5, i32 0 }, align 8
@rna_Lamp_energy = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_color, ptr @rna_Lamp_distance, i32 -1, ptr @.str.8, i32 8195, ptr @.str.9, ptr @.str.10, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 172, i32 4, ptr null, ptr null }, ptr @Lamp_energy_get, ptr @Lamp_energy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"Falloff distance - the light is at half the original intensity at this point\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Lamp_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_use_own_layer, ptr @rna_Lamp_energy, i32 -1, ptr @.str.11, i32 8195, ptr @.str.12, ptr @.str.13, i32 0, ptr @.str.7, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Lamp_color_get, ptr @Lamp_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Lamp_color_default }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"energy\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Energy\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Amount of light that the lamp emits\00", align 1
@rna_Lamp_use_own_layer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_use_negative, ptr @rna_Lamp_color, i32 -1, ptr @.str.14, i32 3, ptr @.str.15, ptr @.str.16, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_use_own_layer_get, ptr @Lamp_use_own_layer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Light color\00", align 1
@rna_Lamp_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_Lamp_use_negative = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_use_specular, ptr @rna_Lamp_use_own_layer, i32 -1, ptr @.str.17, i32 3, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_use_negative_get, ptr @Lamp_use_negative_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"use_own_layer\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"Illuminate objects only on the same layers the lamp is on\00", align 1
@rna_Lamp_use_specular = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_use_diffuse, ptr @rna_Lamp_use_negative, i32 -1, ptr @.str.20, i32 3, ptr @.str.21, ptr @.str.22, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_use_specular_get, ptr @Lamp_use_specular_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"use_negative\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Negative\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Cast negative light\00", align 1
@rna_Lamp_use_diffuse = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_node_tree, ptr @rna_Lamp_use_specular, i32 -1, ptr @.str.23, i32 3, ptr @.str.24, ptr @.str.25, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_use_diffuse_get, ptr @Lamp_use_diffuse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"use_specular\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Specular\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Create specular highlights\00", align 1
@rna_Lamp_node_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_use_nodes, ptr @rna_Lamp_use_diffuse, i32 -1, ptr @.str.26, i32 8388672, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_node_tree_get, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@.str.23 = private unnamed_addr constant [12 x i8] c"use_diffuse\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Diffuse\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Do diffuse shading\00", align 1
@rna_Lamp_use_nodes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_animation_data, ptr @rna_Lamp_node_tree, i32 -1, ptr @.str.29, i32 4194305, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_use_nodes_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_use_nodes_get, ptr @Lamp_use_nodes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.26 = private unnamed_addr constant [10 x i8] c"node_tree\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Node Tree\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Node tree for node based lamps\00", align 1
@rna_Lamp_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_texture_slots, ptr @rna_Lamp_use_nodes, i32 -1, ptr @.str.32, i32 8388608, ptr @.str.33, ptr @.str.34, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.29 = private unnamed_addr constant [10 x i8] c"use_nodes\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Use Nodes\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Use shader nodes to render the lamp\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@rna_Lamp_active_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Lamp_active_texture_index, ptr @rna_Lamp_texture_slots, i32 -1, ptr @.str.38, i32 8388609, ptr @.str.39, ptr @.str.40, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 102760448, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lamp_active_texture_get, ptr @Lamp_active_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.35 = private unnamed_addr constant [14 x i8] c"texture_slots\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Textures\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"Texture slots defining the mapping and influence of textures\00", align 1
@RNA_LampTextureSlots = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PointLamp, ptr @RNA_Lamp, ptr null, %struct.ListBase { ptr @rna_LampTextureSlots_rna_properties, ptr @rna_LampTextureSlots_rna_type } }, ptr @.str.61, ptr null, ptr null, i32 4, ptr @.str.62, ptr @.str.63, ptr @.str.7, i32 17, ptr null, ptr @rna_LampTextureSlots_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_LampTextureSlots_add_func, ptr @rna_LampTextureSlots_clear_func } }, align 8
@RNA_LampTextureSlot = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Lattice, ptr @RNA_HemiLamp, ptr null, %struct.ListBase { ptr @rna_LampTextureSlot_texture_coords, ptr @rna_LampTextureSlot_shadow_factor } }, ptr @.str.277, ptr null, ptr null, i32 4, ptr @.str.278, ptr @.str.279, ptr @.str.7, i32 166, ptr @rna_TextureSlot_name, ptr @rna_TextureSlot_rna_properties, ptr @RNA_TextureSlot, ptr null, ptr null, ptr @rna_TextureSlot_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Lamp_active_texture_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Lamp_active_texture, i32 -1, ptr @.str.41, i32 8195, ptr @.str.42, ptr @.str.43, i32 0, ptr @.str.7, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 102760448, ptr null, ptr null, i32 280, i32 1, ptr null, ptr null }, ptr @Lamp_active_texture_index_get, ptr @Lamp_active_texture_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 17, i32 0, i32 17, i32 1, i32 0, ptr null }, align 8
@.str.38 = private unnamed_addr constant [15 x i8] c"active_texture\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Active Texture\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Active texture slot being displayed\00", align 1
@RNA_Texture = external global %struct.StructRNA, align 8
@.str.41 = private unnamed_addr constant [21 x i8] c"active_texture_index\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Active Texture Index\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"Index of active texture slot\00", align 1
@RNA_ShapeKeyBezierPoint = external global %struct.StructRNA, align 8
@.str.44 = private unnamed_addr constant [36 x i8] c"Lamp datablock for lighting a scene\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Lamp = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LampTextureSlots, ptr @RNA_ShapeKeyBezierPoint, ptr null, %struct.ListBase { ptr @rna_Lamp_type, ptr @rna_Lamp_active_texture_index } }, ptr @.str.3, ptr null, ptr null, i32 7, ptr @.str.3, ptr @.str.44, ptr @.str.7, i32 164, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_Lamp_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@rna_LampTextureSlots_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LampTextureSlots_rna_properties, i32 -1, ptr @.str.48, i32 8912896, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampTextureSlots_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.45 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.48 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"mtex\00", align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"The newly initialized mtex\00", align 1
@rna_LampTextureSlots_add_mtex = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.51, i32 8388616, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_LampTextureSlot }, align 8
@rna_LampTextureSlots_create_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_LampTextureSlots_clear_func, ptr @rna_LampTextureSlots_add_func, ptr null, %struct.ListBase { ptr @rna_LampTextureSlots_create_index, ptr @rna_LampTextureSlots_create_mtex } }, ptr @.str.58, i32 2073, ptr @.str.58, ptr @LampTextureSlots_create_call, ptr @rna_LampTextureSlots_create_mtex }, align 8
@.str.54 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@rna_LampTextureSlots_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_LampTextureSlots_create_func, ptr null, ptr null, %struct.ListBase { ptr @rna_LampTextureSlots_add_mtex, ptr @rna_LampTextureSlots_add_mtex } }, ptr @.str.54, i32 2073, ptr @.str.54, ptr @LampTextureSlots_add_call, ptr @rna_LampTextureSlots_add_mtex }, align 8
@rna_LampTextureSlots_create_mtex = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LampTextureSlots_create_index, i32 -1, ptr @.str.51, i32 8388616, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_LampTextureSlot }, align 8
@.str.55 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"Slot index to initialize\00", align 1
@rna_LampTextureSlots_create_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_LampTextureSlots_create_mtex, ptr null, i32 -1, ptr @.str.55, i32 7, ptr @.str.56, ptr @.str.57, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_LampTextureSlots_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_LampTextureSlots_create_func, ptr null, %struct.ListBase { ptr @rna_LampTextureSlots_clear_index, ptr @rna_LampTextureSlots_clear_index } }, ptr @.str.60, i32 2073, ptr @.str.60, ptr @LampTextureSlots_clear_call, ptr null }, align 8
@.str.58 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"Slot index to clear\00", align 1
@rna_LampTextureSlots_clear_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.55, i32 7, ptr @.str.56, ptr @.str.59, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.60 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@RNA_PointLamp = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AreaLamp, ptr @RNA_LampTextureSlots, ptr null, %struct.ListBase { ptr @rna_PointLamp_falloff_type, ptr @rna_PointLamp_use_shadow_layer } }, ptr @.str.144, ptr null, ptr null, i32 7, ptr @.str.145, ptr @.str.146, ptr @.str.7, i32 298, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_Lamp, ptr null, ptr @rna_Lamp_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.61 = private unnamed_addr constant [17 x i8] c"LampTextureSlots\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"Texture Slots\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"Collection of texture slots\00", align 1
@rna_PointLamp_falloff_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_use_sphere, ptr @rna_PointLamp_falloff_type, i32 -1, ptr @.str.67, i32 8388608, ptr @.str.68, ptr @.str.69, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_falloff_curve_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@.str.64 = private unnamed_addr constant [13 x i8] c"falloff_type\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"Falloff Type\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"Intensity Decay with distance\00", align 1
@rna_PointLamp_falloff_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.295, i32 0, ptr @.str.296, ptr @.str.52 }, %struct.EnumPropertyItem { i32 1, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.52 }, %struct.EnumPropertyItem { i32 2, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.52 }, %struct.EnumPropertyItem { i32 3, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.52 }, %struct.EnumPropertyItem { i32 4, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PointLamp_falloff_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_falloff_curve, ptr null, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_falloff_type_get, ptr @PointLamp_falloff_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PointLamp_falloff_type_items, i32 5, i32 0 }, align 8
@rna_PointLamp_use_sphere = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_linear_attenuation, ptr @rna_PointLamp_falloff_curve, i32 -1, ptr @.str.70, i32 3, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_use_sphere_get, ptr @PointLamp_use_sphere_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.67 = private unnamed_addr constant [14 x i8] c"falloff_curve\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"Falloff Curve\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"Custom Lamp Falloff Curve\00", align 1
@rna_PointLamp_linear_attenuation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_quadratic_attenuation, ptr @rna_PointLamp_use_sphere, i32 -1, ptr @.str.73, i32 8195, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr @PointLamp_linear_attenuation_get, ptr @PointLamp_linear_attenuation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.70 = private unnamed_addr constant [11 x i8] c"use_sphere\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"Set light intensity to zero beyond lamp distance\00", align 1
@rna_PointLamp_quadratic_attenuation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_use_shadow, ptr @rna_PointLamp_linear_attenuation, i32 -1, ptr @.str.76, i32 8195, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 196, i32 4, ptr null, ptr null }, ptr @PointLamp_quadratic_attenuation_get, ptr @PointLamp_quadratic_attenuation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.73 = private unnamed_addr constant [19 x i8] c"linear_attenuation\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Linear Attenuation\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"Linear distance attenuation\00", align 1
@rna_PointLamp_use_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_method, ptr @rna_PointLamp_quadratic_attenuation, i32 -1, ptr @.str.79, i32 3, ptr @.str.79, ptr @.str.52, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_use_shadow_get, ptr @PointLamp_use_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.76 = private unnamed_addr constant [22 x i8] c"quadratic_attenuation\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"Quadratic Attenuation\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"Quadratic distance attenuation\00", align 1
@rna_PointLamp_shadow_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_buffer_size, ptr @rna_PointLamp_use_shadow, i32 -1, ptr @.str.80, i32 3, ptr @.str.80, ptr @.str.52, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_shadow_method_get, ptr @PointLamp_shadow_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PointLamp_shadow_method_items, i32 2, i32 0 }, align 8
@.str.79 = private unnamed_addr constant [11 x i8] c"use_shadow\00", align 1
@rna_PointLamp_shadow_buffer_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_filter_type, ptr @rna_PointLamp_shadow_method, i32 -1, ptr @.str.81, i32 3, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_shadow_buffer_size_get, ptr @PointLamp_shadow_buffer_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 128, i32 10240, i32 128, i32 10240, i32 1, i32 0, ptr null }, align 8
@.str.80 = private unnamed_addr constant [14 x i8] c"shadow_method\00", align 1
@rna_PointLamp_shadow_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.52 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.309 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PointLamp_shadow_filter_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_sample_buffers, ptr @rna_PointLamp_shadow_buffer_size, i32 -1, ptr @.str.84, i32 3, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_shadow_filter_type_get, ptr @PointLamp_shadow_filter_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PointLamp_shadow_filter_type_items, i32 3, i32 0 }, align 8
@.str.81 = private unnamed_addr constant [19 x i8] c"shadow_buffer_size\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"Shadow Buffer Size\00", align 1
@.str.83 = private unnamed_addr constant [88 x i8] c"Resolution of the shadow buffer, higher values give crisper shadows but use more memory\00", align 1
@rna_PointLamp_shadow_sample_buffers = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_buffer_clip_start, ptr @rna_PointLamp_shadow_filter_type, i32 -1, ptr @.str.87, i32 3, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_shadow_sample_buffers_get, ptr @PointLamp_shadow_sample_buffers_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PointLamp_shadow_sample_buffers_items, i32 3, i32 1 }, align 8
@.str.84 = private unnamed_addr constant [19 x i8] c"shadow_filter_type\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"Shadow Filter Type\00", align 1
@.str.86 = private unnamed_addr constant [39 x i8] c"Type of shadow filter (Buffer Shadows)\00", align 1
@rna_PointLamp_shadow_filter_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.310, i32 0, ptr @.str.311, ptr @.str.312 }, %struct.EnumPropertyItem { i32 1, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.315 }, %struct.EnumPropertyItem { i32 2, ptr @.str.316, i32 0, ptr @.str.317, ptr @.str.318 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PointLamp_shadow_buffer_clip_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_buffer_clip_end, ptr @rna_PointLamp_shadow_sample_buffers, i32 -1, ptr @.str.90, i32 8195, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 212, i32 4, ptr null, ptr null }, ptr @PointLamp_shadow_buffer_clip_start_get, ptr @PointLamp_shadow_buffer_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 9.999000e+03, float 0.000000e+00, float 9.999000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.87 = private unnamed_addr constant [22 x i8] c"shadow_sample_buffers\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"Shadow Sample Buffers\00", align 1
@.str.89 = private unnamed_addr constant [78 x i8] c"Number of shadow buffers to render for better AA, this increases memory usage\00", align 1
@rna_PointLamp_shadow_sample_buffers_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.321 }, %struct.EnumPropertyItem { i32 4, ptr @.str.322, i32 0, ptr @.str.323, ptr @.str.324 }, %struct.EnumPropertyItem { i32 9, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.327 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PointLamp_shadow_buffer_clip_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_buffer_bias, ptr @rna_PointLamp_shadow_buffer_clip_start, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @PointLamp_shadow_buffer_clip_end_get, ptr @PointLamp_shadow_buffer_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 9.999000e+03, float 0.000000e+00, float 9.999000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.90 = private unnamed_addr constant [25 x i8] c"shadow_buffer_clip_start\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"Shadow Buffer Clip Start\00", align 1
@.str.92 = private unnamed_addr constant [69 x i8] c"Shadow map clip start, below which objects will not generate shadows\00", align 1
@rna_PointLamp_shadow_buffer_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_buffer_bleed_bias, ptr @rna_PointLamp_shadow_buffer_clip_end, i32 -1, ptr @.str.96, i32 8195, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @PointLamp_shadow_buffer_bias_get, ptr @PointLamp_shadow_buffer_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 5.000000e+00, float 0x3F50624DE0000000, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.93 = private unnamed_addr constant [23 x i8] c"shadow_buffer_clip_end\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"Shadow Buffer Clip End\00", align 1
@.str.95 = private unnamed_addr constant [68 x i8] c"Shadow map clip end, beyond which objects will not generate shadows\00", align 1
@rna_PointLamp_shadow_buffer_bleed_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_buffer_soft, ptr @rna_PointLamp_shadow_buffer_bias, i32 -1, ptr @.str.99, i32 8195, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 232, i32 4, ptr null, ptr null }, ptr @PointLamp_shadow_buffer_bleed_bias_get, ptr @PointLamp_shadow_buffer_bleed_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.96 = private unnamed_addr constant [19 x i8] c"shadow_buffer_bias\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"Shadow Buffer Bias\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"Shadow buffer sampling bias\00", align 1
@rna_PointLamp_shadow_buffer_soft = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_buffer_samples, ptr @rna_PointLamp_shadow_buffer_bleed_bias, i32 -1, ptr @.str.102, i32 8195, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 224, i32 4, ptr null, ptr null }, ptr @PointLamp_shadow_buffer_soft_get, ptr @PointLamp_shadow_buffer_soft_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.99 = private unnamed_addr constant [25 x i8] c"shadow_buffer_bleed_bias\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"Shadow Buffer Bleed Bias\00", align 1
@.str.101 = private unnamed_addr constant [54 x i8] c"Bias for reducing light-bleed on variance shadow maps\00", align 1
@rna_PointLamp_shadow_buffer_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_buffer_type, ptr @rna_PointLamp_shadow_buffer_soft, i32 -1, ptr @.str.105, i32 8195, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 242, i32 1, ptr null, ptr null }, ptr @PointLamp_shadow_buffer_samples_get, ptr @PointLamp_shadow_buffer_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 16, i32 1, i32 16, i32 1, i32 0, ptr null }, align 8
@.str.102 = private unnamed_addr constant [19 x i8] c"shadow_buffer_soft\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"Shadow Buffer Soft\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"Size of shadow buffer sampling area\00", align 1
@rna_PointLamp_shadow_buffer_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_ge_shadow_buffer_type, ptr @rna_PointLamp_shadow_buffer_samples, i32 -1, ptr @.str.108, i32 3, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_shadow_buffer_type_get, ptr @PointLamp_shadow_buffer_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PointLamp_shadow_buffer_type_items, i32 4, i32 0 }, align 8
@.str.105 = private unnamed_addr constant [22 x i8] c"shadow_buffer_samples\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"Samples\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"Number of shadow buffer samples\00", align 1
@rna_PointLamp_ge_shadow_buffer_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_use_auto_clip_start, ptr @rna_PointLamp_shadow_buffer_type, i32 -1, ptr @.str.111, i32 3, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_ge_shadow_buffer_type_get, ptr @PointLamp_ge_shadow_buffer_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PointLamp_ge_shadow_buffer_type_items, i32 2, i32 0 }, align 8
@.str.108 = private unnamed_addr constant [19 x i8] c"shadow_buffer_type\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"Shadow Buffer Type\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"Type of shadow buffer\00", align 1
@rna_PointLamp_shadow_buffer_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.328, i32 0, ptr @.str.329, ptr @.str.330 }, %struct.EnumPropertyItem { i32 2, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.333 }, %struct.EnumPropertyItem { i32 1, ptr @.str.334, i32 0, ptr @.str.335, ptr @.str.336 }, %struct.EnumPropertyItem { i32 3, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.339 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PointLamp_use_auto_clip_start = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_use_auto_clip_end, ptr @rna_PointLamp_ge_shadow_buffer_type, i32 -1, ptr @.str.114, i32 3, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_use_auto_clip_start_get, ptr @PointLamp_use_auto_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.111 = private unnamed_addr constant [22 x i8] c"ge_shadow_buffer_type\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"Shadow Map Type\00", align 1
@.str.113 = private unnamed_addr constant [34 x i8] c"The shadow mapping algorithm used\00", align 1
@rna_PointLamp_ge_shadow_buffer_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.340, i32 0, ptr @.str.341, ptr @.str.342 }, %struct.EnumPropertyItem { i32 1, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.345 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PointLamp_use_auto_clip_end = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_compression_threshold, ptr @rna_PointLamp_use_auto_clip_start, i32 -1, ptr @.str.117, i32 3, ptr @.str.118, ptr @.str.119, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_use_auto_clip_end_get, ptr @PointLamp_use_auto_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.114 = private unnamed_addr constant [20 x i8] c"use_auto_clip_start\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"Autoclip Start\00", align 1
@.str.116 = private unnamed_addr constant [67 x i8] c"Automatic calculation of clipping-start, based on visible vertices\00", align 1
@rna_PointLamp_compression_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_color, ptr @rna_PointLamp_use_auto_clip_end, i32 -1, ptr @.str.120, i32 8195, ptr @.str.121, ptr @.str.122, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 228, i32 4, ptr null, ptr null }, ptr @PointLamp_compression_threshold_get, ptr @PointLamp_compression_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.117 = private unnamed_addr constant [18 x i8] c"use_auto_clip_end\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"Autoclip End\00", align 1
@.str.119 = private unnamed_addr constant [65 x i8] c"Automatic calculation of clipping-end, based on visible vertices\00", align 1
@rna_PointLamp_shadow_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_use_only_shadow, ptr @rna_PointLamp_compression_threshold, i32 -1, ptr @.str.123, i32 8195, ptr @.str.124, ptr @.str.125, i32 0, ptr @.str.7, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PointLamp_shadow_color_get, ptr @PointLamp_shadow_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PointLamp_shadow_color_default }, align 8
@.str.120 = private unnamed_addr constant [22 x i8] c"compression_threshold\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"Compress\00", align 1
@.str.122 = private unnamed_addr constant [38 x i8] c"Deep shadow map compression threshold\00", align 1
@rna_PointLamp_use_only_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_ray_sample_method, ptr @rna_PointLamp_shadow_color, i32 -1, ptr @.str.126, i32 3, ptr @.str.127, ptr @.str.128, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_use_only_shadow_get, ptr @PointLamp_use_only_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.123 = private unnamed_addr constant [13 x i8] c"shadow_color\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"Shadow Color\00", align 1
@.str.125 = private unnamed_addr constant [34 x i8] c"Color of shadows cast by the lamp\00", align 1
@rna_PointLamp_shadow_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_PointLamp_shadow_ray_sample_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_ray_samples, ptr @rna_PointLamp_use_only_shadow, i32 -1, ptr @.str.129, i32 3, ptr @.str.130, ptr @.str.131, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_shadow_ray_sample_method_get, ptr @PointLamp_shadow_ray_sample_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PointLamp_shadow_ray_sample_method_items, i32 2, i32 1 }, align 8
@.str.126 = private unnamed_addr constant [16 x i8] c"use_only_shadow\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"Only Shadow\00", align 1
@.str.128 = private unnamed_addr constant [48 x i8] c"Cast shadows only, without illuminating objects\00", align 1
@rna_PointLamp_shadow_ray_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_adaptive_threshold, ptr @rna_PointLamp_shadow_ray_sample_method, i32 -1, ptr @.str.132, i32 8195, ptr @.str.133, ptr @.str.134, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 250, i32 1, ptr null, ptr null }, ptr @PointLamp_shadow_ray_samples_get, ptr @PointLamp_shadow_ray_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 64, i32 1, i32 0, ptr null }, align 8
@.str.129 = private unnamed_addr constant [25 x i8] c"shadow_ray_sample_method\00", align 1
@.str.130 = private unnamed_addr constant [27 x i8] c"Shadow Ray Sampling Method\00", align 1
@.str.131 = private unnamed_addr constant [101 x i8] c"Method for generating shadow samples: Adaptive QMC is fastest, Constant QMC is less noisy but slower\00", align 1
@rna_PointLamp_shadow_ray_sample_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.346, i32 0, ptr @.str.347, ptr @.str.52 }, %struct.EnumPropertyItem { i32 2, ptr @.str.348, i32 0, ptr @.str.349, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PointLamp_shadow_adaptive_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_shadow_soft_size, ptr @rna_PointLamp_shadow_ray_samples, i32 -1, ptr @.str.135, i32 8195, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 272, i32 4, ptr null, ptr null }, ptr @PointLamp_shadow_adaptive_threshold_get, ptr @PointLamp_shadow_adaptive_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.132 = private unnamed_addr constant [19 x i8] c"shadow_ray_samples\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"Shadow Ray Samples X\00", align 1
@.str.134 = private unnamed_addr constant [50 x i8] c"Number of samples taken extra (samples x samples)\00", align 1
@rna_PointLamp_shadow_soft_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PointLamp_use_shadow_layer, ptr @rna_PointLamp_shadow_adaptive_threshold, i32 -1, ptr @.str.138, i32 8195, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 260, i32 4, ptr null, ptr null }, ptr @PointLamp_shadow_soft_size_get, ptr @PointLamp_shadow_soft_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.135 = private unnamed_addr constant [26 x i8] c"shadow_adaptive_threshold\00", align 1
@.str.136 = private unnamed_addr constant [26 x i8] c"Shadow Adaptive Threshold\00", align 1
@.str.137 = private unnamed_addr constant [52 x i8] c"Threshold for Adaptive Sampling (Raytraced shadows)\00", align 1
@rna_PointLamp_use_shadow_layer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PointLamp_shadow_soft_size, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PointLamp_use_shadow_layer_get, ptr @PointLamp_use_shadow_layer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.138 = private unnamed_addr constant [17 x i8] c"shadow_soft_size\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"Shadow Soft Size\00", align 1
@.str.140 = private unnamed_addr constant [55 x i8] c"Light size for ray shadow sampling (Raytraced shadows)\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"use_shadow_layer\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"Shadow Layer\00", align 1
@.str.143 = private unnamed_addr constant [45 x i8] c"Objects on the same layers only cast shadows\00", align 1
@RNA_AreaLamp = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpotLamp, ptr @RNA_PointLamp, ptr null, %struct.ListBase { ptr @rna_AreaLamp_use_shadow, ptr @rna_AreaLamp_gamma } }, ptr @.str.172, ptr null, ptr null, i32 7, ptr @.str.173, ptr @.str.174, ptr @.str.7, i32 302, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_Lamp, ptr null, ptr @rna_Lamp_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.144 = private unnamed_addr constant [10 x i8] c"PointLamp\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"Point Lamp\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"Omnidirectional point lamp\00", align 1
@rna_AreaLamp_shadow_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_buffer_size, ptr @rna_AreaLamp_use_shadow, i32 -1, ptr @.str.80, i32 3, ptr @.str.80, ptr @.str.52, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_shadow_method_get, ptr @AreaLamp_shadow_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AreaLamp_shadow_method_items, i32 2, i32 0 }, align 8
@rna_AreaLamp_use_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_method, ptr null, i32 -1, ptr @.str.79, i32 3, ptr @.str.79, ptr @.str.52, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_use_shadow_get, ptr @AreaLamp_use_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_AreaLamp_shadow_buffer_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_filter_type, ptr @rna_AreaLamp_shadow_method, i32 -1, ptr @.str.81, i32 3, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_shadow_buffer_size_get, ptr @AreaLamp_shadow_buffer_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 128, i32 10240, i32 128, i32 10240, i32 1, i32 0, ptr null }, align 8
@rna_AreaLamp_shadow_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.52 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.309 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AreaLamp_shadow_filter_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_sample_buffers, ptr @rna_AreaLamp_shadow_buffer_size, i32 -1, ptr @.str.84, i32 3, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_shadow_filter_type_get, ptr @AreaLamp_shadow_filter_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AreaLamp_shadow_filter_type_items, i32 3, i32 0 }, align 8
@rna_AreaLamp_shadow_sample_buffers = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_buffer_clip_start, ptr @rna_AreaLamp_shadow_filter_type, i32 -1, ptr @.str.87, i32 3, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_shadow_sample_buffers_get, ptr @AreaLamp_shadow_sample_buffers_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AreaLamp_shadow_sample_buffers_items, i32 3, i32 1 }, align 8
@rna_AreaLamp_shadow_filter_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.310, i32 0, ptr @.str.311, ptr @.str.312 }, %struct.EnumPropertyItem { i32 1, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.315 }, %struct.EnumPropertyItem { i32 2, ptr @.str.316, i32 0, ptr @.str.317, ptr @.str.318 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AreaLamp_shadow_buffer_clip_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_buffer_clip_end, ptr @rna_AreaLamp_shadow_sample_buffers, i32 -1, ptr @.str.90, i32 8195, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 212, i32 4, ptr null, ptr null }, ptr @AreaLamp_shadow_buffer_clip_start_get, ptr @AreaLamp_shadow_buffer_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 9.999000e+03, float 0.000000e+00, float 9.999000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_AreaLamp_shadow_sample_buffers_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.321 }, %struct.EnumPropertyItem { i32 4, ptr @.str.322, i32 0, ptr @.str.323, ptr @.str.324 }, %struct.EnumPropertyItem { i32 9, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.327 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AreaLamp_shadow_buffer_clip_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_buffer_bias, ptr @rna_AreaLamp_shadow_buffer_clip_start, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @AreaLamp_shadow_buffer_clip_end_get, ptr @AreaLamp_shadow_buffer_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 9.999000e+03, float 0.000000e+00, float 9.999000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_AreaLamp_shadow_buffer_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_buffer_bleed_bias, ptr @rna_AreaLamp_shadow_buffer_clip_end, i32 -1, ptr @.str.96, i32 8195, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @AreaLamp_shadow_buffer_bias_get, ptr @AreaLamp_shadow_buffer_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 5.000000e+00, float 0x3F50624DE0000000, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_AreaLamp_shadow_buffer_bleed_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_buffer_soft, ptr @rna_AreaLamp_shadow_buffer_bias, i32 -1, ptr @.str.99, i32 8195, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 232, i32 4, ptr null, ptr null }, ptr @AreaLamp_shadow_buffer_bleed_bias_get, ptr @AreaLamp_shadow_buffer_bleed_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_AreaLamp_shadow_buffer_soft = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_buffer_samples, ptr @rna_AreaLamp_shadow_buffer_bleed_bias, i32 -1, ptr @.str.102, i32 8195, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 224, i32 4, ptr null, ptr null }, ptr @AreaLamp_shadow_buffer_soft_get, ptr @AreaLamp_shadow_buffer_soft_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_AreaLamp_shadow_buffer_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_buffer_type, ptr @rna_AreaLamp_shadow_buffer_soft, i32 -1, ptr @.str.105, i32 8195, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 242, i32 1, ptr null, ptr null }, ptr @AreaLamp_shadow_buffer_samples_get, ptr @AreaLamp_shadow_buffer_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 16, i32 1, i32 16, i32 1, i32 0, ptr null }, align 8
@rna_AreaLamp_shadow_buffer_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_ge_shadow_buffer_type, ptr @rna_AreaLamp_shadow_buffer_samples, i32 -1, ptr @.str.108, i32 3, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_shadow_buffer_type_get, ptr @AreaLamp_shadow_buffer_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AreaLamp_shadow_buffer_type_items, i32 4, i32 0 }, align 8
@rna_AreaLamp_ge_shadow_buffer_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_use_auto_clip_start, ptr @rna_AreaLamp_shadow_buffer_type, i32 -1, ptr @.str.111, i32 3, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_ge_shadow_buffer_type_get, ptr @AreaLamp_ge_shadow_buffer_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AreaLamp_ge_shadow_buffer_type_items, i32 2, i32 0 }, align 8
@rna_AreaLamp_shadow_buffer_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.328, i32 0, ptr @.str.329, ptr @.str.330 }, %struct.EnumPropertyItem { i32 2, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.333 }, %struct.EnumPropertyItem { i32 1, ptr @.str.334, i32 0, ptr @.str.335, ptr @.str.336 }, %struct.EnumPropertyItem { i32 3, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.339 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AreaLamp_use_auto_clip_start = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_use_auto_clip_end, ptr @rna_AreaLamp_ge_shadow_buffer_type, i32 -1, ptr @.str.114, i32 3, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_use_auto_clip_start_get, ptr @AreaLamp_use_auto_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_AreaLamp_ge_shadow_buffer_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.340, i32 0, ptr @.str.341, ptr @.str.342 }, %struct.EnumPropertyItem { i32 1, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.345 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AreaLamp_use_auto_clip_end = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_compression_threshold, ptr @rna_AreaLamp_use_auto_clip_start, i32 -1, ptr @.str.117, i32 3, ptr @.str.118, ptr @.str.119, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_use_auto_clip_end_get, ptr @AreaLamp_use_auto_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_AreaLamp_compression_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_color, ptr @rna_AreaLamp_use_auto_clip_end, i32 -1, ptr @.str.120, i32 8195, ptr @.str.121, ptr @.str.122, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 228, i32 4, ptr null, ptr null }, ptr @AreaLamp_compression_threshold_get, ptr @AreaLamp_compression_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_AreaLamp_shadow_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_use_only_shadow, ptr @rna_AreaLamp_compression_threshold, i32 -1, ptr @.str.123, i32 8195, ptr @.str.124, ptr @.str.125, i32 0, ptr @.str.7, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @AreaLamp_shadow_color_get, ptr @AreaLamp_shadow_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_AreaLamp_shadow_color_default }, align 8
@rna_AreaLamp_use_only_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_ray_sample_method, ptr @rna_AreaLamp_shadow_color, i32 -1, ptr @.str.126, i32 3, ptr @.str.127, ptr @.str.128, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_use_only_shadow_get, ptr @AreaLamp_use_only_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_AreaLamp_shadow_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_AreaLamp_shadow_ray_sample_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_ray_samples_x, ptr @rna_AreaLamp_use_only_shadow, i32 -1, ptr @.str.129, i32 3, ptr @.str.130, ptr @.str.131, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_shadow_ray_sample_method_get, ptr @AreaLamp_shadow_ray_sample_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AreaLamp_shadow_ray_sample_method_items, i32 3, i32 0 }, align 8
@rna_AreaLamp_shadow_ray_samples_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_ray_samples_y, ptr @rna_AreaLamp_shadow_ray_sample_method, i32 -1, ptr @.str.147, i32 8195, ptr @.str.148, ptr @.str.134, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 250, i32 1, ptr null, ptr null }, ptr @AreaLamp_shadow_ray_samples_x_get, ptr @AreaLamp_shadow_ray_samples_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 64, i32 1, i32 0, ptr null }, align 8
@rna_AreaLamp_shadow_ray_sample_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.346, i32 0, ptr @.str.347, ptr @.str.52 }, %struct.EnumPropertyItem { i32 2, ptr @.str.348, i32 0, ptr @.str.349, ptr @.str.52 }, %struct.EnumPropertyItem { i32 0, ptr @.str.350, i32 0, ptr @.str.351, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AreaLamp_shadow_ray_samples_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_adaptive_threshold, ptr @rna_AreaLamp_shadow_ray_samples_x, i32 -1, ptr @.str.149, i32 8195, ptr @.str.150, ptr @.str.134, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 252, i32 1, ptr null, ptr null }, ptr @AreaLamp_shadow_ray_samples_y_get, ptr @AreaLamp_shadow_ray_samples_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 64, i32 1, i32 0, ptr null }, align 8
@.str.147 = private unnamed_addr constant [21 x i8] c"shadow_ray_samples_x\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"Shadow Ray Samples\00", align 1
@rna_AreaLamp_shadow_adaptive_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shadow_soft_size, ptr @rna_AreaLamp_shadow_ray_samples_y, i32 -1, ptr @.str.135, i32 8195, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 272, i32 4, ptr null, ptr null }, ptr @AreaLamp_shadow_adaptive_threshold_get, ptr @AreaLamp_shadow_adaptive_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.149 = private unnamed_addr constant [21 x i8] c"shadow_ray_samples_y\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"Shadow Ray Samples Y\00", align 1
@rna_AreaLamp_shadow_soft_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_use_shadow_layer, ptr @rna_AreaLamp_shadow_adaptive_threshold, i32 -1, ptr @.str.138, i32 8195, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 260, i32 4, ptr null, ptr null }, ptr @AreaLamp_shadow_soft_size_get, ptr @AreaLamp_shadow_soft_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_AreaLamp_use_shadow_layer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_use_umbra, ptr @rna_AreaLamp_shadow_soft_size, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_use_shadow_layer_get, ptr @AreaLamp_use_shadow_layer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_AreaLamp_use_umbra = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_use_dither, ptr @rna_AreaLamp_use_shadow_layer, i32 -1, ptr @.str.151, i32 3, ptr @.str.152, ptr @.str.153, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_use_umbra_get, ptr @AreaLamp_use_umbra_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_AreaLamp_use_dither = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_use_jitter, ptr @rna_AreaLamp_use_umbra, i32 -1, ptr @.str.154, i32 3, ptr @.str.155, ptr @.str.156, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_use_dither_get, ptr @AreaLamp_use_dither_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.151 = private unnamed_addr constant [10 x i8] c"use_umbra\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"Umbra\00", align 1
@.str.153 = private unnamed_addr constant [69 x i8] c"Emphasize parts that are fully shadowed (Constant Jittered sampling)\00", align 1
@rna_AreaLamp_use_jitter = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_shape, ptr @rna_AreaLamp_use_dither, i32 -1, ptr @.str.157, i32 3, ptr @.str.158, ptr @.str.159, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_use_jitter_get, ptr @AreaLamp_use_jitter_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.154 = private unnamed_addr constant [11 x i8] c"use_dither\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"Dither\00", align 1
@.str.156 = private unnamed_addr constant [61 x i8] c"Use 2x2 dithering for sampling  (Constant Jittered sampling)\00", align 1
@rna_AreaLamp_shape = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_size, ptr @rna_AreaLamp_use_jitter, i32 -1, ptr @.str.160, i32 3, ptr @.str.161, ptr @.str.162, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AreaLamp_shape_get, ptr @AreaLamp_shape_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_AreaLamp_shape_items, i32 2, i32 0 }, align 8
@.str.157 = private unnamed_addr constant [11 x i8] c"use_jitter\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"Jitter\00", align 1
@.str.159 = private unnamed_addr constant [53 x i8] c"Use noise for sampling  (Constant Jittered sampling)\00", align 1
@rna_AreaLamp_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_size_y, ptr @rna_AreaLamp_shape, i32 -1, ptr @.str.163, i32 8195, ptr @.str.164, ptr @.str.165, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 260, i32 4, ptr null, ptr null }, ptr @AreaLamp_size_get, ptr @AreaLamp_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.160 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"Shape\00", align 1
@.str.162 = private unnamed_addr constant [23 x i8] c"Shape of the area lamp\00", align 1
@rna_AreaLamp_shape_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.352, i32 0, ptr @.str.176, ptr @.str.52 }, %struct.EnumPropertyItem { i32 1, ptr @.str.353, i32 0, ptr @.str.354, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_AreaLamp_size_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_AreaLamp_gamma, ptr @rna_AreaLamp_size, i32 -1, ptr @.str.166, i32 8195, ptr @.str.167, ptr @.str.168, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 264, i32 4, ptr null, ptr null }, ptr @AreaLamp_size_y_get, ptr @AreaLamp_size_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.163 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.165 = private unnamed_addr constant [73 x i8] c"Size of the area of the area Lamp, X direction size for Rectangle shapes\00", align 1
@rna_AreaLamp_gamma = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AreaLamp_size_y, i32 -1, ptr @.str.169, i32 8195, ptr @.str.170, ptr @.str.171, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 152, i32 4, ptr null, ptr null }, ptr @AreaLamp_gamma_get, ptr @AreaLamp_gamma_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 2.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.166 = private unnamed_addr constant [7 x i8] c"size_y\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"Size Y\00", align 1
@.str.168 = private unnamed_addr constant [74 x i8] c"Size of the area of the area Lamp in the Y direction for Rectangle shapes\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.171 = private unnamed_addr constant [29 x i8] c"Light gamma correction value\00", align 1
@RNA_SpotLamp = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SunLamp, ptr @RNA_AreaLamp, ptr null, %struct.ListBase { ptr @rna_SpotLamp_falloff_type, ptr @rna_SpotLamp_show_cone } }, ptr @.str.196, ptr null, ptr null, i32 7, ptr @.str.197, ptr @.str.198, ptr @.str.7, i32 300, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_Lamp, ptr null, ptr @rna_Lamp_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.172 = private unnamed_addr constant [9 x i8] c"AreaLamp\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"Area Lamp\00", align 1
@.str.174 = private unnamed_addr constant [22 x i8] c"Directional area lamp\00", align 1
@rna_SpotLamp_falloff_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_use_sphere, ptr @rna_SpotLamp_falloff_type, i32 -1, ptr @.str.67, i32 8388608, ptr @.str.68, ptr @.str.69, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_falloff_curve_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@rna_SpotLamp_falloff_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.295, i32 0, ptr @.str.296, ptr @.str.52 }, %struct.EnumPropertyItem { i32 1, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.52 }, %struct.EnumPropertyItem { i32 2, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.52 }, %struct.EnumPropertyItem { i32 3, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.52 }, %struct.EnumPropertyItem { i32 4, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpotLamp_falloff_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_falloff_curve, ptr null, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_falloff_type_get, ptr @SpotLamp_falloff_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpotLamp_falloff_type_items, i32 5, i32 0 }, align 8
@rna_SpotLamp_use_sphere = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_linear_attenuation, ptr @rna_SpotLamp_falloff_curve, i32 -1, ptr @.str.70, i32 3, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_use_sphere_get, ptr @SpotLamp_use_sphere_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpotLamp_linear_attenuation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_quadratic_attenuation, ptr @rna_SpotLamp_use_sphere, i32 -1, ptr @.str.73, i32 8195, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr @SpotLamp_linear_attenuation_get, ptr @SpotLamp_linear_attenuation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_quadratic_attenuation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_use_shadow, ptr @rna_SpotLamp_linear_attenuation, i32 -1, ptr @.str.76, i32 8195, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 196, i32 4, ptr null, ptr null }, ptr @SpotLamp_quadratic_attenuation_get, ptr @SpotLamp_quadratic_attenuation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_use_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_method, ptr @rna_SpotLamp_quadratic_attenuation, i32 -1, ptr @.str.79, i32 3, ptr @.str.79, ptr @.str.52, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_use_shadow_get, ptr @SpotLamp_use_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpotLamp_shadow_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_buffer_size, ptr @rna_SpotLamp_use_shadow, i32 -1, ptr @.str.80, i32 3, ptr @.str.80, ptr @.str.52, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_shadow_method_get, ptr @SpotLamp_shadow_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpotLamp_shadow_method_items, i32 3, i32 0 }, align 8
@rna_SpotLamp_shadow_buffer_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_filter_type, ptr @rna_SpotLamp_shadow_method, i32 -1, ptr @.str.81, i32 3, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_shadow_buffer_size_get, ptr @SpotLamp_shadow_buffer_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 128, i32 10240, i32 128, i32 10240, i32 1, i32 0, ptr null }, align 8
@rna_SpotLamp_shadow_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.52 }, %struct.EnumPropertyItem { i32 1, ptr @.str.355, i32 0, ptr @.str.356, ptr @.str.357 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.309 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpotLamp_shadow_filter_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_sample_buffers, ptr @rna_SpotLamp_shadow_buffer_size, i32 -1, ptr @.str.84, i32 3, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_shadow_filter_type_get, ptr @SpotLamp_shadow_filter_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpotLamp_shadow_filter_type_items, i32 3, i32 0 }, align 8
@rna_SpotLamp_shadow_sample_buffers = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_buffer_clip_start, ptr @rna_SpotLamp_shadow_filter_type, i32 -1, ptr @.str.87, i32 3, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_shadow_sample_buffers_get, ptr @SpotLamp_shadow_sample_buffers_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpotLamp_shadow_sample_buffers_items, i32 3, i32 1 }, align 8
@rna_SpotLamp_shadow_filter_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.310, i32 0, ptr @.str.311, ptr @.str.312 }, %struct.EnumPropertyItem { i32 1, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.315 }, %struct.EnumPropertyItem { i32 2, ptr @.str.316, i32 0, ptr @.str.317, ptr @.str.318 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpotLamp_shadow_buffer_clip_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_buffer_clip_end, ptr @rna_SpotLamp_shadow_sample_buffers, i32 -1, ptr @.str.90, i32 8195, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 212, i32 4, ptr null, ptr null }, ptr @SpotLamp_shadow_buffer_clip_start_get, ptr @SpotLamp_shadow_buffer_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 9.999000e+03, float 0.000000e+00, float 9.999000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_shadow_sample_buffers_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.321 }, %struct.EnumPropertyItem { i32 4, ptr @.str.322, i32 0, ptr @.str.323, ptr @.str.324 }, %struct.EnumPropertyItem { i32 9, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.327 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpotLamp_shadow_buffer_clip_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_buffer_bias, ptr @rna_SpotLamp_shadow_buffer_clip_start, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @SpotLamp_shadow_buffer_clip_end_get, ptr @SpotLamp_shadow_buffer_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 9.999000e+03, float 0.000000e+00, float 9.999000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_shadow_buffer_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_buffer_bleed_bias, ptr @rna_SpotLamp_shadow_buffer_clip_end, i32 -1, ptr @.str.96, i32 8195, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @SpotLamp_shadow_buffer_bias_get, ptr @SpotLamp_shadow_buffer_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 5.000000e+00, float 0x3F50624DE0000000, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_shadow_buffer_bleed_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_buffer_soft, ptr @rna_SpotLamp_shadow_buffer_bias, i32 -1, ptr @.str.99, i32 8195, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 232, i32 4, ptr null, ptr null }, ptr @SpotLamp_shadow_buffer_bleed_bias_get, ptr @SpotLamp_shadow_buffer_bleed_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_shadow_buffer_soft = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_buffer_samples, ptr @rna_SpotLamp_shadow_buffer_bleed_bias, i32 -1, ptr @.str.102, i32 8195, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 224, i32 4, ptr null, ptr null }, ptr @SpotLamp_shadow_buffer_soft_get, ptr @SpotLamp_shadow_buffer_soft_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_shadow_buffer_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_buffer_type, ptr @rna_SpotLamp_shadow_buffer_soft, i32 -1, ptr @.str.105, i32 8195, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 242, i32 1, ptr null, ptr null }, ptr @SpotLamp_shadow_buffer_samples_get, ptr @SpotLamp_shadow_buffer_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 16, i32 1, i32 16, i32 1, i32 0, ptr null }, align 8
@rna_SpotLamp_shadow_buffer_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_ge_shadow_buffer_type, ptr @rna_SpotLamp_shadow_buffer_samples, i32 -1, ptr @.str.108, i32 3, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_shadow_buffer_type_get, ptr @SpotLamp_shadow_buffer_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpotLamp_shadow_buffer_type_items, i32 4, i32 0 }, align 8
@rna_SpotLamp_ge_shadow_buffer_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_use_auto_clip_start, ptr @rna_SpotLamp_shadow_buffer_type, i32 -1, ptr @.str.111, i32 3, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_ge_shadow_buffer_type_get, ptr @SpotLamp_ge_shadow_buffer_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpotLamp_ge_shadow_buffer_type_items, i32 2, i32 0 }, align 8
@rna_SpotLamp_shadow_buffer_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.328, i32 0, ptr @.str.329, ptr @.str.330 }, %struct.EnumPropertyItem { i32 2, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.333 }, %struct.EnumPropertyItem { i32 1, ptr @.str.334, i32 0, ptr @.str.335, ptr @.str.336 }, %struct.EnumPropertyItem { i32 3, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.339 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpotLamp_use_auto_clip_start = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_use_auto_clip_end, ptr @rna_SpotLamp_ge_shadow_buffer_type, i32 -1, ptr @.str.114, i32 3, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_use_auto_clip_start_get, ptr @SpotLamp_use_auto_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpotLamp_ge_shadow_buffer_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.340, i32 0, ptr @.str.341, ptr @.str.342 }, %struct.EnumPropertyItem { i32 1, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.345 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpotLamp_use_auto_clip_end = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_compression_threshold, ptr @rna_SpotLamp_use_auto_clip_start, i32 -1, ptr @.str.117, i32 3, ptr @.str.118, ptr @.str.119, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_use_auto_clip_end_get, ptr @SpotLamp_use_auto_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpotLamp_compression_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_color, ptr @rna_SpotLamp_use_auto_clip_end, i32 -1, ptr @.str.120, i32 8195, ptr @.str.121, ptr @.str.122, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 228, i32 4, ptr null, ptr null }, ptr @SpotLamp_compression_threshold_get, ptr @SpotLamp_compression_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_shadow_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_use_only_shadow, ptr @rna_SpotLamp_compression_threshold, i32 -1, ptr @.str.123, i32 8195, ptr @.str.124, ptr @.str.125, i32 0, ptr @.str.7, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SpotLamp_shadow_color_get, ptr @SpotLamp_shadow_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SpotLamp_shadow_color_default }, align 8
@rna_SpotLamp_use_only_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_ray_sample_method, ptr @rna_SpotLamp_shadow_color, i32 -1, ptr @.str.126, i32 3, ptr @.str.127, ptr @.str.128, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_use_only_shadow_get, ptr @SpotLamp_use_only_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpotLamp_shadow_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_SpotLamp_shadow_ray_sample_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_ray_samples, ptr @rna_SpotLamp_use_only_shadow, i32 -1, ptr @.str.129, i32 3, ptr @.str.130, ptr @.str.131, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_shadow_ray_sample_method_get, ptr @SpotLamp_shadow_ray_sample_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SpotLamp_shadow_ray_sample_method_items, i32 2, i32 1 }, align 8
@rna_SpotLamp_shadow_ray_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_adaptive_threshold, ptr @rna_SpotLamp_shadow_ray_sample_method, i32 -1, ptr @.str.132, i32 8195, ptr @.str.133, ptr @.str.134, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 250, i32 1, ptr null, ptr null }, ptr @SpotLamp_shadow_ray_samples_get, ptr @SpotLamp_shadow_ray_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 64, i32 1, i32 0, ptr null }, align 8
@rna_SpotLamp_shadow_ray_sample_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.346, i32 0, ptr @.str.347, ptr @.str.52 }, %struct.EnumPropertyItem { i32 2, ptr @.str.348, i32 0, ptr @.str.349, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SpotLamp_shadow_adaptive_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_shadow_soft_size, ptr @rna_SpotLamp_shadow_ray_samples, i32 -1, ptr @.str.135, i32 8195, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 272, i32 4, ptr null, ptr null }, ptr @SpotLamp_shadow_adaptive_threshold_get, ptr @SpotLamp_shadow_adaptive_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_shadow_soft_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_use_shadow_layer, ptr @rna_SpotLamp_shadow_adaptive_threshold, i32 -1, ptr @.str.138, i32 8195, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 260, i32 4, ptr null, ptr null }, ptr @SpotLamp_shadow_soft_size_get, ptr @SpotLamp_shadow_soft_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SpotLamp_use_shadow_layer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_use_square, ptr @rna_SpotLamp_shadow_soft_size, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_use_shadow_layer_get, ptr @SpotLamp_use_shadow_layer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpotLamp_use_square = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_use_halo, ptr @rna_SpotLamp_use_shadow_layer, i32 -1, ptr @.str.175, i32 3, ptr @.str.176, ptr @.str.177, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_use_square_get, ptr @SpotLamp_use_square_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SpotLamp_use_halo = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_halo_intensity, ptr @rna_SpotLamp_use_square, i32 -1, ptr @.str.178, i32 3, ptr @.str.179, ptr @.str.180, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_use_halo_get, ptr @SpotLamp_use_halo_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.175 = private unnamed_addr constant [11 x i8] c"use_square\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.177 = private unnamed_addr constant [31 x i8] c"Cast a square spot light shape\00", align 1
@rna_SpotLamp_halo_intensity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_halo_step, ptr @rna_SpotLamp_use_halo, i32 -1, ptr @.str.181, i32 8195, ptr @.str.182, ptr @.str.183, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 188, i32 4, ptr null, ptr null }, ptr @SpotLamp_halo_intensity_get, ptr @SpotLamp_halo_intensity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.178 = private unnamed_addr constant [9 x i8] c"use_halo\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"Halo\00", align 1
@.str.180 = private unnamed_addr constant [40 x i8] c"Render spotlight with a volumetric halo\00", align 1
@rna_SpotLamp_halo_step = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_spot_blend, ptr @rna_SpotLamp_halo_intensity, i32 -1, ptr @.str.184, i32 8195, ptr @.str.185, ptr @.str.186, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 282, i32 1, ptr null, ptr null }, ptr @SpotLamp_halo_step_get, ptr @SpotLamp_halo_step_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 12, i32 0, i32 12, i32 1, i32 0, ptr null }, align 8
@.str.181 = private unnamed_addr constant [15 x i8] c"halo_intensity\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"Halo Intensity\00", align 1
@.str.183 = private unnamed_addr constant [40 x i8] c"Brightness of the spotlight's halo cone\00", align 1
@rna_SpotLamp_spot_blend = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_spot_size, ptr @rna_SpotLamp_halo_step, i32 -1, ptr @.str.187, i32 8195, ptr @.str.188, ptr @.str.189, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @SpotLamp_spot_blend_get, ptr @SpotLamp_spot_blend_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.184 = private unnamed_addr constant [10 x i8] c"halo_step\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"Halo Step\00", align 1
@.str.186 = private unnamed_addr constant [35 x i8] c"Volumetric halo sampling frequency\00", align 1
@rna_SpotLamp_spot_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpotLamp_show_cone, ptr @rna_SpotLamp_spot_blend, i32 -1, ptr @.str.190, i32 8195, ptr @.str.191, ptr @.str.192, i32 0, ptr @.str.7, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @SpotLamp_spot_size_get, ptr @SpotLamp_spot_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F91DF46A0000000, float 0x400921FB60000000, float 0x3F91DF46A0000000, float 0x400921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.187 = private unnamed_addr constant [11 x i8] c"spot_blend\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"Spot Blend\00", align 1
@.str.189 = private unnamed_addr constant [35 x i8] c"The softness of the spotlight edge\00", align 1
@rna_SpotLamp_show_cone = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpotLamp_spot_size, i32 -1, ptr @.str.193, i32 3, ptr @.str.194, ptr @.str.195, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpotLamp_show_cone_get, ptr @SpotLamp_show_cone_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.190 = private unnamed_addr constant [10 x i8] c"spot_size\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"Spot Size\00", align 1
@.str.192 = private unnamed_addr constant [28 x i8] c"Angle of the spotlight beam\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"show_cone\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"Show Cone\00", align 1
@.str.195 = private unnamed_addr constant [80 x i8] c"Draw transparent cone in 3D view to visualize which objects are contained in it\00", align 1
@RNA_SunLamp = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LampSkySettings, ptr @RNA_SpotLamp, ptr null, %struct.ListBase { ptr @rna_SunLamp_use_shadow, ptr @rna_SunLamp_shadow_frustum_size } }, ptr @.str.205, ptr null, ptr null, i32 7, ptr @.str.206, ptr @.str.207, ptr @.str.7, i32 299, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_Lamp, ptr null, ptr @rna_Lamp_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.196 = private unnamed_addr constant [9 x i8] c"SpotLamp\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"Spot Lamp\00", align 1
@.str.198 = private unnamed_addr constant [22 x i8] c"Directional cone lamp\00", align 1
@rna_SunLamp_shadow_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_buffer_size, ptr @rna_SunLamp_use_shadow, i32 -1, ptr @.str.80, i32 3, ptr @.str.80, ptr @.str.52, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_shadow_method_get, ptr @SunLamp_shadow_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SunLamp_shadow_method_items, i32 2, i32 0 }, align 8
@rna_SunLamp_use_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_method, ptr null, i32 -1, ptr @.str.79, i32 3, ptr @.str.79, ptr @.str.52, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_use_shadow_get, ptr @SunLamp_use_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SunLamp_shadow_buffer_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_filter_type, ptr @rna_SunLamp_shadow_method, i32 -1, ptr @.str.81, i32 3, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_shadow_buffer_size_get, ptr @SunLamp_shadow_buffer_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 128, i32 10240, i32 128, i32 10240, i32 1, i32 0, ptr null }, align 8
@rna_SunLamp_shadow_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.52 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.309 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SunLamp_shadow_filter_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_sample_buffers, ptr @rna_SunLamp_shadow_buffer_size, i32 -1, ptr @.str.84, i32 3, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_shadow_filter_type_get, ptr @SunLamp_shadow_filter_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SunLamp_shadow_filter_type_items, i32 3, i32 0 }, align 8
@rna_SunLamp_shadow_sample_buffers = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_buffer_clip_start, ptr @rna_SunLamp_shadow_filter_type, i32 -1, ptr @.str.87, i32 3, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_shadow_sample_buffers_get, ptr @SunLamp_shadow_sample_buffers_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SunLamp_shadow_sample_buffers_items, i32 3, i32 1 }, align 8
@rna_SunLamp_shadow_filter_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.310, i32 0, ptr @.str.311, ptr @.str.312 }, %struct.EnumPropertyItem { i32 1, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.315 }, %struct.EnumPropertyItem { i32 2, ptr @.str.316, i32 0, ptr @.str.317, ptr @.str.318 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SunLamp_shadow_buffer_clip_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_buffer_clip_end, ptr @rna_SunLamp_shadow_sample_buffers, i32 -1, ptr @.str.90, i32 8195, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 212, i32 4, ptr null, ptr null }, ptr @SunLamp_shadow_buffer_clip_start_get, ptr @SunLamp_shadow_buffer_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 9.999000e+03, float 0.000000e+00, float 9.999000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SunLamp_shadow_sample_buffers_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.321 }, %struct.EnumPropertyItem { i32 4, ptr @.str.322, i32 0, ptr @.str.323, ptr @.str.324 }, %struct.EnumPropertyItem { i32 9, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.327 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SunLamp_shadow_buffer_clip_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_buffer_bias, ptr @rna_SunLamp_shadow_buffer_clip_start, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @SunLamp_shadow_buffer_clip_end_get, ptr @SunLamp_shadow_buffer_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 9.999000e+03, float 0.000000e+00, float 9.999000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SunLamp_shadow_buffer_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_buffer_bleed_bias, ptr @rna_SunLamp_shadow_buffer_clip_end, i32 -1, ptr @.str.96, i32 8195, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @SunLamp_shadow_buffer_bias_get, ptr @SunLamp_shadow_buffer_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 5.000000e+00, float 0x3F50624DE0000000, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SunLamp_shadow_buffer_bleed_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_buffer_soft, ptr @rna_SunLamp_shadow_buffer_bias, i32 -1, ptr @.str.99, i32 8195, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 232, i32 4, ptr null, ptr null }, ptr @SunLamp_shadow_buffer_bleed_bias_get, ptr @SunLamp_shadow_buffer_bleed_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SunLamp_shadow_buffer_soft = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_buffer_samples, ptr @rna_SunLamp_shadow_buffer_bleed_bias, i32 -1, ptr @.str.102, i32 8195, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 224, i32 4, ptr null, ptr null }, ptr @SunLamp_shadow_buffer_soft_get, ptr @SunLamp_shadow_buffer_soft_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SunLamp_shadow_buffer_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_buffer_type, ptr @rna_SunLamp_shadow_buffer_soft, i32 -1, ptr @.str.105, i32 8195, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 242, i32 1, ptr null, ptr null }, ptr @SunLamp_shadow_buffer_samples_get, ptr @SunLamp_shadow_buffer_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 16, i32 1, i32 16, i32 1, i32 0, ptr null }, align 8
@rna_SunLamp_shadow_buffer_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_ge_shadow_buffer_type, ptr @rna_SunLamp_shadow_buffer_samples, i32 -1, ptr @.str.108, i32 3, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_shadow_buffer_type_get, ptr @SunLamp_shadow_buffer_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SunLamp_shadow_buffer_type_items, i32 4, i32 0 }, align 8
@rna_SunLamp_ge_shadow_buffer_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_use_auto_clip_start, ptr @rna_SunLamp_shadow_buffer_type, i32 -1, ptr @.str.111, i32 3, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_ge_shadow_buffer_type_get, ptr @SunLamp_ge_shadow_buffer_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SunLamp_ge_shadow_buffer_type_items, i32 2, i32 0 }, align 8
@rna_SunLamp_shadow_buffer_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.328, i32 0, ptr @.str.329, ptr @.str.330 }, %struct.EnumPropertyItem { i32 2, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.333 }, %struct.EnumPropertyItem { i32 1, ptr @.str.334, i32 0, ptr @.str.335, ptr @.str.336 }, %struct.EnumPropertyItem { i32 3, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.339 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SunLamp_use_auto_clip_start = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_use_auto_clip_end, ptr @rna_SunLamp_ge_shadow_buffer_type, i32 -1, ptr @.str.114, i32 3, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_use_auto_clip_start_get, ptr @SunLamp_use_auto_clip_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SunLamp_ge_shadow_buffer_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.340, i32 0, ptr @.str.341, ptr @.str.342 }, %struct.EnumPropertyItem { i32 1, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.345 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SunLamp_use_auto_clip_end = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_compression_threshold, ptr @rna_SunLamp_use_auto_clip_start, i32 -1, ptr @.str.117, i32 3, ptr @.str.118, ptr @.str.119, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_use_auto_clip_end_get, ptr @SunLamp_use_auto_clip_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SunLamp_compression_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_color, ptr @rna_SunLamp_use_auto_clip_end, i32 -1, ptr @.str.120, i32 8195, ptr @.str.121, ptr @.str.122, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 228, i32 4, ptr null, ptr null }, ptr @SunLamp_compression_threshold_get, ptr @SunLamp_compression_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SunLamp_shadow_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_use_only_shadow, ptr @rna_SunLamp_compression_threshold, i32 -1, ptr @.str.123, i32 8195, ptr @.str.124, ptr @.str.125, i32 0, ptr @.str.7, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SunLamp_shadow_color_get, ptr @SunLamp_shadow_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SunLamp_shadow_color_default }, align 8
@rna_SunLamp_use_only_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_ray_sample_method, ptr @rna_SunLamp_shadow_color, i32 -1, ptr @.str.126, i32 3, ptr @.str.127, ptr @.str.128, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_use_only_shadow_get, ptr @SunLamp_use_only_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SunLamp_shadow_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_SunLamp_shadow_ray_sample_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_ray_samples, ptr @rna_SunLamp_use_only_shadow, i32 -1, ptr @.str.129, i32 3, ptr @.str.130, ptr @.str.131, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_shadow_ray_sample_method_get, ptr @SunLamp_shadow_ray_sample_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SunLamp_shadow_ray_sample_method_items, i32 2, i32 1 }, align 8
@rna_SunLamp_shadow_ray_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_adaptive_threshold, ptr @rna_SunLamp_shadow_ray_sample_method, i32 -1, ptr @.str.132, i32 8195, ptr @.str.133, ptr @.str.134, i32 0, ptr @.str.7, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 250, i32 1, ptr null, ptr null }, ptr @SunLamp_shadow_ray_samples_get, ptr @SunLamp_shadow_ray_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 64, i32 1, i32 0, ptr null }, align 8
@rna_SunLamp_shadow_ray_sample_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.346, i32 0, ptr @.str.347, ptr @.str.52 }, %struct.EnumPropertyItem { i32 2, ptr @.str.348, i32 0, ptr @.str.349, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SunLamp_shadow_adaptive_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_soft_size, ptr @rna_SunLamp_shadow_ray_samples, i32 -1, ptr @.str.135, i32 8195, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 272, i32 4, ptr null, ptr null }, ptr @SunLamp_shadow_adaptive_threshold_get, ptr @SunLamp_shadow_adaptive_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SunLamp_shadow_soft_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_use_shadow_layer, ptr @rna_SunLamp_shadow_adaptive_threshold, i32 -1, ptr @.str.138, i32 8195, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.7, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 260, i32 4, ptr null, ptr null }, ptr @SunLamp_shadow_soft_size_get, ptr @SunLamp_shadow_soft_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SunLamp_use_shadow_layer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_sky, ptr @rna_SunLamp_shadow_soft_size, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_use_shadow_layer_get, ptr @SunLamp_use_shadow_layer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SunLamp_sky = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SunLamp_shadow_frustum_size, ptr @rna_SunLamp_use_shadow_layer, i32 -1, ptr @.str.199, i32 8650752, ptr @.str.200, ptr @.str.201, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SunLamp_sky_get, ptr null, ptr null, ptr null, ptr @RNA_LampSkySettings }, align 8
@rna_SunLamp_shadow_frustum_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SunLamp_sky, i32 -1, ptr @.str.202, i32 8195, ptr @.str.203, ptr @.str.204, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_draw_update, i32 0, ptr null, ptr null, i32 336, i32 4, ptr null, ptr null }, ptr @SunLamp_shadow_frustum_size_get, ptr @SunLamp_shadow_frustum_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 2.000000e+00, i32 1, float 0.000000e+00, ptr null }, align 8
@.str.199 = private unnamed_addr constant [4 x i8] c"sky\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"Sky Settings\00", align 1
@.str.201 = private unnamed_addr constant [35 x i8] c"Sky related settings for sun lamps\00", align 1
@RNA_LampSkySettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_HemiLamp, ptr @RNA_SunLamp, ptr null, %struct.ListBase { ptr @rna_LampSkySettings_rna_properties, ptr @rna_LampSkySettings_use_atmosphere } }, ptr @.str.255, ptr null, ptr null, i32 4, ptr @.str.256, ptr @.str.257, ptr @.str.7, i32 17, ptr null, ptr @rna_LampSkySettings_rna_properties, ptr null, ptr @RNA_SunLamp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.202 = private unnamed_addr constant [20 x i8] c"shadow_frustum_size\00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"Frustum Size\00", align 1
@.str.204 = private unnamed_addr constant [53 x i8] c"Size of the frustum used for creating the shadow map\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"SunLamp\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"Sun Lamp\00", align 1
@.str.207 = private unnamed_addr constant [37 x i8] c"Constant direction parallel ray lamp\00", align 1
@rna_LampSkySettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_sky_color_space, ptr @rna_LampSkySettings_rna_properties, i32 -1, ptr @.str.48, i32 8912896, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampSkySettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_LampSkySettings_sky_color_space = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_sky_blend_type, ptr @rna_LampSkySettings_rna_type, i32 -1, ptr @.str.208, i32 3, ptr @.str.209, ptr @.str.210, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampSkySettings_sky_color_space_get, ptr @LampSkySettings_sky_color_space_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_LampSkySettings_sky_color_space_items, i32 3, i32 0 }, align 8
@rna_LampSkySettings_sky_blend_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_horizon_brightness, ptr @rna_LampSkySettings_sky_color_space, i32 -1, ptr @.str.211, i32 3, ptr @.str.212, ptr @.str.213, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampSkySettings_sky_blend_type_get, ptr @LampSkySettings_sky_blend_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_LampSkySettings_sky_blend_type_items, i32 18, i32 0 }, align 8
@.str.208 = private unnamed_addr constant [16 x i8] c"sky_color_space\00", align 1
@.str.209 = private unnamed_addr constant [16 x i8] c"Sky Color Space\00", align 1
@.str.210 = private unnamed_addr constant [58 x i8] c"Color space to use for internal XYZ->RGB color conversion\00", align 1
@rna_LampSkySettings_sky_color_space_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.358, i32 0, ptr @.str.358, ptr @.str.52 }, %struct.EnumPropertyItem { i32 1, ptr @.str.359, i32 0, ptr @.str.359, ptr @.str.52 }, %struct.EnumPropertyItem { i32 2, ptr @.str.360, i32 0, ptr @.str.360, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_LampSkySettings_horizon_brightness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_spread, ptr @rna_LampSkySettings_sky_blend_type, i32 -1, ptr @.str.214, i32 8195, ptr @.str.215, ptr @.str.216, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 288, i32 4, ptr null, ptr null }, ptr @LampSkySettings_horizon_brightness_get, ptr @LampSkySettings_horizon_brightness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.211 = private unnamed_addr constant [15 x i8] c"sky_blend_type\00", align 1
@.str.212 = private unnamed_addr constant [15 x i8] c"Sky Blend Mode\00", align 1
@.str.213 = private unnamed_addr constant [48 x i8] c"Blend mode for combining sun sky with world sky\00", align 1
@rna_LampSkySettings_sky_blend_type_items = internal global [19 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.361, i32 0, ptr @.str.362, ptr @.str.52 }, %struct.EnumPropertyItem { i32 1, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.52 }, %struct.EnumPropertyItem { i32 2, ptr @.str.365, i32 0, ptr @.str.366, ptr @.str.52 }, %struct.EnumPropertyItem { i32 3, ptr @.str.367, i32 0, ptr @.str.368, ptr @.str.52 }, %struct.EnumPropertyItem { i32 4, ptr @.str.369, i32 0, ptr @.str.370, ptr @.str.52 }, %struct.EnumPropertyItem { i32 5, ptr @.str.371, i32 0, ptr @.str.372, ptr @.str.52 }, %struct.EnumPropertyItem { i32 6, ptr @.str.373, i32 0, ptr @.str.374, ptr @.str.52 }, %struct.EnumPropertyItem { i32 7, ptr @.str.375, i32 0, ptr @.str.376, ptr @.str.52 }, %struct.EnumPropertyItem { i32 8, ptr @.str.377, i32 0, ptr @.str.378, ptr @.str.52 }, %struct.EnumPropertyItem { i32 9, ptr @.str.379, i32 0, ptr @.str.380, ptr @.str.52 }, %struct.EnumPropertyItem { i32 10, ptr @.str.381, i32 0, ptr @.str.382, ptr @.str.52 }, %struct.EnumPropertyItem { i32 11, ptr @.str.383, i32 0, ptr @.str.384, ptr @.str.52 }, %struct.EnumPropertyItem { i32 12, ptr @.str.385, i32 0, ptr @.str.386, ptr @.str.52 }, %struct.EnumPropertyItem { i32 13, ptr @.str.387, i32 0, ptr @.str.388, ptr @.str.52 }, %struct.EnumPropertyItem { i32 14, ptr @.str.389, i32 0, ptr @.str.390, ptr @.str.52 }, %struct.EnumPropertyItem { i32 15, ptr @.str.391, i32 0, ptr @.str.12, ptr @.str.52 }, %struct.EnumPropertyItem { i32 16, ptr @.str.392, i32 0, ptr @.str.393, ptr @.str.52 }, %struct.EnumPropertyItem { i32 17, ptr @.str.394, i32 0, ptr @.str.395, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_LampSkySettings_spread = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_sun_brightness, ptr @rna_LampSkySettings_horizon_brightness, i32 -1, ptr @.str.217, i32 8195, ptr @.str.218, ptr @.str.218, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 292, i32 4, ptr null, ptr null }, ptr @LampSkySettings_spread_get, ptr @LampSkySettings_spread_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.214 = private unnamed_addr constant [19 x i8] c"horizon_brightness\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"Horizon Brightness\00", align 1
@.str.216 = private unnamed_addr constant [19 x i8] c"Horizon brightness\00", align 1
@rna_LampSkySettings_sun_brightness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_sun_size, ptr @rna_LampSkySettings_spread, i32 -1, ptr @.str.219, i32 8195, ptr @.str.220, ptr @.str.221, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 296, i32 4, ptr null, ptr null }, ptr @LampSkySettings_sun_brightness_get, ptr @LampSkySettings_sun_brightness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.217 = private unnamed_addr constant [7 x i8] c"spread\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"Horizon Spread\00", align 1
@rna_LampSkySettings_sun_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_backscattered_light, ptr @rna_LampSkySettings_sun_brightness, i32 -1, ptr @.str.222, i32 8195, ptr @.str.223, ptr @.str.224, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @LampSkySettings_sun_size_get, ptr @LampSkySettings_sun_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.219 = private unnamed_addr constant [15 x i8] c"sun_brightness\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"Sun Brightness\00", align 1
@.str.221 = private unnamed_addr constant [15 x i8] c"Sun brightness\00", align 1
@rna_LampSkySettings_backscattered_light = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_sun_intensity, ptr @rna_LampSkySettings_sun_size, i32 -1, ptr @.str.225, i32 8195, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 304, i32 4, ptr null, ptr null }, ptr @LampSkySettings_backscattered_light_get, ptr @LampSkySettings_backscattered_light_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.222 = private unnamed_addr constant [9 x i8] c"sun_size\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"Sun Size\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"Sun size\00", align 1
@rna_LampSkySettings_sun_intensity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_atmosphere_turbidity, ptr @rna_LampSkySettings_backscattered_light, i32 -1, ptr @.str.228, i32 8195, ptr @.str.229, ptr @.str.230, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 308, i32 4, ptr null, ptr null }, ptr @LampSkySettings_sun_intensity_get, ptr @LampSkySettings_sun_intensity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.225 = private unnamed_addr constant [20 x i8] c"backscattered_light\00", align 1
@.str.226 = private unnamed_addr constant [20 x i8] c"Backscattered Light\00", align 1
@.str.227 = private unnamed_addr constant [20 x i8] c"Backscattered light\00", align 1
@rna_LampSkySettings_atmosphere_turbidity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_atmosphere_inscattering, ptr @rna_LampSkySettings_sun_intensity, i32 -1, ptr @.str.231, i32 8195, ptr @.str.232, ptr @.str.233, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 312, i32 4, ptr null, ptr null }, ptr @LampSkySettings_atmosphere_turbidity_get, ptr @LampSkySettings_atmosphere_turbidity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 2.000000e+00, float 1.000000e+01, float 1.000000e+00, float 3.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.228 = private unnamed_addr constant [14 x i8] c"sun_intensity\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"Sun Intensity\00", align 1
@.str.230 = private unnamed_addr constant [14 x i8] c"Sun intensity\00", align 1
@rna_LampSkySettings_atmosphere_inscattering = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_atmosphere_extinction, ptr @rna_LampSkySettings_atmosphere_turbidity, i32 -1, ptr @.str.234, i32 8195, ptr @.str.235, ptr @.str.236, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 316, i32 4, ptr null, ptr null }, ptr @LampSkySettings_atmosphere_inscattering_get, ptr @LampSkySettings_atmosphere_inscattering_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.231 = private unnamed_addr constant [21 x i8] c"atmosphere_turbidity\00", align 1
@.str.232 = private unnamed_addr constant [21 x i8] c"Atmosphere Turbidity\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"Sky turbidity\00", align 1
@rna_LampSkySettings_atmosphere_extinction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_atmosphere_distance_factor, ptr @rna_LampSkySettings_atmosphere_inscattering, i32 -1, ptr @.str.237, i32 8195, ptr @.str.238, ptr @.str.239, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 320, i32 4, ptr null, ptr null }, ptr @LampSkySettings_atmosphere_extinction_get, ptr @LampSkySettings_atmosphere_extinction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.234 = private unnamed_addr constant [24 x i8] c"atmosphere_inscattering\00", align 1
@.str.235 = private unnamed_addr constant [21 x i8] c"Atmosphere Inscatter\00", align 1
@.str.236 = private unnamed_addr constant [28 x i8] c"Scatter contribution factor\00", align 1
@rna_LampSkySettings_atmosphere_distance_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_sky_blend, ptr @rna_LampSkySettings_atmosphere_extinction, i32 -1, ptr @.str.240, i32 8195, ptr @.str.241, ptr @.str.242, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 324, i32 4, ptr null, ptr null }, ptr @LampSkySettings_atmosphere_distance_factor_get, ptr @LampSkySettings_atmosphere_distance_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+02, float 0.000000e+00, float 5.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.237 = private unnamed_addr constant [22 x i8] c"atmosphere_extinction\00", align 1
@.str.238 = private unnamed_addr constant [22 x i8] c"Atmosphere Extinction\00", align 1
@.str.239 = private unnamed_addr constant [42 x i8] c"Extinction scattering contribution factor\00", align 1
@rna_LampSkySettings_sky_blend = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_sky_exposure, ptr @rna_LampSkySettings_atmosphere_distance_factor, i32 -1, ptr @.str.243, i32 8195, ptr @.str.244, ptr @.str.245, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 328, i32 4, ptr null, ptr null }, ptr @LampSkySettings_sky_blend_get, ptr @LampSkySettings_sky_blend_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.240 = private unnamed_addr constant [27 x i8] c"atmosphere_distance_factor\00", align 1
@.str.241 = private unnamed_addr constant [27 x i8] c"Atmosphere Distance Factor\00", align 1
@.str.242 = private unnamed_addr constant [57 x i8] c"Multiplier to convert blender units to physical distance\00", align 1
@rna_LampSkySettings_sky_exposure = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_use_sky, ptr @rna_LampSkySettings_sky_blend, i32 -1, ptr @.str.246, i32 8195, ptr @.str.247, ptr @.str.248, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 332, i32 4, ptr null, ptr null }, ptr @LampSkySettings_sky_exposure_get, ptr @LampSkySettings_sky_exposure_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.243 = private unnamed_addr constant [10 x i8] c"sky_blend\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"Sky Blend\00", align 1
@.str.245 = private unnamed_addr constant [22 x i8] c"Blend factor with sky\00", align 1
@rna_LampSkySettings_use_sky = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LampSkySettings_use_atmosphere, ptr @rna_LampSkySettings_sky_exposure, i32 -1, ptr @.str.249, i32 3, ptr @.str.250, ptr @.str.251, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampSkySettings_use_sky_get, ptr @LampSkySettings_use_sky_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.246 = private unnamed_addr constant [13 x i8] c"sky_exposure\00", align 1
@.str.247 = private unnamed_addr constant [13 x i8] c"Sky Exposure\00", align 1
@.str.248 = private unnamed_addr constant [56 x i8] c"Strength of sky shading exponential exposure correction\00", align 1
@rna_LampSkySettings_use_atmosphere = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LampSkySettings_use_sky, i32 -1, ptr @.str.252, i32 3, ptr @.str.253, ptr @.str.254, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_sky_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampSkySettings_use_atmosphere_get, ptr @LampSkySettings_use_atmosphere_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.249 = private unnamed_addr constant [8 x i8] c"use_sky\00", align 1
@.str.250 = private unnamed_addr constant [4 x i8] c"Sky\00", align 1
@.str.251 = private unnamed_addr constant [24 x i8] c"Apply sun effect on sky\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c"use_atmosphere\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"Atmosphere\00", align 1
@.str.254 = private unnamed_addr constant [31 x i8] c"Apply sun effect on atmosphere\00", align 1
@RNA_HemiLamp = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LampTextureSlot, ptr @RNA_LampSkySettings, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.258, ptr null, ptr null, i32 7, ptr @.str.259, ptr @.str.260, ptr @.str.7, i32 301, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_Lamp, ptr null, ptr @rna_Lamp_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.255 = private unnamed_addr constant [16 x i8] c"LampSkySettings\00", align 1
@.str.256 = private unnamed_addr constant [18 x i8] c"Lamp Sky Settings\00", align 1
@.str.257 = private unnamed_addr constant [36 x i8] c"Sky related settings for a sun lamp\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"HemiLamp\00", align 1
@.str.259 = private unnamed_addr constant [10 x i8] c"Hemi Lamp\00", align 1
@.str.260 = private unnamed_addr constant [25 x i8] c"180 degree constant lamp\00", align 1
@rna_LampTextureSlot_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_LampTextureSlot_use_map_color, ptr @rna_LampTextureSlot_texture_coords, i32 -1, ptr @.str.263, i32 8388609, ptr @.str.264, ptr @.str.265, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampTextureSlot_object_get, ptr @LampTextureSlot_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.261 = private unnamed_addr constant [15 x i8] c"texture_coords\00", align 1
@.str.262 = private unnamed_addr constant [20 x i8] c"Texture Coordinates\00", align 1
@rna_LampTextureSlot_texture_coords_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 8, ptr @.str.396, i32 0, ptr @.str.397, ptr @.str.398 }, %struct.EnumPropertyItem { i32 128, ptr @.str.399, i32 0, ptr @.str.400, ptr @.str.401 }, %struct.EnumPropertyItem { i32 32, ptr @.str.402, i32 0, ptr @.str.264, ptr @.str.403 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_LampTextureSlot_texture_coords = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_LampTextureSlot_object, ptr null, i32 -1, ptr @.str.261, i32 3, ptr @.str.262, ptr @.str.52, i32 0, ptr @.str.7, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampTextureSlot_texture_coords_get, ptr @LampTextureSlot_texture_coords_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_LampTextureSlot_texture_coords_items, i32 3, i32 8 }, align 8
@rna_LampTextureSlot_use_map_color = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LampTextureSlot_use_map_shadow, ptr @rna_LampTextureSlot_object, i32 -1, ptr @.str.266, i32 3, ptr @.str.12, ptr @.str.267, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampTextureSlot_use_map_color_get, ptr @LampTextureSlot_use_map_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.263 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.264 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.265 = private unnamed_addr constant [58 x i8] c"Object to use for mapping with Object texture coordinates\00", align 1
@rna_LampTextureSlot_use_map_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LampTextureSlot_color_factor, ptr @rna_LampTextureSlot_use_map_color, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LampTextureSlot_use_map_shadow_get, ptr @LampTextureSlot_use_map_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.266 = private unnamed_addr constant [14 x i8] c"use_map_color\00", align 1
@.str.267 = private unnamed_addr constant [51 x i8] c"Let the texture affect the basic color of the lamp\00", align 1
@rna_LampTextureSlot_color_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LampTextureSlot_shadow_factor, ptr @rna_LampTextureSlot_use_map_shadow, i32 -1, ptr @.str.271, i32 8195, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 164, i32 4, ptr null, ptr null }, ptr @LampTextureSlot_color_factor_get, ptr @LampTextureSlot_color_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.268 = private unnamed_addr constant [15 x i8] c"use_map_shadow\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"Shadow\00", align 1
@.str.270 = private unnamed_addr constant [52 x i8] c"Let the texture affect the shadow color of the lamp\00", align 1
@rna_LampTextureSlot_shadow_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LampTextureSlot_color_factor, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.276, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lamp_update, i32 0, ptr null, ptr null, i32 296, i32 4, ptr null, ptr null }, ptr @LampTextureSlot_shadow_factor_get, ptr @LampTextureSlot_shadow_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.271 = private unnamed_addr constant [13 x i8] c"color_factor\00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"Color Factor\00", align 1
@.str.273 = private unnamed_addr constant [36 x i8] c"Amount texture affects color values\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"shadow_factor\00", align 1
@.str.275 = private unnamed_addr constant [14 x i8] c"Shadow Factor\00", align 1
@.str.276 = private unnamed_addr constant [30 x i8] c"Amount texture affects shadow\00", align 1
@RNA_Lattice = external global %struct.StructRNA, align 8
@.str.277 = private unnamed_addr constant [16 x i8] c"LampTextureSlot\00", align 1
@.str.278 = private unnamed_addr constant [18 x i8] c"Lamp Texture Slot\00", align 1
@.str.279 = private unnamed_addr constant [46 x i8] c"Texture slot for textures in a Lamp datablock\00", align 1
@rna_TextureSlot_name = external global %struct.StringPropertyRNA, align 8
@rna_TextureSlot_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_TextureSlot = external global %struct.StructRNA, align 8
@.str.280 = private unnamed_addr constant [6 x i8] c"POINT\00", align 1
@.str.281 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.282 = private unnamed_addr constant [35 x i8] c"Omnidirectional point light source\00", align 1
@.str.283 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.285 = private unnamed_addr constant [45 x i8] c"Constant direction parallel ray light source\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c"SPOT\00", align 1
@.str.287 = private unnamed_addr constant [5 x i8] c"Spot\00", align 1
@.str.288 = private unnamed_addr constant [30 x i8] c"Directional cone light source\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"HEMI\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"Hemi\00", align 1
@.str.291 = private unnamed_addr constant [33 x i8] c"180 degree constant light source\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"AREA\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.294 = private unnamed_addr constant [30 x i8] c"Directional area light source\00", align 1
@.str.295 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.296 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.297 = private unnamed_addr constant [15 x i8] c"INVERSE_LINEAR\00", align 1
@.str.298 = private unnamed_addr constant [15 x i8] c"Inverse Linear\00", align 1
@.str.299 = private unnamed_addr constant [15 x i8] c"INVERSE_SQUARE\00", align 1
@.str.300 = private unnamed_addr constant [15 x i8] c"Inverse Square\00", align 1
@.str.301 = private unnamed_addr constant [13 x i8] c"CUSTOM_CURVE\00", align 1
@.str.302 = private unnamed_addr constant [13 x i8] c"Custom Curve\00", align 1
@.str.303 = private unnamed_addr constant [26 x i8] c"LINEAR_QUADRATIC_WEIGHTED\00", align 1
@.str.304 = private unnamed_addr constant [18 x i8] c"Lin/Quad Weighted\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"NOSHADOW\00", align 1
@.str.306 = private unnamed_addr constant [10 x i8] c"No Shadow\00", align 1
@.str.307 = private unnamed_addr constant [11 x i8] c"RAY_SHADOW\00", align 1
@.str.308 = private unnamed_addr constant [11 x i8] c"Ray Shadow\00", align 1
@.str.309 = private unnamed_addr constant [27 x i8] c"Use ray tracing for shadow\00", align 1
@.str.310 = private unnamed_addr constant [4 x i8] c"BOX\00", align 1
@.str.311 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.312 = private unnamed_addr constant [46 x i8] c"Apply the Box filter to shadow buffer samples\00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c"TENT\00", align 1
@.str.314 = private unnamed_addr constant [5 x i8] c"Tent\00", align 1
@.str.315 = private unnamed_addr constant [47 x i8] c"Apply the Tent Filter to shadow buffer samples\00", align 1
@.str.316 = private unnamed_addr constant [6 x i8] c"GAUSS\00", align 1
@.str.317 = private unnamed_addr constant [6 x i8] c"Gauss\00", align 1
@.str.318 = private unnamed_addr constant [48 x i8] c"Apply the Gauss filter to shadow buffer samples\00", align 1
@.str.319 = private unnamed_addr constant [10 x i8] c"BUFFERS_1\00", align 1
@.str.320 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.321 = private unnamed_addr constant [25 x i8] c"Only one buffer rendered\00", align 1
@.str.322 = private unnamed_addr constant [10 x i8] c"BUFFERS_4\00", align 1
@.str.323 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.324 = private unnamed_addr constant [61 x i8] c"Render 4 buffers for better AA, this quadruples memory usage\00", align 1
@.str.325 = private unnamed_addr constant [10 x i8] c"BUFFERS_9\00", align 1
@.str.326 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.327 = private unnamed_addr constant [65 x i8] c"Render 9 buffers for better AA, this uses nine times more memory\00", align 1
@.str.328 = private unnamed_addr constant [8 x i8] c"REGULAR\00", align 1
@.str.329 = private unnamed_addr constant [10 x i8] c"Classical\00", align 1
@.str.330 = private unnamed_addr constant [22 x i8] c"Classic shadow buffer\00", align 1
@.str.331 = private unnamed_addr constant [8 x i8] c"HALFWAY\00", align 1
@.str.332 = private unnamed_addr constant [16 x i8] c"Classic-Halfway\00", align 1
@.str.333 = private unnamed_addr constant [89 x i8] c"Regular buffer, averaging the closest and 2nd closest Z value to reducing bias artifacts\00", align 1
@.str.334 = private unnamed_addr constant [10 x i8] c"IRREGULAR\00", align 1
@.str.335 = private unnamed_addr constant [10 x i8] c"Irregular\00", align 1
@.str.336 = private unnamed_addr constant [85 x i8] c"Irregular buffer produces sharp shadow always, but it doesn't show up for raytracing\00", align 1
@.str.337 = private unnamed_addr constant [5 x i8] c"DEEP\00", align 1
@.str.338 = private unnamed_addr constant [5 x i8] c"Deep\00", align 1
@.str.339 = private unnamed_addr constant [116 x i8] c"Deep shadow buffer supports transparency and better filtering, at the cost of more memory usage and processing time\00", align 1
@.str.340 = private unnamed_addr constant [7 x i8] c"SIMPLE\00", align 1
@.str.341 = private unnamed_addr constant [7 x i8] c"Simple\00", align 1
@.str.342 = private unnamed_addr constant [19 x i8] c"Simple shadow maps\00", align 1
@.str.343 = private unnamed_addr constant [9 x i8] c"VARIANCE\00", align 1
@.str.344 = private unnamed_addr constant [9 x i8] c"Variance\00", align 1
@.str.345 = private unnamed_addr constant [21 x i8] c"Variance shadow maps\00", align 1
@.str.346 = private unnamed_addr constant [13 x i8] c"ADAPTIVE_QMC\00", align 1
@.str.347 = private unnamed_addr constant [13 x i8] c"Adaptive QMC\00", align 1
@.str.348 = private unnamed_addr constant [13 x i8] c"CONSTANT_QMC\00", align 1
@.str.349 = private unnamed_addr constant [13 x i8] c"Constant QMC\00", align 1
@.str.350 = private unnamed_addr constant [18 x i8] c"CONSTANT_JITTERED\00", align 1
@.str.351 = private unnamed_addr constant [18 x i8] c"Constant Jittered\00", align 1
@.str.352 = private unnamed_addr constant [7 x i8] c"SQUARE\00", align 1
@.str.353 = private unnamed_addr constant [10 x i8] c"RECTANGLE\00", align 1
@.str.354 = private unnamed_addr constant [10 x i8] c"Rectangle\00", align 1
@.str.355 = private unnamed_addr constant [14 x i8] c"BUFFER_SHADOW\00", align 1
@.str.356 = private unnamed_addr constant [14 x i8] c"Buffer Shadow\00", align 1
@.str.357 = private unnamed_addr constant [50 x i8] c"Let spotlight produce shadows using shadow buffer\00", align 1
@.str.358 = private unnamed_addr constant [6 x i8] c"SMPTE\00", align 1
@.str.359 = private unnamed_addr constant [7 x i8] c"REC709\00", align 1
@.str.360 = private unnamed_addr constant [4 x i8] c"CIE\00", align 1
@.str.361 = private unnamed_addr constant [4 x i8] c"MIX\00", align 1
@.str.362 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@.str.363 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.365 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.366 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.367 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.368 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.371 = private unnamed_addr constant [7 x i8] c"DIVIDE\00", align 1
@.str.372 = private unnamed_addr constant [7 x i8] c"Divide\00", align 1
@.str.373 = private unnamed_addr constant [11 x i8] c"DIFFERENCE\00", align 1
@.str.374 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c"DARKEN\00", align 1
@.str.376 = private unnamed_addr constant [7 x i8] c"Darken\00", align 1
@.str.377 = private unnamed_addr constant [8 x i8] c"LIGHTEN\00", align 1
@.str.378 = private unnamed_addr constant [8 x i8] c"Lighten\00", align 1
@.str.379 = private unnamed_addr constant [8 x i8] c"OVERLAY\00", align 1
@.str.380 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.381 = private unnamed_addr constant [6 x i8] c"DODGE\00", align 1
@.str.382 = private unnamed_addr constant [6 x i8] c"Dodge\00", align 1
@.str.383 = private unnamed_addr constant [5 x i8] c"BURN\00", align 1
@.str.384 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.385 = private unnamed_addr constant [4 x i8] c"HUE\00", align 1
@.str.386 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.387 = private unnamed_addr constant [11 x i8] c"SATURATION\00", align 1
@.str.388 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.389 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.390 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.391 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.392 = private unnamed_addr constant [11 x i8] c"SOFT_LIGHT\00", align 1
@.str.393 = private unnamed_addr constant [11 x i8] c"Soft Light\00", align 1
@.str.394 = private unnamed_addr constant [13 x i8] c"LINEAR_LIGHT\00", align 1
@.str.395 = private unnamed_addr constant [13 x i8] c"Linear Light\00", align 1
@.str.396 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.397 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.398 = private unnamed_addr constant [51 x i8] c"Use global coordinates for the texture coordinates\00", align 1
@.str.399 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.400 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@.str.401 = private unnamed_addr constant [49 x i8] c"Use view coordinates for the texture coordinates\00", align 1
@.str.402 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.403 = private unnamed_addr constant [56 x i8] c"Use linked object's coordinates for texture coordinates\00", align 1
@switch.table.rna_Lamp_refine = private unnamed_addr constant [5 x ptr] [ptr @RNA_PointLamp, ptr @RNA_SunLamp, ptr @RNA_SpotLamp, ptr @RNA_HemiLamp, ptr @RNA_AreaLamp], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lamp_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 2
  store i16 %5, ptr %6, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Lamp_distance_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !46
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x41E0000000000000
  %7 = select i1 %6, float 0x41E0000000000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Lamp_energy_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !47
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_energy_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 15
  store float %1, ptr %5, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !48
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !49
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !50

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !49
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
  store float %15, ptr %16, align 4, !tbaa !48
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !52

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lamp_use_own_layer_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_use_own_layer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lamp_use_negative_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_use_negative_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lamp_use_specular_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_use_specular_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 4096, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lamp_use_diffuse_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_use_diffuse_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 2048, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Lamp_node_tree_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NodeTree, ptr noundef %6) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lamp_use_nodes_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 71
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_use_nodes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 71
  %7 = load i16, ptr %6, align 2, !tbaa !55
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Lamp_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Lamp_texture_slots_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Lamp_texture_slots, ptr %4, align 8, !tbaa !59
  tail call fastcc void @rna_Lamp_mtex_begin(ptr noundef %0, ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @Lamp_texture_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Lamp_mtex_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !62 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 69
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 18, i8 noundef zeroext 0, ptr noundef null) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Lamp_texture_slots_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 !PGOFuncName !63 {
  %3 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %1) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_LampTextureSlot, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Lamp_texture_slots_next(ptr noundef %0) #6 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @Lamp_texture_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Lamp_texture_slots_end(ptr noundef %0) #6 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Lamp_active_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  tail call fastcc void @rna_Lamp_active_texture_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Lamp_active_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !64 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @give_current_lamp_texture(ptr noundef %4) #11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Lamp_active_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #6 {
  tail call fastcc void @rna_Lamp_active_texture_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Lamp_active_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #6 !PGOFuncName !65 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @set_current_lamp_texture(ptr noundef %4, ptr noundef %6) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lamp_active_texture_index_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 49
  %5 = load i16, ptr %4, align 8, !tbaa !66
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lamp_active_texture_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 17)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 49
  store i16 %7, ptr %8, align 8, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlots_rna_properties_begin(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_LampTextureSlots_rna_properties, ptr %4, align 8, !tbaa !59
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @LampTextureSlots_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LampTextureSlots_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 !PGOFuncName !67 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlots_rna_properties_next(ptr noundef %0) #6 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @LampTextureSlots_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlots_rna_properties_end(ptr noundef %0) #6 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LampTextureSlots_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlots_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_falloff_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 8, !tbaa !68
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_falloff_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 23
  store i16 %5, ptr %6, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PointLamp_falloff_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef %6) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_use_sphere_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_use_sphere_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_linear_attenuation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 8, !tbaa !70
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_linear_attenuation_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_quadratic_attenuation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 4, !tbaa !71
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_quadratic_attenuation_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 21
  store float %8, ptr %9, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_use_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_use_shadow_get(ptr noundef %0) #12, !range !72
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_use_shadow_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = icmp eq i16 %5, 2
  %7 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = select i1 %6, i32 1, i32 8192
  %10 = and i32 %8, %9
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_use_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  tail call fastcc void @rna_use_shadow_set(ptr noundef %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_use_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !40
  %9 = icmp eq i16 %8, 2
  %10 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !53
  br i1 %9, label %12, label %14

12:                                               ; preds = %6
  %13 = or i32 %11, 1
  store i32 %13, ptr %10, align 4, !tbaa !53
  br label %20

14:                                               ; preds = %6
  %15 = or i32 %11, 8192
  store i32 %15, ptr %10, align 4, !tbaa !53
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = and i32 %18, -8194
  store i32 %19, ptr %17, align 4, !tbaa !53
  br label %20

20:                                               ; preds = %12, %14, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_shadow_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = and i32 %5, 8192
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = and i32 %6, -8193
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_shadow_buffer_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 32
  %5 = load i16, ptr %4, align 8, !tbaa !75
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_buffer_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  tail call fastcc void @rna_Lamp_buffer_size_set(ptr noundef %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Lamp_buffer_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp slt i32 %1, 128
  %6 = tail call i32 @llvm.smin.i32(i32 %1, i32 10240)
  %7 = trunc i32 %6 to i16
  %8 = and i16 %7, 16368
  %9 = select i1 %5, i16 128, i16 %8
  %10 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 32
  store i16 %9, ptr %10, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_shadow_filter_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 35
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_filter_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 35
  store i16 %5, ptr %6, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_shadow_sample_buffers_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 34
  %5 = load i16, ptr %4, align 4, !tbaa !78
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_sample_buffers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 34
  store i16 %5, ptr %6, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_shadow_buffer_clip_start_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 25
  %5 = load float, ptr %4, align 4, !tbaa !79
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_buffer_clip_start_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 9.999000e+03
  %7 = select i1 %6, float 9.999000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 25
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_shadow_buffer_clip_end_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 8, !tbaa !80
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_buffer_clip_end_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 9.999000e+03
  %7 = select i1 %6, float 9.999000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 26
  store float %8, ptr %9, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_shadow_buffer_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 27
  %5 = load float, ptr %4, align 4, !tbaa !81
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_buffer_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 27
  store float %8, ptr %9, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_shadow_buffer_bleed_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 8, !tbaa !82
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_buffer_bleed_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 30
  store float %8, ptr %9, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_shadow_buffer_soft_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 28
  %5 = load float, ptr %4, align 8, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_buffer_soft_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 28
  store float %8, ptr %9, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_shadow_buffer_samples_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 33
  %5 = load i16, ptr %4, align 2, !tbaa !84
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_buffer_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 16)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 33
  store i16 %7, ptr %8, align 2, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_shadow_buffer_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 37
  %5 = load i8, ptr %4, align 1, !tbaa !85
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_buffer_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 37
  store i8 %5, ptr %6, align 1, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_ge_shadow_buffer_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 48
  %5 = load i16, ptr %4, align 2, !tbaa !86
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_ge_shadow_buffer_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 48
  store i16 %5, ptr %6, align 2, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_use_auto_clip_start_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 8, !tbaa !87
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_use_auto_clip_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 36
  %7 = load i8, ptr %6, align 8, !tbaa !87
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_use_auto_clip_end_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 8, !tbaa !87
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_use_auto_clip_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 36
  %7 = load i8, ptr %6, align 8, !tbaa !87
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_compression_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 29
  %5 = load float, ptr %4, align 4, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_compression_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 29
  store float %8, ptr %9, align 4, !tbaa !88
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !49
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !90

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !49
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
  store float %15, ptr %16, align 4, !tbaa !89
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !91

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_use_only_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_use_only_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_shadow_ray_sample_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 47
  %5 = load i16, ptr %4, align 4, !tbaa !92
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_ray_sample_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 47
  store i16 %5, ptr %6, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_shadow_ray_samples_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 38
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_ray_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 38
  store i16 %7, ptr %8, align 2, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_shadow_adaptive_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 8, !tbaa !94
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_adaptive_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 46
  store float %8, ptr %9, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PointLamp_shadow_soft_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 43
  %5 = load float, ptr %4, align 4, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_shadow_soft_size_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 43
  store float %8, ptr %9, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PointLamp_use_shadow_layer_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PointLamp_use_shadow_layer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_use_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_use_shadow_get(ptr noundef %0) #12, !range !72
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_use_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  tail call fastcc void @rna_use_shadow_set(ptr noundef %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = and i32 %5, 8192
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = and i32 %6, -8193
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_buffer_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 32
  %5 = load i16, ptr %4, align 8, !tbaa !75
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_buffer_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  tail call fastcc void @rna_Lamp_buffer_size_set(ptr noundef %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_filter_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 35
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_filter_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 35
  store i16 %5, ptr %6, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_sample_buffers_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 34
  %5 = load i16, ptr %4, align 4, !tbaa !78
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_sample_buffers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 34
  store i16 %5, ptr %6, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_shadow_buffer_clip_start_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 25
  %5 = load float, ptr %4, align 4, !tbaa !79
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_buffer_clip_start_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 9.999000e+03
  %7 = select i1 %6, float 9.999000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 25
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_shadow_buffer_clip_end_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 8, !tbaa !80
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_buffer_clip_end_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 9.999000e+03
  %7 = select i1 %6, float 9.999000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 26
  store float %8, ptr %9, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_shadow_buffer_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 27
  %5 = load float, ptr %4, align 4, !tbaa !81
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_buffer_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 27
  store float %8, ptr %9, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_shadow_buffer_bleed_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 8, !tbaa !82
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_buffer_bleed_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 30
  store float %8, ptr %9, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_shadow_buffer_soft_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 28
  %5 = load float, ptr %4, align 8, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_buffer_soft_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 28
  store float %8, ptr %9, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_buffer_samples_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 33
  %5 = load i16, ptr %4, align 2, !tbaa !84
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_buffer_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 16)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 33
  store i16 %7, ptr %8, align 2, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_buffer_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 37
  %5 = load i8, ptr %4, align 1, !tbaa !85
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_buffer_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 37
  store i8 %5, ptr %6, align 1, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_ge_shadow_buffer_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 48
  %5 = load i16, ptr %4, align 2, !tbaa !86
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_ge_shadow_buffer_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 48
  store i16 %5, ptr %6, align 2, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_use_auto_clip_start_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 8, !tbaa !87
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_use_auto_clip_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 36
  %7 = load i8, ptr %6, align 8, !tbaa !87
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_use_auto_clip_end_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 8, !tbaa !87
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_use_auto_clip_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 36
  %7 = load i8, ptr %6, align 8, !tbaa !87
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_compression_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 29
  %5 = load float, ptr %4, align 4, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_compression_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 29
  store float %8, ptr %9, align 4, !tbaa !88
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !49
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !96

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !49
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
  store float %15, ptr %16, align 4, !tbaa !89
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !97

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_use_only_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_use_only_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_ray_sample_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 47
  %5 = load i16, ptr %4, align 4, !tbaa !92
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_ray_sample_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 47
  store i16 %5, ptr %6, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_ray_samples_x_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 38
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_ray_samples_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 38
  store i16 %7, ptr %8, align 2, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shadow_ray_samples_y_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 39
  %5 = load i16, ptr %4, align 4, !tbaa !98
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_ray_samples_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 39
  store i16 %7, ptr %8, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_shadow_adaptive_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 8, !tbaa !94
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_adaptive_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 46
  store float %8, ptr %9, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_shadow_soft_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 43
  %5 = load float, ptr %4, align 4, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shadow_soft_size_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 43
  store float %8, ptr %9, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_use_shadow_layer_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_use_shadow_layer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_use_umbra_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 41
  %5 = load i16, ptr %4, align 8, !tbaa !99
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_use_umbra_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 41
  %7 = load i16, ptr %6, align 8, !tbaa !99
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_use_dither_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 41
  %5 = load i16, ptr %4, align 8, !tbaa !99
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_use_dither_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 41
  %7 = load i16, ptr %6, align 8, !tbaa !99
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_use_jitter_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 41
  %5 = load i16, ptr %4, align 8, !tbaa !99
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_use_jitter_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 41
  %7 = load i16, ptr %6, align 8, !tbaa !99
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AreaLamp_shape_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 42
  %5 = load i16, ptr %4, align 2, !tbaa !100
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_shape_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 42
  store i16 %5, ptr %6, align 2, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 43
  %5 = load float, ptr %4, align 4, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_size_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 43
  store float %8, ptr %9, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_size_y_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 44
  %5 = load float, ptr %4, align 8, !tbaa !101
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_size_y_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 44
  store float %8, ptr %9, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @AreaLamp_gamma_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !102
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AreaLamp_gamma_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 10
  store float %1, ptr %5, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_falloff_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 8, !tbaa !68
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_falloff_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 23
  store i16 %5, ptr %6, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SpotLamp_falloff_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef %6) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_use_sphere_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_use_sphere_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_linear_attenuation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 8, !tbaa !70
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_linear_attenuation_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_quadratic_attenuation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 4, !tbaa !71
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_quadratic_attenuation_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 21
  store float %8, ptr %9, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_use_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_use_shadow_get(ptr noundef %0) #12, !range !72
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_use_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  tail call fastcc void @rna_use_shadow_set(ptr noundef %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_shadow_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = and i32 %5, 8193
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = and i32 %6, -8194
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_shadow_buffer_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 32
  %5 = load i16, ptr %4, align 8, !tbaa !75
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_buffer_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  tail call fastcc void @rna_Lamp_buffer_size_set(ptr noundef %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_shadow_filter_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 35
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_filter_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 35
  store i16 %5, ptr %6, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_shadow_sample_buffers_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 34
  %5 = load i16, ptr %4, align 4, !tbaa !78
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_sample_buffers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 34
  store i16 %5, ptr %6, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_shadow_buffer_clip_start_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 25
  %5 = load float, ptr %4, align 4, !tbaa !79
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_buffer_clip_start_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 9.999000e+03
  %7 = select i1 %6, float 9.999000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 25
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_shadow_buffer_clip_end_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 8, !tbaa !80
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_buffer_clip_end_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 9.999000e+03
  %7 = select i1 %6, float 9.999000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 26
  store float %8, ptr %9, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_shadow_buffer_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 27
  %5 = load float, ptr %4, align 4, !tbaa !81
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_buffer_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 27
  store float %8, ptr %9, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_shadow_buffer_bleed_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 8, !tbaa !82
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_buffer_bleed_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 30
  store float %8, ptr %9, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_shadow_buffer_soft_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 28
  %5 = load float, ptr %4, align 8, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_buffer_soft_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 28
  store float %8, ptr %9, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_shadow_buffer_samples_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 33
  %5 = load i16, ptr %4, align 2, !tbaa !84
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_buffer_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 16)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 33
  store i16 %7, ptr %8, align 2, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_shadow_buffer_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 37
  %5 = load i8, ptr %4, align 1, !tbaa !85
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_buffer_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 37
  store i8 %5, ptr %6, align 1, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_ge_shadow_buffer_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 48
  %5 = load i16, ptr %4, align 2, !tbaa !86
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_ge_shadow_buffer_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 48
  store i16 %5, ptr %6, align 2, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_use_auto_clip_start_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 8, !tbaa !87
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_use_auto_clip_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 36
  %7 = load i8, ptr %6, align 8, !tbaa !87
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_use_auto_clip_end_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 8, !tbaa !87
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_use_auto_clip_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 36
  %7 = load i8, ptr %6, align 8, !tbaa !87
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_compression_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 29
  %5 = load float, ptr %4, align 4, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_compression_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 29
  store float %8, ptr %9, align 4, !tbaa !88
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !49
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !103

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !49
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
  store float %15, ptr %16, align 4, !tbaa !89
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !104

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_use_only_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_use_only_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_shadow_ray_sample_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 47
  %5 = load i16, ptr %4, align 4, !tbaa !92
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_ray_sample_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 47
  store i16 %5, ptr %6, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_shadow_ray_samples_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 38
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_ray_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 38
  store i16 %7, ptr %8, align 2, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_shadow_adaptive_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 8, !tbaa !94
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_adaptive_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 46
  store float %8, ptr %9, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_shadow_soft_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 43
  %5 = load float, ptr %4, align 4, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_shadow_soft_size_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 43
  store float %8, ptr %9, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_use_shadow_layer_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_use_shadow_layer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_use_square_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_use_square_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_use_halo_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_use_halo_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_halo_intensity_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 19
  %5 = load float, ptr %4, align 4, !tbaa !105
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_halo_intensity_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 19
  store float %1, ptr %5, align 4, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_halo_step_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 50
  %5 = load i16, ptr %4, align 2, !tbaa !106
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_halo_step_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 12)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 50
  store i16 %7, ptr %8, align 2, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_spot_blend_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 8, !tbaa !107
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_spot_blend_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpotLamp_spot_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !108
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_spot_size_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F91DF46A0000000
  %6 = fcmp ogt float %1, 0x400921FB60000000
  %7 = select i1 %6, float 0x400921FB60000000, float %1
  %8 = select i1 %5, float 0x3F91DF46A0000000, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpotLamp_show_cone_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpotLamp_show_cone_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -131073
  %9 = select i1 %5, i32 0, i32 131072
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_use_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_use_shadow_get(ptr noundef %0) #12, !range !72
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_use_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  tail call fastcc void @rna_use_shadow_set(ptr noundef %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_shadow_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = and i32 %5, 8192
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = and i32 %6, -8193
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_shadow_buffer_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 32
  %5 = load i16, ptr %4, align 8, !tbaa !75
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_buffer_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  tail call fastcc void @rna_Lamp_buffer_size_set(ptr noundef %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_shadow_filter_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 35
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_filter_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 35
  store i16 %5, ptr %6, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_shadow_sample_buffers_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 34
  %5 = load i16, ptr %4, align 4, !tbaa !78
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_sample_buffers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 34
  store i16 %5, ptr %6, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_shadow_buffer_clip_start_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 25
  %5 = load float, ptr %4, align 4, !tbaa !79
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_buffer_clip_start_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 9.999000e+03
  %7 = select i1 %6, float 9.999000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 25
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_shadow_buffer_clip_end_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 8, !tbaa !80
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_buffer_clip_end_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 9.999000e+03
  %7 = select i1 %6, float 9.999000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 26
  store float %8, ptr %9, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_shadow_buffer_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 27
  %5 = load float, ptr %4, align 4, !tbaa !81
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_buffer_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 27
  store float %8, ptr %9, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_shadow_buffer_bleed_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 8, !tbaa !82
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_buffer_bleed_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 30
  store float %8, ptr %9, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_shadow_buffer_soft_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 28
  %5 = load float, ptr %4, align 8, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_buffer_soft_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 28
  store float %8, ptr %9, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_shadow_buffer_samples_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 33
  %5 = load i16, ptr %4, align 2, !tbaa !84
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_buffer_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 16)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 33
  store i16 %7, ptr %8, align 2, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_shadow_buffer_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 37
  %5 = load i8, ptr %4, align 1, !tbaa !85
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_buffer_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 37
  store i8 %5, ptr %6, align 1, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_ge_shadow_buffer_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 48
  %5 = load i16, ptr %4, align 2, !tbaa !86
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_ge_shadow_buffer_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 48
  store i16 %5, ptr %6, align 2, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_use_auto_clip_start_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 8, !tbaa !87
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_use_auto_clip_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 36
  %7 = load i8, ptr %6, align 8, !tbaa !87
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_use_auto_clip_end_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 8, !tbaa !87
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_use_auto_clip_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 36
  %7 = load i8, ptr %6, align 8, !tbaa !87
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_compression_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 29
  %5 = load float, ptr %4, align 4, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_compression_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 29
  store float %8, ptr %9, align 4, !tbaa !88
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !49
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !109

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !49
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
  store float %15, ptr %16, align 4, !tbaa !89
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !110

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_use_only_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_use_only_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_shadow_ray_sample_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 47
  %5 = load i16, ptr %4, align 4, !tbaa !92
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_ray_sample_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 47
  store i16 %5, ptr %6, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_shadow_ray_samples_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 38
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_ray_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 38
  store i16 %7, ptr %8, align 2, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_shadow_adaptive_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 8, !tbaa !94
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_adaptive_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 46
  store float %8, ptr %9, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_shadow_soft_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 43
  %5 = load float, ptr %4, align 4, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_soft_size_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 43
  store float %8, ptr %9, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SunLamp_use_shadow_layer_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_use_shadow_layer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SunLamp_sky_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  tail call fastcc void @rna_Lamp_sky_settings_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Lamp_sky_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !111 {
  %3 = load ptr, ptr %1, align 8, !tbaa !112
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_LampSkySettings, ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SunLamp_shadow_frustum_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 65
  %5 = load float, ptr %4, align 8, !tbaa !113
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SunLamp_shadow_frustum_size_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 65
  store float %1, ptr %5, align 8, !tbaa !113
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampSkySettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_LampSkySettings_rna_properties, ptr %4, align 8, !tbaa !59
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #11
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @LampSkySettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LampSkySettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 !PGOFuncName !114 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampSkySettings_rna_properties_next(ptr noundef %0) #6 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @LampSkySettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampSkySettings_rna_properties_end(ptr noundef %0) #6 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LampSkySettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampSkySettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LampSkySettings_sky_color_space_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 66
  %5 = load i16, ptr %4, align 4, !tbaa !115
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_sky_color_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 66
  store i16 %5, ptr %6, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LampSkySettings_sky_blend_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 52
  %5 = load i16, ptr %4, align 2, !tbaa !116
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_sky_blend_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 52
  store i16 %5, ptr %6, align 2, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_horizon_brightness_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 53
  %5 = load float, ptr %4, align 8, !tbaa !117
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_horizon_brightness_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 53
  store float %8, ptr %9, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_spread_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 54
  %5 = load float, ptr %4, align 4, !tbaa !118
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_spread_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 54
  store float %8, ptr %9, align 4, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_sun_brightness_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 55
  %5 = load float, ptr %4, align 8, !tbaa !119
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_sun_brightness_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 55
  store float %8, ptr %9, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_sun_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 56
  %5 = load float, ptr %4, align 4, !tbaa !120
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_sun_size_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 56
  store float %8, ptr %9, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_backscattered_light_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 57
  %5 = load float, ptr %4, align 8, !tbaa !121
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_backscattered_light_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, -1.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float -1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 57
  store float %8, ptr %9, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_sun_intensity_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 58
  %5 = load float, ptr %4, align 4, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_sun_intensity_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 58
  store float %8, ptr %9, align 4, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_atmosphere_turbidity_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 59
  %5 = load float, ptr %4, align 8, !tbaa !123
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_atmosphere_turbidity_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+01
  %7 = select i1 %6, float 3.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 59
  store float %8, ptr %9, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_atmosphere_inscattering_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 60
  %5 = load float, ptr %4, align 4, !tbaa !124
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_atmosphere_inscattering_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 60
  store float %8, ptr %9, align 4, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_atmosphere_extinction_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 61
  %5 = load float, ptr %4, align 8, !tbaa !125
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_atmosphere_extinction_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 61
  store float %8, ptr %9, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_atmosphere_distance_factor_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 62
  %5 = load float, ptr %4, align 4, !tbaa !126
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_atmosphere_distance_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+02
  %7 = select i1 %6, float 5.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 62
  store float %8, ptr %9, align 4, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_sky_blend_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 63
  %5 = load float, ptr %4, align 8, !tbaa !127
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_sky_blend_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 63
  store float %8, ptr %9, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampSkySettings_sky_exposure_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 64
  %5 = load float, ptr %4, align 4, !tbaa !128
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_sky_exposure_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 64
  store float %8, ptr %9, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LampSkySettings_use_sky_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 51
  %5 = load i16, ptr %4, align 4, !tbaa !129
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_use_sky_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 51
  %7 = load i16, ptr %6, align 4, !tbaa !129
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LampSkySettings_use_atmosphere_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 51
  %5 = load i16, ptr %4, align 4, !tbaa !129
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampSkySettings_use_atmosphere_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 51
  %7 = load i16, ptr %6, align 4, !tbaa !129
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LampTextureSlot_texture_coords_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i16, ptr %3, align 8, !tbaa !130
  %5 = sext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampTextureSlot_texture_coords_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  store i16 %5, ptr %4, align 8, !tbaa !130
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlot_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlot_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #6 {
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
  store ptr %6, ptr %10, align 8, !tbaa !132
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LampTextureSlot_use_map_color_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !133
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampTextureSlot_use_map_color_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !133
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LampTextureSlot_use_map_shadow_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !133
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampTextureSlot_use_map_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !133
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampTextureSlot_color_factor_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 28
  %5 = load float, ptr %4, align 4, !tbaa !134
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampTextureSlot_color_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 28
  store float %1, ptr %5, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LampTextureSlot_shadow_factor_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 61
  %5 = load float, ptr %4, align 8, !tbaa !135
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LampTextureSlot_shadow_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 61
  store float %1, ptr %5, align 8, !tbaa !135
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @LampTextureSlots_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = tail call ptr @rna_mtex_texture_slots_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @rna_mtex_texture_slots_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlots_add_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #6 {
  %5 = load ptr, ptr %2, align 8, !tbaa !112
  %6 = load ptr, ptr %3, align 8, !tbaa !136
  %7 = tail call ptr @rna_mtex_texture_slots_add(ptr noundef %5, ptr noundef %0, ptr noundef %1) #11
  store ptr %7, ptr %6, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @LampTextureSlots_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = tail call ptr @rna_mtex_texture_slots_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @rna_mtex_texture_slots_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlots_create_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #6 {
  %5 = load ptr, ptr %2, align 8, !tbaa !112
  %6 = load ptr, ptr %3, align 8, !tbaa !136
  %7 = load i32, ptr %6, align 4, !tbaa !138
  %8 = getelementptr inbounds i8, ptr %6, i64 4
  %9 = tail call ptr @rna_mtex_texture_slots_create(ptr noundef %5, ptr noundef %0, ptr noundef %1, i32 noundef %7) #11
  store ptr %9, ptr %8, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlots_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  tail call void @rna_mtex_texture_slots_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: optsize
declare void @rna_mtex_texture_slots_clear(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LampTextureSlots_clear_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #6 {
  %5 = load ptr, ptr %2, align 8, !tbaa !112
  %6 = load ptr, ptr %3, align 8, !tbaa !136
  %7 = load i32, ptr %6, align 4, !tbaa !138
  tail call void @rna_mtex_texture_slots_clear(ptr noundef %5, ptr noundef %0, ptr noundef %1, i32 noundef %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Lamp_draw_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #6 !PGOFuncName !139 {
  %4 = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #11
  tail call void @WM_main_add_notifier(i32 noundef 136904704, ptr noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Lamp_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #6 !PGOFuncName !140 {
  %4 = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #11
  tail call void @WM_main_add_notifier(i32 noundef 136839168, ptr noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Lamp_use_nodes_update(ptr noundef %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !141 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 71
  %6 = load i16, ptr %5, align 2, !tbaa !55
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 74
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_node_shader_default(ptr noundef %0, ptr noundef nonnull %4) #11
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  tail call void @rna_Lamp_update(ptr poison, ptr poison, ptr noundef nonnull %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_Lamp_refine(ptr nocapture noundef readonly %0) #0 !PGOFuncName !142 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = icmp ult i16 %5, 5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i16 %5 to i64
  %9 = getelementptr inbounds [5 x ptr], ptr @switch.table.rna_Lamp_refine, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ @RNA_Lamp, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Lamp_sky_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #6 !PGOFuncName !143 {
  %4 = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #11
  tail call void @WM_main_add_notifier(i32 noundef 136970240, ptr noundef %4) #11
  ret void
}

; Function Attrs: optsize
declare ptr @rna_TextureSlot_path(ptr noundef) #7

; Function Attrs: optsize
declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @rna_iterator_array_dereference_get(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @give_current_lamp_texture(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @set_current_lamp_texture(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!40 = !{!41, !43, i64 128}
!41 = !{!"Lamp", !42, i64 0, !37, i64 120, !43, i64 128, !43, i64 130, !44, i64 132, !43, i64 136, !43, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !37, i64 200, !43, i64 208, !43, i64 210, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !43, i64 240, !43, i64 242, !43, i64 244, !43, i64 246, !38, i64 248, !38, i64 249, !43, i64 250, !43, i64 252, !43, i64 254, !43, i64 256, !43, i64 258, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !43, i64 276, !43, i64 278, !43, i64 280, !43, i64 282, !43, i64 284, !43, i64 286, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !43, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !43, i64 496, !43, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"float", !38, i64 0}
!46 = !{!41, !45, i64 176}
!47 = !{!41, !45, i64 172}
!48 = !{!41, !45, i64 140}
!49 = !{!45, !45, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!41, !44, i64 132}
!54 = !{!41, !37, i64 512}
!55 = !{!41, !43, i64 498}
!56 = !{!41, !37, i64 120}
!57 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 8, !58}
!58 = !{!37, !37, i64 0}
!59 = !{!60, !37, i64 48}
!60 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!61 = !{!60, !44, i64 128}
!62 = !{!"rna_lamp_gen.c:rna_Lamp_mtex_begin"}
!63 = !{!"rna_lamp_gen.c:Lamp_texture_slots_get"}
!64 = !{!"rna_lamp_gen.c:rna_Lamp_active_texture_get"}
!65 = !{!"rna_lamp_gen.c:rna_Lamp_active_texture_set"}
!66 = !{!41, !43, i64 280}
!67 = !{!"rna_lamp_gen.c:LampTextureSlots_rna_properties_get"}
!68 = !{!41, !43, i64 208}
!69 = !{!41, !37, i64 200}
!70 = !{!41, !45, i64 192}
!71 = !{!41, !45, i64 196}
!72 = !{i32 0, i32 8193}
!73 = !{!"rna_lamp_gen.c:rna_use_shadow_get"}
!74 = !{!"rna_lamp_gen.c:rna_use_shadow_set"}
!75 = !{!41, !43, i64 240}
!76 = !{!"rna_lamp_gen.c:rna_Lamp_buffer_size_set"}
!77 = !{!41, !43, i64 246}
!78 = !{!41, !43, i64 244}
!79 = !{!41, !45, i64 212}
!80 = !{!41, !45, i64 216}
!81 = !{!41, !45, i64 220}
!82 = !{!41, !45, i64 232}
!83 = !{!41, !45, i64 224}
!84 = !{!41, !43, i64 242}
!85 = !{!41, !38, i64 249}
!86 = !{!41, !43, i64 278}
!87 = !{!41, !38, i64 248}
!88 = !{!41, !45, i64 228}
!89 = !{!41, !45, i64 156}
!90 = distinct !{!90, !51}
!91 = distinct !{!91, !51}
!92 = !{!41, !43, i64 276}
!93 = !{!41, !43, i64 250}
!94 = !{!41, !45, i64 272}
!95 = !{!41, !45, i64 260}
!96 = distinct !{!96, !51}
!97 = distinct !{!97, !51}
!98 = !{!41, !43, i64 252}
!99 = !{!41, !43, i64 256}
!100 = !{!41, !43, i64 258}
!101 = !{!41, !45, i64 264}
!102 = !{!41, !45, i64 152}
!103 = distinct !{!103, !51}
!104 = distinct !{!104, !51}
!105 = !{!41, !45, i64 188}
!106 = !{!41, !43, i64 282}
!107 = !{!41, !45, i64 184}
!108 = !{!41, !45, i64 180}
!109 = distinct !{!109, !51}
!110 = distinct !{!110, !51}
!111 = !{!"rna_lamp_gen.c:rna_Lamp_sky_settings_get"}
!112 = !{!35, !37, i64 0}
!113 = !{!41, !45, i64 336}
!114 = !{!"rna_lamp_gen.c:LampSkySettings_rna_properties_get"}
!115 = !{!41, !43, i64 340}
!116 = !{!41, !43, i64 286}
!117 = !{!41, !45, i64 288}
!118 = !{!41, !45, i64 292}
!119 = !{!41, !45, i64 296}
!120 = !{!41, !45, i64 300}
!121 = !{!41, !45, i64 304}
!122 = !{!41, !45, i64 308}
!123 = !{!41, !45, i64 312}
!124 = !{!41, !45, i64 316}
!125 = !{!41, !45, i64 320}
!126 = !{!41, !45, i64 324}
!127 = !{!41, !45, i64 328}
!128 = !{!41, !45, i64 332}
!129 = !{!41, !43, i64 284}
!130 = !{!131, !43, i64 0}
!131 = !{!"MTex", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !45, i64 116, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !43, i64 128, !43, i64 130, !38, i64 132, !38, i64 133, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308}
!132 = !{!131, !37, i64 8}
!133 = !{!131, !43, i64 2}
!134 = !{!131, !45, i64 164}
!135 = !{!131, !45, i64 296}
!136 = !{!137, !37, i64 0}
!137 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!138 = !{!44, !44, i64 0}
!139 = !{!"rna_lamp_gen.c:rna_Lamp_draw_update"}
!140 = !{!"rna_lamp_gen.c:rna_Lamp_update"}
!141 = !{!"rna_lamp_gen.c:rna_Lamp_use_nodes_update"}
!142 = !{!"rna_lamp_gen.c:rna_Lamp_refine"}
!143 = !{!"rna_lamp_gen.c:rna_Lamp_sky_update"}
