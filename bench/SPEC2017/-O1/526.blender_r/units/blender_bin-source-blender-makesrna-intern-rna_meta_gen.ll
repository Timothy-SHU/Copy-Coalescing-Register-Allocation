; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_meta_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_meta_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@rna_MetaElement_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_rna_type, ptr null, i32 -1, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaElement_rna_properties_begin, ptr @MetaElement_rna_properties_next, ptr @MetaElement_rna_properties_end, ptr @MetaElement_rna_properties_get, ptr null, ptr null, ptr @MetaElement_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MetaBall_elements = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_update_method, ptr null, i32 -1, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_MetaBallElements, ptr null }, ptr @MetaBall_elements_begin, ptr @MetaBall_elements_next, ptr @MetaBall_elements_end, ptr @MetaBall_elements_get, ptr null, ptr @MetaBall_elements_lookup_int, ptr null, ptr null, ptr @RNA_MetaElement }, align 8
@rna_MetaBall_materials = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_is_editmode, ptr @rna_MetaBall_texspace_size, i32 -1, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.14, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_IDMaterials, ptr null }, ptr @MetaBall_materials_begin, ptr @MetaBall_materials_next, ptr @MetaBall_materials_end, ptr @MetaBall_materials_get, ptr @MetaBall_materials_length, ptr @MetaBall_materials_lookup_int, ptr @MetaBall_materials_lookup_string, ptr @rna_IDMaterials_assign_int, ptr @RNA_Material }, align 8
@.str = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.MetaBall_materials_lookup_int = private unnamed_addr constant [30 x i8] c"MetaBall_materials_lookup_int\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_MetaBallElements_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBallElements_rna_type, ptr null, i32 -1, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaBallElements_rna_properties_begin, ptr @MetaBallElements_rna_properties_next, ptr @MetaBallElements_rna_properties_end, ptr @MetaBallElements_rna_properties_get, ptr null, ptr null, ptr @MetaBallElements_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_MetaElement = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MetaBall, ptr @RNA_MeshStringProperty, ptr null, %struct.ListBase { ptr @rna_MetaElement_rna_properties, ptr @rna_MetaElement_hide } }, ptr @.str.36, ptr null, ptr null, i32 4, ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 264, ptr null, ptr @rna_MetaElement_rna_properties, ptr null, ptr null, ptr null, ptr @rna_MetaElement_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_MetaElement_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_type, ptr @rna_MetaElement_rna_properties, i32 -1, ptr @.str.6, i32 8912896, ptr @.str.7, ptr @.str.8, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaElement_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_MetaElement_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_co, ptr @rna_MetaElement_rna_type, i32 -1, ptr @.str.9, i32 3, ptr @.str.10, ptr @.str.11, i32 0, ptr @.str.5, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaElement_type_get, ptr @MetaElement_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MetaElement_type_items, i32 5, i32 0 }, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_MetaElement_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_rotation, ptr @rna_MetaElement_type, i32 -1, ptr @.str.12, i32 8195, ptr @.str.13, ptr @.str.14, i32 0, ptr @.str.5, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @MetaElement_co_get, ptr @MetaElement_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MetaElement_co_default }, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Metaball types\00", align 1
@rna_MetaElement_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.94, i32 308, ptr @.str.95, ptr @.str.14 }, %struct.EnumPropertyItem { i32 4, ptr @.str.96, i32 310, ptr @.str.97, ptr @.str.14 }, %struct.EnumPropertyItem { i32 5, ptr @.str.98, i32 306, ptr @.str.99, ptr @.str.14 }, %struct.EnumPropertyItem { i32 6, ptr @.str.100, i32 309, ptr @.str.101, ptr @.str.14 }, %struct.EnumPropertyItem { i32 7, ptr @.str.102, i32 307, ptr @.str.103, ptr @.str.14 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MetaElement_rotation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_radius, ptr @rna_MetaElement_co, i32 -1, ptr @.str.15, i32 8195, ptr @.str.16, ptr @.str.17, i32 0, ptr @.str.5, i32 2, i32 27, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_MetaBall_update_rotation, i32 0, ptr null, ptr null, i32 44, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @MetaElement_rotation_get, ptr @MetaElement_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MetaElement_rotation_default }, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_MetaElement_co_default = internal global [3 x float] zeroinitializer, align 4
@rna_MetaElement_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_size_x, ptr @rna_MetaElement_rotation, i32 -1, ptr @.str.18, i32 8195, ptr @.str.19, ptr @.str.14, i32 0, ptr @.str.5, i32 2, i32 65549, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr @MetaElement_radius_get, ptr @MetaElement_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Normalized quaternion rotation\00", align 1
@rna_MetaElement_rotation_default = internal global [4 x float] zeroinitializer, align 16
@rna_MetaElement_size_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_size_y, ptr @rna_MetaElement_radius, i32 -1, ptr @.str.20, i32 67117059, ptr @.str.21, ptr @.str.22, i32 0, ptr @.str.5, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @MetaElement_size_x_get, ptr @MetaElement_size_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@rna_MetaElement_size_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_size_z, ptr @rna_MetaElement_size_x, i32 -1, ptr @.str.23, i32 67117059, ptr @.str.24, ptr @.str.22, i32 0, ptr @.str.5, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @MetaElement_size_y_get, ptr @MetaElement_size_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"size_x\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Size X\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"Size of element, use of components depends on element type\00", align 1
@rna_MetaElement_size_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_stiffness, ptr @rna_MetaElement_size_y, i32 -1, ptr @.str.25, i32 67117059, ptr @.str.26, ptr @.str.22, i32 0, ptr @.str.5, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr @MetaElement_size_z_get, ptr @MetaElement_size_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"size_y\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Size Y\00", align 1
@rna_MetaElement_stiffness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_use_negative, ptr @rna_MetaElement_size_z, i32 -1, ptr @.str.27, i32 8195, ptr @.str.28, ptr @.str.29, i32 0, ptr @.str.5, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 80, i32 4, ptr null, ptr null }, ptr @MetaElement_stiffness_get, ptr @MetaElement_stiffness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"size_z\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Size Z\00", align 1
@rna_MetaElement_use_negative = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaElement_hide, ptr @rna_MetaElement_stiffness, i32 -1, ptr @.str.30, i32 3, ptr @.str.31, ptr @.str.32, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaElement_use_negative_get, ptr @MetaElement_use_negative_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"stiffness\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Stiffness\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"Stiffness defines how much of the element to fill\00", align 1
@rna_MetaElement_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MetaElement_use_negative, i32 -1, ptr @.str.33, i32 3, ptr @.str.34, ptr @.str.35, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaElement_hide_get, ptr @MetaElement_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.30 = private unnamed_addr constant [13 x i8] c"use_negative\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Negative\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Set metaball as negative one\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Hide element\00", align 1
@RNA_MetaBall = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MetaBallElements, ptr @RNA_MetaElement, ptr null, %struct.ListBase { ptr @rna_MetaBall_elements, ptr @rna_MetaBall_animation_data } }, ptr @.str.75, ptr null, ptr null, i32 7, ptr @.str.75, ptr @.str.76, ptr @.str.5, i32 162, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase { ptr @rna_MetaBall_transform_func, ptr @rna_MetaBall_transform_func } }, align 8
@RNA_MeshStringProperty = external global %struct.StructRNA, align 8
@.str.36 = private unnamed_addr constant [12 x i8] c"MetaElement\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Meta Element\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Blobby element in a Metaball datablock\00", align 1
@rna_MetaBall_update_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_resolution, ptr @rna_MetaBall_elements, i32 -1, ptr @.str.42, i32 3, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.5, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaBall_update_method_get, ptr @MetaBall_update_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MetaBall_update_method_items, i32 4, i32 0 }, align 8
@.str.39 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"Elements\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"Meta elements\00", align 1
@RNA_MetaBallElements = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Modifier, ptr @RNA_MetaBall, ptr null, %struct.ListBase { ptr @rna_MetaBallElements_rna_properties, ptr @rna_MetaBallElements_active } }, ptr @.str.90, ptr null, ptr null, i32 4, ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 17, ptr null, ptr @rna_MetaBallElements_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_MetaBallElements_new_func, ptr @rna_MetaBallElements_clear_func } }, align 8
@rna_MetaBall_resolution = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_render_resolution, ptr @rna_MetaBall_update_method, i32 -1, ptr @.str.45, i32 8195, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.5, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 228, i32 4, ptr null, ptr null }, ptr @MetaBall_resolution_get, ptr @MetaBall_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FA99999A0000000, float 1.000000e+03, float 0x3F747AE140000000, float 1.000000e+04, float 2.500000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.42 = private unnamed_addr constant [14 x i8] c"update_method\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"Update\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Metaball edit update behavior\00", align 1
@rna_MetaBall_update_method_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.105, i32 0, ptr @.str.106, ptr @.str.107 }, %struct.EnumPropertyItem { i32 1, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.110 }, %struct.EnumPropertyItem { i32 2, ptr @.str.111, i32 0, ptr @.str.112, ptr @.str.113 }, %struct.EnumPropertyItem { i32 3, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.116 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MetaBall_render_resolution = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_threshold, ptr @rna_MetaBall_resolution, i32 -1, ptr @.str.48, i32 8195, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.5, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 232, i32 4, ptr null, ptr null }, ptr @MetaBall_render_resolution_get, ptr @MetaBall_render_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F999999A0000000, float 1.000000e+03, float 0x3F747AE140000000, float 1.000000e+04, float 2.500000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.45 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Wire Size\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"Polygonization resolution in the 3D viewport\00", align 1
@rna_MetaBall_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_use_auto_texspace, ptr @rna_MetaBall_render_resolution, i32 -1, ptr @.str.51, i32 8195, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.5, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MetaBall_update_data, i32 0, ptr null, ptr null, i32 236, i32 4, ptr null, ptr null }, ptr @MetaBall_threshold_get, ptr @MetaBall_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.48 = private unnamed_addr constant [18 x i8] c"render_resolution\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Render Size\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"Polygonization resolution in rendering\00", align 1
@rna_MetaBall_use_auto_texspace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_texspace_location, ptr @rna_MetaBall_threshold, i32 -1, ptr @.str.54, i32 3, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaBall_use_auto_texspace_get, ptr @MetaBall_use_auto_texspace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.51 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"Influence of meta elements\00", align 1
@rna_MetaBall_texspace_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_texspace_size, ptr @rna_MetaBall_use_auto_texspace, i32 -1, ptr @.str.57, i32 3, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.5, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_MetaBall_update_data, i32 0, ptr @rna_Meta_texspace_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @MetaBall_texspace_location_get, ptr @MetaBall_texspace_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MetaBall_texspace_location_default }, align 8
@.str.54 = private unnamed_addr constant [18 x i8] c"use_auto_texspace\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"Auto Texture Space\00", align 1
@.str.56 = private unnamed_addr constant [76 x i8] c"Adjust active object's texture space automatically when transforming object\00", align 1
@rna_MetaBall_texspace_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_materials, ptr @rna_MetaBall_texspace_location, i32 -1, ptr @.str.60, i32 67108867, ptr @.str.61, ptr @.str.62, i32 0, ptr @.str.5, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_MetaBall_update_data, i32 0, ptr @rna_Meta_texspace_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @MetaBall_texspace_size_get, ptr @MetaBall_texspace_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MetaBall_texspace_size_default }, align 8
@.str.57 = private unnamed_addr constant [18 x i8] c"texspace_location\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"Texture Space Location\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"Texture space location\00", align 1
@rna_MetaBall_texspace_location_default = internal global [3 x float] zeroinitializer, align 4
@.str.60 = private unnamed_addr constant [14 x i8] c"texspace_size\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"Texture Space Size\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Texture space size\00", align 1
@rna_MetaBall_texspace_size_default = internal global [3 x float] zeroinitializer, align 4
@rna_MetaBall_is_editmode = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBall_animation_data, ptr @rna_MetaBall_materials, i32 -1, ptr @.str.65, i32 2, ptr @.str.66, ptr @.str.67, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaBall_is_editmode_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.63 = private unnamed_addr constant [10 x i8] c"materials\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"Materials\00", align 1
@RNA_IDMaterials = external global %struct.StructRNA, align 8
@RNA_Material = external global %struct.StructRNA, align 8
@rna_MetaBall_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MetaBall_is_editmode, i32 -1, ptr @.str.68, i32 8388608, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaBall_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.65 = private unnamed_addr constant [12 x i8] c"is_editmode\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Is Editmode\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"True when used in editmode\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@rna_MetaBall_transform_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_MetaBall_transform_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.71, i32 7, ptr @.str.14, ptr @.str.72, i32 0, ptr @.str.5, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_MetaBall_transform_matrix_default }, align 8
@.str.73 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"Transform meta elements by a matrix\00", align 1
@rna_MetaBall_transform_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_MetaBall_transform_matrix, ptr @rna_MetaBall_transform_matrix } }, ptr @.str.73, i32 0, ptr @.str.74, ptr @MetaBall_transform_call, ptr null }, align 8
@.str.75 = private unnamed_addr constant [9 x i8] c"MetaBall\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"Metaball datablock to defined blobby surfaces\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@rna_MetaBallElements_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBallElements_active, ptr @rna_MetaBallElements_rna_properties, i32 -1, ptr @.str.6, i32 8912896, ptr @.str.7, ptr @.str.8, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaBallElements_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MetaBallElements_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MetaBallElements_rna_type, i32 -1, ptr @.str.77, i32 8388608, ptr @.str.78, ptr @.str.79, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaBallElements_active_get, ptr null, ptr null, ptr null, ptr @RNA_MetaElement }, align 8
@.str.77 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"Active Element\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"Last selected element\00", align 1
@rna_MetaBallElements_new_element = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MetaBallElements_new_type, i32 -1, ptr @.str.81, i32 8388616, ptr @.str.14, ptr @.str.82, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MetaElement }, align 8
@.str.80 = private unnamed_addr constant [30 x i8] c"type for the new meta-element\00", align 1
@rna_MetaBallElements_new_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.94, i32 308, ptr @.str.95, ptr @.str.14 }, %struct.EnumPropertyItem { i32 4, ptr @.str.96, i32 310, ptr @.str.97, ptr @.str.14 }, %struct.EnumPropertyItem { i32 5, ptr @.str.98, i32 306, ptr @.str.99, ptr @.str.14 }, %struct.EnumPropertyItem { i32 6, ptr @.str.100, i32 309, ptr @.str.101, ptr @.str.14 }, %struct.EnumPropertyItem { i32 7, ptr @.str.102, i32 307, ptr @.str.103, ptr @.str.14 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MetaBallElements_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaBallElements_new_element, ptr null, i32 -1, ptr @.str.9, i32 3, ptr @.str.14, ptr @.str.80, i32 0, ptr @.str.5, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_MetaBallElements_new_type_items, i32 5, i32 0 }, align 8
@.str.81 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"The newly created meta-element\00", align 1
@rna_MetaBallElements_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_MetaBallElements_clear_func, ptr @rna_MetaBallElements_new_func, ptr null, %struct.ListBase { ptr @rna_MetaBallElements_remove_element, ptr @rna_MetaBallElements_remove_element } }, ptr @.str.86, i32 16, ptr @.str.87, ptr @MetaBallElements_remove_call, ptr null }, align 8
@.str.83 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"Add a new element to the metaball\00", align 1
@rna_MetaBallElements_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_MetaBallElements_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_MetaBallElements_new_type, ptr @rna_MetaBallElements_new_element } }, ptr @.str.83, i32 0, ptr @.str.84, ptr @MetaBallElements_new_call, ptr @rna_MetaBallElements_new_element }, align 8
@.str.85 = private unnamed_addr constant [22 x i8] c"The element to remove\00", align 1
@rna_MetaBallElements_remove_element = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.81, i32 264196, ptr @.str.14, ptr @.str.85, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MetaElement }, align 8
@rna_MetaBallElements_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_MetaBallElements_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.88, i32 0, ptr @.str.89, ptr @MetaBallElements_clear_call, ptr null }, align 8
@.str.86 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"Remove an element from the metaball\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"Remove all elements from the metaball\00", align 1
@RNA_Modifier = external global %struct.StructRNA, align 8
@.str.90 = private unnamed_addr constant [17 x i8] c"MetaBallElements\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"Meta Elements\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"Collection of metaball elements\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"Metaball '%s' does not contain spline given\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"BALL\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Ball\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"CAPSULE\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"Capsule\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"PLANE\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"Plane\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"ELLIPSOID\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"Ellipsoid\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"CUBE\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"Cube\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"elements[%d]\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"UPDATE_ALWAYS\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"Always\00", align 1
@.str.107 = private unnamed_addr constant [38 x i8] c"While editing, update metaball always\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"HALFRES\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.110 = private unnamed_addr constant [50 x i8] c"While editing, update metaball in half resolution\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"FAST\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"Fast\00", align 1
@.str.113 = private unnamed_addr constant [54 x i8] c"While editing, update metaball without polygonization\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"NEVER\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"Never\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"While editing, don't update metaball at all\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MetaElement_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MetaElement_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal void @MetaElement_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @MetaElement_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MetaElement_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @MetaElement_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MetaElement_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaElement_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !46
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !51
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !52

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !50
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !55

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_rotation_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !51
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !56

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_rotation_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !51
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !57

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !58
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_size_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !59
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_size_x_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_size_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !60
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_size_y_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_size_z_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !61
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_size_z_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_stiffness_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !62
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_stiffness_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaElement_use_negative_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_use_negative_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaElement_hide_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_elements_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MetaBall_elements, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !64
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_MetaElement, ptr noundef %13) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @MetaBall_elements_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MetaElement, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_elements_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !67
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_MetaElement, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_elements_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MetaBall_elements_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_MetaBall_elements, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #13
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !70
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_MetaElement, ptr noundef %17) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  %25 = icmp eq ptr %24, null
  %26 = icmp sgt i32 %1, 0
  br i1 %25, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %12, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %34, label %41

