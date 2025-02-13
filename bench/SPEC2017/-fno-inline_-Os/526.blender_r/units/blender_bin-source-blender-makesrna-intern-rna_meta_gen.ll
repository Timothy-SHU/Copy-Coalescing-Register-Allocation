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

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @MetaElement_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MetaElement_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaElement_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @MetaElement_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaElement_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MetaElement_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaElement_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaElement_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !47
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !52
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !53

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !51
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !55

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_rotation_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !52
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !56

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_rotation_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !52
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !57

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !58
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_size_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !59
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_size_x_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_size_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !60
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_size_y_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_size_z_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !61
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_size_z_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaElement_stiffness_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !62
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_stiffness_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaElement_use_negative_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_use_negative_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaElement_hide_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaElem, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaElement_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_elements_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MetaBall_elements, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @MetaBall_elements_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MetaBall_elements_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !64 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MetaElement, ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_elements_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @MetaBall_elements_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_elements_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MetaBall_elements_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #14
  call void @MetaBall_elements_begin(ptr noundef nonnull %4, ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #13
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !67

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !68
  store ptr %37, ptr %10, align 8, !tbaa !70
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !71

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @MetaBall_elements_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @MetaBall_elements_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #14
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaBall_update_method_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !72
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_update_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 7
  store i8 %5, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaBall_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !76
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_resolution_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0x3F747AE140000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F747AE140000000, float %7
  %9 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaBall_render_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !77
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_render_resolution_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0x3F747AE140000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F747AE140000000, float %7
  %9 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaBall_threshold_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !78
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaBall_use_auto_texspace_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !79
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_use_auto_texspace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 10
  %7 = load i16, ptr %6, align 4, !tbaa !79
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_texspace_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  tail call fastcc void @rna_Meta_texspace_loc_get(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Meta_texspace_loc_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_texspace_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_Meta_texspace_loc_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Meta_texspace_loc_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !81 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_texspace_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  tail call fastcc void @rna_Meta_texspace_size_get(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Meta_texspace_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 13
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaBall_texspace_size_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_Meta_texspace_size_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Meta_texspace_size_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !83 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 13
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaBall_materials_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 9
  %9 = load i16, ptr %8, align 2, !tbaa !85
  %10 = sext i16 %9 to i32
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_materials_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MetaBall_materials, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.MetaBall, ptr %5, i64 0, i32 9
  %10 = load i16, ptr %9, align 2, !tbaa !85
  %11 = sext i16 %10 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 8, i32 noundef %11, i8 noundef zeroext 0, ptr noundef null) #13
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @MetaBall_materials_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MetaBall_materials_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !86 {
  %3 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Material, ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_materials_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @MetaBall_materials_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_materials_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MetaBall_materials_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #14
  call void @MetaBall_materials_begin(ptr noundef nonnull %4, ptr noundef %0) #15
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
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.MetaBall_materials_lookup_int, i32 noundef %1) #15
  br label %42

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ %1, %22 ]
  %26 = add nsw i32 %25, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %4) #13
  %27 = icmp ne i32 %26, 0
  %28 = load i32, ptr %6, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %24, label %38, !llvm.loop !89

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !90
  %34 = mul nsw i32 %33, %1
  %35 = load ptr, ptr %10, align 8, !tbaa !91
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  store ptr %37, ptr %10, align 8, !tbaa !91
  br label %41

38:                                               ; preds = %24
  %39 = icmp eq i32 %26, 0
  %40 = select i1 %39, i1 %29, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %22, %31, %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @MetaBall_materials_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %42

