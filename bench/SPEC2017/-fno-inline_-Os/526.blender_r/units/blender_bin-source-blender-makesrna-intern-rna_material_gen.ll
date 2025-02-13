; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_material_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_material_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"MIX\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"DIVIDE\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Divide\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DIFFERENCE\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"DARKEN\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Darken\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"LIGHTEN\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Lighten\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"OVERLAY\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"DODGE\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Dodge\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"BURN\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"HUE\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"SATURATION\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"SOFT_LIGHT\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Soft Light\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"LINEAR_LIGHT\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Linear Light\00", align 1
@ramp_blend_items = dso_local local_unnamed_addr global [19 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [36 x i8] c"Maximum number of textures added %d\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Index %d is invalid\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"Mtex not found for this type\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@RNA_MaterialVolume = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialHalo, ptr @RNA_MaterialRaytraceTransparency, ptr null, %struct.ListBase { ptr @rna_MaterialVolume_rna_properties, ptr @rna_MaterialVolume_asymmetry } }, ptr @.str.446, ptr null, ptr null, i32 4, ptr @.str.447, ptr @.str.448, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialVolume_rna_properties, ptr null, ptr @RNA_Material, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_MaterialGameSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Mesh, ptr @RNA_MaterialPhysics, ptr null, %struct.ListBase { ptr @rna_MaterialGameSettings_rna_properties, ptr @rna_MaterialGameSettings_physics } }, ptr @.str.753, ptr null, ptr null, i32 4, ptr @.str.754, ptr @.str.755, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialGameSettings_rna_properties, ptr null, ptr @RNA_Material, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_NodeTree = external global %struct.StructRNA, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_Material_texture_slots = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_active_texture, ptr @rna_Material_animation_data, i32 -1, ptr @.str.193, i32 0, ptr @.str.194, ptr @.str.195, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_MaterialTextureSlots, ptr null }, ptr @Material_texture_slots_begin, ptr @Material_texture_slots_next, ptr @Material_texture_slots_end, ptr @Material_texture_slots_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaterialTextureSlot }, align 8
@rna_Material_texture_paint_images = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_texture_paint_slots, ptr @rna_Material_active_texture_index, i32 -1, ptr @.str.202, i32 0, ptr @.str.203, ptr @.str.204, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_texture_paint_images_begin, ptr @Material_texture_paint_images_next, ptr @Material_texture_paint_images_end, ptr @Material_texture_paint_images_get, ptr null, ptr @Material_texture_paint_images_lookup_int, ptr @Material_texture_paint_images_lookup_string, ptr null, ptr @RNA_Image }, align 8
@.str.40 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.Material_texture_paint_images_lookup_int = private unnamed_addr constant [41 x i8] c"Material_texture_paint_images_lookup_int\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@rna_Material_texture_paint_slots = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_paint_active_slot, ptr @rna_Material_texture_paint_images, i32 -1, ptr @.str.205, i32 16384, ptr @.str.206, ptr @.str.195, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_texture_paint_slots_begin, ptr @Material_texture_paint_slots_next, ptr @Material_texture_paint_slots_end, ptr @Material_texture_paint_slots_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_TexPaintSlot }, align 8
@RNA_ColorRamp = external global %struct.StructRNA, align 8
@rna_MaterialTextureSlots_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlots_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlots_rna_properties_begin, ptr @MaterialTextureSlots_rna_properties_next, ptr @MaterialTextureSlots_rna_properties_end, ptr @MaterialTextureSlots_rna_properties_get, ptr null, ptr null, ptr @MaterialTextureSlots_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_TexPaintSlot_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_TexPaintSlot_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TexPaintSlot_rna_properties_begin, ptr @TexPaintSlot_rna_properties_next, ptr @TexPaintSlot_rna_properties_end, ptr @TexPaintSlot_rna_properties_get, ptr null, ptr null, ptr @TexPaintSlot_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaterialRaytraceMirror_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialRaytraceMirror_rna_properties_begin, ptr @MaterialRaytraceMirror_rna_properties_next, ptr @MaterialRaytraceMirror_rna_properties_end, ptr @MaterialRaytraceMirror_rna_properties_get, ptr null, ptr null, ptr @MaterialRaytraceMirror_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaterialRaytraceTransparency_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_rna_properties_begin, ptr @MaterialRaytraceTransparency_rna_properties_next, ptr @MaterialRaytraceTransparency_rna_properties_end, ptr @MaterialRaytraceTransparency_rna_properties_get, ptr null, ptr null, ptr @MaterialRaytraceTransparency_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaterialVolume_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialVolume_rna_properties_begin, ptr @MaterialVolume_rna_properties_next, ptr @MaterialVolume_rna_properties_end, ptr @MaterialVolume_rna_properties_get, ptr null, ptr null, ptr @MaterialVolume_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaterialHalo_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_rna_properties_begin, ptr @MaterialHalo_rna_properties_next, ptr @MaterialHalo_rna_properties_end, ptr @MaterialHalo_rna_properties_get, ptr null, ptr null, ptr @MaterialHalo_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaterialSubsurfaceScattering_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_rna_properties_begin, ptr @MaterialSubsurfaceScattering_rna_properties_next, ptr @MaterialSubsurfaceScattering_rna_properties_end, ptr @MaterialSubsurfaceScattering_rna_properties_get, ptr null, ptr null, ptr @MaterialSubsurfaceScattering_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@rna_MaterialStrand_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialStrand_rna_properties_begin, ptr @MaterialStrand_rna_properties_next, ptr @MaterialStrand_rna_properties_end, ptr @MaterialStrand_rna_properties_get, ptr null, ptr null, ptr @MaterialStrand_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaterialPhysics_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialPhysics_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialPhysics_rna_properties_begin, ptr @MaterialPhysics_rna_properties_next, ptr @MaterialPhysics_rna_properties_end, ptr @MaterialPhysics_rna_properties_get, ptr null, ptr null, ptr @MaterialPhysics_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaterialGameSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialGameSettings_rna_type, ptr null, i32 -1, ptr @.str.309, i32 128, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.45, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialGameSettings_rna_properties_begin, ptr @MaterialGameSettings_rna_properties_next, ptr @MaterialGameSettings_rna_properties_end, ptr @MaterialGameSettings_rna_properties_get, ptr null, ptr null, ptr @MaterialGameSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Material_use_transparency = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_transparency_method, ptr @rna_Material_type, i32 -1, ptr @.str.46, i32 3, ptr @.str.47, ptr @.str.48, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_transparency_get, ptr @Material_use_transparency_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.42 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"Material type defining how the object is rendered\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Material_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.756, i32 0, ptr @.str.757, ptr @.str.758 }, %struct.EnumPropertyItem { i32 3, ptr @.str.759, i32 0, ptr @.str.760, ptr @.str.761 }, %struct.EnumPropertyItem { i32 2, ptr @.str.762, i32 0, ptr @.str.164, ptr @.str.763 }, %struct.EnumPropertyItem { i32 1, ptr @.str.764, i32 0, ptr @.str.167, ptr @.str.765 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_transparency, ptr null, i32 -1, ptr @.str.42, i32 3, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_type_get, ptr @Material_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_type_items, i32 4, i32 0 }, align 8
@rna_Material_transparency_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_preview_render_type, ptr @rna_Material_use_transparency, i32 -1, ptr @.str.49, i32 3, ptr @.str.50, ptr @.str.51, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_transparency_method_get, ptr @Material_transparency_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_transparency_method_items, i32 3, i32 0 }, align 8
@.str.46 = private unnamed_addr constant [17 x i8] c"use_transparency\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Transparency\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Render material as transparent\00", align 1
@rna_Material_preview_render_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_ambient, ptr @rna_Material_transparency_method, i32 -1, ptr @.str.52, i32 3, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update_previews, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_preview_render_type_get, ptr @Material_preview_render_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_preview_render_type_items, i32 6, i32 0 }, align 8
@.str.49 = private unnamed_addr constant [20 x i8] c"transparency_method\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"Transparency Method\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"Method to use for rendering transparency\00", align 1
@rna_Material_transparency_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.766, i32 0, ptr @.str.767, ptr @.str.768 }, %struct.EnumPropertyItem { i32 64, ptr @.str.769, i32 0, ptr @.str.770, ptr @.str.771 }, %struct.EnumPropertyItem { i32 131072, ptr @.str.772, i32 0, ptr @.str.773, ptr @.str.774 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_ambient = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_emit, ptr @rna_Material_preview_render_type, i32 -1, ptr @.str.55, i32 8195, ptr @.str.56, ptr @.str.57, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @Material_ambient_get, ptr @Material_ambient_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.52 = private unnamed_addr constant [20 x i8] c"preview_render_type\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Preview render type\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"Type of preview render\00", align 1
@rna_Material_preview_render_type_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.775, i32 728, ptr @.str.776, ptr @.str.777 }, %struct.EnumPropertyItem { i32 1, ptr @.str.778, i32 729, ptr @.str.779, ptr @.str.779 }, %struct.EnumPropertyItem { i32 2, ptr @.str.780, i32 730, ptr @.str.781, ptr @.str.781 }, %struct.EnumPropertyItem { i32 3, ptr @.str.782, i32 731, ptr @.str.783, ptr @.str.783 }, %struct.EnumPropertyItem { i32 10, ptr @.str.784, i32 732, ptr @.str.785, ptr @.str.786 }, %struct.EnumPropertyItem { i32 4, ptr @.str.787, i32 735, ptr @.str.788, ptr @.str.789 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_emit = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_translucency, ptr @rna_Material_ambient, i32 -1, ptr @.str.58, i32 8195, ptr @.str.59, ptr @.str.60, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @Material_emit_get, ptr @Material_emit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.55 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"Ambient\00", align 1
@.str.57 = private unnamed_addr constant [53 x i8] c"Amount of global ambient color the material receives\00", align 1
@rna_Material_translucency = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_cubic, ptr @rna_Material_emit, i32 -1, ptr @.str.61, i32 8195, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @Material_translucency_get, ptr @Material_translucency_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.58 = private unnamed_addr constant [5 x i8] c"emit\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"Emit\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"Amount of light to emit\00", align 1
@rna_Material_use_cubic = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_object_color, ptr @rna_Material_translucency, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_cubic_get, ptr @Material_use_cubic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.61 = private unnamed_addr constant [13 x i8] c"translucency\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"Translucency\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"Amount of diffuse shading on the back side\00", align 1
@rna_Material_use_object_color = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_shadow_ray_bias, ptr @rna_Material_use_cubic, i32 -1, ptr @.str.67, i32 3, ptr @.str.68, ptr @.str.69, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_object_color_get, ptr @Material_use_object_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.64 = private unnamed_addr constant [10 x i8] c"use_cubic\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"Cubic Interpolation\00", align 1
@.str.66 = private unnamed_addr constant [69 x i8] c"Use cubic interpolation for diffuse values, for smoother transitions\00", align 1
@rna_Material_shadow_ray_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_shadow_buffer_bias, ptr @rna_Material_use_object_color, i32 -1, ptr @.str.70, i32 8195, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 524, i32 4, ptr null, ptr null }, ptr @Material_shadow_ray_bias_get, ptr @Material_shadow_ray_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.500000e-01, float 0.000000e+00, float 2.500000e-01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.67 = private unnamed_addr constant [17 x i8] c"use_object_color\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"Object Color\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"Modulate the result with a per-object color\00", align 1
@rna_Material_shadow_buffer_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_shadow_cast_alpha, ptr @rna_Material_shadow_ray_bias, i32 -1, ptr @.str.73, i32 8195, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 528, i32 4, ptr null, ptr null }, ptr @Material_shadow_buffer_bias_get, ptr @Material_shadow_buffer_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.70 = private unnamed_addr constant [16 x i8] c"shadow_ray_bias\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Shadow Ray Bias\00", align 1
@.str.72 = private unnamed_addr constant [73 x i8] c"Shadow raytracing bias to prevent terminator problems on shadow boundary\00", align 1
@rna_Material_shadow_cast_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_light_group, ptr @rna_Material_shadow_buffer_bias, i32 -1, ptr @.str.76, i32 8195, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 532, i32 4, ptr null, ptr null }, ptr @Material_shadow_cast_alpha_get, ptr @Material_shadow_cast_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+00, float 0x3F50624DE0000000, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.73 = private unnamed_addr constant [19 x i8] c"shadow_buffer_bias\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Shadow Buffer Bias\00", align 1
@.str.75 = private unnamed_addr constant [57 x i8] c"Factor to multiply shadow buffer bias with (0 is ignore)\00", align 1
@rna_Material_light_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_pass_index, ptr @rna_Material_shadow_cast_alpha, i32 -1, ptr @.str.79, i32 8388609, ptr @.str.80, ptr @.str.81, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_light_group_get, ptr @Material_light_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.76 = private unnamed_addr constant [18 x i8] c"shadow_cast_alpha\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"Shadow Casting Alpha\00", align 1
@.str.78 = private unnamed_addr constant [66 x i8] c"Shadow casting alpha, in use for Irregular and Deep shadow buffer\00", align 1
@rna_Material_pass_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_light_group_exclusive, ptr @rna_Material_light_group, i32 -1, ptr @.str.82, i32 8195, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.45, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 83886080, ptr null, ptr null, i32 886, i32 1, ptr null, ptr null }, ptr @Material_pass_index_get, ptr @Material_pass_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.79 = private unnamed_addr constant [12 x i8] c"light_group\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Light Group\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"Limit lighting to lamps in this Group\00", align 1
@rna_Material_use_light_group_exclusive = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_light_group_local, ptr @rna_Material_pass_index, i32 -1, ptr @.str.85, i32 3, ptr @.str.86, ptr @.str.87, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_light_group_exclusive_get, ptr @Material_use_light_group_exclusive_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.82 = private unnamed_addr constant [11 x i8] c"pass_index\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"Pass Index\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"Index number for the IndexMA render pass\00", align 1
@rna_Material_use_light_group_local = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_raytrace, ptr @rna_Material_use_light_group_exclusive, i32 -1, ptr @.str.88, i32 3, ptr @.str.89, ptr @.str.90, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_light_group_local_get, ptr @Material_use_light_group_local_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.85 = private unnamed_addr constant [26 x i8] c"use_light_group_exclusive\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"Light Group Exclusive\00", align 1
@.str.87 = private unnamed_addr constant [95 x i8] c"Material uses the light group exclusively - these lamps are excluded from other scene lighting\00", align 1
@rna_Material_use_raytrace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_shadows, ptr @rna_Material_use_light_group_local, i32 -1, ptr @.str.91, i32 3, ptr @.str.92, ptr @.str.93, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_raytrace_get, ptr @Material_use_raytrace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.88 = private unnamed_addr constant [22 x i8] c"use_light_group_local\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"Light Group Local\00", align 1
@.str.90 = private unnamed_addr constant [67 x i8] c"When linked in, material uses local light group with the same name\00", align 1
@rna_Material_use_shadows = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_shadeless, ptr @rna_Material_use_raytrace, i32 -1, ptr @.str.94, i32 3, ptr @.str.95, ptr @.str.96, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_shadows_get, ptr @Material_use_shadows_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.91 = private unnamed_addr constant [13 x i8] c"use_raytrace\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"Traceable\00", align 1
@.str.93 = private unnamed_addr constant [75 x i8] c"Include this material and geometry that uses it in raytracing calculations\00", align 1
@rna_Material_use_shadeless = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_vertex_color_light, ptr @rna_Material_use_shadows, i32 -1, ptr @.str.97, i32 3, ptr @.str.98, ptr @.str.99, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_shadeless_get, ptr @Material_use_shadeless_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.94 = private unnamed_addr constant [12 x i8] c"use_shadows\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"Shadows\00", align 1
@.str.96 = private unnamed_addr constant [39 x i8] c"Allow this material to receive shadows\00", align 1
@rna_Material_use_vertex_color_light = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_vertex_color_paint, ptr @rna_Material_use_shadeless, i32 -1, ptr @.str.100, i32 3, ptr @.str.101, ptr @.str.102, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_vertex_color_light_get, ptr @Material_use_vertex_color_light_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.97 = private unnamed_addr constant [14 x i8] c"use_shadeless\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Shadeless\00", align 1
@.str.99 = private unnamed_addr constant [50 x i8] c"Make this material insensitive to light or shadow\00", align 1
@rna_Material_use_vertex_color_paint = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_invert_z, ptr @rna_Material_use_vertex_color_light, i32 -1, ptr @.str.103, i32 3, ptr @.str.104, ptr @.str.105, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_vertex_color_paint_get, ptr @Material_use_vertex_color_paint_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.100 = private unnamed_addr constant [23 x i8] c"use_vertex_color_light\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"Vertex Color Light\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"Add vertex colors as additional lighting\00", align 1
@rna_Material_invert_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_offset_z, ptr @rna_Material_use_vertex_color_paint, i32 -1, ptr @.str.106, i32 3, ptr @.str.107, ptr @.str.108, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_invert_z_get, ptr @Material_invert_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.103 = private unnamed_addr constant [23 x i8] c"use_vertex_color_paint\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"Vertex Color Paint\00", align 1
@.str.105 = private unnamed_addr constant [99 x i8] c"Replace object base color with vertex colors (multiply with 'texture face' face assigned textures)\00", align 1
@rna_Material_offset_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_sky, ptr @rna_Material_invert_z, i32 -1, ptr @.str.109, i32 8195, ptr @.str.110, ptr @.str.111, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 212, i32 4, ptr null, ptr null }, ptr @Material_offset_z_get, ptr @Material_offset_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.106 = private unnamed_addr constant [9 x i8] c"invert_z\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"Invert Z Depth\00", align 1
@.str.108 = private unnamed_addr constant [66 x i8] c"Render material's faces with an inverted Z buffer (scanline only)\00", align 1
@rna_Material_use_sky = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_only_shadow, ptr @rna_Material_offset_z, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_sky_get, ptr @Material_use_sky_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.109 = private unnamed_addr constant [9 x i8] c"offset_z\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"Z Offset\00", align 1
@.str.111 = private unnamed_addr constant [67 x i8] c"Give faces an artificial offset in the Z buffer for Z transparency\00", align 1
@rna_Material_use_only_shadow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_shadow_only_type, ptr @rna_Material_use_sky, i32 -1, ptr @.str.115, i32 3, ptr @.str.116, ptr @.str.117, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_only_shadow_get, ptr @Material_use_only_shadow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.112 = private unnamed_addr constant [8 x i8] c"use_sky\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"Sky\00", align 1
@.str.114 = private unnamed_addr constant [83 x i8] c"Render this material with zero alpha, with sky background in place (scanline only)\00", align 1
@rna_Material_shadow_only_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_face_texture, ptr @rna_Material_use_only_shadow, i32 -1, ptr @.str.118, i32 3, ptr @.str.119, ptr @.str.120, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_shadow_only_type_get, ptr @Material_shadow_only_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_shadow_only_type_items, i32 3, i32 0 }, align 8
@.str.115 = private unnamed_addr constant [16 x i8] c"use_only_shadow\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"Only Shadow\00", align 1
@.str.117 = private unnamed_addr constant [104 x i8] c"Render shadows as the material's alpha value, making the material transparent except for shadowed areas\00", align 1
@rna_Material_use_face_texture = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_face_texture_alpha, ptr @rna_Material_shadow_only_type, i32 -1, ptr @.str.121, i32 3, ptr @.str.122, ptr @.str.123, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_face_texture_get, ptr @Material_use_face_texture_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.118 = private unnamed_addr constant [17 x i8] c"shadow_only_type\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"Shadow Type\00", align 1
@.str.120 = private unnamed_addr constant [20 x i8] c"How to draw shadows\00", align 1
@rna_Material_shadow_only_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.790, i32 0, ptr @.str.791, ptr @.str.792 }, %struct.EnumPropertyItem { i32 1, ptr @.str.793, i32 0, ptr @.str.794, ptr @.str.795 }, %struct.EnumPropertyItem { i32 2, ptr @.str.796, i32 0, ptr @.str.797, ptr @.str.798 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_use_face_texture_alpha = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_cast_shadows, ptr @rna_Material_use_face_texture, i32 -1, ptr @.str.124, i32 3, ptr @.str.125, ptr @.str.126, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_face_texture_alpha_get, ptr @Material_use_face_texture_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.121 = private unnamed_addr constant [17 x i8] c"use_face_texture\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"Face Textures\00", align 1
@.str.123 = private unnamed_addr constant [70 x i8] c"Replace the object's base color with color from UV map image textures\00", align 1
@rna_Material_use_cast_shadows = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_cast_shadows_only, ptr @rna_Material_use_face_texture_alpha, i32 -1, ptr @.str.127, i32 3, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_cast_shadows_get, ptr @Material_use_cast_shadows_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.124 = private unnamed_addr constant [23 x i8] c"use_face_texture_alpha\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"Face Textures Alpha\00", align 1
@.str.126 = private unnamed_addr constant [76 x i8] c"Replace the object's base alpha value with alpha from UV map image textures\00", align 1
@rna_Material_use_cast_shadows_only = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_mist, ptr @rna_Material_use_cast_shadows, i32 -1, ptr @.str.130, i32 3, ptr @.str.131, ptr @.str.132, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_cast_shadows_only_get, ptr @Material_use_cast_shadows_only_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.127 = private unnamed_addr constant [17 x i8] c"use_cast_shadows\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"Cast Shadows\00", align 1
@.str.129 = private unnamed_addr constant [36 x i8] c"Allow this material to cast shadows\00", align 1
@rna_Material_use_mist = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_transparent_shadows, ptr @rna_Material_use_cast_shadows_only, i32 -1, ptr @.str.133, i32 3, ptr @.str.134, ptr @.str.135, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_mist_get, ptr @Material_use_mist_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.130 = private unnamed_addr constant [22 x i8] c"use_cast_shadows_only\00", align 1
@.str.131 = private unnamed_addr constant [18 x i8] c"Cast Shadows Only\00", align 1
@.str.132 = private unnamed_addr constant [86 x i8] c"Make objects with this material appear invisible (not rendered), only casting shadows\00", align 1
@rna_Material_use_transparent_shadows = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_ray_shadow_bias, ptr @rna_Material_use_mist, i32 -1, ptr @.str.136, i32 3, ptr @.str.137, ptr @.str.138, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_transparent_shadows_get, ptr @Material_use_transparent_shadows_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.133 = private unnamed_addr constant [9 x i8] c"use_mist\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"Use Mist\00", align 1
@.str.135 = private unnamed_addr constant [48 x i8] c"Use mist with this material (in world settings)\00", align 1
@rna_Material_use_ray_shadow_bias = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_full_oversampling, ptr @rna_Material_use_transparent_shadows, i32 -1, ptr @.str.139, i32 3, ptr @.str.140, ptr @.str.141, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_ray_shadow_bias_get, ptr @Material_use_ray_shadow_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.136 = private unnamed_addr constant [24 x i8] c"use_transparent_shadows\00", align 1
@.str.137 = private unnamed_addr constant [28 x i8] c"Receive Transparent Shadows\00", align 1
@.str.138 = private unnamed_addr constant [76 x i8] c"Allow this object to receive transparent shadows cast through other objects\00", align 1
@rna_Material_use_full_oversampling = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_cast_buffer_shadows, ptr @rna_Material_use_ray_shadow_bias, i32 -1, ptr @.str.142, i32 3, ptr @.str.143, ptr @.str.144, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_full_oversampling_get, ptr @Material_use_full_oversampling_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.139 = private unnamed_addr constant [20 x i8] c"use_ray_shadow_bias\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"Ray Shadow Bias\00", align 1
@.str.141 = private unnamed_addr constant [92 x i8] c"Prevent raytraced shadow errors on surfaces with smooth shaded normals (terminator problem)\00", align 1
@rna_Material_use_cast_buffer_shadows = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_cast_approximate, ptr @rna_Material_use_full_oversampling, i32 -1, ptr @.str.145, i32 3, ptr @.str.146, ptr @.str.147, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_cast_buffer_shadows_get, ptr @Material_use_cast_buffer_shadows_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.142 = private unnamed_addr constant [22 x i8] c"use_full_oversampling\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"Full Oversampling\00", align 1
@.str.144 = private unnamed_addr constant [82 x i8] c"Force this material to render full shading/textures for all anti-aliasing samples\00", align 1
@rna_Material_use_cast_approximate = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_tangent_shading, ptr @rna_Material_use_cast_buffer_shadows, i32 -1, ptr @.str.148, i32 3, ptr @.str.149, ptr @.str.150, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_cast_approximate_get, ptr @Material_use_cast_approximate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.145 = private unnamed_addr constant [24 x i8] c"use_cast_buffer_shadows\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"Cast Buffer Shadows\00", align 1
@.str.147 = private unnamed_addr constant [61 x i8] c"Allow this material to cast shadows from shadow buffer lamps\00", align 1
@rna_Material_use_tangent_shading = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_uv_project, ptr @rna_Material_use_cast_approximate, i32 -1, ptr @.str.151, i32 3, ptr @.str.152, ptr @.str.153, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_tangent_shading_get, ptr @Material_use_tangent_shading_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.148 = private unnamed_addr constant [21 x i8] c"use_cast_approximate\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"Cast Approximate\00", align 1
@.str.150 = private unnamed_addr constant [77 x i8] c"Allow this material to cast shadows when using approximate ambient occlusion\00", align 1
@rna_Material_use_uv_project = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_raytrace_mirror, ptr @rna_Material_use_tangent_shading, i32 -1, ptr @.str.154, i32 3, ptr @.str.155, ptr @.str.156, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_uv_project_get, ptr @Material_use_uv_project_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.151 = private unnamed_addr constant [20 x i8] c"use_tangent_shading\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"Tangent Shading\00", align 1
@.str.153 = private unnamed_addr constant [102 x i8] c"Use the material's tangent vector instead of the normal for shading - for anisotropic shading effects\00", align 1
@rna_Material_raytrace_mirror = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_raytrace_transparency, ptr @rna_Material_use_uv_project, i32 -1, ptr @.str.157, i32 8650752, ptr @.str.158, ptr @.str.159, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_raytrace_mirror_get, ptr null, ptr null, ptr null, ptr @RNA_MaterialRaytraceMirror }, align 8
@.str.154 = private unnamed_addr constant [15 x i8] c"use_uv_project\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"UV Project\00", align 1
@.str.156 = private unnamed_addr constant [96 x i8] c"Use to ensure UV interpolation is correct for camera projections (use with UV project modifier)\00", align 1
@rna_Material_raytrace_transparency = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_volume, ptr @rna_Material_raytrace_mirror, i32 -1, ptr @.str.160, i32 8650752, ptr @.str.161, ptr @.str.162, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_raytrace_transparency_get, ptr null, ptr null, ptr null, ptr @RNA_MaterialRaytraceTransparency }, align 8
@.str.157 = private unnamed_addr constant [16 x i8] c"raytrace_mirror\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"Raytrace Mirror\00", align 1
@.str.159 = private unnamed_addr constant [47 x i8] c"Raytraced reflection settings for the material\00", align 1
@RNA_MaterialRaytraceMirror = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialRaytraceTransparency, ptr @RNA_TexPaintSlot, ptr null, %struct.ListBase { ptr @rna_MaterialRaytraceMirror_rna_properties, ptr @rna_MaterialRaytraceMirror_fade_to } }, ptr @.str.366, ptr null, ptr null, i32 4, ptr @.str.367, ptr @.str.368, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialRaytraceMirror_rna_properties, ptr null, ptr @RNA_Material, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Material_volume = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_halo, ptr @rna_Material_raytrace_transparency, i32 -1, ptr @.str.163, i32 8650752, ptr @.str.164, ptr @.str.165, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_volume_get, ptr null, ptr null, ptr null, ptr @RNA_MaterialVolume }, align 8
@.str.160 = private unnamed_addr constant [22 x i8] c"raytrace_transparency\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"Raytrace Transparency\00", align 1
@.str.162 = private unnamed_addr constant [49 x i8] c"Raytraced transparency settings for the material\00", align 1
@RNA_MaterialRaytraceTransparency = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialVolume, ptr @RNA_MaterialRaytraceMirror, ptr null, %struct.ListBase { ptr @rna_MaterialRaytraceTransparency_rna_properties, ptr @rna_MaterialRaytraceTransparency_falloff } }, ptr @.str.386, ptr null, ptr null, i32 4, ptr @.str.387, ptr @.str.388, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialRaytraceTransparency_rna_properties, ptr null, ptr @RNA_Material, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Material_halo = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_subsurface_scattering, ptr @rna_Material_volume, i32 -1, ptr @.str.166, i32 8650752, ptr @.str.167, ptr @.str.168, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_halo_get, ptr null, ptr null, ptr null, ptr @RNA_MaterialHalo }, align 8
@.str.163 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.165 = private unnamed_addr constant [33 x i8] c"Volume settings for the material\00", align 1
@rna_Material_subsurface_scattering = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_strand, ptr @rna_Material_halo, i32 -1, ptr @.str.169, i32 8650752, ptr @.str.170, ptr @.str.171, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_subsurface_scattering_get, ptr null, ptr null, ptr null, ptr @RNA_MaterialSubsurfaceScattering }, align 8
@.str.166 = private unnamed_addr constant [5 x i8] c"halo\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"Halo\00", align 1
@.str.168 = private unnamed_addr constant [31 x i8] c"Halo settings for the material\00", align 1
@RNA_MaterialHalo = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialSubsurfaceScattering, ptr @RNA_MaterialVolume, ptr null, %struct.ListBase { ptr @rna_MaterialHalo_rna_properties, ptr @rna_MaterialHalo_use_soft } }, ptr @.str.509, ptr null, ptr null, i32 4, ptr @.str.510, ptr @.str.511, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialHalo_rna_properties, ptr null, ptr @RNA_Material, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Material_strand = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_physics, ptr @rna_Material_subsurface_scattering, i32 -1, ptr @.str.172, i32 8650752, ptr @.str.173, ptr @.str.174, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_strand_get, ptr null, ptr null, ptr null, ptr @RNA_MaterialStrand }, align 8
@.str.169 = private unnamed_addr constant [22 x i8] c"subsurface_scattering\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"Subsurface Scattering\00", align 1
@.str.171 = private unnamed_addr constant [48 x i8] c"Subsurface scattering settings for the material\00", align 1
@RNA_MaterialSubsurfaceScattering = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialTextureSlot, ptr @RNA_MaterialHalo, ptr null, %struct.ListBase { ptr @rna_MaterialSubsurfaceScattering_rna_properties, ptr @rna_MaterialSubsurfaceScattering_use } }, ptr @.str.537, ptr null, ptr null, i32 4, ptr @.str.538, ptr @.str.539, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialSubsurfaceScattering_rna_properties, ptr null, ptr @RNA_Material, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Material_physics = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_game_settings, ptr @rna_Material_strand, i32 -1, ptr @.str.175, i32 8650752, ptr @.str.176, ptr @.str.177, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_physics_get, ptr null, ptr null, ptr null, ptr @RNA_MaterialPhysics }, align 8
@.str.172 = private unnamed_addr constant [7 x i8] c"strand\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"Strand\00", align 1
@.str.174 = private unnamed_addr constant [33 x i8] c"Strand settings for the material\00", align 1
@RNA_MaterialStrand = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialPhysics, ptr @RNA_MaterialTextureSlot, ptr null, %struct.ListBase { ptr @rna_MaterialStrand_rna_properties, ptr @rna_MaterialStrand_uv_layer } }, ptr @.str.713, ptr null, ptr null, i32 4, ptr @.str.714, ptr @.str.715, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialStrand_rna_properties, ptr null, ptr @RNA_Material, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Material_game_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_node_tree, ptr @rna_Material_physics, i32 -1, ptr @.str.178, i32 8650752, ptr @.str.179, ptr @.str.180, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_game_settings_get, ptr null, ptr null, ptr null, ptr @RNA_MaterialGameSettings }, align 8
@.str.175 = private unnamed_addr constant [8 x i8] c"physics\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"Physics\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c"Game physics settings\00", align 1
@RNA_MaterialPhysics = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialGameSettings, ptr @RNA_MaterialStrand, ptr null, %struct.ListBase { ptr @rna_MaterialPhysics_rna_properties, ptr @rna_MaterialPhysics_fh_damping } }, ptr @.str.734, ptr null, ptr null, i32 4, ptr @.str.735, ptr @.str.736, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialPhysics_rna_properties, ptr null, ptr @RNA_Material, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Material_node_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_nodes, ptr @rna_Material_game_settings, i32 -1, ptr @.str.181, i32 8388672, ptr @.str.182, ptr @.str.183, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_node_tree_get, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@.str.178 = private unnamed_addr constant [14 x i8] c"game_settings\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"Game Settings\00", align 1
@.str.180 = private unnamed_addr constant [23 x i8] c"Game material settings\00", align 1
@rna_Material_use_nodes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_active_node_material, ptr @rna_Material_node_tree, i32 -1, ptr @.str.184, i32 4194305, ptr @.str.185, ptr @.str.186, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_use_nodes_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_nodes_get, ptr @Material_use_nodes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.181 = private unnamed_addr constant [10 x i8] c"node_tree\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"Node Tree\00", align 1
@.str.183 = private unnamed_addr constant [35 x i8] c"Node tree for node based materials\00", align 1
@rna_Material_active_node_material = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_animation_data, ptr @rna_Material_use_nodes, i32 -1, ptr @.str.187, i32 8388609, ptr @.str.188, ptr @.str.189, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 100663296, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_active_node_material_get, ptr @Material_active_node_material_set, ptr null, ptr null, ptr @RNA_Material }, align 8
@.str.184 = private unnamed_addr constant [10 x i8] c"use_nodes\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"Use Nodes\00", align 1
@.str.186 = private unnamed_addr constant [40 x i8] c"Use shader nodes to render the material\00", align 1
@rna_Material_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_texture_slots, ptr @rna_Material_active_node_material, i32 -1, ptr @.str.190, i32 8388608, ptr @.str.191, ptr @.str.192, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.187 = private unnamed_addr constant [21 x i8] c"active_node_material\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.189 = private unnamed_addr constant [21 x i8] c"Active node material\00", align 1
@RNA_Material = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialTextureSlots, ptr @RNA_BlendDataLineStyles, ptr null, %struct.ListBase { ptr @rna_Material_type, ptr @rna_Material_specular_slope } }, ptr @.str.188, ptr null, ptr null, i32 7, ptr @.str.188, ptr @.str.308, ptr @.str.45, i32 165, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.190 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.192 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@rna_Material_active_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_active_texture_index, ptr @rna_Material_texture_slots, i32 -1, ptr @.str.196, i32 8388609, ptr @.str.197, ptr @.str.198, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 102760448, ptr @rna_Material_active_texture_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_active_texture_get, ptr @Material_active_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.193 = private unnamed_addr constant [14 x i8] c"texture_slots\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"Textures\00", align 1
@.str.195 = private unnamed_addr constant [61 x i8] c"Texture slots defining the mapping and influence of textures\00", align 1
@RNA_MaterialTextureSlots = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TexPaintSlot, ptr @RNA_Material, ptr null, %struct.ListBase { ptr @rna_MaterialTextureSlots_rna_properties, ptr @rna_MaterialTextureSlots_rna_type } }, ptr @.str.324, ptr null, ptr null, i32 4, ptr @.str.206, ptr @.str.325, ptr @.str.45, i32 17, ptr null, ptr @rna_MaterialTextureSlots_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_MaterialTextureSlots_add_func, ptr @rna_MaterialTextureSlots_clear_func } }, align 8
@RNA_MaterialTextureSlot = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialStrand, ptr @RNA_MaterialSubsurfaceScattering, ptr null, %struct.ListBase { ptr @rna_MaterialTextureSlot_texture_coords, ptr @rna_MaterialTextureSlot_bump_objectspace } }, ptr @.str.684, ptr null, ptr null, i32 4, ptr @.str.685, ptr @.str.686, ptr @.str.45, i32 166, ptr @rna_TextureSlot_name, ptr @rna_TextureSlot_rna_properties, ptr @RNA_TextureSlot, ptr null, ptr null, ptr @rna_TextureSlot_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Material_active_texture_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_texture_paint_images, ptr @rna_Material_active_texture, i32 -1, ptr @.str.199, i32 8195, ptr @.str.200, ptr @.str.201, i32 0, ptr @.str.45, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 102760448, ptr null, ptr null, i32 541, i32 2, ptr null, ptr null }, ptr @Material_active_texture_index_get, ptr @Material_active_texture_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 17, i32 0, i32 17, i32 1, i32 0, ptr null }, align 8
@.str.196 = private unnamed_addr constant [15 x i8] c"active_texture\00", align 1
@.str.197 = private unnamed_addr constant [15 x i8] c"Active Texture\00", align 1
@.str.198 = private unnamed_addr constant [36 x i8] c"Active texture slot being displayed\00", align 1
@RNA_Texture = external global %struct.StructRNA, align 8
@.str.199 = private unnamed_addr constant [21 x i8] c"active_texture_index\00", align 1
@.str.200 = private unnamed_addr constant [21 x i8] c"Active Texture Index\00", align 1
@.str.201 = private unnamed_addr constant [29 x i8] c"Index of active texture slot\00", align 1
@.str.202 = private unnamed_addr constant [21 x i8] c"texture_paint_images\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"Texture Slot Images\00", align 1
@.str.204 = private unnamed_addr constant [41 x i8] c"Texture images used for texture painting\00", align 1
@RNA_Image = external global %struct.StructRNA, align 8
@rna_Material_paint_active_slot = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_paint_clone_slot, ptr @rna_Material_texture_paint_slots, i32 -1, ptr @.str.207, i32 8195, ptr @.str.208, ptr @.str.209, i32 0, ptr @.str.45, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_active_paint_texture_index_update, i32 102760448, ptr null, ptr null, i32 908, i32 1, ptr null, ptr null }, ptr @Material_paint_active_slot_get, ptr @Material_paint_active_slot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.205 = private unnamed_addr constant [20 x i8] c"texture_paint_slots\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"Texture Slots\00", align 1
@RNA_TexPaintSlot = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialRaytraceMirror, ptr @RNA_MaterialTextureSlots, ptr null, %struct.ListBase { ptr @rna_TexPaintSlot_rna_properties, ptr @rna_TexPaintSlot_index } }, ptr @.str.330, ptr null, ptr null, i32 4, ptr @.str.331, ptr @.str.332, ptr @.str.45, i32 17, ptr null, ptr @rna_TexPaintSlot_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Material_paint_clone_slot = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_textures, ptr @rna_Material_paint_active_slot, i32 -1, ptr @.str.210, i32 8195, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.45, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 102760448, ptr null, ptr null, i32 910, i32 1, ptr null, ptr null }, ptr @Material_paint_clone_slot_get, ptr @Material_paint_clone_slot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.207 = private unnamed_addr constant [18 x i8] c"paint_active_slot\00", align 1
@.str.208 = private unnamed_addr constant [27 x i8] c"Active Paint Texture Index\00", align 1
@.str.209 = private unnamed_addr constant [35 x i8] c"Index of active texture paint slot\00", align 1
@rna_Material_use_textures = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_color, ptr @rna_Material_paint_clone_slot, i32 -1, ptr @.str.213, i32 3, ptr @.str.214, ptr @.str.215, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 1, [3 x i32] [i32 18, i32 0, i32 0], i32 18, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Material_use_textures_get, ptr @Material_use_textures_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Material_use_textures_default }, align 8
@.str.210 = private unnamed_addr constant [17 x i8] c"paint_clone_slot\00", align 1
@.str.211 = private unnamed_addr constant [26 x i8] c"Clone Paint Texture Index\00", align 1
@.str.212 = private unnamed_addr constant [34 x i8] c"Index of clone texture paint slot\00", align 1
@rna_Material_diffuse_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_color, ptr @rna_Material_use_textures, i32 -1, ptr @.str.216, i32 8195, ptr @.str.217, ptr @.str.218, i32 0, ptr @.str.45, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 132, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Material_diffuse_color_get, ptr @Material_diffuse_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Material_diffuse_color_default }, align 8
@.str.213 = private unnamed_addr constant [13 x i8] c"use_textures\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"Use Textures\00", align 1
@.str.215 = private unnamed_addr constant [28 x i8] c"Enable/Disable each texture\00", align 1
@rna_Material_use_textures_default = internal global [18 x i32] zeroinitializer, align 16
@rna_Material_specular_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_mirror_color, ptr @rna_Material_diffuse_color, i32 -1, ptr @.str.219, i32 8195, ptr @.str.220, ptr @.str.221, i32 0, ptr @.str.45, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Material_specular_color_get, ptr @Material_specular_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Material_specular_color_default }, align 8
@.str.216 = private unnamed_addr constant [14 x i8] c"diffuse_color\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"Diffuse Color\00", align 1
@.str.218 = private unnamed_addr constant [30 x i8] c"Diffuse color of the material\00", align 1
@rna_Material_diffuse_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_Material_mirror_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_alpha, ptr @rna_Material_specular_color, i32 -1, ptr @.str.222, i32 8195, ptr @.str.223, ptr @.str.224, i32 0, ptr @.str.45, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Material_mirror_color_get, ptr @Material_mirror_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Material_mirror_color_default }, align 8
@.str.219 = private unnamed_addr constant [15 x i8] c"specular_color\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"Specular Color\00", align 1
@.str.221 = private unnamed_addr constant [31 x i8] c"Specular color of the material\00", align 1
@rna_Material_specular_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_Material_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_alpha, ptr @rna_Material_mirror_color, i32 -1, ptr @.str.225, i32 8195, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 200, i32 4, ptr null, ptr null }, ptr @Material_alpha_get, ptr @Material_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.222 = private unnamed_addr constant [13 x i8] c"mirror_color\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"Mirror Color\00", align 1
@.str.224 = private unnamed_addr constant [29 x i8] c"Mirror color of the material\00", align 1
@rna_Material_mirror_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_Material_specular_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_diffuse_ramp, ptr @rna_Material_alpha, i32 -1, ptr @.str.228, i32 8195, ptr @.str.229, ptr @.str.230, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr @Material_specular_alpha_get, ptr @Material_specular_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.225 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.227 = private unnamed_addr constant [35 x i8] c"Alpha transparency of the material\00", align 1
@rna_Material_use_diffuse_ramp = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_ramp, ptr @rna_Material_specular_alpha, i32 -1, ptr @.str.231, i32 3, ptr @.str.232, ptr @.str.233, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_diffuse_ramp_get, ptr @Material_use_diffuse_ramp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.228 = private unnamed_addr constant [15 x i8] c"specular_alpha\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"Specular Alpha\00", align 1
@.str.230 = private unnamed_addr constant [38 x i8] c"Alpha transparency for specular areas\00", align 1
@rna_Material_diffuse_ramp = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_use_specular_ramp, ptr @rna_Material_use_diffuse_ramp, i32 -1, ptr @.str.234, i32 8388608, ptr @.str.235, ptr @.str.236, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_diffuse_ramp_get, ptr null, ptr null, ptr null, ptr @RNA_ColorRamp }, align 8
@.str.231 = private unnamed_addr constant [17 x i8] c"use_diffuse_ramp\00", align 1
@.str.232 = private unnamed_addr constant [17 x i8] c"Use Diffuse Ramp\00", align 1
@.str.233 = private unnamed_addr constant [31 x i8] c"Toggle diffuse ramp operations\00", align 1
@rna_Material_use_specular_ramp = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_ramp, ptr @rna_Material_diffuse_ramp, i32 -1, ptr @.str.237, i32 3, ptr @.str.238, ptr @.str.239, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_use_specular_ramp_get, ptr @Material_use_specular_ramp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.234 = private unnamed_addr constant [13 x i8] c"diffuse_ramp\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"Diffuse Ramp\00", align 1
@.str.236 = private unnamed_addr constant [42 x i8] c"Color ramp used to affect diffuse shading\00", align 1
@rna_Material_specular_ramp = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_ramp_blend, ptr @rna_Material_use_specular_ramp, i32 -1, ptr @.str.240, i32 8388608, ptr @.str.241, ptr @.str.242, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_specular_ramp_get, ptr null, ptr null, ptr null, ptr @RNA_ColorRamp }, align 8
@.str.237 = private unnamed_addr constant [18 x i8] c"use_specular_ramp\00", align 1
@.str.238 = private unnamed_addr constant [18 x i8] c"Use Specular Ramp\00", align 1
@.str.239 = private unnamed_addr constant [32 x i8] c"Toggle specular ramp operations\00", align 1
@rna_Material_diffuse_ramp_blend = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_ramp_blend, ptr @rna_Material_specular_ramp, i32 -1, ptr @.str.243, i32 3, ptr @.str.244, ptr @.str.245, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_diffuse_ramp_blend_get, ptr @Material_diffuse_ramp_blend_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_diffuse_ramp_blend_items, i32 18, i32 0 }, align 8
@.str.240 = private unnamed_addr constant [14 x i8] c"specular_ramp\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"Specular Ramp\00", align 1
@.str.242 = private unnamed_addr constant [43 x i8] c"Color ramp used to affect specular shading\00", align 1
@rna_Material_specular_ramp_blend = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_ramp_input, ptr @rna_Material_diffuse_ramp_blend, i32 -1, ptr @.str.246, i32 3, ptr @.str.247, ptr @.str.248, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_specular_ramp_blend_get, ptr @Material_specular_ramp_blend_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_specular_ramp_blend_items, i32 18, i32 0 }, align 8
@.str.243 = private unnamed_addr constant [19 x i8] c"diffuse_ramp_blend\00", align 1
@.str.244 = private unnamed_addr constant [19 x i8] c"Diffuse Ramp Blend\00", align 1
@.str.245 = private unnamed_addr constant [50 x i8] c"Blending method of the ramp and the diffuse color\00", align 1
@rna_Material_diffuse_ramp_blend_items = internal global [19 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_diffuse_ramp_input = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_ramp_input, ptr @rna_Material_specular_ramp_blend, i32 -1, ptr @.str.249, i32 3, ptr @.str.250, ptr @.str.251, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_diffuse_ramp_input_get, ptr @Material_diffuse_ramp_input_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_diffuse_ramp_input_items, i32 4, i32 0 }, align 8
@.str.246 = private unnamed_addr constant [20 x i8] c"specular_ramp_blend\00", align 1
@.str.247 = private unnamed_addr constant [20 x i8] c"Specular Ramp Blend\00", align 1
@.str.248 = private unnamed_addr constant [51 x i8] c"Blending method of the ramp and the specular color\00", align 1
@rna_Material_specular_ramp_blend_items = internal global [19 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_specular_ramp_input = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_ramp_factor, ptr @rna_Material_diffuse_ramp_input, i32 -1, ptr @.str.252, i32 3, ptr @.str.253, ptr @.str.251, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_specular_ramp_input_get, ptr @Material_specular_ramp_input_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_specular_ramp_input_items, i32 4, i32 0 }, align 8
@.str.249 = private unnamed_addr constant [19 x i8] c"diffuse_ramp_input\00", align 1
@.str.250 = private unnamed_addr constant [19 x i8] c"Diffuse Ramp Input\00", align 1
@.str.251 = private unnamed_addr constant [33 x i8] c"How the ramp maps on the surface\00", align 1
@rna_Material_diffuse_ramp_input_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.799, i32 0, ptr @.str.800, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.801, i32 0, ptr @.str.802, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.803, i32 0, ptr @.str.558, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.804, i32 0, ptr @.str.805, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_diffuse_ramp_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_ramp_factor, ptr @rna_Material_specular_ramp_input, i32 -1, ptr @.str.254, i32 8195, ptr @.str.255, ptr @.str.256, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 616, i32 4, ptr null, ptr null }, ptr @Material_diffuse_ramp_factor_get, ptr @Material_diffuse_ramp_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.252 = private unnamed_addr constant [20 x i8] c"specular_ramp_input\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"Specular Ramp Input\00", align 1
@rna_Material_specular_ramp_input_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.799, i32 0, ptr @.str.800, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.801, i32 0, ptr @.str.802, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.803, i32 0, ptr @.str.558, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.804, i32 0, ptr @.str.805, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_specular_ramp_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_line_color, ptr @rna_Material_diffuse_ramp_factor, i32 -1, ptr @.str.257, i32 8195, ptr @.str.258, ptr @.str.256, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 620, i32 4, ptr null, ptr null }, ptr @Material_specular_ramp_factor_get, ptr @Material_specular_ramp_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.254 = private unnamed_addr constant [20 x i8] c"diffuse_ramp_factor\00", align 1
@.str.255 = private unnamed_addr constant [20 x i8] c"Diffuse Ramp Factor\00", align 1
@.str.256 = private unnamed_addr constant [47 x i8] c"Blending factor (also uses alpha in Colorband)\00", align 1
@rna_Material_line_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_line_priority, ptr @rna_Material_specular_ramp_factor, i32 -1, ptr @.str.259, i32 8195, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.45, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 888, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Material_line_color_get, ptr @Material_line_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Material_line_color_default }, align 8
@.str.257 = private unnamed_addr constant [21 x i8] c"specular_ramp_factor\00", align 1
@.str.258 = private unnamed_addr constant [21 x i8] c"Specular Ramp Factor\00", align 1
@rna_Material_line_priority = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_shader, ptr @rna_Material_line_color, i32 -1, ptr @.str.262, i32 8195, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 904, i32 1, ptr null, ptr null }, ptr @Material_line_priority_get, ptr @Material_line_priority_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.259 = private unnamed_addr constant [11 x i8] c"line_color\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c"Line Color\00", align 1
@.str.261 = private unnamed_addr constant [45 x i8] c"Line color used for Freestyle line rendering\00", align 1
@rna_Material_line_color_default = internal global [4 x float] zeroinitializer, align 16
@rna_Material_diffuse_shader = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_intensity, ptr @rna_Material_line_priority, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.2, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_diffuse_shader_get, ptr @Material_diffuse_shader_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_diffuse_shader_items, i32 5, i32 0 }, align 8
@.str.262 = private unnamed_addr constant [14 x i8] c"line_priority\00", align 1
@.str.263 = private unnamed_addr constant [14 x i8] c"Line Priority\00", align 1
@.str.264 = private unnamed_addr constant [67 x i8] c"The line color of a higher priority is used at material boundaries\00", align 1
@rna_Material_diffuse_intensity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_roughness, ptr @rna_Material_diffuse_shader, i32 -1, ptr @.str.267, i32 8195, ptr @.str.268, ptr @.str.269, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 204, i32 4, ptr null, ptr null }, ptr @Material_diffuse_intensity_get, ptr @Material_diffuse_intensity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.265 = private unnamed_addr constant [15 x i8] c"diffuse_shader\00", align 1
@.str.266 = private unnamed_addr constant [21 x i8] c"Diffuse Shader Model\00", align 1
@rna_Material_diffuse_shader_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.806, i32 0, ptr @.str.807, ptr @.str.808 }, %struct.EnumPropertyItem { i32 1, ptr @.str.809, i32 0, ptr @.str.810, ptr @.str.811 }, %struct.EnumPropertyItem { i32 2, ptr @.str.812, i32 0, ptr @.str.813, ptr @.str.814 }, %struct.EnumPropertyItem { i32 3, ptr @.str.815, i32 0, ptr @.str.816, ptr @.str.817 }, %struct.EnumPropertyItem { i32 4, ptr @.str.818, i32 0, ptr @.str.340, ptr @.str.819 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_roughness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_toon_size, ptr @rna_Material_diffuse_intensity, i32 -1, ptr @.str.270, i32 8195, ptr @.str.271, ptr @.str.272, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 556, i32 4, ptr null, ptr null }, ptr @Material_roughness_get, ptr @Material_roughness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x40091EB860000000, float 0.000000e+00, float 0x40091EB860000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.267 = private unnamed_addr constant [18 x i8] c"diffuse_intensity\00", align 1
@.str.268 = private unnamed_addr constant [18 x i8] c"Diffuse Intensity\00", align 1
@.str.269 = private unnamed_addr constant [29 x i8] c"Amount of diffuse reflection\00", align 1
@rna_Material_diffuse_toon_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_toon_smooth, ptr @rna_Material_roughness, i32 -1, ptr @.str.273, i32 8195, ptr @.str.274, ptr @.str.275, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 564, i32 4, ptr null, ptr null }, ptr @Material_diffuse_toon_size_get, ptr @Material_diffuse_toon_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x40091EB860000000, float 0.000000e+00, float 0x40091EB860000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.270 = private unnamed_addr constant [10 x i8] c"roughness\00", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"Roughness\00", align 1
@.str.272 = private unnamed_addr constant [21 x i8] c"Oren-Nayar Roughness\00", align 1
@rna_Material_diffuse_toon_smooth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_fresnel, ptr @rna_Material_diffuse_toon_size, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.278, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 568, i32 4, ptr null, ptr null }, ptr @Material_diffuse_toon_smooth_get, ptr @Material_diffuse_toon_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.273 = private unnamed_addr constant [18 x i8] c"diffuse_toon_size\00", align 1
@.str.274 = private unnamed_addr constant [18 x i8] c"Diffuse Toon Size\00", align 1
@.str.275 = private unnamed_addr constant [26 x i8] c"Size of diffuse toon area\00", align 1
@rna_Material_diffuse_fresnel = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_diffuse_fresnel_factor, ptr @rna_Material_diffuse_toon_smooth, i32 -1, ptr @.str.279, i32 8195, ptr @.str.280, ptr @.str.281, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 568, i32 4, ptr null, ptr null }, ptr @Material_diffuse_fresnel_get, ptr @Material_diffuse_fresnel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.276 = private unnamed_addr constant [20 x i8] c"diffuse_toon_smooth\00", align 1
@.str.277 = private unnamed_addr constant [20 x i8] c"Diffuse Toon Smooth\00", align 1
@.str.278 = private unnamed_addr constant [32 x i8] c"Smoothness of diffuse toon area\00", align 1
@rna_Material_diffuse_fresnel_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_darkness, ptr @rna_Material_diffuse_fresnel, i32 -1, ptr @.str.282, i32 8195, ptr @.str.283, ptr @.str.284, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 564, i32 4, ptr null, ptr null }, ptr @Material_diffuse_fresnel_factor_get, ptr @Material_diffuse_fresnel_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.279 = private unnamed_addr constant [16 x i8] c"diffuse_fresnel\00", align 1
@.str.280 = private unnamed_addr constant [16 x i8] c"Diffuse Fresnel\00", align 1
@.str.281 = private unnamed_addr constant [17 x i8] c"Power of Fresnel\00", align 1
@rna_Material_darkness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_shader, ptr @rna_Material_diffuse_fresnel_factor, i32 -1, ptr @.str.285, i32 8195, ptr @.str.286, ptr @.str.287, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 584, i32 4, ptr null, ptr null }, ptr @Material_darkness_get, ptr @Material_darkness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.282 = private unnamed_addr constant [23 x i8] c"diffuse_fresnel_factor\00", align 1
@.str.283 = private unnamed_addr constant [23 x i8] c"Diffuse Fresnel Factor\00", align 1
@.str.284 = private unnamed_addr constant [27 x i8] c"Blending factor of Fresnel\00", align 1
@rna_Material_specular_shader = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_intensity, ptr @rna_Material_darkness, i32 -1, ptr @.str.288, i32 3, ptr @.str.289, ptr @.str.2, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Material_specular_shader_get, ptr @Material_specular_shader_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Material_specular_shader_items, i32 5, i32 0 }, align 8
@.str.285 = private unnamed_addr constant [9 x i8] c"darkness\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"Darkness\00", align 1
@.str.287 = private unnamed_addr constant [18 x i8] c"Minnaert darkness\00", align 1
@rna_Material_specular_intensity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_hardness, ptr @rna_Material_specular_shader, i32 -1, ptr @.str.290, i32 8195, ptr @.str.291, ptr @.str.292, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 208, i32 4, ptr null, ptr null }, ptr @Material_specular_intensity_get, ptr @Material_specular_intensity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.288 = private unnamed_addr constant [16 x i8] c"specular_shader\00", align 1
@.str.289 = private unnamed_addr constant [22 x i8] c"Specular Shader Model\00", align 1
@rna_Material_specular_shader_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.820, i32 0, ptr @.str.821, ptr @.str.822 }, %struct.EnumPropertyItem { i32 1, ptr @.str.823, i32 0, ptr @.str.824, ptr @.str.825 }, %struct.EnumPropertyItem { i32 2, ptr @.str.826, i32 0, ptr @.str.827, ptr @.str.828 }, %struct.EnumPropertyItem { i32 3, ptr @.str.812, i32 0, ptr @.str.813, ptr @.str.814 }, %struct.EnumPropertyItem { i32 4, ptr @.str.829, i32 0, ptr @.str.830, ptr @.str.831 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Material_specular_hardness = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_ior, ptr @rna_Material_specular_intensity, i32 -1, ptr @.str.293, i32 8195, ptr @.str.294, ptr @.str.295, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 360, i32 1, ptr null, ptr null }, ptr @Material_specular_hardness_get, ptr @Material_specular_hardness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 511, i32 1, i32 511, i32 1, i32 0, ptr null }, align 8
@.str.290 = private unnamed_addr constant [19 x i8] c"specular_intensity\00", align 1
@.str.291 = private unnamed_addr constant [19 x i8] c"Specular Intensity\00", align 1
@.str.292 = private unnamed_addr constant [48 x i8] c"How intense (bright) the specular reflection is\00", align 1
@rna_Material_specular_ior = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_toon_size, ptr @rna_Material_specular_hardness, i32 -1, ptr @.str.296, i32 8195, ptr @.str.297, ptr @.str.298, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 560, i32 4, ptr null, ptr null }, ptr @Material_specular_ior_get, ptr @Material_specular_ior_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 1.000000e+01, float 1.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.293 = private unnamed_addr constant [18 x i8] c"specular_hardness\00", align 1
@.str.294 = private unnamed_addr constant [18 x i8] c"Specular Hardness\00", align 1
@.str.295 = private unnamed_addr constant [44 x i8] c"How hard (sharp) the specular reflection is\00", align 1
@rna_Material_specular_toon_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_toon_smooth, ptr @rna_Material_specular_ior, i32 -1, ptr @.str.299, i32 8195, ptr @.str.300, ptr @.str.301, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 572, i32 4, ptr null, ptr null }, ptr @Material_specular_toon_size_get, ptr @Material_specular_toon_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FF87AE140000000, float 0.000000e+00, float 0x3FF87AE140000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.296 = private unnamed_addr constant [13 x i8] c"specular_ior\00", align 1
@.str.297 = private unnamed_addr constant [13 x i8] c"Specular IOR\00", align 1
@.str.298 = private unnamed_addr constant [29 x i8] c"Specular index of refraction\00", align 1
@rna_Material_specular_toon_smooth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Material_specular_slope, ptr @rna_Material_specular_toon_size, i32 -1, ptr @.str.302, i32 8195, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 576, i32 4, ptr null, ptr null }, ptr @Material_specular_toon_smooth_get, ptr @Material_specular_toon_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.299 = private unnamed_addr constant [19 x i8] c"specular_toon_size\00", align 1
@.str.300 = private unnamed_addr constant [19 x i8] c"Specular Toon Size\00", align 1
@.str.301 = private unnamed_addr constant [27 x i8] c"Size of specular toon area\00", align 1
@rna_Material_specular_slope = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Material_specular_toon_smooth, i32 -1, ptr @.str.305, i32 8195, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 580, i32 4, ptr null, ptr null }, ptr @Material_specular_slope_get, ptr @Material_specular_slope_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FD99999A0000000, float 0.000000e+00, float 0x3FD99999A0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.302 = private unnamed_addr constant [21 x i8] c"specular_toon_smooth\00", align 1
@.str.303 = private unnamed_addr constant [21 x i8] c"Specular Toon Smooth\00", align 1
@.str.304 = private unnamed_addr constant [33 x i8] c"Smoothness of specular toon area\00", align 1
@.str.305 = private unnamed_addr constant [15 x i8] c"specular_slope\00", align 1
@.str.306 = private unnamed_addr constant [15 x i8] c"Specular Slope\00", align 1
@.str.307 = private unnamed_addr constant [40 x i8] c"The standard deviation of surface slope\00", align 1
@RNA_BlendDataLineStyles = external global %struct.StructRNA, align 8
@.str.308 = private unnamed_addr constant [79 x i8] c"Material datablock to define the appearance of geometric objects for rendering\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@rna_MaterialTextureSlots_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialTextureSlots_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlots_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.309 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.310 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.311 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.312 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.313 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.314 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.315 = private unnamed_addr constant [5 x i8] c"mtex\00", align 1
@.str.316 = private unnamed_addr constant [27 x i8] c"The newly initialized mtex\00", align 1
@rna_MaterialTextureSlots_add_mtex = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.315, i32 8388616, ptr @.str.2, ptr @.str.316, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaterialTextureSlot }, align 8
@rna_MaterialTextureSlots_create_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_MaterialTextureSlots_clear_func, ptr @rna_MaterialTextureSlots_add_func, ptr null, %struct.ListBase { ptr @rna_MaterialTextureSlots_create_index, ptr @rna_MaterialTextureSlots_create_mtex } }, ptr @.str.321, i32 2073, ptr @.str.321, ptr @MaterialTextureSlots_create_call, ptr @rna_MaterialTextureSlots_create_mtex }, align 8
@.str.317 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@rna_MaterialTextureSlots_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_MaterialTextureSlots_create_func, ptr null, ptr null, %struct.ListBase { ptr @rna_MaterialTextureSlots_add_mtex, ptr @rna_MaterialTextureSlots_add_mtex } }, ptr @.str.317, i32 2073, ptr @.str.317, ptr @MaterialTextureSlots_add_call, ptr @rna_MaterialTextureSlots_add_mtex }, align 8
@rna_MaterialTextureSlots_create_mtex = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialTextureSlots_create_index, i32 -1, ptr @.str.315, i32 8388616, ptr @.str.2, ptr @.str.316, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaterialTextureSlot }, align 8
@.str.318 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.320 = private unnamed_addr constant [25 x i8] c"Slot index to initialize\00", align 1
@rna_MaterialTextureSlots_create_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlots_create_mtex, ptr null, i32 -1, ptr @.str.318, i32 7, ptr @.str.319, ptr @.str.320, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_MaterialTextureSlots_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_MaterialTextureSlots_create_func, ptr null, %struct.ListBase { ptr @rna_MaterialTextureSlots_clear_index, ptr @rna_MaterialTextureSlots_clear_index } }, ptr @.str.323, i32 2073, ptr @.str.323, ptr @MaterialTextureSlots_clear_call, ptr null }, align 8
@.str.321 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.322 = private unnamed_addr constant [20 x i8] c"Slot index to clear\00", align 1
@rna_MaterialTextureSlots_clear_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.318, i32 7, ptr @.str.319, ptr @.str.322, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.323 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.324 = private unnamed_addr constant [21 x i8] c"MaterialTextureSlots\00", align 1
@.str.325 = private unnamed_addr constant [28 x i8] c"Collection of texture slots\00", align 1
@rna_TexPaintSlot_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TexPaintSlot_uv_layer, ptr @rna_TexPaintSlot_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TexPaintSlot_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_TexPaintSlot_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_TexPaintSlot_index, ptr @rna_TexPaintSlot_rna_type, i32 -1, ptr @.str.326, i32 262145, ptr @.str.327, ptr @.str.328, i32 0, ptr @.str.45, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 274399232, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TexPaintSlot_uv_layer_get, ptr @TexPaintSlot_uv_layer_length, ptr @TexPaintSlot_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@rna_TexPaintSlot_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_TexPaintSlot_uv_layer, i32 -1, ptr @.str.318, i32 8194, ptr @.str.319, ptr @.str.329, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 16, i32 0, ptr null, ptr null }, ptr @TexPaintSlot_index_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.326 = private unnamed_addr constant [9 x i8] c"uv_layer\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"UV Map\00", align 1
@.str.328 = private unnamed_addr constant [15 x i8] c"Name of UV map\00", align 1
@.str.329 = private unnamed_addr constant [35 x i8] c"Index of MTex slot in the material\00", align 1
@.str.330 = private unnamed_addr constant [13 x i8] c"TexPaintSlot\00", align 1
@.str.331 = private unnamed_addr constant [19 x i8] c"Texture Paint Slot\00", align 1
@.str.332 = private unnamed_addr constant [54 x i8] c"Slot that contains information about texture painting\00", align 1
@rna_MaterialRaytraceMirror_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_use, ptr @rna_MaterialRaytraceMirror_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialRaytraceMirror_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialRaytraceMirror_use = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_reflect_factor, ptr @rna_MaterialRaytraceMirror_rna_type, i32 -1, ptr @.str.333, i32 3, ptr @.str.334, ptr @.str.335, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialRaytraceMirror_use_get, ptr @MaterialRaytraceMirror_use_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaterialRaytraceMirror_reflect_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_fresnel, ptr @rna_MaterialRaytraceMirror_use, i32 -1, ptr @.str.336, i32 8195, ptr @.str.337, ptr @.str.338, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 196, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceMirror_reflect_factor_get, ptr @MaterialRaytraceMirror_reflect_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.333 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.334 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.335 = private unnamed_addr constant [29 x i8] c"Enable raytraced reflections\00", align 1
@rna_MaterialRaytraceMirror_fresnel = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_fresnel_factor, ptr @rna_MaterialRaytraceMirror_reflect_factor, i32 -1, ptr @.str.339, i32 8195, ptr @.str.340, ptr @.str.341, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 328, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceMirror_fresnel_get, ptr @MaterialRaytraceMirror_fresnel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.336 = private unnamed_addr constant [15 x i8] c"reflect_factor\00", align 1
@.str.337 = private unnamed_addr constant [13 x i8] c"Reflectivity\00", align 1
@.str.338 = private unnamed_addr constant [41 x i8] c"Amount of mirror reflection for raytrace\00", align 1
@rna_MaterialRaytraceMirror_fresnel_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_gloss_factor, ptr @rna_MaterialRaytraceMirror_fresnel, i32 -1, ptr @.str.342, i32 8195, ptr @.str.343, ptr @.str.344, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 332, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceMirror_fresnel_factor_get, ptr @MaterialRaytraceMirror_fresnel_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.339 = private unnamed_addr constant [8 x i8] c"fresnel\00", align 1
@.str.340 = private unnamed_addr constant [8 x i8] c"Fresnel\00", align 1
@.str.341 = private unnamed_addr constant [39 x i8] c"Power of Fresnel for mirror reflection\00", align 1
@rna_MaterialRaytraceMirror_gloss_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_gloss_anisotropic, ptr @rna_MaterialRaytraceMirror_fresnel_factor, i32 -1, ptr @.str.345, i32 8195, ptr @.str.346, ptr @.str.347, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 364, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceMirror_gloss_factor_get, ptr @MaterialRaytraceMirror_gloss_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.342 = private unnamed_addr constant [15 x i8] c"fresnel_factor\00", align 1
@.str.343 = private unnamed_addr constant [15 x i8] c"Fresnel Factor\00", align 1
@.str.344 = private unnamed_addr constant [28 x i8] c"Blending factor for Fresnel\00", align 1
@rna_MaterialRaytraceMirror_gloss_anisotropic = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_gloss_samples, ptr @rna_MaterialRaytraceMirror_gloss_factor, i32 -1, ptr @.str.348, i32 8195, ptr @.str.349, ptr @.str.350, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 384, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceMirror_gloss_anisotropic_get, ptr @MaterialRaytraceMirror_gloss_anisotropic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.345 = private unnamed_addr constant [13 x i8] c"gloss_factor\00", align 1
@.str.346 = private unnamed_addr constant [13 x i8] c"Gloss Amount\00", align 1
@.str.347 = private unnamed_addr constant [80 x i8] c"The shininess of the reflection (values < 1.0 give diffuse, blurry reflections)\00", align 1
@rna_MaterialRaytraceMirror_gloss_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_gloss_threshold, ptr @rna_MaterialRaytraceMirror_gloss_anisotropic, i32 -1, ptr @.str.351, i32 8195, ptr @.str.352, ptr @.str.353, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 372, i32 1, ptr null, ptr null }, ptr @MaterialRaytraceMirror_gloss_samples_get, ptr @MaterialRaytraceMirror_gloss_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1024, i32 0, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.348 = private unnamed_addr constant [18 x i8] c"gloss_anisotropic\00", align 1
@.str.349 = private unnamed_addr constant [17 x i8] c"Gloss Anisotropy\00", align 1
@.str.350 = private unnamed_addr constant [91 x i8] c"The shape of the reflection, from 0.0 (circular) to 1.0 (fully stretched along the tangent\00", align 1
@rna_MaterialRaytraceMirror_gloss_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_depth, ptr @rna_MaterialRaytraceMirror_gloss_samples, i32 -1, ptr @.str.354, i32 8195, ptr @.str.355, ptr @.str.356, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 376, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceMirror_gloss_threshold_get, ptr @MaterialRaytraceMirror_gloss_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.351 = private unnamed_addr constant [14 x i8] c"gloss_samples\00", align 1
@.str.352 = private unnamed_addr constant [14 x i8] c"Gloss Samples\00", align 1
@.str.353 = private unnamed_addr constant [55 x i8] c"Number of cone samples averaged for blurry reflections\00", align 1
@rna_MaterialRaytraceMirror_depth = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_distance, ptr @rna_MaterialRaytraceMirror_gloss_threshold, i32 -1, ptr @.str.357, i32 8195, ptr @.str.358, ptr @.str.359, i32 0, ptr @.str.45, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 356, i32 1, ptr null, ptr null }, ptr @MaterialRaytraceMirror_depth_get, ptr @MaterialRaytraceMirror_depth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.354 = private unnamed_addr constant [16 x i8] c"gloss_threshold\00", align 1
@.str.355 = private unnamed_addr constant [16 x i8] c"Gloss Threshold\00", align 1
@.str.356 = private unnamed_addr constant [119 x i8] c"Threshold for adaptive sampling (if a sample contributes less than this amount [as a percentage], sampling is stopped)\00", align 1
@rna_MaterialRaytraceMirror_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceMirror_fade_to, ptr @rna_MaterialRaytraceMirror_depth, i32 -1, ptr @.str.360, i32 8195, ptr @.str.361, ptr @.str.362, i32 0, ptr @.str.45, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 388, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceMirror_distance_get, ptr @MaterialRaytraceMirror_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 1.000000e+04, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.357 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.358 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.359 = private unnamed_addr constant [50 x i8] c"Maximum allowed number of light inter-reflections\00", align 1
@rna_MaterialRaytraceMirror_fade_to = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialRaytraceMirror_distance, i32 -1, ptr @.str.363, i32 3, ptr @.str.364, ptr @.str.365, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialRaytraceMirror_fade_to_get, ptr @MaterialRaytraceMirror_fade_to_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialRaytraceMirror_fade_to_items, i32 2, i32 0 }, align 8
@.str.360 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.361 = private unnamed_addr constant [17 x i8] c"Maximum Distance\00", align 1
@.str.362 = private unnamed_addr constant [109 x i8] c"Maximum distance of reflected rays (reflections further than this range fade to sky color or material color)\00", align 1
@.str.363 = private unnamed_addr constant [8 x i8] c"fade_to\00", align 1
@.str.364 = private unnamed_addr constant [15 x i8] c"Fade-out Color\00", align 1
@.str.365 = private unnamed_addr constant [140 x i8] c"The color that rays with no intersection within the Max Distance take (material color can be best for indoor scenes, sky color for outdoor)\00", align 1
@rna_MaterialRaytraceMirror_fade_to_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.832, i32 0, ptr @.str.113, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.833, i32 0, ptr @.str.188, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.366 = private unnamed_addr constant [23 x i8] c"MaterialRaytraceMirror\00", align 1
@.str.367 = private unnamed_addr constant [25 x i8] c"Material Raytrace Mirror\00", align 1
@.str.368 = private unnamed_addr constant [55 x i8] c"Raytraced reflection settings for a Material datablock\00", align 1
@rna_MaterialRaytraceTransparency_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_ior, ptr @rna_MaterialRaytraceTransparency_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialRaytraceTransparency_ior = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_fresnel, ptr @rna_MaterialRaytraceTransparency_rna_type, i32 -1, ptr @.str.369, i32 8195, ptr @.str.370, ptr @.str.371, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 188, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_ior_get, ptr @MaterialRaytraceTransparency_ior_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 2.500000e-01, float 4.000000e+00, float 2.500000e-01, float 4.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MaterialRaytraceTransparency_fresnel = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_fresnel_factor, ptr @rna_MaterialRaytraceTransparency_ior, i32 -1, ptr @.str.339, i32 8195, ptr @.str.340, ptr @.str.372, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 336, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_fresnel_get, ptr @MaterialRaytraceTransparency_fresnel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.369 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.370 = private unnamed_addr constant [4 x i8] c"IOR\00", align 1
@.str.371 = private unnamed_addr constant [53 x i8] c"Angular index of refraction for raytraced refraction\00", align 1
@rna_MaterialRaytraceTransparency_fresnel_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_gloss_factor, ptr @rna_MaterialRaytraceTransparency_fresnel, i32 -1, ptr @.str.342, i32 8195, ptr @.str.343, ptr @.str.344, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 340, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_fresnel_factor_get, ptr @MaterialRaytraceTransparency_fresnel_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.372 = private unnamed_addr constant [51 x i8] c"Power of Fresnel for transparency (Ray or ZTransp)\00", align 1
@rna_MaterialRaytraceTransparency_gloss_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_gloss_samples, ptr @rna_MaterialRaytraceTransparency_fresnel_factor, i32 -1, ptr @.str.345, i32 8195, ptr @.str.346, ptr @.str.373, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 368, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_gloss_factor_get, ptr @MaterialRaytraceTransparency_gloss_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MaterialRaytraceTransparency_gloss_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_gloss_threshold, ptr @rna_MaterialRaytraceTransparency_gloss_factor, i32 -1, ptr @.str.351, i32 8195, ptr @.str.352, ptr @.str.374, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 374, i32 1, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_gloss_samples_get, ptr @MaterialRaytraceTransparency_gloss_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1024, i32 0, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.373 = private unnamed_addr constant [77 x i8] c"The clarity of the refraction. Values < 1.0 give diffuse, blurry refractions\00", align 1
@rna_MaterialRaytraceTransparency_gloss_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_depth, ptr @rna_MaterialRaytraceTransparency_gloss_samples, i32 -1, ptr @.str.354, i32 8195, ptr @.str.355, ptr @.str.375, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 380, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_gloss_threshold_get, ptr @MaterialRaytraceTransparency_gloss_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.374 = private unnamed_addr constant [55 x i8] c"Number of cone samples averaged for blurry refractions\00", align 1
@rna_MaterialRaytraceTransparency_depth = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_filter, ptr @rna_MaterialRaytraceTransparency_gloss_threshold, i32 -1, ptr @.str.357, i32 8195, ptr @.str.358, ptr @.str.376, i32 0, ptr @.str.45, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 358, i32 1, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_depth_get, ptr @MaterialRaytraceTransparency_depth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.375 = private unnamed_addr constant [118 x i8] c"Threshold for adaptive sampling. If a sample contributes less than this amount (as a percentage), sampling is stopped\00", align 1
@rna_MaterialRaytraceTransparency_filter = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_depth_max, ptr @rna_MaterialRaytraceTransparency_depth, i32 -1, ptr @.str.377, i32 8195, ptr @.str.378, ptr @.str.379, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 344, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_filter_get, ptr @MaterialRaytraceTransparency_filter_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.376 = private unnamed_addr constant [50 x i8] c"Maximum allowed number of light inter-refractions\00", align 1
@rna_MaterialRaytraceTransparency_depth_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialRaytraceTransparency_falloff, ptr @rna_MaterialRaytraceTransparency_filter, i32 -1, ptr @.str.380, i32 8195, ptr @.str.381, ptr @.str.382, i32 0, ptr @.str.45, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 348, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_depth_max_get, ptr @MaterialRaytraceTransparency_depth_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.377 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.378 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.379 = private unnamed_addr constant [98 x i8] c"Amount to blend in the material's diffuse color in raytraced transparency (simulating absorption)\00", align 1
@rna_MaterialRaytraceTransparency_falloff = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialRaytraceTransparency_depth_max, i32 -1, ptr @.str.383, i32 8195, ptr @.str.384, ptr @.str.385, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 352, i32 4, ptr null, ptr null }, ptr @MaterialRaytraceTransparency_falloff_get, ptr @MaterialRaytraceTransparency_falloff_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 1.000000e+01, float 0x3FB99999A0000000, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.380 = private unnamed_addr constant [10 x i8] c"depth_max\00", align 1
@.str.381 = private unnamed_addr constant [6 x i8] c"Limit\00", align 1
@.str.382 = private unnamed_addr constant [116 x i8] c"Maximum depth for light to travel through the transparent material before becoming fully filtered (0.0 is disabled)\00", align 1
@.str.383 = private unnamed_addr constant [8 x i8] c"falloff\00", align 1
@.str.384 = private unnamed_addr constant [8 x i8] c"Falloff\00", align 1
@.str.385 = private unnamed_addr constant [63 x i8] c"Falloff power for transmissivity filter effect (1.0 is linear)\00", align 1
@.str.386 = private unnamed_addr constant [29 x i8] c"MaterialRaytraceTransparency\00", align 1
@.str.387 = private unnamed_addr constant [31 x i8] c"Material Raytrace Transparency\00", align 1
@.str.388 = private unnamed_addr constant [55 x i8] c"Raytraced refraction settings for a Material datablock\00", align 1
@rna_MaterialVolume_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_step_method, ptr @rna_MaterialVolume_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialVolume_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialVolume_step_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_step_size, ptr @rna_MaterialVolume_rna_type, i32 -1, ptr @.str.389, i32 3, ptr @.str.390, ptr @.str.391, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialVolume_step_method_get, ptr @MaterialVolume_step_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialVolume_step_method_items, i32 2, i32 0 }, align 8
@rna_MaterialVolume_step_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_light_method, ptr @rna_MaterialVolume_step_method, i32 -1, ptr @.str.392, i32 8195, ptr @.str.393, ptr @.str.394, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr @MaterialVolume_step_size_get, ptr @MaterialVolume_step_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.389 = private unnamed_addr constant [12 x i8] c"step_method\00", align 1
@.str.390 = private unnamed_addr constant [17 x i8] c"Step Calculation\00", align 1
@.str.391 = private unnamed_addr constant [51 x i8] c"Method of calculating the steps through the volume\00", align 1
@rna_MaterialVolume_step_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.834, i32 0, ptr @.str.835, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.836, i32 0, ptr @.str.837, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialVolume_light_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_use_external_shadows, ptr @rna_MaterialVolume_step_size, i32 -1, ptr @.str.395, i32 3, ptr @.str.396, ptr @.str.397, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialVolume_light_method_get, ptr @MaterialVolume_light_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialVolume_light_method_items, i32 5, i32 0 }, align 8
@.str.392 = private unnamed_addr constant [10 x i8] c"step_size\00", align 1
@.str.393 = private unnamed_addr constant [10 x i8] c"Step Size\00", align 1
@.str.394 = private unnamed_addr constant [49 x i8] c"Distance between subsequent volume depth samples\00", align 1
@rna_MaterialVolume_use_external_shadows = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_use_light_cache, ptr @rna_MaterialVolume_light_method, i32 -1, ptr @.str.398, i32 3, ptr @.str.399, ptr @.str.400, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialVolume_use_external_shadows_get, ptr @MaterialVolume_use_external_shadows_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.395 = private unnamed_addr constant [13 x i8] c"light_method\00", align 1
@.str.396 = private unnamed_addr constant [14 x i8] c"Lighting Mode\00", align 1
@.str.397 = private unnamed_addr constant [72 x i8] c"Method of shading, attenuating, and scattering light through the volume\00", align 1
@rna_MaterialVolume_light_method_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.838, i32 0, ptr @.str.98, ptr @.str.839 }, %struct.EnumPropertyItem { i32 2, ptr @.str.840, i32 0, ptr @.str.841, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.842, i32 0, ptr @.str.504, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.843, i32 0, ptr @.str.844, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.845, i32 0, ptr @.str.846, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialVolume_use_light_cache = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_cache_resolution, ptr @rna_MaterialVolume_use_external_shadows, i32 -1, ptr @.str.401, i32 3, ptr @.str.402, ptr @.str.403, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialVolume_use_light_cache_get, ptr @MaterialVolume_use_light_cache_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.398 = private unnamed_addr constant [21 x i8] c"use_external_shadows\00", align 1
@.str.399 = private unnamed_addr constant [17 x i8] c"External Shadows\00", align 1
@.str.400 = private unnamed_addr constant [60 x i8] c"Receive shadows from sources outside the volume (temporary)\00", align 1
@rna_MaterialVolume_cache_resolution = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_ms_diffusion, ptr @rna_MaterialVolume_use_light_cache, i32 -1, ptr @.str.404, i32 8195, ptr @.str.405, ptr @.str.406, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 70, i32 1, ptr null, ptr null }, ptr @MaterialVolume_cache_resolution_get, ptr @MaterialVolume_cache_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 1024, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.401 = private unnamed_addr constant [16 x i8] c"use_light_cache\00", align 1
@.str.402 = private unnamed_addr constant [12 x i8] c"Light Cache\00", align 1
@.str.403 = private unnamed_addr constant [101 x i8] c"Pre-calculate the shading information into a voxel grid, speeds up shading at slightly less accuracy\00", align 1
@rna_MaterialVolume_ms_diffusion = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_ms_spread, ptr @rna_MaterialVolume_cache_resolution, i32 -1, ptr @.str.407, i32 8195, ptr @.str.408, ptr @.str.409, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @MaterialVolume_ms_diffusion_get, ptr @MaterialVolume_ms_diffusion_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.404 = private unnamed_addr constant [17 x i8] c"cache_resolution\00", align 1
@.str.405 = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.406 = private unnamed_addr constant [91 x i8] c"Resolution of the voxel grid, low resolutions are faster, high resolutions use more memory\00", align 1
@rna_MaterialVolume_ms_spread = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_ms_intensity, ptr @rna_MaterialVolume_ms_diffusion, i32 -1, ptr @.str.410, i32 8195, ptr @.str.411, ptr @.str.412, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 84, i32 4, ptr null, ptr null }, ptr @MaterialVolume_ms_spread_get, ptr @MaterialVolume_ms_spread_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.407 = private unnamed_addr constant [13 x i8] c"ms_diffusion\00", align 1
@.str.408 = private unnamed_addr constant [10 x i8] c"Diffusion\00", align 1
@.str.409 = private unnamed_addr constant [54 x i8] c"Diffusion factor, the strength of the blurring effect\00", align 1
@rna_MaterialVolume_ms_intensity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_depth_threshold, ptr @rna_MaterialVolume_ms_spread, i32 -1, ptr @.str.413, i32 8195, ptr @.str.414, ptr @.str.415, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 80, i32 4, ptr null, ptr null }, ptr @MaterialVolume_ms_intensity_get, ptr @MaterialVolume_ms_intensity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.410 = private unnamed_addr constant [10 x i8] c"ms_spread\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"Spread\00", align 1
@.str.412 = private unnamed_addr constant [55 x i8] c"Proportional distance over which the light is diffused\00", align 1
@rna_MaterialVolume_depth_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_density, ptr @rna_MaterialVolume_ms_intensity, i32 -1, ptr @.str.416, i32 8195, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @MaterialVolume_depth_threshold_get, ptr @MaterialVolume_depth_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.413 = private unnamed_addr constant [13 x i8] c"ms_intensity\00", align 1
@.str.414 = private unnamed_addr constant [10 x i8] c"Intensity\00", align 1
@.str.415 = private unnamed_addr constant [47 x i8] c"Multiplier for multiple scattered light energy\00", align 1
@rna_MaterialVolume_density = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_density_scale, ptr @rna_MaterialVolume_depth_threshold, i32 -1, ptr @.str.419, i32 8195, ptr @.str.420, ptr @.str.421, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @MaterialVolume_density_get, ptr @MaterialVolume_density_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.416 = private unnamed_addr constant [16 x i8] c"depth_threshold\00", align 1
@.str.417 = private unnamed_addr constant [13 x i8] c"Depth Cutoff\00", align 1
@.str.418 = private unnamed_addr constant [141 x i8] c"Stop ray marching early if transmission drops below this luminance - higher values give speedups in dense volumes at the expense of accuracy\00", align 1
@rna_MaterialVolume_density_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_scattering, ptr @rna_MaterialVolume_density, i32 -1, ptr @.str.422, i32 8195, ptr @.str.423, ptr @.str.424, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @MaterialVolume_density_scale_get, ptr @MaterialVolume_density_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.419 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.420 = private unnamed_addr constant [8 x i8] c"Density\00", align 1
@.str.421 = private unnamed_addr constant [31 x i8] c"The base density of the volume\00", align 1
@rna_MaterialVolume_scattering = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_transmission_color, ptr @rna_MaterialVolume_density_scale, i32 -1, ptr @.str.425, i32 8195, ptr @.str.426, ptr @.str.427, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @MaterialVolume_scattering_get, ptr @MaterialVolume_scattering_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.422 = private unnamed_addr constant [14 x i8] c"density_scale\00", align 1
@.str.423 = private unnamed_addr constant [14 x i8] c"Density Scale\00", align 1
@.str.424 = private unnamed_addr constant [38 x i8] c"Multiplier for the material's density\00", align 1
@rna_MaterialVolume_transmission_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_reflection_color, ptr @rna_MaterialVolume_scattering, i32 -1, ptr @.str.428, i32 8195, ptr @.str.429, ptr @.str.430, i32 0, ptr @.str.45, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @MaterialVolume_transmission_color_get, ptr @MaterialVolume_transmission_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MaterialVolume_transmission_color_default }, align 8
@.str.425 = private unnamed_addr constant [11 x i8] c"scattering\00", align 1
@.str.426 = private unnamed_addr constant [11 x i8] c"Scattering\00", align 1
@.str.427 = private unnamed_addr constant [120 x i8] c"Amount of light that gets scattered out by the volume - the more out-scattering, the shallower the light will penetrate\00", align 1
@rna_MaterialVolume_reflection_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_reflection, ptr @rna_MaterialVolume_transmission_color, i32 -1, ptr @.str.431, i32 8195, ptr @.str.432, ptr @.str.433, i32 0, ptr @.str.45, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @MaterialVolume_reflection_color_get, ptr @MaterialVolume_reflection_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MaterialVolume_reflection_color_default }, align 8
@.str.428 = private unnamed_addr constant [19 x i8] c"transmission_color\00", align 1
@.str.429 = private unnamed_addr constant [19 x i8] c"Transmission Color\00", align 1
@.str.430 = private unnamed_addr constant [74 x i8] c"Result color of the volume, after other light has been scattered/absorbed\00", align 1
@rna_MaterialVolume_transmission_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_MaterialVolume_reflection = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_emission_color, ptr @rna_MaterialVolume_reflection_color, i32 -1, ptr @.str.434, i32 8195, ptr @.str.435, ptr @.str.436, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @MaterialVolume_reflection_get, ptr @MaterialVolume_reflection_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.431 = private unnamed_addr constant [17 x i8] c"reflection_color\00", align 1
@.str.432 = private unnamed_addr constant [17 x i8] c"Reflection Color\00", align 1
@.str.433 = private unnamed_addr constant [74 x i8] c"Color of light scattered out of the volume (does not affect transmission)\00", align 1
@rna_MaterialVolume_reflection_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_MaterialVolume_emission_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_emission, ptr @rna_MaterialVolume_reflection, i32 -1, ptr @.str.437, i32 8195, ptr @.str.438, ptr @.str.439, i32 0, ptr @.str.45, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @MaterialVolume_emission_color_get, ptr @MaterialVolume_emission_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MaterialVolume_emission_color_default }, align 8
@.str.434 = private unnamed_addr constant [11 x i8] c"reflection\00", align 1
@.str.435 = private unnamed_addr constant [11 x i8] c"Reflection\00", align 1
@.str.436 = private unnamed_addr constant [83 x i8] c"Multiplier to make out-scattered light brighter or darker (non-physically correct)\00", align 1
@rna_MaterialVolume_emission = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialVolume_asymmetry, ptr @rna_MaterialVolume_emission_color, i32 -1, ptr @.str.440, i32 8195, ptr @.str.441, ptr @.str.442, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @MaterialVolume_emission_get, ptr @MaterialVolume_emission_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.437 = private unnamed_addr constant [15 x i8] c"emission_color\00", align 1
@.str.438 = private unnamed_addr constant [15 x i8] c"Emission Color\00", align 1
@.str.439 = private unnamed_addr constant [23 x i8] c"Color of emitted light\00", align 1
@rna_MaterialVolume_emission_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_MaterialVolume_asymmetry = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialVolume_emission, i32 -1, ptr @.str.443, i32 8195, ptr @.str.444, ptr @.str.445, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @MaterialVolume_asymmetry_get, ptr @MaterialVolume_asymmetry_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.440 = private unnamed_addr constant [9 x i8] c"emission\00", align 1
@.str.441 = private unnamed_addr constant [9 x i8] c"Emission\00", align 1
@.str.442 = private unnamed_addr constant [48 x i8] c"Amount of light that gets emitted by the volume\00", align 1
@.str.443 = private unnamed_addr constant [10 x i8] c"asymmetry\00", align 1
@.str.444 = private unnamed_addr constant [10 x i8] c"Asymmetry\00", align 1
@.str.445 = private unnamed_addr constant [76 x i8] c"Back scattering (-1.0) to Forward scattering (1.0) and the range in between\00", align 1
@.str.446 = private unnamed_addr constant [15 x i8] c"MaterialVolume\00", align 1
@.str.447 = private unnamed_addr constant [16 x i8] c"Material Volume\00", align 1
@.str.448 = private unnamed_addr constant [51 x i8] c"Volume rendering settings for a Material datablock\00", align 1
@rna_MaterialHalo_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_size, ptr @rna_MaterialHalo_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialHalo_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_hardness, ptr @rna_MaterialHalo_rna_type, i32 -1, ptr @.str.449, i32 8195, ptr @.str.450, ptr @.str.451, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 420, i32 4, ptr null, ptr null }, ptr @MaterialHalo_size_get, ptr @MaterialHalo_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MaterialHalo_hardness = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_add, ptr @rna_MaterialHalo_size, i32 -1, ptr @.str.452, i32 8195, ptr @.str.453, ptr @.str.454, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 360, i32 1, ptr null, ptr null }, ptr @MaterialHalo_hardness_get, ptr @MaterialHalo_hardness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 127, i32 0, i32 127, i32 1, i32 0, ptr null }, align 8
@.str.449 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.450 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.451 = private unnamed_addr constant [22 x i8] c"Dimension of the halo\00", align 1
@rna_MaterialHalo_add = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_ring_count, ptr @rna_MaterialHalo_hardness, i32 -1, ptr @.str.317, i32 8195, ptr @.str.4, ptr @.str.455, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @MaterialHalo_add_get, ptr @MaterialHalo_add_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.452 = private unnamed_addr constant [9 x i8] c"hardness\00", align 1
@.str.453 = private unnamed_addr constant [9 x i8] c"Hardness\00", align 1
@.str.454 = private unnamed_addr constant [21 x i8] c"Hardness of the halo\00", align 1
@rna_MaterialHalo_ring_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_line_count, ptr @rna_MaterialHalo_add, i32 -1, ptr @.str.456, i32 8195, ptr @.str.457, ptr @.str.458, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 418, i32 1, ptr null, ptr null }, ptr @MaterialHalo_ring_count_get, ptr @MaterialHalo_ring_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 24, i32 0, i32 24, i32 1, i32 0, ptr null }, align 8
@.str.455 = private unnamed_addr constant [27 x i8] c"Strength of the add effect\00", align 1
@rna_MaterialHalo_line_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_star_tip_count, ptr @rna_MaterialHalo_ring_count, i32 -1, ptr @.str.459, i32 8195, ptr @.str.460, ptr @.str.461, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 416, i32 1, ptr null, ptr null }, ptr @MaterialHalo_line_count_get, ptr @MaterialHalo_line_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 250, i32 0, i32 250, i32 1, i32 0, ptr null }, align 8
@.str.456 = private unnamed_addr constant [11 x i8] c"ring_count\00", align 1
@.str.457 = private unnamed_addr constant [6 x i8] c"Rings\00", align 1
@.str.458 = private unnamed_addr constant [39 x i8] c"Number of rings rendered over the halo\00", align 1
@rna_MaterialHalo_star_tip_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_seed, ptr @rna_MaterialHalo_line_count, i32 -1, ptr @.str.462, i32 8195, ptr @.str.463, ptr @.str.464, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 414, i32 1, ptr null, ptr null }, ptr @MaterialHalo_star_tip_count_get, ptr @MaterialHalo_star_tip_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 3, i32 50, i32 3, i32 50, i32 1, i32 0, ptr null }, align 8
@.str.459 = private unnamed_addr constant [11 x i8] c"line_count\00", align 1
@.str.460 = private unnamed_addr constant [12 x i8] c"Line Number\00", align 1
@.str.461 = private unnamed_addr constant [51 x i8] c"Number of star shaped lines rendered over the halo\00", align 1
@rna_MaterialHalo_seed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_flare_mode, ptr @rna_MaterialHalo_star_tip_count, i32 -1, ptr @.str.465, i32 8195, ptr @.str.466, ptr @.str.467, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 362, i32 2, ptr null, ptr null }, ptr @MaterialHalo_seed_get, ptr @MaterialHalo_seed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 255, i32 0, i32 255, i32 1, i32 0, ptr null }, align 8
@.str.462 = private unnamed_addr constant [15 x i8] c"star_tip_count\00", align 1
@.str.463 = private unnamed_addr constant [10 x i8] c"Star Tips\00", align 1
@.str.464 = private unnamed_addr constant [41 x i8] c"Number of points on the star shaped halo\00", align 1
@rna_MaterialHalo_use_flare_mode = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_flare_size, ptr @rna_MaterialHalo_seed, i32 -1, ptr @.str.468, i32 3, ptr @.str.469, ptr @.str.470, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_flare_mode_get, ptr @MaterialHalo_use_flare_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.465 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.466 = private unnamed_addr constant [5 x i8] c"Seed\00", align 1
@.str.467 = private unnamed_addr constant [43 x i8] c"Randomize ring dimension and line location\00", align 1
@rna_MaterialHalo_flare_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_flare_subflare_size, ptr @rna_MaterialHalo_use_flare_mode, i32 -1, ptr @.str.471, i32 8195, ptr @.str.472, ptr @.str.473, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 424, i32 4, ptr null, ptr null }, ptr @MaterialHalo_flare_size_get, ptr @MaterialHalo_flare_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 2.500000e+01, float 0x3FB99999A0000000, float 2.500000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.468 = private unnamed_addr constant [15 x i8] c"use_flare_mode\00", align 1
@.str.469 = private unnamed_addr constant [6 x i8] c"Flare\00", align 1
@.str.470 = private unnamed_addr constant [28 x i8] c"Render halo as a lens flare\00", align 1
@rna_MaterialHalo_flare_subflare_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_flare_boost, ptr @rna_MaterialHalo_flare_size, i32 -1, ptr @.str.474, i32 8195, ptr @.str.475, ptr @.str.476, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 428, i32 4, ptr null, ptr null }, ptr @MaterialHalo_flare_subflare_size_get, ptr @MaterialHalo_flare_subflare_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 2.500000e+01, float 0x3FB99999A0000000, float 2.500000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.471 = private unnamed_addr constant [11 x i8] c"flare_size\00", align 1
@.str.472 = private unnamed_addr constant [11 x i8] c"Flare Size\00", align 1
@.str.473 = private unnamed_addr constant [50 x i8] c"Factor by which the flare is larger than the halo\00", align 1
@rna_MaterialHalo_flare_boost = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_flare_seed, ptr @rna_MaterialHalo_flare_subflare_size, i32 -1, ptr @.str.477, i32 8195, ptr @.str.478, ptr @.str.479, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 432, i32 4, ptr null, ptr null }, ptr @MaterialHalo_flare_boost_get, ptr @MaterialHalo_flare_boost_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 1.000000e+01, float 0x3FB99999A0000000, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.474 = private unnamed_addr constant [20 x i8] c"flare_subflare_size\00", align 1
@.str.475 = private unnamed_addr constant [14 x i8] c"Flare Subsize\00", align 1
@.str.476 = private unnamed_addr constant [46 x i8] c"Dimension of the sub-flares, dots and circles\00", align 1
@rna_MaterialHalo_flare_seed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_flare_subflare_count, ptr @rna_MaterialHalo_flare_boost, i32 -1, ptr @.str.480, i32 8195, ptr @.str.481, ptr @.str.482, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 363, i32 2, ptr null, ptr null }, ptr @MaterialHalo_flare_seed_get, ptr @MaterialHalo_flare_seed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 255, i32 0, i32 255, i32 1, i32 0, ptr null }, align 8
@.str.477 = private unnamed_addr constant [12 x i8] c"flare_boost\00", align 1
@.str.478 = private unnamed_addr constant [12 x i8] c"Flare Boost\00", align 1
@.str.479 = private unnamed_addr constant [30 x i8] c"Give the flare extra strength\00", align 1
@rna_MaterialHalo_flare_subflare_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_ring, ptr @rna_MaterialHalo_flare_seed, i32 -1, ptr @.str.483, i32 8195, ptr @.str.484, ptr @.str.485, i32 0, ptr @.str.45, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 412, i32 1, ptr null, ptr null }, ptr @MaterialHalo_flare_subflare_count_get, ptr @MaterialHalo_flare_subflare_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 32, i32 1, i32 32, i32 1, i32 0, ptr null }, align 8
@.str.480 = private unnamed_addr constant [11 x i8] c"flare_seed\00", align 1
@.str.481 = private unnamed_addr constant [11 x i8] c"Flare Seed\00", align 1
@.str.482 = private unnamed_addr constant [31 x i8] c"Offset in the flare seed table\00", align 1
@rna_MaterialHalo_use_ring = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_lines, ptr @rna_MaterialHalo_flare_subflare_count, i32 -1, ptr @.str.486, i32 3, ptr @.str.457, ptr @.str.487, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_ring_get, ptr @MaterialHalo_use_ring_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.483 = private unnamed_addr constant [21 x i8] c"flare_subflare_count\00", align 1
@.str.484 = private unnamed_addr constant [11 x i8] c"Flares Sub\00", align 1
@.str.485 = private unnamed_addr constant [21 x i8] c"Number of sub-flares\00", align 1
@rna_MaterialHalo_use_lines = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_star, ptr @rna_MaterialHalo_use_ring, i32 -1, ptr @.str.488, i32 3, ptr @.str.489, ptr @.str.490, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_lines_get, ptr @MaterialHalo_use_lines_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.486 = private unnamed_addr constant [9 x i8] c"use_ring\00", align 1
@.str.487 = private unnamed_addr constant [23 x i8] c"Render rings over halo\00", align 1
@rna_MaterialHalo_use_star = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_texture, ptr @rna_MaterialHalo_use_lines, i32 -1, ptr @.str.491, i32 3, ptr @.str.492, ptr @.str.493, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_star_get, ptr @MaterialHalo_use_star_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.488 = private unnamed_addr constant [10 x i8] c"use_lines\00", align 1
@.str.489 = private unnamed_addr constant [6 x i8] c"Lines\00", align 1
@.str.490 = private unnamed_addr constant [35 x i8] c"Render star shaped lines over halo\00", align 1
@rna_MaterialHalo_use_texture = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_vertex_normal, ptr @rna_MaterialHalo_use_star, i32 -1, ptr @.str.494, i32 3, ptr @.str.495, ptr @.str.496, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_texture_get, ptr @MaterialHalo_use_texture_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.491 = private unnamed_addr constant [9 x i8] c"use_star\00", align 1
@.str.492 = private unnamed_addr constant [5 x i8] c"Star\00", align 1
@.str.493 = private unnamed_addr constant [22 x i8] c"Render halo as a star\00", align 1
@rna_MaterialHalo_use_vertex_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_extreme_alpha, ptr @rna_MaterialHalo_use_texture, i32 -1, ptr @.str.497, i32 3, ptr @.str.498, ptr @.str.499, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_vertex_normal_get, ptr @MaterialHalo_use_vertex_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.494 = private unnamed_addr constant [12 x i8] c"use_texture\00", align 1
@.str.495 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.496 = private unnamed_addr constant [20 x i8] c"Give halo a texture\00", align 1
@rna_MaterialHalo_use_extreme_alpha = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_shaded, ptr @rna_MaterialHalo_use_vertex_normal, i32 -1, ptr @.str.500, i32 3, ptr @.str.501, ptr @.str.502, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_extreme_alpha_get, ptr @MaterialHalo_use_extreme_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.497 = private unnamed_addr constant [18 x i8] c"use_vertex_normal\00", align 1
@.str.498 = private unnamed_addr constant [14 x i8] c"Vertex Normal\00", align 1
@.str.499 = private unnamed_addr constant [59 x i8] c"Use the vertex normal to specify the dimension of the halo\00", align 1
@rna_MaterialHalo_use_shaded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialHalo_use_soft, ptr @rna_MaterialHalo_use_extreme_alpha, i32 -1, ptr @.str.503, i32 3, ptr @.str.504, ptr @.str.505, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_shaded_get, ptr @MaterialHalo_use_shaded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.500 = private unnamed_addr constant [18 x i8] c"use_extreme_alpha\00", align 1
@.str.501 = private unnamed_addr constant [14 x i8] c"Extreme Alpha\00", align 1
@.str.502 = private unnamed_addr constant [18 x i8] c"Use extreme alpha\00", align 1
@rna_MaterialHalo_use_soft = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialHalo_use_shaded, i32 -1, ptr @.str.506, i32 3, ptr @.str.507, ptr @.str.508, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialHalo_use_soft_get, ptr @MaterialHalo_use_soft_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.503 = private unnamed_addr constant [11 x i8] c"use_shaded\00", align 1
@.str.504 = private unnamed_addr constant [7 x i8] c"Shaded\00", align 1
@.str.505 = private unnamed_addr constant [57 x i8] c"Let halo receive light and shadows from external objects\00", align 1
@.str.506 = private unnamed_addr constant [9 x i8] c"use_soft\00", align 1
@.str.507 = private unnamed_addr constant [5 x i8] c"Soft\00", align 1
@.str.508 = private unnamed_addr constant [63 x i8] c"Soften the edges of halos at intersections with other geometry\00", align 1
@.str.509 = private unnamed_addr constant [13 x i8] c"MaterialHalo\00", align 1
@.str.510 = private unnamed_addr constant [14 x i8] c"Material Halo\00", align 1
@.str.511 = private unnamed_addr constant [55 x i8] c"Halo particle effect settings for a Material datablock\00", align 1
@rna_MaterialSubsurfaceScattering_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_radius, ptr @rna_MaterialSubsurfaceScattering_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialSubsurfaceScattering_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_color, ptr @rna_MaterialSubsurfaceScattering_rna_type, i32 -1, ptr @.str.512, i32 8195, ptr @.str.513, ptr @.str.514, i32 0, ptr @.str.45, i32 2, i32 65556, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 824, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @MaterialSubsurfaceScattering_radius_get, ptr @MaterialSubsurfaceScattering_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+04, float 0x3F50624DE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_MaterialSubsurfaceScattering_radius_default }, align 8
@rna_MaterialSubsurfaceScattering_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_error_threshold, ptr @rna_MaterialSubsurfaceScattering_radius, i32 -1, ptr @.str.515, i32 8195, ptr @.str.32, ptr @.str.516, i32 0, ptr @.str.45, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 836, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @MaterialSubsurfaceScattering_color_get, ptr @MaterialSubsurfaceScattering_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MaterialSubsurfaceScattering_color_default }, align 8
@.str.512 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.513 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.514 = private unnamed_addr constant [43 x i8] c"Mean red/green/blue scattering path length\00", align 1
@rna_MaterialSubsurfaceScattering_radius_default = internal global [3 x float] zeroinitializer, align 4
@rna_MaterialSubsurfaceScattering_error_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_scale, ptr @rna_MaterialSubsurfaceScattering_color, i32 -1, ptr @.str.517, i32 8195, ptr @.str.518, ptr @.str.519, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 848, i32 4, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_error_threshold_get, ptr @MaterialSubsurfaceScattering_error_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F1A36E2E0000000, float 1.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.515 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.516 = private unnamed_addr constant [17 x i8] c"Scattering color\00", align 1
@rna_MaterialSubsurfaceScattering_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_MaterialSubsurfaceScattering_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_ior, ptr @rna_MaterialSubsurfaceScattering_error_threshold, i32 -1, ptr @.str.520, i32 8195, ptr @.str.521, ptr @.str.522, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 852, i32 4, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_scale_get, ptr @MaterialSubsurfaceScattering_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.517 = private unnamed_addr constant [16 x i8] c"error_threshold\00", align 1
@.str.518 = private unnamed_addr constant [16 x i8] c"Error Tolerance\00", align 1
@.str.519 = private unnamed_addr constant [59 x i8] c"Error tolerance (low values are slower and higher quality)\00", align 1
@rna_MaterialSubsurfaceScattering_ior = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_color_factor, ptr @rna_MaterialSubsurfaceScattering_scale, i32 -1, ptr @.str.369, i32 8195, ptr @.str.370, ptr @.str.523, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 856, i32 4, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_ior_get, ptr @MaterialSubsurfaceScattering_ior_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 2.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.520 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.521 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.522 = private unnamed_addr constant [20 x i8] c"Object scale factor\00", align 1
@rna_MaterialSubsurfaceScattering_color_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_texture_factor, ptr @rna_MaterialSubsurfaceScattering_ior, i32 -1, ptr @.str.524, i32 8195, ptr @.str.525, ptr @.str.526, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 860, i32 4, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_color_factor_get, ptr @MaterialSubsurfaceScattering_color_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.523 = private unnamed_addr constant [47 x i8] c"Index of refraction (higher values are denser)\00", align 1
@rna_MaterialSubsurfaceScattering_texture_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_front, ptr @rna_MaterialSubsurfaceScattering_color_factor, i32 -1, ptr @.str.527, i32 8195, ptr @.str.528, ptr @.str.529, i32 0, ptr @.str.45, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 864, i32 4, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_texture_factor_get, ptr @MaterialSubsurfaceScattering_texture_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.524 = private unnamed_addr constant [13 x i8] c"color_factor\00", align 1
@.str.525 = private unnamed_addr constant [13 x i8] c"Color Factor\00", align 1
@.str.526 = private unnamed_addr constant [28 x i8] c"Blend factor for SSS colors\00", align 1
@rna_MaterialSubsurfaceScattering_front = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_back, ptr @rna_MaterialSubsurfaceScattering_texture_factor, i32 -1, ptr @.str.530, i32 8195, ptr @.str.531, ptr @.str.532, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 868, i32 4, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_front_get, ptr @MaterialSubsurfaceScattering_front_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.527 = private unnamed_addr constant [15 x i8] c"texture_factor\00", align 1
@.str.528 = private unnamed_addr constant [15 x i8] c"Texture Factor\00", align 1
@.str.529 = private unnamed_addr constant [32 x i8] c"Texture scattering blend factor\00", align 1
@rna_MaterialSubsurfaceScattering_back = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSubsurfaceScattering_use, ptr @rna_MaterialSubsurfaceScattering_front, i32 -1, ptr @.str.533, i32 8195, ptr @.str.534, ptr @.str.535, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 872, i32 4, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_back_get, ptr @MaterialSubsurfaceScattering_back_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.530 = private unnamed_addr constant [6 x i8] c"front\00", align 1
@.str.531 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.532 = private unnamed_addr constant [24 x i8] c"Front scattering weight\00", align 1
@rna_MaterialSubsurfaceScattering_use = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialSubsurfaceScattering_back, i32 -1, ptr @.str.333, i32 3, ptr @.str.334, ptr @.str.536, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialSubsurfaceScattering_use_get, ptr @MaterialSubsurfaceScattering_use_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.533 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.534 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@.str.535 = private unnamed_addr constant [23 x i8] c"Back scattering weight\00", align 1
@.str.536 = private unnamed_addr constant [59 x i8] c"Enable diffuse subsurface scattering effects in a material\00", align 1
@.str.537 = private unnamed_addr constant [29 x i8] c"MaterialSubsurfaceScattering\00", align 1
@.str.538 = private unnamed_addr constant [31 x i8] c"Material Subsurface Scattering\00", align 1
@.str.539 = private unnamed_addr constant [64 x i8] c"Diffuse subsurface scattering settings for a Material datablock\00", align 1
@rna_MaterialTextureSlot_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_uv_layer, ptr @rna_MaterialTextureSlot_texture_coords, i32 -1, ptr @.str.542, i32 8388609, ptr @.str.543, ptr @.str.544, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_object_get, ptr @MaterialTextureSlot_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.540 = private unnamed_addr constant [15 x i8] c"texture_coords\00", align 1
@.str.541 = private unnamed_addr constant [20 x i8] c"Texture Coordinates\00", align 1
@rna_MaterialTextureSlot_texture_coords_items = internal global [11 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 8, ptr @.str.847, i32 0, ptr @.str.848, ptr @.str.849 }, %struct.EnumPropertyItem { i32 32, ptr @.str.850, i32 0, ptr @.str.543, ptr @.str.851 }, %struct.EnumPropertyItem { i32 16, ptr @.str.852, i32 0, ptr @.str.852, ptr @.str.853 }, %struct.EnumPropertyItem { i32 1, ptr @.str.854, i32 0, ptr @.str.855, ptr @.str.856 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.857, i32 0, ptr @.str.858, ptr @.str.859 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.860, i32 0, ptr @.str.861, ptr @.str.862 }, %struct.EnumPropertyItem { i32 4, ptr @.str.803, i32 0, ptr @.str.558, ptr @.str.863 }, %struct.EnumPropertyItem { i32 2, ptr @.str.864, i32 0, ptr @.str.435, ptr @.str.865 }, %struct.EnumPropertyItem { i32 16384, ptr @.str.866, i32 0, ptr @.str.867, ptr @.str.868 }, %struct.EnumPropertyItem { i32 4096, ptr @.str.869, i32 0, ptr @.str.870, ptr @.str.871 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialTextureSlot_texture_coords = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_object, ptr null, i32 -1, ptr @.str.540, i32 3, ptr @.str.541, ptr @.str.2, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_texture_coords_get, ptr @MaterialTextureSlot_texture_coords_set, ptr @rna_Material_texture_coordinates_itemf, ptr null, ptr null, ptr null, ptr @rna_MaterialTextureSlot_texture_coords_items, i32 10, i32 8 }, align 8
@rna_MaterialTextureSlot_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_from_dupli, ptr @rna_MaterialTextureSlot_object, i32 -1, ptr @.str.326, i32 262145, ptr @.str.327, ptr @.str.545, i32 0, ptr @.str.45, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_uv_layer_get, ptr @MaterialTextureSlot_uv_layer_length, ptr @MaterialTextureSlot_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.542 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.543 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.544 = private unnamed_addr constant [58 x i8] c"Object to use for mapping with Object texture coordinates\00", align 1
@rna_MaterialTextureSlot_use_from_dupli = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_to_bounds, ptr @rna_MaterialTextureSlot_uv_layer, i32 -1, ptr @.str.546, i32 3, ptr @.str.547, ptr @.str.548, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_from_dupli_get, ptr @MaterialTextureSlot_use_from_dupli_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.545 = private unnamed_addr constant [54 x i8] c"UV map to use for mapping with UV texture coordinates\00", align 1
@rna_MaterialTextureSlot_use_map_to_bounds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_from_original, ptr @rna_MaterialTextureSlot_use_from_dupli, i32 -1, ptr @.str.549, i32 3, ptr @.str.550, ptr @.str.551, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_to_bounds_get, ptr @MaterialTextureSlot_use_map_to_bounds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.546 = private unnamed_addr constant [15 x i8] c"use_from_dupli\00", align 1
@.str.547 = private unnamed_addr constant [11 x i8] c"From Dupli\00", align 1
@.str.548 = private unnamed_addr constant [95 x i8] c"Dupli's instanced from verts, faces or particles, inherit texture coordinate from their parent\00", align 1
@rna_MaterialTextureSlot_use_from_original = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_color_diffuse, ptr @rna_MaterialTextureSlot_use_map_to_bounds, i32 -1, ptr @.str.552, i32 3, ptr @.str.553, ptr @.str.554, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_from_original_get, ptr @MaterialTextureSlot_use_from_original_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.549 = private unnamed_addr constant [18 x i8] c"use_map_to_bounds\00", align 1
@.str.550 = private unnamed_addr constant [14 x i8] c"Map to Bounds\00", align 1
@.str.551 = private unnamed_addr constant [33 x i8] c"Map coordinates in object bounds\00", align 1
@rna_MaterialTextureSlot_use_map_color_diffuse = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_normal, ptr @rna_MaterialTextureSlot_use_from_original, i32 -1, ptr @.str.555, i32 3, ptr @.str.217, ptr @.str.556, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_color_diffuse_get, ptr @MaterialTextureSlot_use_map_color_diffuse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.552 = private unnamed_addr constant [18 x i8] c"use_from_original\00", align 1
@.str.553 = private unnamed_addr constant [14 x i8] c"From Original\00", align 1
@.str.554 = private unnamed_addr constant [82 x i8] c"Dupli's derive their object coordinates from the original object's transformation\00", align 1
@rna_MaterialTextureSlot_use_map_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_color_spec, ptr @rna_MaterialTextureSlot_use_map_color_diffuse, i32 -1, ptr @.str.557, i32 3, ptr @.str.558, ptr @.str.559, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_normal_get, ptr @MaterialTextureSlot_use_map_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.555 = private unnamed_addr constant [22 x i8] c"use_map_color_diffuse\00", align 1
@.str.556 = private unnamed_addr constant [48 x i8] c"The texture affects basic color of the material\00", align 1
@rna_MaterialTextureSlot_use_map_color_spec = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_mirror, ptr @rna_MaterialTextureSlot_use_map_normal, i32 -1, ptr @.str.560, i32 3, ptr @.str.220, ptr @.str.561, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_color_spec_get, ptr @MaterialTextureSlot_use_map_color_spec_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.557 = private unnamed_addr constant [15 x i8] c"use_map_normal\00", align 1
@.str.558 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.559 = private unnamed_addr constant [40 x i8] c"The texture affects the rendered normal\00", align 1
@rna_MaterialTextureSlot_use_map_mirror = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_diffuse, ptr @rna_MaterialTextureSlot_use_map_color_spec, i32 -1, ptr @.str.562, i32 3, ptr @.str.563, ptr @.str.564, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_mirror_get, ptr @MaterialTextureSlot_use_map_mirror_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.560 = private unnamed_addr constant [19 x i8] c"use_map_color_spec\00", align 1
@.str.561 = private unnamed_addr constant [42 x i8] c"The texture affects the specularity color\00", align 1
@rna_MaterialTextureSlot_use_map_diffuse = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_specular, ptr @rna_MaterialTextureSlot_use_map_mirror, i32 -1, ptr @.str.565, i32 3, ptr @.str.566, ptr @.str.567, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_diffuse_get, ptr @MaterialTextureSlot_use_map_diffuse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.562 = private unnamed_addr constant [15 x i8] c"use_map_mirror\00", align 1
@.str.563 = private unnamed_addr constant [7 x i8] c"Mirror\00", align 1
@.str.564 = private unnamed_addr constant [37 x i8] c"The texture affects the mirror color\00", align 1
@rna_MaterialTextureSlot_use_map_specular = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_ambient, ptr @rna_MaterialTextureSlot_use_map_diffuse, i32 -1, ptr @.str.568, i32 3, ptr @.str.569, ptr @.str.570, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_specular_get, ptr @MaterialTextureSlot_use_map_specular_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.565 = private unnamed_addr constant [16 x i8] c"use_map_diffuse\00", align 1
@.str.566 = private unnamed_addr constant [8 x i8] c"Diffuse\00", align 1
@.str.567 = private unnamed_addr constant [54 x i8] c"The texture affects the value of diffuse reflectivity\00", align 1
@rna_MaterialTextureSlot_use_map_ambient = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_hardness, ptr @rna_MaterialTextureSlot_use_map_specular, i32 -1, ptr @.str.571, i32 3, ptr @.str.56, ptr @.str.572, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_ambient_get, ptr @MaterialTextureSlot_use_map_ambient_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.568 = private unnamed_addr constant [17 x i8] c"use_map_specular\00", align 1
@.str.569 = private unnamed_addr constant [9 x i8] c"Specular\00", align 1
@.str.570 = private unnamed_addr constant [55 x i8] c"The texture affects the value of specular reflectivity\00", align 1
@rna_MaterialTextureSlot_use_map_hardness = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_raymir, ptr @rna_MaterialTextureSlot_use_map_ambient, i32 -1, ptr @.str.573, i32 3, ptr @.str.453, ptr @.str.574, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_hardness_get, ptr @MaterialTextureSlot_use_map_hardness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.571 = private unnamed_addr constant [16 x i8] c"use_map_ambient\00", align 1
@.str.572 = private unnamed_addr constant [41 x i8] c"The texture affects the value of ambient\00", align 1
@rna_MaterialTextureSlot_use_map_raymir = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_alpha, ptr @rna_MaterialTextureSlot_use_map_hardness, i32 -1, ptr @.str.575, i32 3, ptr @.str.576, ptr @.str.577, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_raymir_get, ptr @MaterialTextureSlot_use_map_raymir_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.573 = private unnamed_addr constant [17 x i8] c"use_map_hardness\00", align 1
@.str.574 = private unnamed_addr constant [39 x i8] c"The texture affects the hardness value\00", align 1
@rna_MaterialTextureSlot_use_map_alpha = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_emit, ptr @rna_MaterialTextureSlot_use_map_raymir, i32 -1, ptr @.str.578, i32 3, ptr @.str.226, ptr @.str.579, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_alpha_get, ptr @MaterialTextureSlot_use_map_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.575 = private unnamed_addr constant [15 x i8] c"use_map_raymir\00", align 1
@.str.576 = private unnamed_addr constant [11 x i8] c"Ray-Mirror\00", align 1
@.str.577 = private unnamed_addr constant [41 x i8] c"The texture affects the ray-mirror value\00", align 1
@rna_MaterialTextureSlot_use_map_emit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_translucency, ptr @rna_MaterialTextureSlot_use_map_alpha, i32 -1, ptr @.str.580, i32 3, ptr @.str.59, ptr @.str.581, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_emit_get, ptr @MaterialTextureSlot_use_map_emit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.578 = private unnamed_addr constant [14 x i8] c"use_map_alpha\00", align 1
@.str.579 = private unnamed_addr constant [36 x i8] c"The texture affects the alpha value\00", align 1
@rna_MaterialTextureSlot_use_map_translucency = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_displacement, ptr @rna_MaterialTextureSlot_use_map_emit, i32 -1, ptr @.str.582, i32 3, ptr @.str.62, ptr @.str.583, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_translucency_get, ptr @MaterialTextureSlot_use_map_translucency_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.580 = private unnamed_addr constant [13 x i8] c"use_map_emit\00", align 1
@.str.581 = private unnamed_addr constant [35 x i8] c"The texture affects the emit value\00", align 1
@rna_MaterialTextureSlot_use_map_displacement = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_warp, ptr @rna_MaterialTextureSlot_use_map_translucency, i32 -1, ptr @.str.584, i32 3, ptr @.str.585, ptr @.str.586, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_displacement_get, ptr @MaterialTextureSlot_use_map_displacement_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.582 = private unnamed_addr constant [21 x i8] c"use_map_translucency\00", align 1
@.str.583 = private unnamed_addr constant [43 x i8] c"The texture affects the translucency value\00", align 1
@rna_MaterialTextureSlot_use_map_warp = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_mapping_x, ptr @rna_MaterialTextureSlot_use_map_displacement, i32 -1, ptr @.str.587, i32 3, ptr @.str.588, ptr @.str.589, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_warp_get, ptr @MaterialTextureSlot_use_map_warp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.584 = private unnamed_addr constant [21 x i8] c"use_map_displacement\00", align 1
@.str.585 = private unnamed_addr constant [13 x i8] c"Displacement\00", align 1
@.str.586 = private unnamed_addr constant [37 x i8] c"Let the texture displace the surface\00", align 1
@rna_MaterialTextureSlot_mapping_x = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_mapping_y, ptr @rna_MaterialTextureSlot_use_map_warp, i32 -1, ptr @.str.590, i32 3, ptr @.str.591, ptr @.str.2, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_mapping_x_get, ptr @MaterialTextureSlot_mapping_x_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialTextureSlot_mapping_x_items, i32 4, i32 0 }, align 8
@.str.587 = private unnamed_addr constant [13 x i8] c"use_map_warp\00", align 1
@.str.588 = private unnamed_addr constant [5 x i8] c"Warp\00", align 1
@.str.589 = private unnamed_addr constant [58 x i8] c"Let the texture warp texture coordinates of next channels\00", align 1
@rna_MaterialTextureSlot_mapping_y = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_mapping_z, ptr @rna_MaterialTextureSlot_mapping_x, i32 -1, ptr @.str.592, i32 3, ptr @.str.593, ptr @.str.2, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_mapping_y_get, ptr @MaterialTextureSlot_mapping_y_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialTextureSlot_mapping_y_items, i32 4, i32 0 }, align 8
@.str.590 = private unnamed_addr constant [10 x i8] c"mapping_x\00", align 1
@.str.591 = private unnamed_addr constant [10 x i8] c"X Mapping\00", align 1
@rna_MaterialTextureSlot_mapping_x_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.872, i32 0, ptr @.str.873, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.874, i32 0, ptr @.str.874, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.875, i32 0, ptr @.str.875, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.876, i32 0, ptr @.str.876, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialTextureSlot_mapping_z = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_mapping, ptr @rna_MaterialTextureSlot_mapping_y, i32 -1, ptr @.str.594, i32 3, ptr @.str.595, ptr @.str.2, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_mapping_z_get, ptr @MaterialTextureSlot_mapping_z_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialTextureSlot_mapping_z_items, i32 4, i32 0 }, align 8
@.str.592 = private unnamed_addr constant [10 x i8] c"mapping_y\00", align 1
@.str.593 = private unnamed_addr constant [10 x i8] c"Y Mapping\00", align 1
@rna_MaterialTextureSlot_mapping_y_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.872, i32 0, ptr @.str.873, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.874, i32 0, ptr @.str.874, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.875, i32 0, ptr @.str.875, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.876, i32 0, ptr @.str.876, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialTextureSlot_mapping = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_normal_map_space, ptr @rna_MaterialTextureSlot_mapping_z, i32 -1, ptr @.str.596, i32 3, ptr @.str.597, ptr @.str.2, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_mapping_get, ptr @MaterialTextureSlot_mapping_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialTextureSlot_mapping_items, i32 4, i32 0 }, align 8
@.str.594 = private unnamed_addr constant [10 x i8] c"mapping_z\00", align 1
@.str.595 = private unnamed_addr constant [10 x i8] c"Z Mapping\00", align 1
@rna_MaterialTextureSlot_mapping_z_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.872, i32 0, ptr @.str.873, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.874, i32 0, ptr @.str.874, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.875, i32 0, ptr @.str.875, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.876, i32 0, ptr @.str.876, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialTextureSlot_normal_map_space = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_normal_factor, ptr @rna_MaterialTextureSlot_mapping, i32 -1, ptr @.str.598, i32 3, ptr @.str.599, ptr @.str.600, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_normal_map_space_get, ptr @MaterialTextureSlot_normal_map_space_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialTextureSlot_normal_map_space_items, i32 4, i32 0 }, align 8
@.str.596 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.597 = private unnamed_addr constant [8 x i8] c"Mapping\00", align 1
@rna_MaterialTextureSlot_mapping_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.775, i32 0, ptr @.str.776, ptr @.str.877 }, %struct.EnumPropertyItem { i32 1, ptr @.str.780, i32 0, ptr @.str.781, ptr @.str.878 }, %struct.EnumPropertyItem { i32 2, ptr @.str.879, i32 0, ptr @.str.880, ptr @.str.881 }, %struct.EnumPropertyItem { i32 3, ptr @.str.778, i32 0, ptr @.str.779, ptr @.str.881 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialTextureSlot_normal_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_displacement_factor, ptr @rna_MaterialTextureSlot_normal_map_space, i32 -1, ptr @.str.601, i32 8195, ptr @.str.602, ptr @.str.603, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 172, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_normal_factor_get, ptr @MaterialTextureSlot_normal_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e+00, float 5.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.598 = private unnamed_addr constant [17 x i8] c"normal_map_space\00", align 1
@.str.599 = private unnamed_addr constant [17 x i8] c"Normal Map Space\00", align 1
@.str.600 = private unnamed_addr constant [30 x i8] c"Set space of normal map image\00", align 1
@rna_MaterialTextureSlot_normal_map_space_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.882, i32 0, ptr @.str.883, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.884, i32 0, ptr @.str.885, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.850, i32 0, ptr @.str.543, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.869, i32 0, ptr @.str.870, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialTextureSlot_displacement_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_warp_factor, ptr @rna_MaterialTextureSlot_normal_factor, i32 -1, ptr @.str.604, i32 8195, ptr @.str.605, ptr @.str.606, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 176, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_displacement_factor_get, ptr @MaterialTextureSlot_displacement_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.601 = private unnamed_addr constant [14 x i8] c"normal_factor\00", align 1
@.str.602 = private unnamed_addr constant [14 x i8] c"Normal Factor\00", align 1
@.str.603 = private unnamed_addr constant [37 x i8] c"Amount texture affects normal values\00", align 1
@rna_MaterialTextureSlot_warp_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_specular_color_factor, ptr @rna_MaterialTextureSlot_displacement_factor, i32 -1, ptr @.str.607, i32 8195, ptr @.str.608, ptr @.str.609, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_warp_factor_get, ptr @MaterialTextureSlot_warp_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.604 = private unnamed_addr constant [20 x i8] c"displacement_factor\00", align 1
@.str.605 = private unnamed_addr constant [20 x i8] c"Displacement Factor\00", align 1
@.str.606 = private unnamed_addr constant [37 x i8] c"Amount texture displaces the surface\00", align 1
@rna_MaterialTextureSlot_specular_color_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_diffuse_color_factor, ptr @rna_MaterialTextureSlot_warp_factor, i32 -1, ptr @.str.610, i32 8195, ptr @.str.611, ptr @.str.612, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_specular_color_factor_get, ptr @MaterialTextureSlot_specular_color_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.607 = private unnamed_addr constant [12 x i8] c"warp_factor\00", align 1
@.str.608 = private unnamed_addr constant [12 x i8] c"Warp Factor\00", align 1
@.str.609 = private unnamed_addr constant [60 x i8] c"Amount texture affects texture coordinates of next channels\00", align 1
@rna_MaterialTextureSlot_diffuse_color_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_mirror_factor, ptr @rna_MaterialTextureSlot_specular_color_factor, i32 -1, ptr @.str.613, i32 8195, ptr @.str.614, ptr @.str.615, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 164, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_diffuse_color_factor_get, ptr @MaterialTextureSlot_diffuse_color_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.610 = private unnamed_addr constant [22 x i8] c"specular_color_factor\00", align 1
@.str.611 = private unnamed_addr constant [22 x i8] c"Specular Color Factor\00", align 1
@.str.612 = private unnamed_addr constant [38 x i8] c"Amount texture affects specular color\00", align 1
@rna_MaterialTextureSlot_mirror_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_alpha_factor, ptr @rna_MaterialTextureSlot_diffuse_color_factor, i32 -1, ptr @.str.616, i32 8195, ptr @.str.617, ptr @.str.618, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 188, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_mirror_factor_get, ptr @MaterialTextureSlot_mirror_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.613 = private unnamed_addr constant [21 x i8] c"diffuse_color_factor\00", align 1
@.str.614 = private unnamed_addr constant [21 x i8] c"Diffuse Color Factor\00", align 1
@.str.615 = private unnamed_addr constant [37 x i8] c"Amount texture affects diffuse color\00", align 1
@rna_MaterialTextureSlot_alpha_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_diffuse_factor, ptr @rna_MaterialTextureSlot_mirror_factor, i32 -1, ptr @.str.619, i32 8195, ptr @.str.620, ptr @.str.621, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_alpha_factor_get, ptr @MaterialTextureSlot_alpha_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.616 = private unnamed_addr constant [14 x i8] c"mirror_factor\00", align 1
@.str.617 = private unnamed_addr constant [14 x i8] c"Mirror Factor\00", align 1
@.str.618 = private unnamed_addr constant [36 x i8] c"Amount texture affects mirror color\00", align 1
@rna_MaterialTextureSlot_diffuse_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_specular_factor, ptr @rna_MaterialTextureSlot_alpha_factor, i32 -1, ptr @.str.622, i32 8195, ptr @.str.623, ptr @.str.624, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 196, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_diffuse_factor_get, ptr @MaterialTextureSlot_diffuse_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.619 = private unnamed_addr constant [13 x i8] c"alpha_factor\00", align 1
@.str.620 = private unnamed_addr constant [13 x i8] c"Alpha Factor\00", align 1
@.str.621 = private unnamed_addr constant [29 x i8] c"Amount texture affects alpha\00", align 1
@rna_MaterialTextureSlot_specular_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_emit_factor, ptr @rna_MaterialTextureSlot_diffuse_factor, i32 -1, ptr @.str.625, i32 8195, ptr @.str.626, ptr @.str.627, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 200, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_specular_factor_get, ptr @MaterialTextureSlot_specular_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.622 = private unnamed_addr constant [15 x i8] c"diffuse_factor\00", align 1
@.str.623 = private unnamed_addr constant [15 x i8] c"Diffuse Factor\00", align 1
@.str.624 = private unnamed_addr constant [44 x i8] c"Amount texture affects diffuse reflectivity\00", align 1
@rna_MaterialTextureSlot_emit_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_hardness_factor, ptr @rna_MaterialTextureSlot_specular_factor, i32 -1, ptr @.str.628, i32 8195, ptr @.str.629, ptr @.str.630, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 204, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_emit_factor_get, ptr @MaterialTextureSlot_emit_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.625 = private unnamed_addr constant [16 x i8] c"specular_factor\00", align 1
@.str.626 = private unnamed_addr constant [16 x i8] c"Specular Factor\00", align 1
@.str.627 = private unnamed_addr constant [45 x i8] c"Amount texture affects specular reflectivity\00", align 1
@rna_MaterialTextureSlot_hardness_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_raymir_factor, ptr @rna_MaterialTextureSlot_emit_factor, i32 -1, ptr @.str.631, i32 8195, ptr @.str.632, ptr @.str.633, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 208, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_hardness_factor_get, ptr @MaterialTextureSlot_hardness_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.628 = private unnamed_addr constant [12 x i8] c"emit_factor\00", align 1
@.str.629 = private unnamed_addr constant [12 x i8] c"Emit Factor\00", align 1
@.str.630 = private unnamed_addr constant [32 x i8] c"Amount texture affects emission\00", align 1
@rna_MaterialTextureSlot_raymir_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_translucency_factor, ptr @rna_MaterialTextureSlot_hardness_factor, i32 -1, ptr @.str.634, i32 8195, ptr @.str.635, ptr @.str.636, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 212, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_raymir_factor_get, ptr @MaterialTextureSlot_raymir_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.631 = private unnamed_addr constant [16 x i8] c"hardness_factor\00", align 1
@.str.632 = private unnamed_addr constant [16 x i8] c"Hardness Factor\00", align 1
@.str.633 = private unnamed_addr constant [32 x i8] c"Amount texture affects hardness\00", align 1
@rna_MaterialTextureSlot_translucency_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_ambient_factor, ptr @rna_MaterialTextureSlot_raymir_factor, i32 -1, ptr @.str.637, i32 8195, ptr @.str.638, ptr @.str.639, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_translucency_factor_get, ptr @MaterialTextureSlot_translucency_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.634 = private unnamed_addr constant [14 x i8] c"raymir_factor\00", align 1
@.str.635 = private unnamed_addr constant [18 x i8] c"Ray Mirror Factor\00", align 1
@.str.636 = private unnamed_addr constant [34 x i8] c"Amount texture affects ray mirror\00", align 1
@rna_MaterialTextureSlot_ambient_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_color_emission, ptr @rna_MaterialTextureSlot_translucency_factor, i32 -1, ptr @.str.640, i32 8195, ptr @.str.641, ptr @.str.642, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_ambient_factor_get, ptr @MaterialTextureSlot_ambient_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.637 = private unnamed_addr constant [20 x i8] c"translucency_factor\00", align 1
@.str.638 = private unnamed_addr constant [20 x i8] c"Translucency Factor\00", align 1
@.str.639 = private unnamed_addr constant [36 x i8] c"Amount texture affects translucency\00", align 1
@rna_MaterialTextureSlot_use_map_color_emission = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_color_reflection, ptr @rna_MaterialTextureSlot_ambient_factor, i32 -1, ptr @.str.643, i32 3, ptr @.str.438, ptr @.str.644, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_color_emission_get, ptr @MaterialTextureSlot_use_map_color_emission_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.640 = private unnamed_addr constant [15 x i8] c"ambient_factor\00", align 1
@.str.641 = private unnamed_addr constant [15 x i8] c"Ambient Factor\00", align 1
@.str.642 = private unnamed_addr constant [31 x i8] c"Amount texture affects ambient\00", align 1
@rna_MaterialTextureSlot_use_map_color_reflection = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_color_transmission, ptr @rna_MaterialTextureSlot_use_map_color_emission, i32 -1, ptr @.str.645, i32 3, ptr @.str.432, ptr @.str.646, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_color_reflection_get, ptr @MaterialTextureSlot_use_map_color_reflection_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.643 = private unnamed_addr constant [23 x i8] c"use_map_color_emission\00", align 1
@.str.644 = private unnamed_addr constant [42 x i8] c"The texture affects the color of emission\00", align 1
@rna_MaterialTextureSlot_use_map_color_transmission = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_density, ptr @rna_MaterialTextureSlot_use_map_color_reflection, i32 -1, ptr @.str.647, i32 3, ptr @.str.429, ptr @.str.648, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 117440512, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_color_transmission_get, ptr @MaterialTextureSlot_use_map_color_transmission_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.645 = private unnamed_addr constant [25 x i8] c"use_map_color_reflection\00", align 1
@.str.646 = private unnamed_addr constant [49 x i8] c"The texture affects the color of scattered light\00", align 1
@rna_MaterialTextureSlot_use_map_density = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_emission, ptr @rna_MaterialTextureSlot_use_map_color_transmission, i32 -1, ptr @.str.649, i32 3, ptr @.str.420, ptr @.str.650, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_density_get, ptr @MaterialTextureSlot_use_map_density_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.647 = private unnamed_addr constant [27 x i8] c"use_map_color_transmission\00", align 1
@.str.648 = private unnamed_addr constant [83 x i8] c"The texture affects the result color after other light has been scattered/absorbed\00", align 1
@rna_MaterialTextureSlot_use_map_emission = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_scatter, ptr @rna_MaterialTextureSlot_use_map_density, i32 -1, ptr @.str.651, i32 3, ptr @.str.441, ptr @.str.652, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_emission_get, ptr @MaterialTextureSlot_use_map_emission_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.649 = private unnamed_addr constant [16 x i8] c"use_map_density\00", align 1
@.str.650 = private unnamed_addr constant [41 x i8] c"The texture affects the volume's density\00", align 1
@rna_MaterialTextureSlot_use_map_scatter = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use_map_reflect, ptr @rna_MaterialTextureSlot_use_map_emission, i32 -1, ptr @.str.653, i32 3, ptr @.str.426, ptr @.str.654, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_scatter_get, ptr @MaterialTextureSlot_use_map_scatter_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.651 = private unnamed_addr constant [17 x i8] c"use_map_emission\00", align 1
@.str.652 = private unnamed_addr constant [42 x i8] c"The texture affects the volume's emission\00", align 1
@rna_MaterialTextureSlot_use_map_reflect = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_emission_color_factor, ptr @rna_MaterialTextureSlot_use_map_scatter, i32 -1, ptr @.str.655, i32 3, ptr @.str.435, ptr @.str.656, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 117440512, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_map_reflect_get, ptr @MaterialTextureSlot_use_map_reflect_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.653 = private unnamed_addr constant [16 x i8] c"use_map_scatter\00", align 1
@.str.654 = private unnamed_addr constant [44 x i8] c"The texture affects the volume's scattering\00", align 1
@rna_MaterialTextureSlot_emission_color_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_reflection_color_factor, ptr @rna_MaterialTextureSlot_use_map_reflect, i32 -1, ptr @.str.657, i32 8195, ptr @.str.658, ptr @.str.659, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 224, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_emission_color_factor_get, ptr @MaterialTextureSlot_emission_color_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.655 = private unnamed_addr constant [16 x i8] c"use_map_reflect\00", align 1
@.str.656 = private unnamed_addr constant [53 x i8] c"The texture affects the reflected light's brightness\00", align 1
@rna_MaterialTextureSlot_reflection_color_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_transmission_color_factor, ptr @rna_MaterialTextureSlot_emission_color_factor, i32 -1, ptr @.str.660, i32 8195, ptr @.str.661, ptr @.str.662, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 228, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_reflection_color_factor_get, ptr @MaterialTextureSlot_reflection_color_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.657 = private unnamed_addr constant [22 x i8] c"emission_color_factor\00", align 1
@.str.658 = private unnamed_addr constant [22 x i8] c"Emission Color Factor\00", align 1
@.str.659 = private unnamed_addr constant [38 x i8] c"Amount texture affects emission color\00", align 1
@rna_MaterialTextureSlot_transmission_color_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_density_factor, ptr @rna_MaterialTextureSlot_reflection_color_factor, i32 -1, ptr @.str.663, i32 8195, ptr @.str.664, ptr @.str.665, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 117440512, ptr null, ptr null, i32 232, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_transmission_color_factor_get, ptr @MaterialTextureSlot_transmission_color_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.660 = private unnamed_addr constant [24 x i8] c"reflection_color_factor\00", align 1
@.str.661 = private unnamed_addr constant [24 x i8] c"Reflection Color Factor\00", align 1
@.str.662 = private unnamed_addr constant [52 x i8] c"Amount texture affects color of out-scattered light\00", align 1
@rna_MaterialTextureSlot_density_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_emission_factor, ptr @rna_MaterialTextureSlot_transmission_color_factor, i32 -1, ptr @.str.666, i32 8195, ptr @.str.667, ptr @.str.668, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 236, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_density_factor_get, ptr @MaterialTextureSlot_density_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.663 = private unnamed_addr constant [26 x i8] c"transmission_color_factor\00", align 1
@.str.664 = private unnamed_addr constant [26 x i8] c"Transmission Color Factor\00", align 1
@.str.665 = private unnamed_addr constant [76 x i8] c"Amount texture affects result color after light has been scattered/absorbed\00", align 1
@rna_MaterialTextureSlot_emission_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_scattering_factor, ptr @rna_MaterialTextureSlot_density_factor, i32 -1, ptr @.str.669, i32 8195, ptr @.str.670, ptr @.str.630, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 204, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_emission_factor_get, ptr @MaterialTextureSlot_emission_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.666 = private unnamed_addr constant [15 x i8] c"density_factor\00", align 1
@.str.667 = private unnamed_addr constant [15 x i8] c"Density Factor\00", align 1
@.str.668 = private unnamed_addr constant [31 x i8] c"Amount texture affects density\00", align 1
@rna_MaterialTextureSlot_scattering_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_reflection_factor, ptr @rna_MaterialTextureSlot_emission_factor, i32 -1, ptr @.str.671, i32 8195, ptr @.str.672, ptr @.str.673, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 240, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_scattering_factor_get, ptr @MaterialTextureSlot_scattering_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.669 = private unnamed_addr constant [16 x i8] c"emission_factor\00", align 1
@.str.670 = private unnamed_addr constant [16 x i8] c"Emission Factor\00", align 1
@rna_MaterialTextureSlot_reflection_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_use, ptr @rna_MaterialTextureSlot_scattering_factor, i32 -1, ptr @.str.674, i32 8195, ptr @.str.675, ptr @.str.676, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 244, i32 4, ptr null, ptr null }, ptr @MaterialTextureSlot_reflection_factor_get, ptr @MaterialTextureSlot_reflection_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.671 = private unnamed_addr constant [18 x i8] c"scattering_factor\00", align 1
@.str.672 = private unnamed_addr constant [18 x i8] c"Scattering Factor\00", align 1
@.str.673 = private unnamed_addr constant [34 x i8] c"Amount texture affects scattering\00", align 1
@rna_MaterialTextureSlot_use = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_bump_method, ptr @rna_MaterialTextureSlot_reflection_factor, i32 -1, ptr @.str.333, i32 3, ptr @.str.334, ptr @.str.677, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_use_get, ptr @MaterialTextureSlot_use_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.674 = private unnamed_addr constant [18 x i8] c"reflection_factor\00", align 1
@.str.675 = private unnamed_addr constant [18 x i8] c"Reflection Factor\00", align 1
@.str.676 = private unnamed_addr constant [57 x i8] c"Amount texture affects brightness of out-scattered light\00", align 1
@rna_MaterialTextureSlot_bump_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialTextureSlot_bump_objectspace, ptr @rna_MaterialTextureSlot_use, i32 -1, ptr @.str.678, i32 3, ptr @.str.679, ptr @.str.680, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_bump_method_get, ptr @MaterialTextureSlot_bump_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialTextureSlot_bump_method_items, i32 5, i32 0 }, align 8
@.str.677 = private unnamed_addr constant [34 x i8] c"Enable this material texture slot\00", align 1
@rna_MaterialTextureSlot_bump_objectspace = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialTextureSlot_bump_method, i32 -1, ptr @.str.681, i32 3, ptr @.str.682, ptr @.str.683, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialTextureSlot_bump_objectspace_get, ptr @MaterialTextureSlot_bump_objectspace_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialTextureSlot_bump_objectspace_items, i32 3, i32 0 }, align 8
@.str.678 = private unnamed_addr constant [12 x i8] c"bump_method\00", align 1
@.str.679 = private unnamed_addr constant [12 x i8] c"Bump Method\00", align 1
@.str.680 = private unnamed_addr constant [31 x i8] c"Method to use for bump mapping\00", align 1
@rna_MaterialTextureSlot_bump_method_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.886, i32 0, ptr @.str.887, ptr @.str.2 }, %struct.EnumPropertyItem { i32 128, ptr @.str.888, i32 0, ptr @.str.889, ptr @.str.2 }, %struct.EnumPropertyItem { i32 256, ptr @.str.890, i32 0, ptr @.str.891, ptr @.str.892 }, %struct.EnumPropertyItem { i32 512, ptr @.str.893, i32 0, ptr @.str.894, ptr @.str.895 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.896, i32 0, ptr @.str.897, ptr @.str.898 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.681 = private unnamed_addr constant [17 x i8] c"bump_objectspace\00", align 1
@.str.682 = private unnamed_addr constant [11 x i8] c"Bump Space\00", align 1
@.str.683 = private unnamed_addr constant [31 x i8] c"Space to apply bump mapping in\00", align 1
@rna_MaterialTextureSlot_bump_objectspace_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.899, i32 0, ptr @.str.900, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.901, i32 0, ptr @.str.902, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2048, ptr @.str.903, i32 0, ptr @.str.904, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.684 = private unnamed_addr constant [20 x i8] c"MaterialTextureSlot\00", align 1
@.str.685 = private unnamed_addr constant [22 x i8] c"Material Texture Slot\00", align 1
@.str.686 = private unnamed_addr constant [50 x i8] c"Texture slot for textures in a Material datablock\00", align 1
@rna_TextureSlot_name = external global %struct.StringPropertyRNA, align 8
@rna_TextureSlot_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_TextureSlot = external global %struct.StructRNA, align 8
@rna_MaterialStrand_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_use_tangent_shading, ptr @rna_MaterialStrand_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialStrand_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialStrand_use_tangent_shading = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_use_surface_diffuse, ptr @rna_MaterialStrand_rna_type, i32 -1, ptr @.str.151, i32 3, ptr @.str.152, ptr @.str.687, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialStrand_use_tangent_shading_get, ptr @MaterialStrand_use_tangent_shading_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaterialStrand_use_surface_diffuse = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_blend_distance, ptr @rna_MaterialStrand_use_tangent_shading, i32 -1, ptr @.str.688, i32 2, ptr @.str.689, ptr @.str.690, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialStrand_use_surface_diffuse_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.687 = private unnamed_addr constant [55 x i8] c"Use direction of strands as normal for tangent-shading\00", align 1
@rna_MaterialStrand_blend_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_use_blender_units, ptr @rna_MaterialStrand_use_surface_diffuse, i32 -1, ptr @.str.691, i32 8195, ptr @.str.692, ptr @.str.693, i32 0, ptr @.str.45, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 448, i32 4, ptr null, ptr null }, ptr @MaterialStrand_blend_distance_get, ptr @MaterialStrand_blend_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.688 = private unnamed_addr constant [20 x i8] c"use_surface_diffuse\00", align 1
@.str.689 = private unnamed_addr constant [16 x i8] c"Surface Diffuse\00", align 1
@.str.690 = private unnamed_addr constant [57 x i8] c"Make diffuse shading more similar to shading the surface\00", align 1
@rna_MaterialStrand_use_blender_units = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_root_size, ptr @rna_MaterialStrand_blend_distance, i32 -1, ptr @.str.694, i32 3, ptr @.str.695, ptr @.str.696, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialStrand_use_blender_units_get, ptr @MaterialStrand_use_blender_units_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.691 = private unnamed_addr constant [15 x i8] c"blend_distance\00", align 1
@.str.692 = private unnamed_addr constant [15 x i8] c"Blend Distance\00", align 1
@.str.693 = private unnamed_addr constant [62 x i8] c"Worldspace distance over which to blend in the surface normal\00", align 1
@rna_MaterialStrand_root_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_tip_size, ptr @rna_MaterialStrand_use_blender_units, i32 -1, ptr @.str.697, i32 8195, ptr @.str.698, ptr @.str.699, i32 0, ptr @.str.45, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 436, i32 4, ptr null, ptr null }, ptr @MaterialStrand_root_size_get, ptr @MaterialStrand_root_size_set, ptr null, ptr null, ptr @rna_MaterialStrand_start_size_range, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.694 = private unnamed_addr constant [18 x i8] c"use_blender_units\00", align 1
@.str.695 = private unnamed_addr constant [14 x i8] c"Blender Units\00", align 1
@.str.696 = private unnamed_addr constant [47 x i8] c"Use Blender units for widths instead of pixels\00", align 1
@rna_MaterialStrand_tip_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_size_min, ptr @rna_MaterialStrand_root_size, i32 -1, ptr @.str.700, i32 8195, ptr @.str.701, ptr @.str.702, i32 0, ptr @.str.45, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 440, i32 4, ptr null, ptr null }, ptr @MaterialStrand_tip_size_get, ptr @MaterialStrand_tip_size_set, ptr null, ptr null, ptr @rna_MaterialStrand_end_size_range, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.697 = private unnamed_addr constant [10 x i8] c"root_size\00", align 1
@.str.698 = private unnamed_addr constant [10 x i8] c"Root Size\00", align 1
@.str.699 = private unnamed_addr constant [49 x i8] c"Start size of strands in pixels or Blender units\00", align 1
@rna_MaterialStrand_size_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_shape, ptr @rna_MaterialStrand_tip_size, i32 -1, ptr @.str.703, i32 8195, ptr @.str.704, ptr @.str.705, i32 0, ptr @.str.45, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 452, i32 4, ptr null, ptr null }, ptr @MaterialStrand_size_min_get, ptr @MaterialStrand_size_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+01, float 0x3F50624DE0000000, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.700 = private unnamed_addr constant [9 x i8] c"tip_size\00", align 1
@.str.701 = private unnamed_addr constant [9 x i8] c"Tip Size\00", align 1
@.str.702 = private unnamed_addr constant [47 x i8] c"End size of strands in pixels or Blender units\00", align 1
@rna_MaterialStrand_shape = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_width_fade, ptr @rna_MaterialStrand_size_min, i32 -1, ptr @.str.706, i32 8195, ptr @.str.707, ptr @.str.708, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 444, i32 4, ptr null, ptr null }, ptr @MaterialStrand_shape_get, ptr @MaterialStrand_shape_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xBFECCCCCC0000000, float 0x3FECCCCCC0000000, float 0xBFECCCCCC0000000, float 0x3FECCCCCC0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.703 = private unnamed_addr constant [9 x i8] c"size_min\00", align 1
@.str.704 = private unnamed_addr constant [13 x i8] c"Minimum Size\00", align 1
@.str.705 = private unnamed_addr constant [34 x i8] c"Minimum size of strands in pixels\00", align 1
@rna_MaterialStrand_width_fade = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialStrand_uv_layer, ptr @rna_MaterialStrand_shape, i32 -1, ptr @.str.709, i32 8195, ptr @.str.710, ptr @.str.711, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 456, i32 4, ptr null, ptr null }, ptr @MaterialStrand_width_fade_get, ptr @MaterialStrand_width_fade_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.706 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.707 = private unnamed_addr constant [6 x i8] c"Shape\00", align 1
@.str.708 = private unnamed_addr constant [71 x i8] c"Positive values make strands rounder, negative ones make strands spiky\00", align 1
@rna_MaterialStrand_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialStrand_width_fade, i32 -1, ptr @.str.326, i32 262145, ptr @.str.327, ptr @.str.712, i32 0, ptr @.str.45, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Material_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialStrand_uv_layer_get, ptr @MaterialStrand_uv_layer_length, ptr @MaterialStrand_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.709 = private unnamed_addr constant [11 x i8] c"width_fade\00", align 1
@.str.710 = private unnamed_addr constant [11 x i8] c"Width Fade\00", align 1
@.str.711 = private unnamed_addr constant [43 x i8] c"Transparency along the width of the strand\00", align 1
@.str.712 = private unnamed_addr constant [27 x i8] c"Name of UV map to override\00", align 1
@.str.713 = private unnamed_addr constant [15 x i8] c"MaterialStrand\00", align 1
@.str.714 = private unnamed_addr constant [16 x i8] c"Material Strand\00", align 1
@.str.715 = private unnamed_addr constant [41 x i8] c"Strand settings for a Material datablock\00", align 1
@rna_MaterialPhysics_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialPhysics_friction, ptr @rna_MaterialPhysics_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialPhysics_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialPhysics_friction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialPhysics_elasticity, ptr @rna_MaterialPhysics_rna_type, i32 -1, ptr @.str.716, i32 8195, ptr @.str.717, ptr @.str.718, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 800, i32 4, ptr null, ptr null }, ptr @MaterialPhysics_friction_get, ptr @MaterialPhysics_friction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MaterialPhysics_elasticity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialPhysics_use_fh_normal, ptr @rna_MaterialPhysics_friction, i32 -1, ptr @.str.719, i32 8195, ptr @.str.720, ptr @.str.721, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 808, i32 4, ptr null, ptr null }, ptr @MaterialPhysics_elasticity_get, ptr @MaterialPhysics_elasticity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.716 = private unnamed_addr constant [9 x i8] c"friction\00", align 1
@.str.717 = private unnamed_addr constant [9 x i8] c"Friction\00", align 1
@.str.718 = private unnamed_addr constant [68 x i8] c"Coulomb friction coefficient, when inside the physics distance area\00", align 1
@rna_MaterialPhysics_use_fh_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialPhysics_fh_force, ptr @rna_MaterialPhysics_elasticity, i32 -1, ptr @.str.722, i32 3, ptr @.str.723, ptr @.str.724, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialPhysics_use_fh_normal_get, ptr @MaterialPhysics_use_fh_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.719 = private unnamed_addr constant [11 x i8] c"elasticity\00", align 1
@.str.720 = private unnamed_addr constant [11 x i8] c"Elasticity\00", align 1
@.str.721 = private unnamed_addr constant [25 x i8] c"Elasticity of collisions\00", align 1
@rna_MaterialPhysics_fh_force = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialPhysics_fh_distance, ptr @rna_MaterialPhysics_use_fh_normal, i32 -1, ptr @.str.725, i32 8195, ptr @.str.726, ptr @.str.727, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 804, i32 4, ptr null, ptr null }, ptr @MaterialPhysics_fh_force_get, ptr @MaterialPhysics_fh_force_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.722 = private unnamed_addr constant [14 x i8] c"use_fh_normal\00", align 1
@.str.723 = private unnamed_addr constant [16 x i8] c"Align to Normal\00", align 1
@.str.724 = private unnamed_addr constant [91 x i8] c"Align dynamic game objects along the surface normal, when inside the physics distance area\00", align 1
@rna_MaterialPhysics_fh_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialPhysics_fh_damping, ptr @rna_MaterialPhysics_fh_force, i32 -1, ptr @.str.728, i32 8195, ptr @.str.729, ptr @.str.730, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 812, i32 4, ptr null, ptr null }, ptr @MaterialPhysics_fh_distance_get, ptr @MaterialPhysics_fh_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.725 = private unnamed_addr constant [9 x i8] c"fh_force\00", align 1
@.str.726 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str.727 = private unnamed_addr constant [59 x i8] c"Upward spring force, when inside the physics distance area\00", align 1
@rna_MaterialPhysics_fh_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialPhysics_fh_distance, i32 -1, ptr @.str.731, i32 8195, ptr @.str.732, ptr @.str.733, i32 0, ptr @.str.45, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 816, i32 4, ptr null, ptr null }, ptr @MaterialPhysics_fh_damping_get, ptr @MaterialPhysics_fh_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.728 = private unnamed_addr constant [12 x i8] c"fh_distance\00", align 1
@.str.729 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.730 = private unnamed_addr constant [29 x i8] c"Distance of the physics area\00", align 1
@.str.731 = private unnamed_addr constant [11 x i8] c"fh_damping\00", align 1
@.str.732 = private unnamed_addr constant [8 x i8] c"Damping\00", align 1
@.str.733 = private unnamed_addr constant [67 x i8] c"Damping of the spring force, when inside the physics distance area\00", align 1
@.str.734 = private unnamed_addr constant [16 x i8] c"MaterialPhysics\00", align 1
@.str.735 = private unnamed_addr constant [17 x i8] c"Material Physics\00", align 1
@.str.736 = private unnamed_addr constant [42 x i8] c"Physics settings for a Material datablock\00", align 1
@rna_MaterialGameSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialGameSettings_use_backface_culling, ptr @rna_MaterialGameSettings_rna_properties, i32 -1, ptr @.str.312, i32 8912896, ptr @.str.313, ptr @.str.314, i32 0, ptr @.str.45, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialGameSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialGameSettings_use_backface_culling = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialGameSettings_text, ptr @rna_MaterialGameSettings_rna_type, i32 -1, ptr @.str.737, i32 3, ptr @.str.738, ptr @.str.739, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialGameSettings_use_backface_culling_get, ptr @MaterialGameSettings_use_backface_culling_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaterialGameSettings_text = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialGameSettings_invisible, ptr @rna_MaterialGameSettings_use_backface_culling, i32 -1, ptr @.str.740, i32 3, ptr @.str.741, ptr @.str.742, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialGameSettings_text_get, ptr @MaterialGameSettings_text_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.737 = private unnamed_addr constant [21 x i8] c"use_backface_culling\00", align 1
@.str.738 = private unnamed_addr constant [17 x i8] c"Backface Culling\00", align 1
@.str.739 = private unnamed_addr constant [38 x i8] c"Hide Back of the face in Game Engine \00", align 1
@rna_MaterialGameSettings_invisible = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialGameSettings_alpha_blend, ptr @rna_MaterialGameSettings_text, i32 -1, ptr @.str.743, i32 3, ptr @.str.744, ptr @.str.745, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialGameSettings_invisible_get, ptr @MaterialGameSettings_invisible_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.740 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.741 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.742 = private unnamed_addr constant [37 x i8] c"Use material as text in Game Engine \00", align 1
@rna_MaterialGameSettings_alpha_blend = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialGameSettings_face_orientation, ptr @rna_MaterialGameSettings_invisible, i32 -1, ptr @.str.746, i32 3, ptr @.str.747, ptr @.str.748, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Material_draw_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialGameSettings_alpha_blend_get, ptr @MaterialGameSettings_alpha_blend_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialGameSettings_alpha_blend_items, i32 5, i32 0 }, align 8
@.str.743 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1
@.str.744 = private unnamed_addr constant [10 x i8] c"Invisible\00", align 1
@.str.745 = private unnamed_addr constant [20 x i8] c"Make face invisible\00", align 1
@rna_MaterialGameSettings_face_orientation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialGameSettings_physics, ptr @rna_MaterialGameSettings_alpha_blend, i32 -1, ptr @.str.749, i32 3, ptr @.str.750, ptr @.str.751, i32 0, ptr @.str.45, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialGameSettings_face_orientation_get, ptr @MaterialGameSettings_face_orientation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialGameSettings_face_orientation_items, i32 4, i32 0 }, align 8
@.str.746 = private unnamed_addr constant [12 x i8] c"alpha_blend\00", align 1
@.str.747 = private unnamed_addr constant [11 x i8] c"Blend Mode\00", align 1
@.str.748 = private unnamed_addr constant [33 x i8] c"Blend Mode for Transparent Faces\00", align 1
@rna_MaterialGameSettings_alpha_blend_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.905, i32 0, ptr @.str.906, ptr @.str.907 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.908 }, %struct.EnumPropertyItem { i32 4, ptr @.str.909, i32 0, ptr @.str.910, ptr @.str.911 }, %struct.EnumPropertyItem { i32 2, ptr @.str.912, i32 0, ptr @.str.913, ptr @.str.914 }, %struct.EnumPropertyItem { i32 8, ptr @.str.915, i32 0, ptr @.str.916, ptr @.str.917 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaterialGameSettings_physics = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialGameSettings_face_orientation, i32 -1, ptr @.str.175, i32 3, ptr @.str.176, ptr @.str.752, i32 0, ptr @.str.45, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialGameSettings_physics_get, ptr @MaterialGameSettings_physics_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.749 = private unnamed_addr constant [17 x i8] c"face_orientation\00", align 1
@.str.750 = private unnamed_addr constant [18 x i8] c"Face Orientations\00", align 1
@.str.751 = private unnamed_addr constant [34 x i8] c"Especial face orientation options\00", align 1
@rna_MaterialGameSettings_face_orientation_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.803, i32 0, ptr @.str.558, ptr @.str.918 }, %struct.EnumPropertyItem { i32 512, ptr @.str.764, i32 0, ptr @.str.167, ptr @.str.919 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.920, i32 0, ptr @.str.921, ptr @.str.922 }, %struct.EnumPropertyItem { i32 2048, ptr @.str.923, i32 0, ptr @.str.924, ptr @.str.925 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.752 = private unnamed_addr constant [37 x i8] c"Use physics properties of materials \00", align 1
@RNA_Mesh = external global %struct.StructRNA, align 8
@.str.753 = private unnamed_addr constant [21 x i8] c"MaterialGameSettings\00", align 1
@.str.754 = private unnamed_addr constant [23 x i8] c"Material Game Settings\00", align 1
@.str.755 = private unnamed_addr constant [46 x i8] c"Game Engine settings for a Material datablock\00", align 1
@.str.756 = private unnamed_addr constant [8 x i8] c"SURFACE\00", align 1
@.str.757 = private unnamed_addr constant [8 x i8] c"Surface\00", align 1
@.str.758 = private unnamed_addr constant [27 x i8] c"Render object as a surface\00", align 1
@.str.759 = private unnamed_addr constant [5 x i8] c"WIRE\00", align 1
@.str.760 = private unnamed_addr constant [5 x i8] c"Wire\00", align 1
@.str.761 = private unnamed_addr constant [65 x i8] c"Render the edges of faces as wires (not supported in raytracing)\00", align 1
@.str.762 = private unnamed_addr constant [7 x i8] c"VOLUME\00", align 1
@.str.763 = private unnamed_addr constant [26 x i8] c"Render object as a volume\00", align 1
@.str.764 = private unnamed_addr constant [5 x i8] c"HALO\00", align 1
@.str.765 = private unnamed_addr constant [32 x i8] c"Render object as halo particles\00", align 1
@.str.766 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.767 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.768 = private unnamed_addr constant [20 x i8] c"Mask the background\00", align 1
@.str.769 = private unnamed_addr constant [15 x i8] c"Z_TRANSPARENCY\00", align 1
@.str.770 = private unnamed_addr constant [15 x i8] c"Z Transparency\00", align 1
@.str.771 = private unnamed_addr constant [39 x i8] c"Use alpha buffer for transparent faces\00", align 1
@.str.772 = private unnamed_addr constant [9 x i8] c"RAYTRACE\00", align 1
@.str.773 = private unnamed_addr constant [9 x i8] c"Raytrace\00", align 1
@.str.774 = private unnamed_addr constant [52 x i8] c"Use raytracing for transparent refraction rendering\00", align 1
@.str.775 = private unnamed_addr constant [5 x i8] c"FLAT\00", align 1
@.str.776 = private unnamed_addr constant [5 x i8] c"Flat\00", align 1
@.str.777 = private unnamed_addr constant [14 x i8] c"Flat XY plane\00", align 1
@.str.778 = private unnamed_addr constant [7 x i8] c"SPHERE\00", align 1
@.str.779 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.780 = private unnamed_addr constant [5 x i8] c"CUBE\00", align 1
@.str.781 = private unnamed_addr constant [5 x i8] c"Cube\00", align 1
@.str.782 = private unnamed_addr constant [7 x i8] c"MONKEY\00", align 1
@.str.783 = private unnamed_addr constant [7 x i8] c"Monkey\00", align 1
@.str.784 = private unnamed_addr constant [5 x i8] c"HAIR\00", align 1
@.str.785 = private unnamed_addr constant [5 x i8] c"Hair\00", align 1
@.str.786 = private unnamed_addr constant [13 x i8] c"Hair strands\00", align 1
@.str.787 = private unnamed_addr constant [9 x i8] c"SPHERE_A\00", align 1
@.str.788 = private unnamed_addr constant [13 x i8] c"World Sphere\00", align 1
@.str.789 = private unnamed_addr constant [22 x i8] c"Large sphere with sky\00", align 1
@.str.790 = private unnamed_addr constant [16 x i8] c"SHADOW_ONLY_OLD\00", align 1
@.str.791 = private unnamed_addr constant [20 x i8] c"Shadow and Distance\00", align 1
@.str.792 = private unnamed_addr constant [23 x i8] c"Old shadow only method\00", align 1
@.str.793 = private unnamed_addr constant [12 x i8] c"SHADOW_ONLY\00", align 1
@.str.794 = private unnamed_addr constant [12 x i8] c"Shadow Only\00", align 1
@.str.795 = private unnamed_addr constant [28 x i8] c"Improved shadow only method\00", align 1
@.str.796 = private unnamed_addr constant [19 x i8] c"SHADOW_ONLY_SHADED\00", align 1
@.str.797 = private unnamed_addr constant [19 x i8] c"Shadow and Shading\00", align 1
@.str.798 = private unnamed_addr constant [74 x i8] c"Improved shadow only method which also renders lightless areas as shadows\00", align 1
@.str.799 = private unnamed_addr constant [7 x i8] c"SHADER\00", align 1
@.str.800 = private unnamed_addr constant [7 x i8] c"Shader\00", align 1
@.str.801 = private unnamed_addr constant [7 x i8] c"ENERGY\00", align 1
@.str.802 = private unnamed_addr constant [7 x i8] c"Energy\00", align 1
@.str.803 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.804 = private unnamed_addr constant [7 x i8] c"RESULT\00", align 1
@.str.805 = private unnamed_addr constant [7 x i8] c"Result\00", align 1
@.str.806 = private unnamed_addr constant [8 x i8] c"LAMBERT\00", align 1
@.str.807 = private unnamed_addr constant [8 x i8] c"Lambert\00", align 1
@.str.808 = private unnamed_addr constant [24 x i8] c"Use a Lambertian shader\00", align 1
@.str.809 = private unnamed_addr constant [11 x i8] c"OREN_NAYAR\00", align 1
@.str.810 = private unnamed_addr constant [11 x i8] c"Oren-Nayar\00", align 1
@.str.811 = private unnamed_addr constant [25 x i8] c"Use an Oren-Nayar shader\00", align 1
@.str.812 = private unnamed_addr constant [5 x i8] c"TOON\00", align 1
@.str.813 = private unnamed_addr constant [5 x i8] c"Toon\00", align 1
@.str.814 = private unnamed_addr constant [18 x i8] c"Use a toon shader\00", align 1
@.str.815 = private unnamed_addr constant [9 x i8] c"MINNAERT\00", align 1
@.str.816 = private unnamed_addr constant [9 x i8] c"Minnaert\00", align 1
@.str.817 = private unnamed_addr constant [22 x i8] c"Use a Minnaert shader\00", align 1
@.str.818 = private unnamed_addr constant [8 x i8] c"FRESNEL\00", align 1
@.str.819 = private unnamed_addr constant [21 x i8] c"Use a Fresnel shader\00", align 1
@.str.820 = private unnamed_addr constant [9 x i8] c"COOKTORR\00", align 1
@.str.821 = private unnamed_addr constant [9 x i8] c"CookTorr\00", align 1
@.str.822 = private unnamed_addr constant [27 x i8] c"Use a Cook-Torrance shader\00", align 1
@.str.823 = private unnamed_addr constant [6 x i8] c"PHONG\00", align 1
@.str.824 = private unnamed_addr constant [6 x i8] c"Phong\00", align 1
@.str.825 = private unnamed_addr constant [19 x i8] c"Use a Phong shader\00", align 1
@.str.826 = private unnamed_addr constant [6 x i8] c"BLINN\00", align 1
@.str.827 = private unnamed_addr constant [6 x i8] c"Blinn\00", align 1
@.str.828 = private unnamed_addr constant [19 x i8] c"Use a Blinn shader\00", align 1
@.str.829 = private unnamed_addr constant [8 x i8] c"WARDISO\00", align 1
@.str.830 = private unnamed_addr constant [8 x i8] c"WardIso\00", align 1
@.str.831 = private unnamed_addr constant [30 x i8] c"Use a Ward anisotropic shader\00", align 1
@.str.832 = private unnamed_addr constant [12 x i8] c"FADE_TO_SKY\00", align 1
@.str.833 = private unnamed_addr constant [17 x i8] c"FADE_TO_MATERIAL\00", align 1
@.str.834 = private unnamed_addr constant [11 x i8] c"RANDOMIZED\00", align 1
@.str.835 = private unnamed_addr constant [11 x i8] c"Randomized\00", align 1
@.str.836 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.837 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.838 = private unnamed_addr constant [10 x i8] c"SHADELESS\00", align 1
@.str.839 = private unnamed_addr constant [38 x i8] c"Do not calculate lighting and shadows\00", align 1
@.str.840 = private unnamed_addr constant [9 x i8] c"SHADOWED\00", align 1
@.str.841 = private unnamed_addr constant [9 x i8] c"Shadowed\00", align 1
@.str.842 = private unnamed_addr constant [7 x i8] c"SHADED\00", align 1
@.str.843 = private unnamed_addr constant [20 x i8] c"MULTIPLE_SCATTERING\00", align 1
@.str.844 = private unnamed_addr constant [20 x i8] c"Multiple Scattering\00", align 1
@.str.845 = private unnamed_addr constant [32 x i8] c"SHADED_PLUS_MULTIPLE_SCATTERING\00", align 1
@.str.846 = private unnamed_addr constant [29 x i8] c"Shaded + Multiple Scattering\00", align 1
@prop_texture_coordinates_items = internal global [11 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 8, ptr @.str.847, i32 0, ptr @.str.848, ptr @.str.849 }, %struct.EnumPropertyItem { i32 32, ptr @.str.850, i32 0, ptr @.str.543, ptr @.str.851 }, %struct.EnumPropertyItem { i32 16, ptr @.str.852, i32 0, ptr @.str.852, ptr @.str.853 }, %struct.EnumPropertyItem { i32 1, ptr @.str.854, i32 0, ptr @.str.855, ptr @.str.856 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.857, i32 0, ptr @.str.858, ptr @.str.859 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.860, i32 0, ptr @.str.861, ptr @.str.862 }, %struct.EnumPropertyItem { i32 4, ptr @.str.803, i32 0, ptr @.str.558, ptr @.str.863 }, %struct.EnumPropertyItem { i32 2, ptr @.str.864, i32 0, ptr @.str.435, ptr @.str.865 }, %struct.EnumPropertyItem { i32 16384, ptr @.str.866, i32 0, ptr @.str.867, ptr @.str.868 }, %struct.EnumPropertyItem { i32 4096, ptr @.str.869, i32 0, ptr @.str.870, ptr @.str.871 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.847 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.848 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.849 = private unnamed_addr constant [51 x i8] c"Use global coordinates for the texture coordinates\00", align 1
@.str.850 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.851 = private unnamed_addr constant [56 x i8] c"Use linked object's coordinates for texture coordinates\00", align 1
@.str.852 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@.str.853 = private unnamed_addr constant [43 x i8] c"Use UV coordinates for texture coordinates\00", align 1
@.str.854 = private unnamed_addr constant [5 x i8] c"ORCO\00", align 1
@.str.855 = private unnamed_addr constant [10 x i8] c"Generated\00", align 1
@.str.856 = private unnamed_addr constant [54 x i8] c"Use the original undeformed coordinates of the object\00", align 1
@.str.857 = private unnamed_addr constant [7 x i8] c"STRAND\00", align 1
@.str.858 = private unnamed_addr constant [18 x i8] c"Strand / Particle\00", align 1
@.str.859 = private unnamed_addr constant [89 x i8] c"Use normalized strand texture coordinate (1D) or particle age (X) and trail position (Y)\00", align 1
@.str.860 = private unnamed_addr constant [7 x i8] c"WINDOW\00", align 1
@.str.861 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.862 = private unnamed_addr constant [46 x i8] c"Use screen coordinates as texture coordinates\00", align 1
@.str.863 = private unnamed_addr constant [41 x i8] c"Use normal vector as texture coordinates\00", align 1
@.str.864 = private unnamed_addr constant [11 x i8] c"REFLECTION\00", align 1
@.str.865 = private unnamed_addr constant [45 x i8] c"Use reflection vector as texture coordinates\00", align 1
@.str.866 = private unnamed_addr constant [7 x i8] c"STRESS\00", align 1
@.str.867 = private unnamed_addr constant [7 x i8] c"Stress\00", align 1
@.str.868 = private unnamed_addr constant [80 x i8] c"Use the difference of edge lengths compared to original coordinates of the mesh\00", align 1
@.str.869 = private unnamed_addr constant [8 x i8] c"TANGENT\00", align 1
@.str.870 = private unnamed_addr constant [8 x i8] c"Tangent\00", align 1
@.str.871 = private unnamed_addr constant [55 x i8] c"Use the optional tangent vector as texture coordinates\00", align 1
@.str.872 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.873 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.874 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.875 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.876 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.877 = private unnamed_addr constant [33 x i8] c"Map X and Y coordinates directly\00", align 1
@.str.878 = private unnamed_addr constant [28 x i8] c"Map using the normal vector\00", align 1
@.str.879 = private unnamed_addr constant [5 x i8] c"TUBE\00", align 1
@.str.880 = private unnamed_addr constant [5 x i8] c"Tube\00", align 1
@.str.881 = private unnamed_addr constant [27 x i8] c"Map with Z as central axis\00", align 1
@.str.882 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.883 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.884 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.885 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.886 = private unnamed_addr constant [14 x i8] c"BUMP_ORIGINAL\00", align 1
@.str.887 = private unnamed_addr constant [9 x i8] c"Original\00", align 1
@.str.888 = private unnamed_addr constant [16 x i8] c"BUMP_COMPATIBLE\00", align 1
@.str.889 = private unnamed_addr constant [11 x i8] c"Compatible\00", align 1
@.str.890 = private unnamed_addr constant [17 x i8] c"BUMP_LOW_QUALITY\00", align 1
@.str.891 = private unnamed_addr constant [12 x i8] c"Low Quality\00", align 1
@.str.892 = private unnamed_addr constant [20 x i8] c"Use 3 tap filtering\00", align 1
@.str.893 = private unnamed_addr constant [20 x i8] c"BUMP_MEDIUM_QUALITY\00", align 1
@.str.894 = private unnamed_addr constant [15 x i8] c"Medium Quality\00", align 1
@.str.895 = private unnamed_addr constant [20 x i8] c"Use 5 tap filtering\00", align 1
@.str.896 = private unnamed_addr constant [18 x i8] c"BUMP_BEST_QUALITY\00", align 1
@.str.897 = private unnamed_addr constant [13 x i8] c"Best Quality\00", align 1
@.str.898 = private unnamed_addr constant [100 x i8] c"Use bicubic filtering (requires OpenGL 3.0+, it will fall back on medium setting for other systems)\00", align 1
@.str.899 = private unnamed_addr constant [15 x i8] c"BUMP_VIEWSPACE\00", align 1
@.str.900 = private unnamed_addr constant [10 x i8] c"ViewSpace\00", align 1
@.str.901 = private unnamed_addr constant [17 x i8] c"BUMP_OBJECTSPACE\00", align 1
@.str.902 = private unnamed_addr constant [12 x i8] c"ObjectSpace\00", align 1
@.str.903 = private unnamed_addr constant [18 x i8] c"BUMP_TEXTURESPACE\00", align 1
@.str.904 = private unnamed_addr constant [13 x i8] c"TextureSpace\00", align 1
@.str.905 = private unnamed_addr constant [7 x i8] c"OPAQUE\00", align 1
@.str.906 = private unnamed_addr constant [7 x i8] c"Opaque\00", align 1
@.str.907 = private unnamed_addr constant [39 x i8] c"Render color of textured face as color\00", align 1
@.str.908 = private unnamed_addr constant [46 x i8] c"Render face transparent and add color of face\00", align 1
@.str.909 = private unnamed_addr constant [5 x i8] c"CLIP\00", align 1
@.str.910 = private unnamed_addr constant [11 x i8] c"Alpha Clip\00", align 1
@.str.911 = private unnamed_addr constant [67 x i8] c"Use the image alpha values clipped with no blending (binary alpha)\00", align 1
@.str.912 = private unnamed_addr constant [6 x i8] c"ALPHA\00", align 1
@.str.913 = private unnamed_addr constant [12 x i8] c"Alpha Blend\00", align 1
@.str.914 = private unnamed_addr constant [70 x i8] c"Render polygon transparent, depending on alpha channel of the texture\00", align 1
@.str.915 = private unnamed_addr constant [11 x i8] c"ALPHA_SORT\00", align 1
@.str.916 = private unnamed_addr constant [11 x i8] c"Alpha Sort\00", align 1
@.str.917 = private unnamed_addr constant [82 x i8] c"Sort faces for correct alpha drawing (slow, use Alpha Clip instead when possible)\00", align 1
@.str.918 = private unnamed_addr constant [18 x i8] c"No transformation\00", align 1
@.str.919 = private unnamed_addr constant [25 x i8] c"Screen aligned billboard\00", align 1
@.str.920 = private unnamed_addr constant [10 x i8] c"BILLBOARD\00", align 1
@.str.921 = private unnamed_addr constant [10 x i8] c"Billboard\00", align 1
@.str.922 = private unnamed_addr constant [33 x i8] c"Billboard with Z-axis constraint\00", align 1
@.str.923 = private unnamed_addr constant [7 x i8] c"SHADOW\00", align 1
@.str.924 = private unnamed_addr constant [7 x i8] c"Shadow\00", align 1
@.str.925 = private unnamed_addr constant [26 x i8] c"Faces are used for shadow\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_mtex_texture_slots_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @add_mtex_id(ptr noundef %0, i32 noundef -1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.37, i32 noundef 18) #17
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_data_scene(ptr noundef %1) #17
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 117440512, ptr noundef %8) #17
  br label %9

9:                                                ; preds = %7, %6
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @add_mtex_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_mtex_texture_slots_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i32 %3, 17
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.38, i32 noundef %3) #17
  br label %10