31:                                               ; preds = %21
  br i1 %26, label %32, label %54

32:                                               ; preds = %31
  %33 = load ptr, ptr %22, align 8, !tbaa !75
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #13
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !76

41:                                               ; preds = %34, %27
  %42 = phi i32 [ %1, %27 ], [ %36, %34 ]
  %43 = phi i1 [ %29, %27 ], [ %39, %34 ]
  %44 = icmp eq i32 %42, 0
  %45 = select i1 %44, i1 %43, i1 false
  br label %60

46:                                               ; preds = %32, %50
  %47 = phi i32 [ %51, %50 ], [ %1, %32 ]
  %48 = phi ptr [ %52, %50 ], [ %33, %32 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = add nsw i32 %47, -1
  %52 = load ptr, ptr %48, align 8, !tbaa !77
  store ptr %52, ptr %22, align 8, !tbaa !75
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !79

54:                                               ; preds = %46, %50, %31
  %55 = phi i32 [ %1, %31 ], [ %47, %46 ], [ 0, %50 ]
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %22, align 8
  %58 = icmp ne ptr %57, null
  %59 = select i1 %56, i1 %58, i1 false
  br label %60

60:                                               ; preds = %54, %41
  %61 = phi i1 [ %45, %41 ], [ %59, %54 ]
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !80
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_MetaElement, ptr noundef %63) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #13
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaBall_update_method_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !83
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_update_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 7
  store i8 %5, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaBall_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !87
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_resolution_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F747AE140000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F747AE140000000, float %7
  %9 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaBall_render_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_render_resolution_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F747AE140000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F747AE140000000, float %7
  %9 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaBall_threshold_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !89
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaBall_use_auto_texspace_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !90
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_use_auto_texspace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 10
  %7 = load i16, ptr %6, align 4, !tbaa !90
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_texspace_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 12
  %6 = load float, ptr %5, align 4, !tbaa !51
  store float %6, ptr %1, align 4, !tbaa !51
  %7 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 12, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 12, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_texspace_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 12
  %6 = load float, ptr %1, align 4, !tbaa !51
  store float %6, ptr %5, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 12, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 12, i64 2
  store float %11, ptr %12, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_texspace_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 13
  %6 = load float, ptr %5, align 4, !tbaa !51
  store float %6, ptr %1, align 4, !tbaa !51
  %7 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 13, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 13, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_texspace_size_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 13
  %6 = load float, ptr %1, align 4, !tbaa !51
  store float %6, ptr %5, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 13, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 13, i64 2
  store float %11, ptr %12, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaBall_materials_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 9
  %9 = load i16, ptr %8, align 2, !tbaa !92
  %10 = sext i16 %9 to i32
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_materials_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MetaBall_materials, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 9
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = sext i16 %10 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 8, i32 noundef %11, i8 noundef zeroext 0, ptr noundef null) #13
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %17 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %0) #13, !noalias !93
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Material, ptr noundef %17) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @MetaBall_materials_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Material, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_materials_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %0) #13, !noalias !96
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Material, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_materials_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @MetaBall_materials_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_MetaBall_materials, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 9
  %14 = load i16, ptr %13, align 2, !tbaa !92
  %15 = sext i16 %14 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 8, i32 noundef %15, i8 noundef zeroext 0, ptr noundef null) #13
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %21 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %5) #13, !noalias !99
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Material, ptr noundef %21) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %22