42:                                               ; preds = %16, %38, %41, %3
  %43 = phi i32 [ 0, %3 ], [ 1, %41 ], [ 0, %38 ], [ 0, %16 ]
  call void @MetaBall_materials_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #14
  ret i32 %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MetaBall_materials_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #14
  call void @MetaBall_materials_begin(ptr noundef nonnull %4, ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !92
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @ID_name_length(ptr noundef nonnull %10) #13
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @ID_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #13
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.1) #13
  call void @ID_name_get(ptr noundef nonnull %10, ptr noundef %25) #13
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #16
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #13
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @MetaBall_materials_next(ptr noundef nonnull %4) #15
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !93

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @MetaBall_materials_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #14
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @ID_name_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ID_name_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaBall_is_editmode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = tail call fastcc i32 @rna_Meta_is_editmode_get(ptr noundef %0) #15, !range !94
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Meta_is_editmode_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !95 {
  %2 = load ptr, ptr %0, align 8, !tbaa !96
  %3 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @MetaBallElements_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MetaBallElements_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !99 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @MetaBallElements_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MetaBallElements_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaBall, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MetaElement, ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_transform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Meta_transform(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Meta_transform(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !101 {
  tail call void @BKE_mball_transform(ptr noundef %0, ptr noundef %1) #13
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBall_transform_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !102
  tail call fastcc void @rna_Meta_transform(ptr noundef %6, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MetaBallElements_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_MetaBall_elements_new(ptr noundef %0, i32 noundef %1) #15
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_MetaBall_elements_new(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !104 {
  %3 = tail call ptr @BKE_mball_element_add(ptr noundef %0, i32 noundef %1) #13
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !105
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #13
  br label %8

8:                                                ; preds = %7, %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !102
  %8 = load i32, ptr %7, align 4, !tbaa !106
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call fastcc ptr @rna_MetaBall_elements_new(ptr noundef %6, i32 noundef %8) #15
  store ptr %10, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_MetaBall_elements_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_MetaBall_elements_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !107 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
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
  %14 = load i32, ptr %13, align 4, !tbaa !105
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #13
  br label %17

17:                                               ; preds = %11, %16, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !102
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_MetaBall_elements_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @rna_MetaBall_elements_clear(ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_MetaBall_elements_clear(ptr noundef %0) unnamed_addr #0 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #13
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !105
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #13
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MetaBallElements_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call fastcc void @rna_MetaBall_elements_clear(ptr noundef %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_MetaBall_update_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !109 {
  %4 = load ptr, ptr %2, align 8, !tbaa !96
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !105
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
  %15 = load ptr, ptr %14, align 8, !tbaa !110
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @BKE_mball_properties_copy(ptr noundef %1, ptr noundef nonnull %13) #13
  br label %18

18:                                               ; preds = %12, %17
  %19 = load ptr, ptr %13, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12, !llvm.loop !114

21:                                               ; preds = %18, %8
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #13
  br label %22

22:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_MetaBall_update_rotation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !115 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.MetaElem, ptr %5, i64 0, i32 10
  %7 = tail call float @normalize_qt(ptr noundef nonnull %6) #13
  tail call void @rna_MetaBall_update_data(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_MetaElement_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !116 {
  %2 = load ptr, ptr %0, align 8, !tbaa !96
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %4) #13
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %1, %8
  %12 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 2
  %13 = tail call i32 @BLI_findindex(ptr noundef nonnull %12, ptr noundef %4) #13
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %18, label %15

15:                                               ; preds = %8, %11
  %16 = phi i32 [ %13, %11 ], [ %9, %8 ]
  %17 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.104, i32 noundef %16) #13
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ null, %11 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Meta_texspace_editable(ptr nocapture noundef readonly %0) #5 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !79
  %6 = and i16 %5, 1
  %7 = xor i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @rna_IDMaterials_assign_int(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #3

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !118 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  store float %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare ptr @rna_iterator_array_dereference_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mball_transform(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_mball_element_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mball_properties_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }

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
!45 = !{!"rna_meta_gen.c:MetaElement_rna_properties_get"}
!46 = !{!41, !36, i64 16}
!47 = !{!48, !49, i64 24}
!48 = !{!"MetaElem", !36, i64 0, !36, i64 8, !36, i64 16, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !50, i64 32, !50, i64 36, !50, i64 40, !37, i64 44, !50, i64 60, !50, i64 64, !50, i64 68, !50, i64 72, !50, i64 76, !50, i64 80, !50, i64 84, !36, i64 88, !36, i64 96}
!49 = !{!"short", !37, i64 0}
!50 = !{!"float", !37, i64 0}
!51 = !{!48, !50, i64 32}
!52 = !{!50, !50, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = !{!48, !50, i64 72}
!59 = !{!48, !50, i64 60}
!60 = !{!48, !50, i64 64}
!61 = !{!48, !50, i64 68}
!62 = !{!48, !50, i64 80}
!63 = !{!48, !49, i64 26}
!64 = !{!"rna_meta_gen.c:MetaBall_elements_get"}
!65 = !{!66, !36, i64 16}
!66 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!67 = distinct !{!67, !54}
!68 = !{!69, !36, i64 0}
!69 = !{!"Link", !36, i64 0, !36, i64 8}
!70 = !{!66, !36, i64 0}
!71 = distinct !{!71, !54}
!72 = !{!73, !37, i64 184}
!73 = !{!"MetaBall", !74, i64 0, !36, i64 120, !75, i64 128, !75, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !49, i64 186, !49, i64 188, !49, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !50, i64 228, !50, i64 232, !50, i64 236, !36, i64 240}
!74 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !49, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!75 = !{!"ListBase", !36, i64 0, !36, i64 8}
!76 = !{!73, !50, i64 228}
!77 = !{!73, !50, i64 232}
!78 = !{!73, !50, i64 236}
!79 = !{!73, !49, i64 188}
!80 = !{!"rna_meta_gen.c:rna_Meta_texspace_loc_get"}
!81 = !{!"rna_meta_gen.c:rna_Meta_texspace_loc_set"}
!82 = !{!"rna_meta_gen.c:rna_Meta_texspace_size_get"}
!83 = !{!"rna_meta_gen.c:rna_Meta_texspace_size_set"}
!84 = !{!73, !36, i64 176}
!85 = !{!73, !49, i64 186}
!86 = !{!"rna_meta_gen.c:MetaBall_materials_get"}
!87 = !{!88, !36, i64 32}
!88 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!89 = distinct !{!89, !54}
!90 = !{!88, !43, i64 24}
!91 = !{!88, !36, i64 0}
!92 = !{!40, !36, i64 120}
!93 = distinct !{!93, !54}
!94 = !{i32 0, i32 2}
!95 = !{!"rna_meta_gen.c:rna_Meta_is_editmode_get"}
!96 = !{!41, !36, i64 0}
!97 = !{!73, !36, i64 160}
!98 = !{!73, !36, i64 120}
!99 = !{!"rna_meta_gen.c:MetaBallElements_rna_properties_get"}
!100 = !{!73, !36, i64 240}
!101 = !{!"rna_meta_gen.c:rna_Meta_transform"}
!102 = !{!103, !36, i64 0}
!103 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!104 = !{!"rna_meta_gen.c:rna_MetaBall_elements_new"}
!105 = !{!73, !43, i64 100}
!106 = !{!43, !43, i64 0}
!107 = !{!"rna_meta_gen.c:rna_MetaBall_elements_remove"}
!108 = !{!"rna_meta_gen.c:rna_MetaBall_elements_clear"}
!109 = !{!"rna_meta_gen.c:rna_MetaBall_update_data"}
!110 = !{!111, !36, i64 296}
!111 = !{!"Object", !74, i64 0, !36, i64 120, !36, i64 128, !49, i64 136, !49, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !112, i64 312, !36, i64 360, !75, i64 368, !75, i64 384, !75, i64 400, !75, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !50, i64 616, !50, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !49, i64 948, !49, i64 950, !49, i64 952, !49, i64 954, !49, i64 956, !49, i64 958, !49, i64 960, !49, i64 962, !49, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !49, i64 1036, !49, i64 1038, !49, i64 1040, !37, i64 1042, !37, i64 1043, !49, i64 1044, !37, i64 1046, !37, i64 1047, !50, i64 1048, !50, i64 1052, !75, i64 1056, !75, i64 1072, !75, i64 1088, !75, i64 1104, !50, i64 1120, !49, i64 1124, !49, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !49, i64 1162, !37, i64 1164, !75, i64 1176, !75, i64 1192, !75, i64 1208, !75, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !49, i64 1266, !50, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !113, i64 1304, !113, i64 1312, !43, i64 1320, !43, i64 1324, !75, i64 1328, !75, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !75, i64 1400, !36, i64 1416}
!112 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!113 = !{!"long", !37, i64 0}
!114 = distinct !{!114, !54}
!115 = !{!"rna_meta_gen.c:rna_MetaBall_update_rotation"}
!116 = !{!"rna_meta_gen.c:rna_MetaElement_path"}
!117 = !{!"rna_meta_gen.c:rna_Meta_texspace_editable"}
!118 = !{!"rna_meta_gen.c:copy_v3_v3"}