7:                                                ; preds = %4
  %8 = tail call ptr @add_mtex_id(ptr noundef %0, i32 noundef %3) #17
  %9 = tail call ptr @CTX_data_scene(ptr noundef %1) #17
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 117440512, ptr noundef %9) #17
  br label %10

10:                                               ; preds = %7, %6
  %11 = phi ptr [ null, %6 ], [ %8, %7 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_mtex_texture_slots_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #18
  %7 = call zeroext i8 @give_active_mtex(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %8 = load ptr, ptr %5, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.39) #17
  br label %30

11:                                               ; preds = %4
  %12 = icmp ugt i32 %3, 17
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.38, i32 noundef %3) #17
  br label %30

14:                                               ; preds = %11
  %15 = zext nneg i32 %3 to i64
  %16 = getelementptr inbounds ptr, ptr %8, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.MTex, ptr %17, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  call void @id_us_min(ptr noundef %21) #17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %23 = load ptr, ptr %5, align 8, !tbaa !34
  %24 = getelementptr inbounds ptr, ptr %23, i64 %15
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  call void %22(ptr noundef %25) #17
  %26 = load ptr, ptr %5, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 %15
  store ptr null, ptr %27, align 8, !tbaa !34
  call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #17
  br label %28

28:                                               ; preds = %19, %14
  %29 = call ptr @CTX_data_scene(ptr noundef %1) #17
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 117440512, ptr noundef %29) #17
  br label %30