22:                                               ; preds = %3, %19
  %23 = load i32, ptr %16, align 8, !tbaa !44
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %68, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %27 = icmp sgt i32 %1, -1
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, %1
  %31 = select i1 %27, i1 %30, i1 false
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.MetaBall_materials_lookup_int, i32 noundef %1)
  br label %63

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !102
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %34
  %39 = icmp sgt i32 %1, 0
  %40 = load i32, ptr %16, align 8
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %43
  %44 = phi i32 [ %45, %43 ], [ %1, %38 ]
  %45 = add nsw i32 %44, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #13
  %46 = icmp sgt i32 %44, 1
  %47 = load i32, ptr %16, align 8
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %43, label %50, !llvm.loop !104

50:                                               ; preds = %43, %38
  %51 = phi i32 [ %1, %38 ], [ %45, %43 ]
  %52 = phi i1 [ %41, %38 ], [ %48, %43 ]
  %53 = icmp eq i32 %51, 0
  %54 = select i1 %53, i1 %52, i1 false
  %55 = zext i1 %54 to i32
  br label %63

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !105
  %59 = mul nsw i32 %58, %1
  %60 = load ptr, ptr %26, align 8, !tbaa !106
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  store ptr %62, ptr %26, align 8, !tbaa !106
  br label %63

63:                                               ; preds = %50, %56, %32
  %64 = phi i32 [ 0, %32 ], [ %55, %50 ], [ 1, %56 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %67 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %5) #13, !noalias !107
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Material, ptr noundef %67) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %68

68:                                               ; preds = %63, %66, %22
  %69 = phi i32 [ 0, %22 ], [ %64, %66 ], [ %64, %63 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #13
  ret i32 %69
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @MetaBall_materials_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_MetaBall_materials, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 9
  %15 = load i16, ptr %14, align 2, !tbaa !92
  %16 = sext i16 %15 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %6, ptr noundef %13, i32 noundef 8, i32 noundef %16, i8 noundef zeroext 0, ptr noundef null) #13
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %22 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %6) #13, !noalias !110
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Material, ptr noundef %22) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %23

23:                                               ; preds = %3, %20
  %24 = load i32, ptr %17, align 8, !tbaa !44
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %29

29:                                               ; preds = %26, %57
  %30 = phi i8 [ 0, %26 ], [ %52, %57 ]
  %31 = load ptr, ptr %28, align 8, !tbaa !113
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = call i32 @ID_name_length(ptr noundef nonnull %27) #13
  %35 = icmp slt i32 %34, 1024
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  call void @ID_name_get(ptr noundef nonnull %27, ptr noundef nonnull %7) #13
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %48