30:                                               ; preds = %28, %13, %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @give_active_mtex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_type_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !45
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  tail call fastcc void @rna_Material_type_set(ptr noundef %0, i32 noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Material_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !52 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i16 %6, 1
  %8 = icmp ne i32 %1, 1
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = and i32 %12, -3841
  store i32 %13, ptr %11, align 4, !tbaa !53
  br label %14

14:                                               ; preds = %10, %2
  %15 = trunc i32 %1 to i16
  store i16 %15, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_transparency_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_transparency_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -65537
  %9 = select i1 %5, i32 0, i32 65536
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_transparency_method_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = and i32 %5, 131136
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_transparency_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = and i32 %6, -131137
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_preview_render_type_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 76
  %5 = load i8, ptr %4, align 2, !tbaa !54
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_preview_render_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 76
  store i8 %5, ptr %6, align 2, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_ambient_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 4, !tbaa !55
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_ambient_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_emit_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !56
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_emit_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_translucency_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 4, !tbaa !57
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_translucency_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 26
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_cubic_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 50
  %5 = load i16, ptr %4, align 2, !tbaa !58
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_cubic_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 50
  %7 = load i16, ptr %6, align 2, !tbaa !58
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_object_color_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 50
  %5 = load i16, ptr %4, align 2, !tbaa !58
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_object_color_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 50
  %7 = load i16, ptr %6, align 2, !tbaa !58
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_shadow_ray_bias_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 70
  %5 = load float, ptr %4, align 4, !tbaa !59
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_shadow_ray_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.500000e-01
  %7 = select i1 %6, float 2.500000e-01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 70
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_shadow_buffer_bias_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 71
  %5 = load float, ptr %4, align 8, !tbaa !60
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_shadow_buffer_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 71
  store float %8, ptr %9, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_shadow_cast_alpha_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 72
  %5 = load float, ptr %4, align 4, !tbaa !61
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_shadow_cast_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 72
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_light_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 105
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #17
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_light_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 105
  store ptr %6, ptr %10, align 8, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_pass_index_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 127
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_pass_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 127
  store i16 %7, ptr %8, align 2, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_light_group_exclusive_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 28
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_light_group_exclusive_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -268435457
  %9 = select i1 %5, i32 0, i32 268435456
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_light_group_local_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 50
  %5 = load i16, ptr %4, align 2, !tbaa !58
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_light_group_local_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 50
  %7 = load i16, ptr %6, align 2, !tbaa !58
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_raytrace_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_raytrace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_shadows_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_shadows_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_shadeless_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_shadeless_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_vertex_color_light_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_vertex_color_light_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_vertex_color_paint_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_vertex_color_paint_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_invert_z_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_invert_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_offset_z_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 24
  %5 = load float, ptr %4, align 4, !tbaa !64
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_offset_z_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 24
  store float %1, ptr %5, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_sky_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_sky_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_only_shadow_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_only_shadow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_shadow_only_type_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 126
  %5 = load i16, ptr %4, align 4, !tbaa !65
  %6 = and i16 %5, 3
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_shadow_only_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 126
  %6 = load i16, ptr %5, align 4, !tbaa !65
  %7 = and i16 %6, -4
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_face_texture_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_face_texture_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_face_texture_alpha_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 29
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_face_texture_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -536870913
  %9 = select i1 %5, i32 0, i32 536870912
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_cast_shadows_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 53
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_cast_shadows_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 53
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_cast_shadows_only_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_cast_shadows_only_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_mist_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_mist_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 16384, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_transparent_shadows_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_transparent_shadows_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_ray_shadow_bias_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 22
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_ray_shadow_bias_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -4194305
  %9 = select i1 %5, i32 0, i32 4194304
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_full_oversampling_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_full_oversampling_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -8388609
  %9 = select i1 %5, i32 0, i32 8388608
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_cast_buffer_shadows_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 25
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_cast_buffer_shadows_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -33554433
  %9 = select i1 %5, i32 0, i32 33554432
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_cast_approximate_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 50
  %5 = load i16, ptr %4, align 2, !tbaa !58
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_cast_approximate_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 50
  %7 = load i16, ptr %6, align 2, !tbaa !58
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_tangent_shading_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 26
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_tangent_shading_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -67108865
  %9 = select i1 %5, i32 0, i32 67108864
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_uv_project_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 81
  %5 = load i8, ptr %4, align 2, !tbaa !67
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_uv_project_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 81
  %7 = load i8, ptr %6, align 2, !tbaa !67
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_raytrace_mirror_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Material_mirror_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_mirror_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !68 {
  %3 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_MaterialRaytraceMirror, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_raytrace_transparency_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Material_transp_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_transp_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !70 {
  %3 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_MaterialRaytraceTransparency, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_volume_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 27
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaterialVolume, ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_halo_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Material_halo_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_halo_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !71 {
  %3 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_MaterialHalo, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_subsurface_scattering_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Material_sss_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_sss_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !72 {
  %3 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_MaterialSubsurfaceScattering, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_strand_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Material_strand_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_strand_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !73 {
  %3 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_MaterialStrand, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_physics_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Material_physics_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_physics_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_MaterialPhysics, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_game_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 28
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaterialGameSettings, ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_node_tree_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 103
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NodeTree, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_nodes_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !76
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_nodes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 77
  %7 = load i8, ptr %6, align 1, !tbaa !76
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_active_node_material_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Material_active_node_material_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_active_node_material_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call ptr @give_node_material(ptr noundef %4) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Material, ptr noundef %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_active_node_material_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_Material_active_node_material_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_active_node_material_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 103
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call zeroext i8 @nodeSetActiveID(ptr noundef %8, i16 noundef signext 16717, ptr noundef %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_slots_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Material_texture_slots, ptr %4, align 8, !tbaa !81
  tail call fastcc void @rna_Material_mtex_begin(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @Material_texture_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_mtex_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 102
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 18, i8 noundef zeroext 0, ptr noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Material_texture_slots_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !85 {
  %3 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaterialTextureSlot, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_slots_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @Material_texture_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_slots_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_active_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Material_active_texture_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_active_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !86 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call ptr @give_current_material_texture(ptr noundef %4) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_active_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_Material_active_texture_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_active_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !87 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void @set_current_material_texture(ptr noundef %4, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_active_texture_index_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 75
  %5 = load i8, ptr %4, align 1, !tbaa !88
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_active_texture_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 17)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 75
  store i8 %7, ptr %8, align 1, !tbaa !88
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_paint_images_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Material_texture_paint_images, ptr %4, align 8, !tbaa !81
  tail call fastcc void @rna_Material_texpaint_begin(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @Material_texture_paint_images_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_texpaint_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !89 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 135
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 133
  %8 = load i16, ptr %7, align 8, !tbaa !91
  %9 = sext i16 %8 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %6, i32 noundef 24, i32 noundef %9, i8 noundef zeroext 0, ptr noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Material_texture_paint_images_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !92 {
  %3 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_paint_images_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @Material_texture_paint_images_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_paint_images_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Material_texture_paint_images_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #18
  call void @Material_texture_paint_images_begin(ptr noundef nonnull %4, ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = icmp sgt i32 %1, -1
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %1
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull @__func__.Material_texture_paint_images_lookup_int, i32 noundef %1) #19
  br label %42

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ %1, %22 ]
  %26 = add nsw i32 %25, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %4) #17
  %27 = icmp ne i32 %26, 0
  %28 = load i32, ptr %6, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %24, label %38, !llvm.loop !95

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !97
  %34 = mul nsw i32 %33, %1
  %35 = load ptr, ptr %10, align 8, !tbaa !98
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  store ptr %37, ptr %10, align 8, !tbaa !98
  br label %41

38:                                               ; preds = %24
  %39 = icmp eq i32 %26, 0
  %40 = select i1 %39, i1 %29, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %22, %31, %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @Material_texture_paint_images_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %42

42:                                               ; preds = %16, %38, %41, %3
  %43 = phi i32 [ 0, %3 ], [ 1, %41 ], [ 0, %38 ], [ 0, %16 ]
  call void @Material_texture_paint_images_end(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #18
  ret i32 %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Material_texture_paint_images_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #18
  call void @Material_texture_paint_images_begin(ptr noundef nonnull %4, ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !99
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @ID_name_length(ptr noundef nonnull %10) #17
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @ID_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #17
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.41) #17
  call void @ID_name_get(ptr noundef nonnull %10, ptr noundef %25) #17
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #20
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %28(ptr noundef %25) #17
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Material_texture_paint_images_next(ptr noundef nonnull %4) #19
  %30 = load i32, ptr %6, align 8, !tbaa !83
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !100

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Material_texture_paint_images_end(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #18
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @ID_name_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ID_name_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_paint_slots_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Material_texture_paint_slots, ptr %4, align 8, !tbaa !81
  tail call fastcc void @rna_Material_texpaint_begin(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @Material_texture_paint_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Material_texture_paint_slots_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !101 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_TexPaintSlot, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_paint_slots_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @Material_texture_paint_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_texture_paint_slots_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_paint_active_slot_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 131
  %5 = load i16, ptr %4, align 4, !tbaa !102
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_paint_active_slot_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 131
  store i16 %7, ptr %8, align 4, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_paint_clone_slot_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 132
  %5 = load i16, ptr %4, align 2, !tbaa !103
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_paint_clone_slot_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 132
  store i16 %7, ptr %8, align 2, !tbaa !103
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_textures_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 73
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %14, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !104
  %9 = xor i32 %8, -1
  %10 = trunc i64 %7 to i32
  %11 = lshr i32 %9, %10
  %12 = and i32 %11, 1
  %13 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %12, ptr %13, align 4, !tbaa !105
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 18
  br i1 %15, label %16, label %6, !llvm.loop !106

16:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_use_textures_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 73
  %6 = load i32, ptr %5, align 8, !tbaa !104
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %6, %2 ], [ %18, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %19, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !105
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %8, %15
  %17 = or i32 %8, %14
  %18 = select i1 %12, i32 %17, i32 %16
  store i32 %18, ptr %5, align 8, !tbaa !104
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 18
  br i1 %20, label %21, label %7, !llvm.loop !107

21:                                               ; preds = %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !108
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !110

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
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
  store float %15, ptr %16, align 4, !tbaa !108
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !111

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !112
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !113

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
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
  store float %15, ptr %16, align 4, !tbaa !112
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !114

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_mirror_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !115
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !116

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_mirror_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
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
  store float %15, ptr %16, align 4, !tbaa !115
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !117

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_alpha_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 8, !tbaa !118
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 21
  store float %8, ptr %9, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_specular_alpha_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 19
  %5 = load float, ptr %4, align 8, !tbaa !119
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 19
  store float %8, ptr %9, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_diffuse_ramp_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_use_diffuse_ramp_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Material_use_diffuse_ramp_set(ptr noundef %0, i32 noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_use_diffuse_ramp_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  br i1 %5, label %8, label %10

8:                                                ; preds = %2
  %9 = and i32 %7, -1048577
  store i32 %9, ptr %6, align 4, !tbaa !53
  br label %17

10:                                               ; preds = %2
  %11 = or i32 %7, 1048576
  store i32 %11, ptr %6, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 92
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call ptr @add_colorband(i8 noundef zeroext 0) #17
  store ptr %16, ptr %12, align 8, !tbaa !121
  br label %17

17:                                               ; preds = %8, %15, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_diffuse_ramp_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 92
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_use_specular_ramp_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_use_specular_ramp_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Material_use_specular_ramp_set(ptr noundef %0, i32 noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Material_use_specular_ramp_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  br i1 %5, label %8, label %10

8:                                                ; preds = %2
  %9 = and i32 %7, -2097153
  store i32 %9, ptr %6, align 4, !tbaa !53
  br label %17

10:                                               ; preds = %2
  %11 = or i32 %7, 2097152
  store i32 %11, ptr %6, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 93
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call ptr @add_colorband(i8 noundef zeroext 0) #17
  store ptr %16, ptr %12, align 8, !tbaa !123
  br label %17

17:                                               ; preds = %8, %15, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Material_specular_ramp_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 93
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_diffuse_ramp_blend_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 96
  %5 = load i8, ptr %4, align 2, !tbaa !124
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_ramp_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 96
  store i8 %5, ptr %6, align 2, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_specular_ramp_blend_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 97
  %5 = load i8, ptr %4, align 1, !tbaa !125
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_ramp_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 97
  store i8 %5, ptr %6, align 1, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_diffuse_ramp_input_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 94
  %5 = load i8, ptr %4, align 8, !tbaa !126
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_ramp_input_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 94
  store i8 %5, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_specular_ramp_input_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 95
  %5 = load i8, ptr %4, align 1, !tbaa !127
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_ramp_input_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 95
  store i8 %5, ptr %6, align 1, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_diffuse_ramp_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 100
  %5 = load float, ptr %4, align 8, !tbaa !128
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_ramp_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 100
  store float %8, ptr %9, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_specular_ramp_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 101
  %5 = load float, ptr %4, align 4, !tbaa !129
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_ramp_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 101
  store float %8, ptr %9, align 4, !tbaa !129
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_line_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 128
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !130

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_line_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 128
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
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
  store float %15, ptr %16, align 4, !tbaa !109
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %6, !llvm.loop !131

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_line_priority_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 129
  %5 = load i16, ptr %4, align 8, !tbaa !132
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_line_priority_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 129
  store i16 %7, ptr %8, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_diffuse_shader_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 83
  %5 = load i16, ptr %4, align 8, !tbaa !133
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_shader_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 83
  store i16 %5, ptr %6, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_diffuse_intensity_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 22
  %5 = load float, ptr %4, align 4, !tbaa !134
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_intensity_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 22
  store float %8, ptr %9, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_roughness_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 85
  %5 = load float, ptr %4, align 4, !tbaa !135
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_roughness_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x40091EB860000000
  %7 = select i1 %6, float 0x40091EB860000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 85
  store float %8, ptr %9, align 4, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_diffuse_toon_size_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 87
  %5 = load float, ptr %4, align 4, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_toon_size_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x40091EB860000000
  %7 = select i1 %6, float 0x40091EB860000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 87
  store float %8, ptr %9, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_diffuse_toon_smooth_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 87, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_toon_smooth_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 87, i64 1
  store float %8, ptr %9, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_diffuse_fresnel_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 87, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_fresnel_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 87, i64 1
  store float %8, ptr %9, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_diffuse_fresnel_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 87
  %5 = load float, ptr %4, align 4, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_diffuse_fresnel_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 87
  store float %8, ptr %9, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_darkness_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 89
  %5 = load float, ptr %4, align 8, !tbaa !136
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_darkness_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 89
  store float %8, ptr %9, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_specular_shader_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 84
  %5 = load i16, ptr %4, align 2, !tbaa !137
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_shader_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 84
  store i16 %5, ptr %6, align 2, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_specular_intensity_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 23
  %5 = load float, ptr %4, align 8, !tbaa !138
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_intensity_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 23
  store float %8, ptr %9, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Material_specular_hardness_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 38
  %5 = load i16, ptr %4, align 8, !tbaa !139
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_hardness_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 511)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 38
  store i16 %7, ptr %8, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_specular_ior_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 86
  %5 = load float, ptr %4, align 8, !tbaa !140
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_ior_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 86
  store float %8, ptr %9, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_specular_toon_size_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 87, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_toon_size_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FF87AE140000000
  %7 = select i1 %6, float 0x3FF87AE140000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 87, i64 2
  store float %8, ptr %9, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_specular_toon_smooth_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 87, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_toon_smooth_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 87, i64 3
  store float %8, ptr %9, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Material_specular_slope_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 88
  %5 = load float, ptr %4, align 4, !tbaa !141
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Material_specular_slope_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FD99999A0000000
  %7 = select i1 %6, float 0x3FD99999A0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 88
  store float %8, ptr %9, align 4, !tbaa !141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlots_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialTextureSlots_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialTextureSlots_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialTextureSlots_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !142 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlots_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialTextureSlots_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlots_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialTextureSlots_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlots_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TexPaintSlot_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_TexPaintSlot_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @TexPaintSlot_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TexPaintSlot_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !143 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TexPaintSlot_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @TexPaintSlot_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TexPaintSlot_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TexPaintSlot_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TexPaintSlot_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TexPaintSlot_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.TexPaintSlot, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %6, i64 noundef 64) #17
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TexPaintSlot_uv_layer_length(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.TexPaintSlot, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #20
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TexPaintSlot_uv_layer_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.TexPaintSlot, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef %6, ptr noundef %1, i64 noundef 64) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TexPaintSlot_index_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.TexPaintSlot, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !146
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialRaytraceMirror_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialRaytraceMirror_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialRaytraceMirror_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialRaytraceMirror_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !147 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialRaytraceMirror_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialRaytraceMirror_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialRaytraceMirror_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialRaytraceMirror_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialRaytraceMirror_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialRaytraceMirror_use_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 18
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -262145
  %9 = select i1 %5, i32 0, i32 262144
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceMirror_reflect_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 4, !tbaa !148
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_reflect_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 4, !tbaa !148
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceMirror_fresnel_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 29
  %5 = load float, ptr %4, align 8, !tbaa !149
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_fresnel_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 29
  store float %8, ptr %9, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceMirror_fresnel_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 4, !tbaa !150
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_fresnel_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 30
  store float %8, ptr %9, align 4, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceMirror_gloss_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 41
  %5 = load float, ptr %4, align 4, !tbaa !151
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_gloss_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 41
  store float %8, ptr %9, align 4, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceMirror_gloss_anisotropic_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 47
  %5 = load float, ptr %4, align 8, !tbaa !152
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_gloss_anisotropic_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 47
  store float %8, ptr %9, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialRaytraceMirror_gloss_samples_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 43
  %5 = load i16, ptr %4, align 4, !tbaa !153
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_gloss_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 43
  store i16 %7, ptr %8, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceMirror_gloss_threshold_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 45
  %5 = load float, ptr %4, align 8, !tbaa !154
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_gloss_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 45
  store float %8, ptr %9, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialRaytraceMirror_depth_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 36
  %5 = load i16, ptr %4, align 4, !tbaa !155
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_depth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 36
  store i16 %7, ptr %8, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceMirror_distance_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 48
  %5 = load float, ptr %4, align 4, !tbaa !156
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 48
  store float %8, ptr %9, align 4, !tbaa !156
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialRaytraceMirror_fade_to_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 49
  %5 = load i16, ptr %4, align 8, !tbaa !157
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceMirror_fade_to_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 49
  store i16 %5, ptr %6, align 8, !tbaa !157
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialRaytraceTransparency_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialRaytraceTransparency_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialRaytraceTransparency_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialRaytraceTransparency_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !158 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialRaytraceTransparency_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialRaytraceTransparency_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialRaytraceTransparency_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialRaytraceTransparency_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialRaytraceTransparency_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceTransparency_ior_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !159
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_ior_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 2.500000e-01
  %6 = fcmp ogt float %1, 4.000000e+00
  %7 = select i1 %6, float 4.000000e+00, float %1
  %8 = select i1 %5, float 2.500000e-01, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceTransparency_fresnel_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 31
  %5 = load float, ptr %4, align 8, !tbaa !160
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_fresnel_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 31
  store float %8, ptr %9, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceTransparency_fresnel_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 32
  %5 = load float, ptr %4, align 4, !tbaa !161
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_fresnel_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 32
  store float %8, ptr %9, align 4, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceTransparency_gloss_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 8, !tbaa !162
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_gloss_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialRaytraceTransparency_gloss_samples_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 44
  %5 = load i16, ptr %4, align 2, !tbaa !163
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_gloss_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 44
  store i16 %7, ptr %8, align 2, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceTransparency_gloss_threshold_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 4, !tbaa !164
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_gloss_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 46
  store float %8, ptr %9, align 4, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialRaytraceTransparency_depth_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 37
  %5 = load i16, ptr %4, align 2, !tbaa !165
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_depth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 37
  store i16 %7, ptr %8, align 2, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceTransparency_filter_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 33
  %5 = load float, ptr %4, align 8, !tbaa !166
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_filter_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 33
  store float %8, ptr %9, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceTransparency_depth_max_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 34
  %5 = load float, ptr %4, align 4, !tbaa !167
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_depth_max_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 34
  store float %8, ptr %9, align 4, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialRaytraceTransparency_falloff_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 35
  %5 = load float, ptr %4, align 8, !tbaa !168
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialRaytraceTransparency_falloff_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0x3FB99999A0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3FB99999A0000000, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 35
  store float %8, ptr %9, align 8, !tbaa !168
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialVolume_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialVolume_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialVolume_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialVolume_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !169 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialVolume_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialVolume_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialVolume_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialVolume_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialVolume_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialVolume_step_method_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !170
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_step_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 4, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_step_size_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !171
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_step_size_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 4, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialVolume_light_method_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 4, !tbaa !172
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_light_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 12
  store i16 %5, ptr %6, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialVolume_use_external_shadows_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !173
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_use_external_shadows_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !173
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialVolume_use_light_cache_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !173
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_use_light_cache_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 11
  %7 = load i16, ptr %6, align 2, !tbaa !173
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialVolume_cache_resolution_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 2, !tbaa !174
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_cache_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 13
  store i16 %7, ptr %8, align 2, !tbaa !174
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_ms_diffusion_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !175
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_ms_diffusion_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_ms_spread_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !176
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_ms_spread_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_ms_intensity_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 4, !tbaa !177
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_ms_intensity_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 4, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_depth_threshold_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !178
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_depth_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 4, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_density_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load float, ptr %3, align 4, !tbaa !179
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_density_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  store float %8, ptr %4, align 4, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_density_scale_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 4, !tbaa !180
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_density_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_scattering_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !181
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_scattering_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !181
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_transmission_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 5
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !182

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_transmission_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 5
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
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
  store float %15, ptr %16, align 4, !tbaa !109
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !183

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_reflection_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !184

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_reflection_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
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
  store float %15, ptr %16, align 4, !tbaa !109
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !185

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_reflection_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !186
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_reflection_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !186
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_emission_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !187

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_emission_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
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
  store float %15, ptr %16, align 4, !tbaa !109
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !188

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_emission_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !189
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_emission_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 4, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialVolume_asymmetry_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.VolumeSettings, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !190
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialVolume_asymmetry_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, -1.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float -1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.VolumeSettings, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 4, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialHalo_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialHalo_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialHalo_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialHalo_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !191 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialHalo_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialHalo_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialHalo_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialHalo_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialHalo_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialHalo_size_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 59
  %5 = load float, ptr %4, align 4, !tbaa !192
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_size_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 59
  store float %8, ptr %9, align 4, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_hardness_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 38
  %5 = load i16, ptr %4, align 8, !tbaa !139
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_hardness_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 127)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 38
  store i16 %7, ptr %8, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialHalo_add_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 25
  %5 = load float, ptr %4, align 8, !tbaa !193
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_add_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 25
  store float %8, ptr %9, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_ring_count_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 58
  %5 = load i16, ptr %4, align 2, !tbaa !194
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_ring_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 24)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 58
  store i16 %7, ptr %8, align 2, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_line_count_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 57
  %5 = load i16, ptr %4, align 8, !tbaa !195
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_line_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 250)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 57
  store i16 %7, ptr %8, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_star_tip_count_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 56
  %5 = load i16, ptr %4, align 2, !tbaa !196
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_star_tip_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 50)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 3)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 56
  store i16 %7, ptr %8, align 2, !tbaa !196
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_seed_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 39
  %5 = load i8, ptr %4, align 2, !tbaa !197
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_seed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 255)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 39
  store i8 %7, ptr %8, align 2, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_flare_mode_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_flare_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialHalo_flare_size_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 60
  %5 = load float, ptr %4, align 8, !tbaa !198
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_flare_size_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0x3FB99999A0000000
  %6 = fcmp ogt float %1, 2.500000e+01
  %7 = select i1 %6, float 2.500000e+01, float %1
  %8 = select i1 %5, float 0x3FB99999A0000000, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 60
  store float %8, ptr %9, align 8, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialHalo_flare_subflare_size_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 61
  %5 = load float, ptr %4, align 4, !tbaa !199
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_flare_subflare_size_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0x3FB99999A0000000
  %6 = fcmp ogt float %1, 2.500000e+01
  %7 = select i1 %6, float 2.500000e+01, float %1
  %8 = select i1 %5, float 0x3FB99999A0000000, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 61
  store float %8, ptr %9, align 4, !tbaa !199
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialHalo_flare_boost_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 62
  %5 = load float, ptr %4, align 8, !tbaa !200
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_flare_boost_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0x3FB99999A0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3FB99999A0000000, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 62
  store float %8, ptr %9, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_flare_seed_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 40
  %5 = load i8, ptr %4, align 1, !tbaa !201
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_flare_seed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 255)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 40
  store i8 %7, ptr %8, align 1, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_flare_subflare_count_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 55
  %5 = load i16, ptr %4, align 4, !tbaa !202
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_flare_subflare_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 55
  store i16 %7, ptr %8, align 4, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_ring_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_ring_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_lines_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_lines_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_star_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_star_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_texture_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_texture_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_vertex_normal_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_vertex_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_extreme_alpha_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_extreme_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_shaded_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_shaded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 0, i32 16384
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialHalo_use_soft_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialHalo_use_soft_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSubsurfaceScattering_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialSubsurfaceScattering_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialSubsurfaceScattering_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialSubsurfaceScattering_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !203 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSubsurfaceScattering_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialSubsurfaceScattering_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSubsurfaceScattering_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialSubsurfaceScattering_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSubsurfaceScattering_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_radius_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 114
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !204

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_radius_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 114
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = fcmp olt float %9, 0x3F50624DE0000000
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0x3F50624DE0000000, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !109
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !205

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 115
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !206

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 115
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
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
  store float %15, ptr %16, align 4, !tbaa !109
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !207

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialSubsurfaceScattering_error_threshold_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 116
  %5 = load float, ptr %4, align 8, !tbaa !208
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_error_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 116
  store float %1, ptr %5, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialSubsurfaceScattering_scale_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 117
  %5 = load float, ptr %4, align 4, !tbaa !209
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 117
  store float %1, ptr %5, align 4, !tbaa !209
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialSubsurfaceScattering_ior_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 118
  %5 = load float, ptr %4, align 8, !tbaa !210
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_ior_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 118
  store float %1, ptr %5, align 8, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialSubsurfaceScattering_color_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 119
  %5 = load float, ptr %4, align 4, !tbaa !211
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_color_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 119
  store float %8, ptr %9, align 4, !tbaa !211
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialSubsurfaceScattering_texture_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 120
  %5 = load float, ptr %4, align 8, !tbaa !212
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_texture_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 120
  store float %8, ptr %9, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialSubsurfaceScattering_front_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 121
  %5 = load float, ptr %4, align 4, !tbaa !213
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_front_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 121
  store float %8, ptr %9, align 4, !tbaa !213
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialSubsurfaceScattering_back_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 122
  %5 = load float, ptr %4, align 8, !tbaa !214
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_back_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 122
  store float %8, ptr %9, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialSubsurfaceScattering_use_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 123
  %5 = load i16, ptr %4, align 4, !tbaa !215
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSubsurfaceScattering_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 123
  %7 = load i16, ptr %6, align 4, !tbaa !215
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_texture_coords_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load i16, ptr %3, align 8, !tbaa !216
  %5 = sext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_texture_coords_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i16
  store i16 %5, ptr %4, align 8, !tbaa !216
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlot_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlot_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !217
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlot_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_uv_layer_length(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 6
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #20
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlot_uv_layer_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_from_dupli_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 8, !tbaa !218
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_from_dupli_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 14
  %7 = load i16, ptr %6, align 8, !tbaa !218
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_to_bounds_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 8, !tbaa !218
  %6 = lshr i16 %5, 14
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_to_bounds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 14
  %7 = load i16, ptr %6, align 8, !tbaa !218
  %8 = and i16 %7, -16385
  %9 = select i1 %5, i16 0, i16 16384
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_from_original_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 8, !tbaa !218
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_from_original_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 14
  %7 = load i16, ptr %6, align 8, !tbaa !218
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_color_diffuse_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_color_diffuse_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_normal_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_color_spec_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_color_spec_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_mirror_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_mirror_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_diffuse_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_diffuse_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_specular_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_specular_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_ambient_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 11
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_ambient_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -2049
  %9 = select i1 %5, i16 0, i16 2048
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_hardness_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_hardness_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_raymir_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_raymir_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -513
  %9 = select i1 %5, i16 0, i16 512
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_alpha_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_emit_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_emit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_translucency_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_translucency_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 0, i16 1024
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_displacement_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 12
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_displacement_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -4097
  %9 = select i1 %5, i16 0, i16 4096
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_warp_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 13
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_warp_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -8193
  %9 = select i1 %5, i16 0, i16 8192
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_mapping_x_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !220
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_mapping_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 7
  store i8 %5, ptr %6, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_mapping_y_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !221
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_mapping_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 8
  store i8 %5, ptr %6, align 1, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_mapping_z_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 2, !tbaa !222
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_mapping_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 9
  store i8 %5, ptr %6, align 2, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_mapping_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 10
  %5 = load i8, ptr %4, align 1, !tbaa !223
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_mapping_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 1, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_normal_map_space_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 18
  %5 = load i16, ptr %4, align 8, !tbaa !224
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_normal_map_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 18
  store i16 %5, ptr %6, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_normal_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 4, !tbaa !225
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_normal_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 30
  store float %1, ptr %5, align 4, !tbaa !225
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_displacement_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 31
  %5 = load float, ptr %4, align 8, !tbaa !226
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_displacement_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 31
  store float %1, ptr %5, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_warp_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 32
  %5 = load float, ptr %4, align 4, !tbaa !227
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_warp_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 32
  store float %1, ptr %5, align 4, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_specular_color_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 33
  %5 = load float, ptr %4, align 8, !tbaa !228
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_specular_color_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 33
  store float %1, ptr %5, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_diffuse_color_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 28
  %5 = load float, ptr %4, align 4, !tbaa !229
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_diffuse_color_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 28
  store float %1, ptr %5, align 4, !tbaa !229
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_mirror_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 34
  %5 = load float, ptr %4, align 4, !tbaa !230
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_mirror_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 34
  store float %1, ptr %5, align 4, !tbaa !230
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_alpha_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 35
  %5 = load float, ptr %4, align 8, !tbaa !231
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_alpha_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 35
  store float %1, ptr %5, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_diffuse_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 36
  %5 = load float, ptr %4, align 4, !tbaa !232
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_diffuse_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 36
  store float %1, ptr %5, align 4, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_specular_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 37
  %5 = load float, ptr %4, align 8, !tbaa !233
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_specular_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 37
  store float %1, ptr %5, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_emit_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 38
  %5 = load float, ptr %4, align 4, !tbaa !234
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_emit_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 38
  store float %1, ptr %5, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_hardness_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 39
  %5 = load float, ptr %4, align 8, !tbaa !235
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_hardness_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 39
  store float %1, ptr %5, align 8, !tbaa !235
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_raymir_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 40
  %5 = load float, ptr %4, align 4, !tbaa !236
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_raymir_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 40
  store float %1, ptr %5, align 4, !tbaa !236
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_translucency_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 41
  %5 = load float, ptr %4, align 8, !tbaa !237
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_translucency_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 41
  store float %1, ptr %5, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_ambient_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !238
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_ambient_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 42
  store float %1, ptr %5, align 4, !tbaa !238
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_color_emission_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_color_emission_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_color_reflection_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_color_reflection_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_color_transmission_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_color_transmission_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_density_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_density_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_emission_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_emission_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_scatter_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_scatter_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_map_reflect_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !219
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_map_reflect_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !219
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_emission_color_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 43
  %5 = load float, ptr %4, align 8, !tbaa !239
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_emission_color_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 43
  store float %1, ptr %5, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_reflection_color_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 44
  %5 = load float, ptr %4, align 4, !tbaa !240
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_reflection_color_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 44
  store float %1, ptr %5, align 4, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_transmission_color_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 45
  %5 = load float, ptr %4, align 8, !tbaa !241
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_transmission_color_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 45
  store float %1, ptr %5, align 8, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_density_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 4, !tbaa !242
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_density_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 46
  store float %1, ptr %5, align 4, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_emission_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 38
  %5 = load float, ptr %4, align 4, !tbaa !234
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_emission_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 38
  store float %1, ptr %5, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_scattering_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 47
  %5 = load float, ptr %4, align 8, !tbaa !243
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_scattering_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 47
  store float %1, ptr %5, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialTextureSlot_reflection_factor_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 48
  %5 = load float, ptr %4, align 4, !tbaa !244
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_reflection_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 48
  store float %1, ptr %5, align 4, !tbaa !244
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_use_get(ptr nocapture noundef readonly %0) #14 {
  %2 = tail call fastcc i32 @rna_MaterialTextureSlot_use_get(ptr noundef %0) #19, !range !245
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_MaterialTextureSlot_use_get(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !246 {
  %2 = load ptr, ptr %0, align 8, !tbaa !69
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  br label %5

5:                                                ; preds = %1, %17
  %6 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %7 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 102, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = trunc i64 %6 to i32
  %12 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 73
  %13 = load i32, ptr %12, align 8, !tbaa !104
  %14 = xor i32 %13, -1
  %15 = lshr i32 %14, %11
  %16 = and i32 %15, 1
  br label %20

17:                                               ; preds = %5
  %18 = add nuw nsw i64 %6, 1
  %19 = icmp eq i64 %18, 18
  br i1 %19, label %20, label %5, !llvm.loop !247

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %16, %10 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  tail call fastcc void @rna_MaterialTextureSlot_use_set(ptr noundef %0, i32 noundef %1) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_MaterialTextureSlot_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !248 {
  %3 = load ptr, ptr %0, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 73
  br label %8

8:                                                ; preds = %2, %25
  %9 = phi i64 [ 0, %2 ], [ %26, %25 ]
  %10 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 102, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = trunc i64 %9 to i32
  %15 = shl nuw nsw i32 1, %14
  br i1 %6, label %20, label %16

16:                                               ; preds = %13
  %17 = xor i32 %15, -1
  %18 = load i32, ptr %7, align 8, !tbaa !104
  %19 = and i32 %18, %17
  br label %23

20:                                               ; preds = %13
  %21 = load i32, ptr %7, align 8, !tbaa !104
  %22 = or i32 %21, %15
  br label %23

23:                                               ; preds = %16, %20
  %24 = phi i32 [ %22, %20 ], [ %19, %16 ]
  store i32 %24, ptr %7, align 8, !tbaa !104
  br label %25

25:                                               ; preds = %23, %8
  %26 = add nuw nsw i64 %9, 1
  %27 = icmp eq i64 %26, 18
  br i1 %27, label %28, label %8, !llvm.loop !249

28:                                               ; preds = %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_bump_method_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 8, !tbaa !218
  %6 = and i16 %5, 9088
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_bump_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 14
  %6 = load i16, ptr %5, align 8, !tbaa !218
  %7 = and i16 %6, -9089
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialTextureSlot_bump_objectspace_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 8, !tbaa !218
  %6 = and i16 %5, 3072
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialTextureSlot_bump_objectspace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 14
  %6 = load i16, ptr %5, align 8, !tbaa !218
  %7 = and i16 %6, -3073
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 8, !tbaa !218
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialStrand_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialStrand_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialStrand_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialStrand_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !250 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialStrand_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialStrand_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialStrand_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialStrand_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialStrand_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialStrand_use_tangent_shading_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 24
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialStrand_use_tangent_shading_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -16777217
  %9 = select i1 %5, i32 0, i32 16777216
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialStrand_use_surface_diffuse_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 31
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialStrand_blend_distance_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 66
  %5 = load float, ptr %4, align 8, !tbaa !251
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialStrand_blend_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 66
  store float %8, ptr %9, align 8, !tbaa !251
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialStrand_use_blender_units_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = lshr i32 %5, 30
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialStrand_use_blender_units_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, -1073741825
  %9 = select i1 %5, i32 0, i32 1073741824
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialStrand_root_size_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 63
  %5 = load float, ptr %4, align 4, !tbaa !252
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialStrand_root_size_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !109
  call void @rna_MaterialStrand_start_size_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #19
  %7 = load float, ptr %3, align 4, !tbaa !109
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %4, align 4
  %11 = fcmp olt float %10, %1
  %12 = select i1 %11, float %10, float %1
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi float [ %12, %9 ], [ %7, %2 ]
  %15 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 63
  store float %14, ptr %15, align 4, !tbaa !252
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_MaterialStrand_start_size_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #15 !PGOFuncName !253 {
  %6 = load ptr, ptr %0, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 51
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = and i32 %8, 1073741824
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, float 2.500000e-01, float 0x3F1A36E2E0000000
  %12 = select i1 %10, float 2.000000e+01, float 2.000000e+00
  store float %11, ptr %1, align 4, !tbaa !109
  store float %12, ptr %2, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialStrand_tip_size_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 64
  %5 = load float, ptr %4, align 8, !tbaa !254
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialStrand_tip_size_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !109
  call void @rna_MaterialStrand_end_size_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #19
  %7 = load float, ptr %3, align 4, !tbaa !109
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %4, align 4
  %11 = fcmp olt float %10, %1
  %12 = select i1 %11, float %10, float %1
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi float [ %12, %9 ], [ %7, %2 ]
  %15 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 64
  store float %14, ptr %15, align 8, !tbaa !254
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_MaterialStrand_end_size_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #15 !PGOFuncName !255 {
  %6 = load ptr, ptr %0, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 51
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = and i32 %8, 1073741824
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, float 2.500000e-01, float 0x3F1A36E2E0000000
  %12 = select i1 %10, float 1.000000e+01, float 1.000000e+00
  store float %11, ptr %1, align 4, !tbaa !109
  store float %12, ptr %2, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialStrand_size_min_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 67
  %5 = load float, ptr %4, align 4, !tbaa !256
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialStrand_size_min_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 67
  store float %8, ptr %9, align 4, !tbaa !256
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialStrand_shape_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 65
  %5 = load float, ptr %4, align 4, !tbaa !257
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialStrand_shape_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0xBFECCCCCC0000000
  %6 = fcmp ogt float %1, 0x3FECCCCCC0000000
  %7 = select i1 %6, float 0x3FECCCCCC0000000, float %1
  %8 = select i1 %5, float 0xBFECCCCCC0000000, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 65
  store float %8, ptr %9, align 4, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialStrand_width_fade_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 68
  %5 = load float, ptr %4, align 8, !tbaa !258
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialStrand_width_fade_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 68
  store float %8, ptr %9, align 8, !tbaa !258
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialStrand_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 69
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialStrand_uv_layer_length(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 69
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #20
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialStrand_uv_layer_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 69
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialPhysics_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialPhysics_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialPhysics_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialPhysics_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !259 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialPhysics_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialPhysics_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialPhysics_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialPhysics_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialPhysics_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialPhysics_friction_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 107
  %5 = load float, ptr %4, align 8, !tbaa !260
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialPhysics_friction_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 107
  store float %8, ptr %9, align 8, !tbaa !260
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialPhysics_elasticity_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 109
  %5 = load float, ptr %4, align 8, !tbaa !261
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialPhysics_elasticity_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 109
  store float %8, ptr %9, align 8, !tbaa !261
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialPhysics_use_fh_normal_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 112
  %5 = load i16, ptr %4, align 4, !tbaa !262
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialPhysics_use_fh_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 112
  %7 = load i16, ptr %6, align 4, !tbaa !262
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !262
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialPhysics_fh_force_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 108
  %5 = load float, ptr %4, align 4, !tbaa !263
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialPhysics_fh_force_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 108
  store float %8, ptr %9, align 4, !tbaa !263
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialPhysics_fh_distance_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 110
  %5 = load float, ptr %4, align 4, !tbaa !264
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialPhysics_fh_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 110
  store float %8, ptr %9, align 4, !tbaa !264
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaterialPhysics_fh_damping_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 111
  %5 = load float, ptr %4, align 8, !tbaa !265
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialPhysics_fh_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 111
  store float %8, ptr %9, align 8, !tbaa !265
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialGameSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialGameSettings_rna_properties, ptr %4, align 8, !tbaa !81
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @MaterialGameSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialGameSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !266 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialGameSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @MaterialGameSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialGameSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialGameSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialGameSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialGameSettings_use_backface_culling_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load i32, ptr %3, align 4, !tbaa !267
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialGameSettings_use_backface_culling_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr %4, align 4, !tbaa !267
  %7 = and i32 %6, -17
  %8 = select i1 %5, i32 0, i32 16
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 4, !tbaa !267
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialGameSettings_text_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load i32, ptr %3, align 4, !tbaa !267
  %5 = lshr i32 %4, 6
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialGameSettings_text_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr %4, align 4, !tbaa !267
  %7 = and i32 %6, -65
  %8 = select i1 %5, i32 0, i32 64
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 4, !tbaa !267
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialGameSettings_invisible_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load i32, ptr %3, align 4, !tbaa !267
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialGameSettings_invisible_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr %4, align 4, !tbaa !267
  %7 = and i32 %6, -257
  %8 = select i1 %5, i32 0, i32 256
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 4, !tbaa !267
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialGameSettings_alpha_blend_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.GameSettings, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !268
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialGameSettings_alpha_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.GameSettings, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialGameSettings_face_orientation_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.GameSettings, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !269
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialGameSettings_face_orientation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.GameSettings, ptr %4, i64 0, i32 2
  store i32 %1, ptr %5, align 4, !tbaa !269
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialGameSettings_physics_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load i32, ptr %3, align 4, !tbaa !267
  %5 = lshr i32 %4, 7
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialGameSettings_physics_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr %4, align 4, !tbaa !267
  %7 = and i32 %6, -129
  %8 = select i1 %5, i32 128, i32 0
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 4, !tbaa !267
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MaterialTextureSlots_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @rna_mtex_texture_slots_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlots_add_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !69
  %6 = load ptr, ptr %3, align 8, !tbaa !270
  %7 = tail call ptr @rna_mtex_texture_slots_add(ptr noundef %5, ptr noundef %0, ptr noundef %1) #19
  store ptr %7, ptr %6, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MaterialTextureSlots_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @rna_mtex_texture_slots_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlots_create_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !69
  %6 = load ptr, ptr %3, align 8, !tbaa !270
  %7 = load i32, ptr %6, align 4, !tbaa !105
  %8 = getelementptr inbounds i8, ptr %6, i64 4
  %9 = tail call ptr @rna_mtex_texture_slots_create(ptr noundef %5, ptr noundef %0, ptr noundef %1, i32 noundef %7) #19
  store ptr %9, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlots_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @rna_mtex_texture_slots_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialTextureSlots_clear_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !69
  %6 = load ptr, ptr %3, align 8, !tbaa !270
  %7 = load i32, ptr %6, align 4, !tbaa !105
  tail call void @rna_mtex_texture_slots_clear(ptr noundef %5, ptr noundef %0, ptr noundef %1, i32 noundef %7) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Material_draw_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !272 {
  %4 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #17
  tail call void @WM_main_add_notifier(i32 noundef 102694912, ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Material_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !273 {
  %4 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #17
  tail call void @WM_main_add_notifier(i32 noundef 102629376, ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Material_update_previews(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !274 {
  %4 = load ptr, ptr %2, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 103
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BKE_node_preview_clear_tree(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %8, %3
  tail call void @WM_main_add_notifier(i32 noundef 102825984, ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Material_use_nodes_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !275 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 77
  %6 = load i8, ptr %5, align 1, !tbaa !76
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 103
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_node_shader_default(ptr noundef %0, ptr noundef nonnull %4) #17
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #17
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  tail call void @rna_Material_draw_update(ptr poison, ptr poison, ptr noundef nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rna_Material_active_texture_editable(ptr nocapture noundef readonly %0) #0 !PGOFuncName !276 {
  %2 = load ptr, ptr %0, align 8, !tbaa !69
  %3 = tail call zeroext i8 @has_current_material_texture(ptr noundef %2) #17
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Material_active_paint_texture_index_update(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !277 {
  %4 = load ptr, ptr %2, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 77
  %6 = load i8, ptr %5, align 1, !tbaa !76
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 103
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %1) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 131
  br label %22

22:                                               ; preds = %20, %43
  %23 = phi ptr [ %18, %20 ], [ %45, %43 ]
  %24 = phi i32 [ 0, %20 ], [ %44, %43 ]
  %25 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !278
  %27 = getelementptr inbounds %struct.bNodeType, ptr %26, i64 0, i32 14
  %28 = load i16, ptr %27, align 4, !tbaa !281
  %29 = icmp eq i16 %28, 13
  br i1 %29, label %30, label %43

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bNodeType, ptr %26, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !284
  %33 = icmp eq i32 %32, 143
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 20
  %36 = load ptr, ptr %35, align 8, !tbaa !285
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = add nsw i32 %24, 1
  %40 = load i16, ptr %21, align 4, !tbaa !102
  %41 = sext i16 %40 to i32
  %42 = icmp eq i32 %24, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %22, %30, %34, %38
  %44 = phi i32 [ %39, %38 ], [ %24, %34 ], [ %24, %30 ], [ %24, %22 ]
  %45 = load ptr, ptr %23, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %22, !llvm.loop !286

47:                                               ; preds = %38
  tail call void @nodeSetActive(ptr noundef %16, ptr noundef nonnull %23) #17
  br label %48

48:                                               ; preds = %43, %15, %47, %12, %8, %3
  %49 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 135
  %50 = load ptr, ptr %49, align 8, !tbaa !90
  %51 = icmp eq ptr %50, null
  br i1 %51, label %93, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 131
  %54 = load i16, ptr %53, align 4, !tbaa !102
  %55 = sext i16 %54 to i64
  %56 = getelementptr inbounds %struct.TexPaintSlot, ptr %50, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !287
  %58 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %93, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  br label %66

63:                                               ; preds = %71, %66
  %64 = load ptr, ptr %67, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %93, label %66, !llvm.loop !288

66:                                               ; preds = %61, %63
  %67 = phi ptr [ %59, %61 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.bScreen, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %63, label %74

71:                                               ; preds = %90, %74
  %72 = load ptr, ptr %75, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %63, label %74, !llvm.loop !289

74:                                               ; preds = %66, %71
  %75 = phi ptr [ %72, %71 ], [ %69, %66 ]
  %76 = getelementptr inbounds %struct.ScrArea, ptr %75, i64 0, i32 19
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %71, label %79

79:                                               ; preds = %74, %90
  %80 = phi ptr [ %91, %90 ], [ %77, %74 ]
  %81 = getelementptr inbounds %struct.SpaceLink, ptr %80, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !290
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.SpaceImage, ptr %80, i64 0, i32 18
  %86 = load i8, ptr %85, align 1, !tbaa !292
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load ptr, ptr %62, align 8, !tbaa !298
  tail call void @ED_space_image_set(ptr noundef nonnull %80, ptr noundef %1, ptr noundef %89, ptr noundef %57) #17
  br label %90

90:                                               ; preds = %84, %88, %79
  %91 = load ptr, ptr %80, align 8, !tbaa !34
  %92 = icmp eq ptr %91, null
  br i1 %92, label %71, label %79, !llvm.loop !317

93:                                               ; preds = %63, %52, %48
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #17
  tail call void @WM_main_add_notifier(i32 noundef 102629376, ptr noundef %4) #17
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #2

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_Material_texture_coordinates_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !318 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %1, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !tbaa !105
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 8) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 32) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 1) #17
  %8 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !45
  switch i16 %9, label %11 [
    i16 3, label %10
    i16 0, label %10
    i16 1, label %10
  ]

10:                                               ; preds = %4, %4, %4
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 16) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 8192) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 1024) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 4) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 2) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 16384) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_texture_coordinates_items, i32 noundef 4096) #17
  br label %11

11:                                               ; preds = %4, %10
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  store i8 1, ptr %3, align 1, !tbaa !319
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @rna_TextureSlot_path(ptr noundef) #2

; Function Attrs: optsize
declare ptr @give_node_material(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @nodeSetActiveID(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rna_iterator_array_dereference_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_current_material_texture(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_colorband(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_preview_clear_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @has_current_material_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 16}
!39 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !41, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !36, i64 132, !36, i64 133, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308}
!40 = !{!"short", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!43, !35, i64 16}
!43 = !{!"PointerRNA", !44, i64 0, !35, i64 8, !35, i64 16}
!44 = !{!"", !35, i64 0}
!45 = !{!46, !40, i64 128}
!46 = !{!"Material", !47, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !49, i64 224, !50, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !36, i64 362, !36, i64 363, !41, i64 364, !41, i64 368, !40, i64 372, !40, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !40, i64 394, !48, i64 396, !48, i64 400, !48, i64 404, !48, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !36, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !48, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !36, i64 550, !36, i64 551, !40, i64 552, !40, i64 554, !41, i64 556, !41, i64 560, !36, i64 564, !41, i64 580, !41, i64 584, !40, i64 588, !40, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !40, i64 612, !40, i64 614, !41, i64 616, !41, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !40, i64 820, !40, i64 822, !36, i64 824, !36, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !40, i64 876, !40, i64 878, !48, i64 880, !40, i64 884, !40, i64 886, !36, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !36, i64 914, !35, i64 920, !51, i64 928}
!47 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !35, i64 112}
!48 = !{!"int", !36, i64 0}
!49 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!50 = !{!"GameSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!51 = !{!"ListBase", !35, i64 0, !35, i64 8}
!52 = !{!"rna_material_gen.c:rna_Material_type_set"}
!53 = !{!46, !48, i64 396}
!54 = !{!46, !36, i64 542}
!55 = !{!46, !41, i64 180}
!56 = !{!46, !41, i64 184}
!57 = !{!46, !41, i64 220}
!58 = !{!46, !40, i64 394}
!59 = !{!46, !41, i64 524}
!60 = !{!46, !41, i64 528}
!61 = !{!46, !41, i64 532}
!62 = !{!46, !35, i64 784}
!63 = !{!46, !40, i64 886}
!64 = !{!46, !41, i64 212}
!65 = !{!46, !40, i64 884}
!66 = !{!46, !48, i64 404}
!67 = !{!46, !36, i64 550}
!68 = !{!"rna_material_gen.c:rna_Material_mirror_get"}
!69 = !{!43, !35, i64 0}
!70 = !{!"rna_material_gen.c:rna_Material_transp_get"}
!71 = !{!"rna_material_gen.c:rna_Material_halo_get"}
!72 = !{!"rna_material_gen.c:rna_Material_sss_get"}
!73 = !{!"rna_material_gen.c:rna_Material_strand_get"}
!74 = !{!"rna_material_gen.c:rna_Material_physics_get"}
!75 = !{!46, !35, i64 768}
!76 = !{!46, !36, i64 543}
!77 = !{!"rna_material_gen.c:rna_Material_active_node_material_get"}
!78 = !{!"rna_material_gen.c:rna_Material_active_node_material_set"}
!79 = !{!46, !35, i64 120}
!80 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!81 = !{!82, !35, i64 48}
!82 = !{!"CollectionPropertyIterator", !43, i64 0, !43, i64 24, !35, i64 48, !36, i64 56, !48, i64 96, !48, i64 100, !43, i64 104, !48, i64 128}
!83 = !{!82, !48, i64 128}
!84 = !{!"rna_material_gen.c:rna_Material_mtex_begin"}
!85 = !{!"rna_material_gen.c:Material_texture_slots_get"}
!86 = !{!"rna_material_gen.c:rna_Material_active_texture_get"}
!87 = !{!"rna_material_gen.c:rna_Material_active_texture_set"}
!88 = !{!46, !36, i64 541}
!89 = !{!"rna_material_gen.c:rna_Material_texpaint_begin"}
!90 = !{!46, !35, i64 920}
!91 = !{!46, !40, i64 912}
!92 = !{!"rna_material_gen.c:Material_texture_paint_images_get"}
!93 = !{!94, !35, i64 32}
!94 = !{!"ArrayIterator", !35, i64 0, !35, i64 8, !35, i64 16, !48, i64 24, !48, i64 28, !35, i64 32}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!94, !48, i64 24}
!98 = !{!94, !35, i64 0}
!99 = !{!82, !35, i64 120}
!100 = distinct !{!100, !96}
!101 = !{!"rna_material_gen.c:Material_texture_paint_slots_get"}
!102 = !{!46, !40, i64 908}
!103 = !{!46, !40, i64 910}
!104 = !{!46, !48, i64 536}
!105 = !{!48, !48, i64 0}
!106 = distinct !{!106, !96}
!107 = distinct !{!107, !96}
!108 = !{!46, !41, i64 132}
!109 = !{!41, !41, i64 0}
!110 = distinct !{!110, !96}
!111 = distinct !{!111, !96}
!112 = !{!46, !41, i64 144}
!113 = distinct !{!113, !96}
!114 = distinct !{!114, !96}
!115 = !{!46, !41, i64 156}
!116 = distinct !{!116, !96}
!117 = distinct !{!117, !96}
!118 = !{!46, !41, i64 200}
!119 = !{!46, !41, i64 192}
!120 = !{!"rna_material_gen.c:rna_Material_use_diffuse_ramp_set"}
!121 = !{!46, !35, i64 592}
!122 = !{!"rna_material_gen.c:rna_Material_use_specular_ramp_set"}
!123 = !{!46, !35, i64 600}
!124 = !{!46, !36, i64 610}
!125 = !{!46, !36, i64 611}
!126 = !{!46, !36, i64 608}
!127 = !{!46, !36, i64 609}
!128 = !{!46, !41, i64 616}
!129 = !{!46, !41, i64 620}
!130 = distinct !{!130, !96}
!131 = distinct !{!131, !96}
!132 = !{!46, !40, i64 904}
!133 = !{!46, !40, i64 552}
!134 = !{!46, !41, i64 204}
!135 = !{!46, !41, i64 556}
!136 = !{!46, !41, i64 584}
!137 = !{!46, !40, i64 554}
!138 = !{!46, !41, i64 208}
!139 = !{!46, !40, i64 360}
!140 = !{!46, !41, i64 560}
!141 = !{!46, !41, i64 580}
!142 = !{!"rna_material_gen.c:MaterialTextureSlots_rna_properties_get"}
!143 = !{!"rna_material_gen.c:TexPaintSlot_rna_properties_get"}
!144 = !{!145, !35, i64 8}
!145 = !{!"TexPaintSlot", !35, i64 0, !35, i64 8, !48, i64 16, !48, i64 20}
!146 = !{!145, !48, i64 16}
!147 = !{!"rna_material_gen.c:MaterialRaytraceMirror_rna_properties_get"}
!148 = !{!46, !41, i64 196}
!149 = !{!46, !41, i64 328}
!150 = !{!46, !41, i64 332}
!151 = !{!46, !41, i64 364}
!152 = !{!46, !41, i64 384}
!153 = !{!46, !40, i64 372}
!154 = !{!46, !41, i64 376}
!155 = !{!46, !40, i64 356}
!156 = !{!46, !41, i64 388}
!157 = !{!46, !40, i64 392}
!158 = !{!"rna_material_gen.c:MaterialRaytraceTransparency_rna_properties_get"}
!159 = !{!46, !41, i64 188}
!160 = !{!46, !41, i64 336}
!161 = !{!46, !41, i64 340}
!162 = !{!46, !41, i64 368}
!163 = !{!46, !40, i64 374}
!164 = !{!46, !41, i64 380}
!165 = !{!46, !40, i64 358}
!166 = !{!46, !41, i64 344}
!167 = !{!46, !41, i64 348}
!168 = !{!46, !41, i64 352}
!169 = !{!"rna_material_gen.c:MaterialVolume_rna_properties_get"}
!170 = !{!49, !40, i64 64}
!171 = !{!49, !41, i64 72}
!172 = !{!49, !40, i64 68}
!173 = !{!49, !40, i64 66}
!174 = !{!49, !40, i64 70}
!175 = !{!49, !41, i64 76}
!176 = !{!49, !41, i64 84}
!177 = !{!49, !41, i64 80}
!178 = !{!49, !41, i64 56}
!179 = !{!49, !41, i64 0}
!180 = !{!49, !41, i64 52}
!181 = !{!49, !41, i64 8}
!182 = distinct !{!182, !96}
!183 = distinct !{!183, !96}
!184 = distinct !{!184, !96}
!185 = distinct !{!185, !96}
!186 = !{!49, !41, i64 12}
!187 = distinct !{!187, !96}
!188 = distinct !{!188, !96}
!189 = !{!49, !41, i64 4}
!190 = !{!49, !41, i64 60}
!191 = !{!"rna_material_gen.c:MaterialHalo_rna_properties_get"}
!192 = !{!46, !41, i64 420}
!193 = !{!46, !41, i64 216}
!194 = !{!46, !40, i64 418}
!195 = !{!46, !40, i64 416}
!196 = !{!46, !40, i64 414}
!197 = !{!46, !36, i64 362}
!198 = !{!46, !41, i64 424}
!199 = !{!46, !41, i64 428}
!200 = !{!46, !41, i64 432}
!201 = !{!46, !36, i64 363}
!202 = !{!46, !40, i64 412}
!203 = !{!"rna_material_gen.c:MaterialSubsurfaceScattering_rna_properties_get"}
!204 = distinct !{!204, !96}
!205 = distinct !{!205, !96}
!206 = distinct !{!206, !96}
!207 = distinct !{!207, !96}
!208 = !{!46, !41, i64 848}
!209 = !{!46, !41, i64 852}
!210 = !{!46, !41, i64 856}
!211 = !{!46, !41, i64 860}
!212 = !{!46, !41, i64 864}
!213 = !{!46, !41, i64 868}
!214 = !{!46, !41, i64 872}
!215 = !{!46, !40, i64 876}
!216 = !{!39, !40, i64 0}
!217 = !{!39, !35, i64 8}
!218 = !{!39, !40, i64 120}
!219 = !{!39, !40, i64 2}
!220 = !{!39, !36, i64 88}
!221 = !{!39, !36, i64 89}
!222 = !{!39, !36, i64 90}
!223 = !{!39, !36, i64 91}
!224 = !{!39, !40, i64 128}
!225 = !{!39, !41, i64 172}
!226 = !{!39, !41, i64 176}
!227 = !{!39, !41, i64 180}
!228 = !{!39, !41, i64 184}
!229 = !{!39, !41, i64 164}
!230 = !{!39, !41, i64 188}
!231 = !{!39, !41, i64 192}
!232 = !{!39, !41, i64 196}
!233 = !{!39, !41, i64 200}
!234 = !{!39, !41, i64 204}
!235 = !{!39, !41, i64 208}
!236 = !{!39, !41, i64 212}
!237 = !{!39, !41, i64 216}
!238 = !{!39, !41, i64 220}
!239 = !{!39, !41, i64 224}
!240 = !{!39, !41, i64 228}
!241 = !{!39, !41, i64 232}
!242 = !{!39, !41, i64 236}
!243 = !{!39, !41, i64 240}
!244 = !{!39, !41, i64 244}
!245 = !{i32 0, i32 2}
!246 = !{!"rna_material_gen.c:rna_MaterialTextureSlot_use_get"}
!247 = distinct !{!247, !96}
!248 = !{!"rna_material_gen.c:rna_MaterialTextureSlot_use_set"}
!249 = distinct !{!249, !96}
!250 = !{!"rna_material_gen.c:MaterialStrand_rna_properties_get"}
!251 = !{!46, !41, i64 448}
!252 = !{!46, !41, i64 436}
!253 = !{!"rna_material_gen.c:rna_MaterialStrand_start_size_range"}
!254 = !{!46, !41, i64 440}
!255 = !{!"rna_material_gen.c:rna_MaterialStrand_end_size_range"}
!256 = !{!46, !41, i64 452}
!257 = !{!46, !41, i64 444}
!258 = !{!46, !41, i64 456}
!259 = !{!"rna_material_gen.c:MaterialPhysics_rna_properties_get"}
!260 = !{!46, !41, i64 800}
!261 = !{!46, !41, i64 808}
!262 = !{!46, !40, i64 820}
!263 = !{!46, !41, i64 804}
!264 = !{!46, !41, i64 812}
!265 = !{!46, !41, i64 816}
!266 = !{!"rna_material_gen.c:MaterialGameSettings_rna_properties_get"}
!267 = !{!50, !48, i64 0}
!268 = !{!50, !48, i64 4}
!269 = !{!50, !48, i64 8}
!270 = !{!271, !35, i64 0}
!271 = !{!"ParameterList", !35, i64 0, !35, i64 8, !48, i64 16, !48, i64 20, !48, i64 24}
!272 = !{!"rna_material_gen.c:rna_Material_draw_update"}
!273 = !{!"rna_material_gen.c:rna_Material_update"}
!274 = !{!"rna_material_gen.c:rna_Material_update_previews"}
!275 = !{!"rna_material_gen.c:rna_Material_use_nodes_update"}
!276 = !{!"rna_material_gen.c:rna_Material_active_texture_editable"}
!277 = !{!"rna_material_gen.c:rna_Material_active_paint_texture_index_update"}
!278 = !{!279, !35, i64 32}
!279 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !48, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !36, i64 188, !51, i64 200, !51, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !51, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !48, i64 308, !36, i64 312, !40, i64 376, !40, i64 378, !41, i64 380, !41, i64 384, !40, i64 388, !40, i64 390, !35, i64 392, !280, i64 400, !280, i64 416, !280, i64 432, !40, i64 448, !40, i64 450, !48, i64 452, !35, i64 456}
!280 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!281 = !{!282, !40, i64 436}
!282 = !{!"bNodeType", !35, i64 0, !35, i64 8, !40, i64 16, !36, i64 18, !48, i64 84, !36, i64 88, !36, i64 152, !48, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !40, i64 436, !40, i64 438, !40, i64 440, !35, i64 448, !35, i64 456, !36, i64 464, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !283, i64 720}
!283 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!284 = !{!282, !48, i64 84}
!285 = !{!279, !35, i64 240}
!286 = distinct !{!286, !96}
!287 = !{!145, !35, i64 0}
!288 = distinct !{!288, !96}
!289 = distinct !{!289, !96}
!290 = !{!291, !48, i64 32}
!291 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !51, i64 16, !48, i64 32, !41, i64 36, !36, i64 40}
!292 = !{!293, !36, i64 10557}
!293 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !51, i64 16, !48, i64 32, !48, i64 36, !35, i64 40, !294, i64 48, !35, i64 88, !295, i64 96, !296, i64 5360, !35, i64 10520, !36, i64 10528, !41, i64 10536, !41, i64 10540, !41, i64 10544, !41, i64 10548, !41, i64 10552, !36, i64 10556, !36, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !297, i64 10568}
!294 = !{!"ImageUser", !35, i64 0, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !48, i64 36}
!295 = !{!"Scopes", !48, i64 0, !48, i64 4, !48, i64 8, !41, i64 12, !48, i64 16, !41, i64 20, !41, i64 24, !48, i64 28, !41, i64 32, !48, i64 36, !36, i64 40, !296, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !48, i64 5256, !48, i64 5260}
!296 = !{!"Histogram", !48, i64 0, !48, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !41, i64 5128, !41, i64 5132, !40, i64 5136, !40, i64 5138, !48, i64 5140, !36, i64 5144}
!297 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!298 = !{!299, !35, i64 176}
!299 = !{!"Scene", !47, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !51, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !48, i64 232, !48, i64 236, !48, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !300, i64 280, !308, i64 4264, !51, i64 4296, !51, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !48, i64 4380, !51, i64 4384, !309, i64 4400, !310, i64 4416, !313, i64 4600, !35, i64 4608, !314, i64 4616, !35, i64 4640, !315, i64 4648, !315, i64 4656, !302, i64 4664, !303, i64 4824, !316, i64 4888, !35, i64 4952}
!300 = !{!"RenderData", !301, i64 0, !35, i64 248, !35, i64 256, !304, i64 264, !305, i64 328, !48, i64 400, !48, i64 404, !48, i64 408, !41, i64 412, !48, i64 416, !48, i64 420, !48, i64 424, !48, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !48, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !48, i64 484, !48, i64 488, !40, i64 492, !40, i64 494, !48, i64 496, !48, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !48, i64 516, !48, i64 520, !48, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !280, i64 544, !280, i64 560, !306, i64 576, !51, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !48, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !36, i64 680, !48, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !48, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !48, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !35, i64 2568, !48, i64 2576, !41, i64 2580, !36, i64 2584, !307, i64 2616, !48, i64 3976, !48, i64 3980}
!301 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !302, i64 24, !303, i64 184}
!302 = !{!"ColorManagedViewSettings", !48, i64 0, !48, i64 4, !36, i64 8, !36, i64 72, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!303 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!304 = !{!"QuicktimeCodecSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !40, i64 48, !40, i64 50, !48, i64 52, !48, i64 56, !48, i64 60}
!305 = !{!"FFMpegCodecData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !41, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !48, i64 60, !35, i64 64}
!306 = !{!"rcti", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!307 = !{!"BakeData", !301, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!308 = !{!"AudioData", !48, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !48, i64 16, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28}
!309 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!310 = !{!"GameData", !309, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !311, i64 40, !40, i64 64, !40, i64 66, !41, i64 68, !312, i64 72, !41, i64 128, !41, i64 132, !48, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!311 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !41, i64 8, !41, i64 12, !35, i64 16}
!312 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !48, i64 40, !41, i64 44, !41, i64 48, !40, i64 52, !40, i64 54}
!313 = !{!"UnitSettings", !41, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!314 = !{!"PhysicsSettings", !36, i64 0, !48, i64 12, !48, i64 16, !48, i64 20}
!315 = !{!"long", !36, i64 0}
!316 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!317 = distinct !{!317, !96}
!318 = !{!"rna_material_gen.c:rna_Material_texture_coordinates_itemf"}
!319 = !{!36, !36, i64 0}