39:                                               ; preds = %33
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %41 = add nuw nsw i32 %34, 1
  %42 = zext nneg i32 %41 to i64
  %43 = call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.1) #13
  call void @ID_name_get(ptr noundef nonnull %27, ptr noundef %43) #13
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %1) #14
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %46(ptr noundef %43) #13
  br i1 %45, label %47, label %48

47:                                               ; preds = %39, %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %27, i64 24, i1 false)
  br label %48

48:                                               ; preds = %47, %39, %36
  %49 = phi i8 [ %30, %36 ], [ %30, %39 ], [ 1, %47 ]
  %50 = phi i1 [ true, %36 ], [ true, %39 ], [ false, %47 ]
  br i1 %50, label %51, label %60

51:                                               ; preds = %48, %29
  %52 = phi i8 [ %49, %48 ], [ %30, %29 ]
  call void @rna_iterator_array_next(ptr noundef nonnull %6) #13
  %53 = load i32, ptr %17, align 8, !tbaa !44
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %56 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %6) #13, !noalias !114
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Material, ptr noundef %56) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %57

57:                                               ; preds = %51, %55
  %58 = load i32, ptr %17, align 8, !tbaa !44
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %29, !llvm.loop !117

60:                                               ; preds = %48, %57
  %61 = phi i8 [ %52, %57 ], [ %49, %48 ]
  %62 = zext nneg i8 %61 to i32
  br label %63

63:                                               ; preds = %60, %23
  %64 = phi i32 [ 0, %23 ], [ %62, %60 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #13
  ret i32 %64
}

declare i32 @ID_name_length(ptr noundef) local_unnamed_addr #3

declare void @ID_name_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaBall_is_editmode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #13
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MetaBallElements_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MetaBallElements_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MetaBallElements_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MetaElement, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_transform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BKE_mball_transform(ptr noundef %0, ptr noundef %1) #13
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBall_transform_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !122
  tail call void @BKE_mball_transform(ptr noundef %6, ptr noundef %7) #13
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MetaBallElements_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_mball_element_add(ptr noundef %0, i32 noundef %1) #13
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !124
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #13
  br label %8

8:                                                ; preds = %2, %7
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !122
  %8 = load i32, ptr %7, align 4, !tbaa !125
  %9 = tail call ptr @BKE_mball_element_add(ptr noundef %6, i32 noundef %8) #13
  %10 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !124
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %6) #13
  br label %14

14:                                               ; preds = %4, %13
  %15 = getelementptr inbounds i8, ptr %7, i64 4
  store ptr %9, ptr %15, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %7 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %6, ptr noundef %5) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.93, ptr noundef nonnull %10) #13
  br label %17

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %12(ptr noundef %5) #13
  %13 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %14 = load i32, ptr %13, align 4, !tbaa !124
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #13
  br label %17

17:                                               ; preds = %9, %11, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !122
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.MetaBall, ptr %6, i64 0, i32 2
  %12 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %11, ptr noundef %10) #13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.93, ptr noundef nonnull %15) #13
  br label %22

16:                                               ; preds = %4
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %17(ptr noundef %10) #13
  %18 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %19 = load i32, ptr %18, align 4, !tbaa !124
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %6) #13
  br label %22

22:                                               ; preds = %14, %16, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #13
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !124
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #13
  br label %7

7:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaBallElements_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.MetaBall, ptr %6, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !124
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %6) #13
  br label %12

12:                                               ; preds = %4, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_MetaBall_update_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !124
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8, %18
  %13 = phi ptr [ %19, %18 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @BKE_mball_properties_copy(ptr noundef %1, ptr noundef nonnull %13) #13
  br label %18

18:                                               ; preds = %12, %17
  %19 = load ptr, ptr %13, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12, !llvm.loop !130

21:                                               ; preds = %18, %8
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #13
  br label %22

22:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_MetaBall_update_rotation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.MetaElem, ptr %5, i64 0, i32 10
  %7 = tail call float @normalize_qt(ptr noundef nonnull %6) #13
  %8 = load ptr, ptr %2, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !124
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %22
  %17 = phi ptr [ %23, %22 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  %20 = icmp eq ptr %19, %8
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @BKE_mball_properties_copy(ptr noundef %1, ptr noundef nonnull %17) #13
  br label %22

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr %17, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !130

25:                                               ; preds = %22, %12
  tail call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %8) #13
  br label %26

26:                                               ; preds = %3, %25
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_MetaElement_path(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %4) #13
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ -1, %1 ]
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 2
  %15 = tail call i32 @BLI_findindex(ptr noundef nonnull %14, ptr noundef %4) #13
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %15, %13 ], [ %11, %10 ]
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.104, i32 noundef %17) #13
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi ptr [ %20, %19 ], [ null, %16 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Meta_texspace_editable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !90
  %6 = and i16 %5, 1
  %7 = xor i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

declare i32 @rna_IDMaterials_assign_int(ptr noundef, i32 noundef, ptr noundef) #3

declare ptr @rna_ID_refine(ptr noundef) #3

declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #3

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_array_dereference_get(ptr noundef) local_unnamed_addr #3

declare void @BKE_mball_transform(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare ptr @BKE_mball_element_add(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare void @BKE_mball_properties_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

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
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 48}
!40 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !36, i64 48, !37, i64 56, !43, i64 96, !43, i64 100, !41, i64 104, !43, i64 128}
!41 = !{!"PointerRNA", !42, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"", !36, i64 0}
!43 = !{!"int", !37, i64 0}
!44 = !{!40, !43, i64 128}
!45 = !{!41, !36, i64 16}
!46 = !{!47, !48, i64 24}
!47 = !{!"MetaElem", !36, i64 0, !36, i64 8, !36, i64 16, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !49, i64 32, !49, i64 36, !49, i64 40, !37, i64 44, !49, i64 60, !49, i64 64, !49, i64 68, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84, !36, i64 88, !36, i64 96}
!48 = !{!"short", !37, i64 0}
!49 = !{!"float", !37, i64 0}
!50 = !{!47, !49, i64 32}
!51 = !{!49, !49, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = distinct !{!56, !53, !54}
!57 = distinct !{!57, !53, !54}
!58 = !{!47, !49, i64 72}
!59 = !{!47, !49, i64 60}
!60 = !{!47, !49, i64 64}
!61 = !{!47, !49, i64 68}
!62 = !{!47, !49, i64 80}
!63 = !{!47, !48, i64 26}
!64 = !{!65}
!65 = distinct !{!65, !66, !"MetaBall_elements_get: argument 0"}
!66 = distinct !{!66, !"MetaBall_elements_get"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"MetaBall_elements_get: argument 0"}
!69 = distinct !{!69, !"MetaBall_elements_get"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"MetaBall_elements_get: argument 0"}
!72 = distinct !{!72, !"MetaBall_elements_get"}
!73 = !{!74, !36, i64 16}
!74 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!75 = !{!74, !36, i64 0}
!76 = distinct !{!76, !53, !54}
!77 = !{!78, !36, i64 0}
!78 = !{!"Link", !36, i64 0, !36, i64 8}
!79 = distinct !{!79, !53, !54}
!80 = !{!81}
!81 = distinct !{!81, !82, !"MetaBall_elements_get: argument 0"}
!82 = distinct !{!82, !"MetaBall_elements_get"}
!83 = !{!84, !37, i64 184}
!84 = !{!"MetaBall", !85, i64 0, !36, i64 120, !86, i64 128, !86, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !48, i64 186, !48, i64 188, !48, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !49, i64 228, !49, i64 232, !49, i64 236, !36, i64 240}
!85 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !48, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!86 = !{!"ListBase", !36, i64 0, !36, i64 8}
!87 = !{!84, !49, i64 228}
!88 = !{!84, !49, i64 232}
!89 = !{!84, !49, i64 236}
!90 = !{!84, !48, i64 188}
!91 = !{!84, !36, i64 176}
!92 = !{!84, !48, i64 186}
!93 = !{!94}
!94 = distinct !{!94, !95, !"MetaBall_materials_get: argument 0"}
!95 = distinct !{!95, !"MetaBall_materials_get"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"MetaBall_materials_get: argument 0"}
!98 = distinct !{!98, !"MetaBall_materials_get"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"MetaBall_materials_get: argument 0"}
!101 = distinct !{!101, !"MetaBall_materials_get"}
!102 = !{!103, !36, i64 32}
!103 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!104 = distinct !{!104, !53, !54}
!105 = !{!103, !43, i64 24}
!106 = !{!103, !36, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"MetaBall_materials_get: argument 0"}
!109 = distinct !{!109, !"MetaBall_materials_get"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"MetaBall_materials_get: argument 0"}
!112 = distinct !{!112, !"MetaBall_materials_get"}
!113 = !{!40, !36, i64 120}
!114 = !{!115}
!115 = distinct !{!115, !116, !"MetaBall_materials_get: argument 0"}
!116 = distinct !{!116, !"MetaBall_materials_get"}
!117 = distinct !{!117, !53, !54}
!118 = !{!41, !36, i64 0}
!119 = !{!84, !36, i64 160}
!120 = !{!84, !36, i64 120}
!121 = !{!84, !36, i64 240}
!122 = !{!123, !36, i64 0}
!123 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!124 = !{!84, !43, i64 100}
!125 = !{!43, !43, i64 0}
!126 = !{!127, !36, i64 296}
!127 = !{!"Object", !85, i64 0, !36, i64 120, !36, i64 128, !48, i64 136, !48, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !128, i64 312, !36, i64 360, !86, i64 368, !86, i64 384, !86, i64 400, !86, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !37, i64 1042, !37, i64 1043, !48, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !86, i64 1056, !86, i64 1072, !86, i64 1088, !86, i64 1104, !49, i64 1120, !48, i64 1124, !48, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !48, i64 1162, !37, i64 1164, !86, i64 1176, !86, i64 1192, !86, i64 1208, !86, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !48, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !129, i64 1304, !129, i64 1312, !43, i64 1320, !43, i64 1324, !86, i64 1328, !86, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !86, i64 1400, !36, i64 1416}
!128 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!129 = !{!"long", !37, i64 0}
!130 = distinct !{!130, !53, !54}
