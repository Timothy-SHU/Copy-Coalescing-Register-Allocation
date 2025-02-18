; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_lattice_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_lattice_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@RNA_Key = external global %struct.StructRNA, align 8
@rna_Lattice_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_is_editmode, ptr @rna_Lattice_shape_keys, i32 -1, ptr @.str.25, i32 16384, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_points_begin, ptr @Lattice_points_next, ptr @Lattice_points_end, ptr @Lattice_points_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_LatticePoint }, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_LatticePoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_LatticePoint_rna_type, ptr null, i32 -1, ptr @.str.41, i32 128, ptr @.str.42, ptr @.str.43, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LatticePoint_rna_properties_begin, ptr @LatticePoint_rna_properties_next, ptr @LatticePoint_rna_properties_end, ptr @LatticePoint_rna_properties_get, ptr null, ptr null, ptr @LatticePoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_LatticePoint_groups = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LatticePoint_weight_softbody, i32 -1, ptr @.str.58, i32 16384, ptr @.str.59, ptr @.str.60, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LatticePoint_groups_begin, ptr @LatticePoint_groups_next, ptr @LatticePoint_groups_end, ptr @LatticePoint_groups_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_VertexGroupElement }, align 8
@rna_Lattice_points_v = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_points_w, ptr @rna_Lattice_points_u, i32 -1, ptr @.str.4, i32 1, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lattice_update_size, i32 0, ptr @rna_Lattice_size_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_points_v_get, ptr @Lattice_points_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 64, i32 1, i32 0, ptr null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"points_u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Point in U direction (can't be changed when there are shape keys)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Lattice_points_u = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_points_v, ptr null, i32 -1, ptr @.str, i32 1, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lattice_update_size, i32 0, ptr @rna_Lattice_size_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_points_u_get, ptr @Lattice_points_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 64, i32 1, i32 0, ptr null }, align 8
@rna_Lattice_points_w = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_interpolation_type_u, ptr @rna_Lattice_points_v, i32 -1, ptr @.str.7, i32 1, ptr @.str.8, ptr @.str.9, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lattice_update_size, i32 0, ptr @rna_Lattice_size_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_points_w_get, ptr @Lattice_points_w_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 64, i32 1, i32 0, ptr null }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"points_v\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Point in V direction (can't be changed when there are shape keys)\00", align 1
@rna_Lattice_interpolation_type_u = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_interpolation_type_v, ptr @rna_Lattice_points_w, i32 -1, ptr @.str.10, i32 3, ptr @.str.11, ptr @.str.12, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lattice_update_data_editlatt, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_interpolation_type_u_get, ptr @Lattice_interpolation_type_u_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Lattice_interpolation_type_u_items, i32 4, i32 0 }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"points_w\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Point in W direction (can't be changed when there are shape keys)\00", align 1
@rna_Lattice_interpolation_type_v = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_interpolation_type_w, ptr @rna_Lattice_interpolation_type_u, i32 -1, ptr @.str.13, i32 3, ptr @.str.14, ptr @.str.12, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lattice_update_data_editlatt, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_interpolation_type_v_get, ptr @Lattice_interpolation_type_v_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Lattice_interpolation_type_v_items, i32 4, i32 0 }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"interpolation_type_u\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Interpolation Type U\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_Lattice_interpolation_type_u_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.12 }, %struct.EnumPropertyItem { i32 1, ptr @.str.65, i32 0, ptr @.str.66, ptr @.str.12 }, %struct.EnumPropertyItem { i32 3, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.12 }, %struct.EnumPropertyItem { i32 2, ptr @.str.69, i32 0, ptr @.str.70, ptr @.str.12 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Lattice_interpolation_type_w = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_use_outside, ptr @rna_Lattice_interpolation_type_v, i32 -1, ptr @.str.15, i32 3, ptr @.str.16, ptr @.str.12, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lattice_update_data_editlatt, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_interpolation_type_w_get, ptr @Lattice_interpolation_type_w_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Lattice_interpolation_type_w_items, i32 4, i32 0 }, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"interpolation_type_v\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Interpolation Type V\00", align 1
@rna_Lattice_interpolation_type_v_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.12 }, %struct.EnumPropertyItem { i32 1, ptr @.str.65, i32 0, ptr @.str.66, ptr @.str.12 }, %struct.EnumPropertyItem { i32 3, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.12 }, %struct.EnumPropertyItem { i32 2, ptr @.str.69, i32 0, ptr @.str.70, ptr @.str.12 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Lattice_use_outside = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_vertex_group, ptr @rna_Lattice_interpolation_type_w, i32 -1, ptr @.str.17, i32 3, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lattice_update_data_editlatt, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_use_outside_get, ptr @Lattice_use_outside_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"interpolation_type_w\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Interpolation Type W\00", align 1
@rna_Lattice_interpolation_type_w_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.12 }, %struct.EnumPropertyItem { i32 1, ptr @.str.65, i32 0, ptr @.str.66, ptr @.str.12 }, %struct.EnumPropertyItem { i32 3, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.12 }, %struct.EnumPropertyItem { i32 2, ptr @.str.69, i32 0, ptr @.str.70, ptr @.str.12 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Lattice_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_shape_keys, ptr @rna_Lattice_use_outside, i32 -1, ptr @.str.20, i32 262145, ptr @.str.21, ptr @.str.22, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Lattice_update_data_editlatt, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_vertex_group_get, ptr @Lattice_vertex_group_length, ptr @Lattice_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.12 }, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"use_outside\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Outside\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"Only draw, and take into account, the outer vertices\00", align 1
@rna_Lattice_shape_keys = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_points, ptr @rna_Lattice_vertex_group, i32 -1, ptr @.str.23, i32 8388672, ptr @.str.24, ptr @.str.12, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_shape_keys_get, ptr null, ptr null, ptr null, ptr @RNA_Key }, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"vertex_group\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Vertex Group\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"Vertex group to apply the influence of the lattice\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"shape_keys\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Shape Keys\00", align 1
@rna_Lattice_is_editmode = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_animation_data, ptr @rna_Lattice_points, i32 -1, ptr @.str.28, i32 2, ptr @.str.29, ptr @.str.30, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_is_editmode_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Points of the lattice\00", align 1
@RNA_LatticePoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LineStyleModifier, ptr @RNA_Lattice, ptr null, %struct.ListBase { ptr @rna_LatticePoint_rna_properties, ptr @rna_LatticePoint_groups } }, ptr @.str.61, ptr null, ptr null, i32 4, ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 17, ptr null, ptr @rna_LatticePoint_rna_properties, ptr null, ptr null, ptr null, ptr @rna_LatticePoint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Lattice_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Lattice_is_editmode, i32 -1, ptr @.str.31, i32 8388608, ptr @.str.32, ptr @.str.33, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Lattice_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.28 = private unnamed_addr constant [12 x i8] c"is_editmode\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Is Editmode\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"True when used in editmode\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@rna_Lattice_transform_shape_keys = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Lattice_transform_matrix, i32 -1, ptr @.str.23, i32 3, ptr @.str.12, ptr @.str.36, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@rna_Lattice_transform_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_Lattice_transform_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Lattice_transform_shape_keys, ptr null, i32 -1, ptr @.str.34, i32 7, ptr @.str.12, ptr @.str.35, i32 0, ptr @.str.3, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Lattice_transform_matrix_default }, align 8
@.str.36 = private unnamed_addr constant [21 x i8] c"Transform Shape Keys\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Transform lattice by a matrix\00", align 1
@rna_Lattice_transform_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Lattice_transform_matrix, ptr @rna_Lattice_transform_shape_keys } }, ptr @.str.37, i32 0, ptr @.str.38, ptr @Lattice_transform_call, ptr null }, align 8
@RNA_LampTextureSlot = external global %struct.StructRNA, align 8
@.str.39 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.40 = private unnamed_addr constant [62 x i8] c"Lattice datablock defining a grid for deforming other objects\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Lattice = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LatticePoint, ptr @RNA_LampTextureSlot, ptr null, %struct.ListBase { ptr @rna_Lattice_points_u, ptr @rna_Lattice_animation_data } }, ptr @.str.39, ptr null, ptr null, i32 7, ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 163, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase { ptr @rna_Lattice_transform_func, ptr @rna_Lattice_transform_func } }, align 8
@rna_LatticePoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_LatticePoint_select, ptr @rna_LatticePoint_rna_properties, i32 -1, ptr @.str.44, i32 8912896, ptr @.str.45, ptr @.str.46, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LatticePoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.41 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_LatticePoint_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LatticePoint_co, ptr @rna_LatticePoint_rna_type, i32 -1, ptr @.str.47, i32 8195, ptr @.str.48, ptr @.str.49, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 24, i32 1, ptr null, ptr null }, ptr @LatticePoint_select_get, ptr @LatticePoint_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.44 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_LatticePoint_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LatticePoint_co_deform, ptr @rna_LatticePoint_select, i32 -1, ptr @.str.50, i32 2, ptr @.str.51, ptr @.str.52, i32 0, ptr @.str.3, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @LatticePoint_co_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_LatticePoint_co_default }, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Point selected\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Selection status\00", align 1
@rna_LatticePoint_co_deform = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LatticePoint_weight_softbody, ptr @rna_LatticePoint_co, i32 -1, ptr @.str.53, i32 8195, ptr @.str.54, ptr @.str.12, i32 0, ptr @.str.3, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Lattice_update_data, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @LatticePoint_co_deform_get, ptr @LatticePoint_co_deform_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_LatticePoint_co_deform_default }, align 8
@.str.50 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.52 = private unnamed_addr constant [126 x i8] c"Original undeformed location used to calculate the strength of the deform effect (edit/animate the Deformed Location instead)\00", align 1
@rna_LatticePoint_co_default = internal global [3 x float] zeroinitializer, align 4
@rna_LatticePoint_weight_softbody = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LatticePoint_groups, ptr @rna_LatticePoint_co_deform, i32 -1, ptr @.str.55, i32 8195, ptr @.str.56, ptr @.str.57, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Lattice_update_data, i32 0, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @LatticePoint_weight_softbody_get, ptr @LatticePoint_weight_softbody_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0x3F847AE140000000, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.53 = private unnamed_addr constant [10 x i8] c"co_deform\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Deformed Location\00", align 1
@rna_LatticePoint_co_deform_default = internal global [3 x float] zeroinitializer, align 4
@.str.55 = private unnamed_addr constant [16 x i8] c"weight_softbody\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Softbody goal weight\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Groups\00", align 1
@.str.60 = private unnamed_addr constant [54 x i8] c"Weights for the vertex groups this point is member of\00", align 1
@RNA_VertexGroupElement = external global %struct.StructRNA, align 8
@RNA_LineStyleModifier = external global %struct.StructRNA, align 8
@.str.61 = private unnamed_addr constant [13 x i8] c"LatticePoint\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"Point in the lattice grid\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"KEY_LINEAR\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"KEY_CARDINAL\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Cardinal\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"KEY_CATMULL_ROM\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"Catmull-Rom\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"KEY_BSPLINE\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"BSpline\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"points[%d]\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_points_u_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lattice_points_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 6
  store i16 %7, ptr %8, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_points_v_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !47
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lattice_points_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 7
  store i16 %7, ptr %8, align 2, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_points_w_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !49
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lattice_points_w_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 8
  store i16 %7, ptr %8, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_interpolation_type_u_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 10
  %5 = load i8, ptr %4, align 8, !tbaa !51
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lattice_interpolation_type_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_interpolation_type_v_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 11
  %5 = load i8, ptr %4, align 1, !tbaa !52
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lattice_interpolation_type_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 11
  store i8 %5, ptr %6, align 1, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_interpolation_type_w_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !53
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Lattice_interpolation_type_w_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 12
  store i8 %5, ptr %6, align 2, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_use_outside_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !54
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_use_outside_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !54
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !54
  tail call void @outside_lattice(ptr noundef %4) #13
  %11 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %12, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.Lattice, ptr %15, i64 0, i32 5
  %17 = load i16, ptr %16, align 2, !tbaa !54
  %18 = and i16 %17, -3
  %19 = select i1 %5, i16 0, i16 2
  %20 = or disjoint i16 %18, %19
  store i16 %20, ptr %16, align 2, !tbaa !54
  %21 = load ptr, ptr %12, align 8, !tbaa !56
  tail call void @outside_lattice(ptr noundef %21) #13
  br label %22

22:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 25
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 25
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_vertex_group_set(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 25
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  %7 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 25
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef %1, i64 noundef 64) #13
  br label %14

14:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_shape_keys_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Key, ptr noundef %6) #13
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Lattice_points, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !40
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !47
  %12 = sext i16 %11 to i32
  %13 = mul nsw i32 %12, %9
  %14 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 4
  %15 = load i16, ptr %14, align 4, !tbaa !49
  %16 = sext i16 %15 to i32
  %17 = mul nsw i32 %13, %16
  %18 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load ptr, ptr %19, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.Lattice, ptr %22, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %24, i32 noundef 36, i32 noundef %17, i8 noundef zeroext 0, ptr noundef null) #13
  br label %33

27:                                               ; preds = %21, %2
  %28 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 21
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %29, i32 noundef 36, i32 noundef %17, i8 noundef zeroext 0, ptr noundef null) #13
  br label %33

32:                                               ; preds = %27
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null) #13
  br label %33

33:                                               ; preds = %26, %31, %32
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !64
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %39 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !65
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_LatticePoint, ptr noundef %39) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %40

40:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal void @Lattice_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #3 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_LatticePoint, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_points_next(ptr noundef %0) #3 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !68
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_LatticePoint, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_points_end(ptr noundef %0) #3 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Lattice_is_editmode_get(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticePoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_LatticePoint_rna_properties, ptr %4, align 8, !tbaa !61
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @LatticePoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #3 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticePoint_rna_properties_next(ptr noundef %0) #3 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @LatticePoint_rna_properties_end(ptr noundef %0) #3 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @LatticePoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @LatticePoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #3 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LatticePoint_select_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BPoint, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !73
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LatticePoint_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.BPoint, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticePoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 36
  %15 = trunc i64 %14 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @BKE_lattice_index_to_uvw(ptr noundef %6, i32 noundef %15, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %16 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 15
  %17 = load float, ptr %16, align 8, !tbaa !75
  %18 = load i32, ptr %3, align 4, !tbaa !76
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 18
  %21 = load float, ptr %20, align 4, !tbaa !77
  %22 = call float @llvm.fmuladd.f32(float %19, float %21, float %17)
  store float %22, ptr %1, align 4, !tbaa !78
  %23 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 16
  %24 = load float, ptr %23, align 4, !tbaa !79
  %25 = load i32, ptr %4, align 4, !tbaa !76
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 19
  %28 = load float, ptr %27, align 8, !tbaa !80
  %29 = call float @llvm.fmuladd.f32(float %26, float %28, float %24)
  %30 = getelementptr inbounds float, ptr %1, i64 1
  store float %29, ptr %30, align 4, !tbaa !78
  %31 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 17
  %32 = load float, ptr %31, align 8, !tbaa !81
  %33 = load i32, ptr %5, align 4, !tbaa !76
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 20
  %36 = load float, ptr %35, align 4, !tbaa !82
  %37 = call float @llvm.fmuladd.f32(float %34, float %36, float %32)
  %38 = getelementptr inbounds float, ptr %1, i64 2
  store float %37, ptr %38, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LatticePoint_co_deform_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !78
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !78
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !83

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LatticePoint_co_deform_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !78
  %9 = getelementptr inbounds float, ptr %4, i64 %6
  store float %8, ptr %9, align 4, !tbaa !78
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !86

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LatticePoint_weight_softbody_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BPoint, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !87
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LatticePoint_weight_softbody_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.BPoint, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticePoint_groups_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_LatticePoint_groups, ptr %4, align 8, !tbaa !61
  %5 = load ptr, ptr %1, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 36
  %18 = getelementptr inbounds %struct.MDeformVert, ptr %7, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.MDeformVert, ptr %7, i64 %17, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !91
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %19, i32 noundef 8, i32 noundef %21, i8 noundef zeroext 0, ptr noundef null) #13
  br label %23

22:                                               ; preds = %2
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null) #13
  br label %23

23:                                               ; preds = %9, %22
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %29 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !92
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_VertexGroupElement, ptr noundef %29) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %30

30:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LatticePoint_groups_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #3 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_VertexGroupElement, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticePoint_groups_next(ptr noundef %0) #3 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !95
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_VertexGroupElement, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticePoint_groups_end(ptr noundef %0) #3 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_transform(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = trunc i32 %2 to i8
  tail call void @BKE_lattice_transform(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %4) #13
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Lattice_transform_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !98
  %8 = getelementptr inbounds i8, ptr %7, i64 64
  %9 = load i32, ptr %8, align 4, !tbaa !76
  %10 = trunc i32 %9 to i8
  tail call void @BKE_lattice_transform(ptr noundef %6, ptr noundef %7, i8 noundef zeroext %10) #13
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Lattice_update_size(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load ptr, ptr %2, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 6
  %6 = load i16, ptr %5, align 8, !tbaa !46
  %7 = icmp sgt i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !40
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi i16 [ %10, %8 ], [ %6, %3 ]
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 7
  %15 = load i16, ptr %14, align 2, !tbaa !48
  %16 = icmp sgt i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !47
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi i16 [ %19, %17 ], [ %15, %11 ]
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 8
  %24 = load i16, ptr %23, align 4, !tbaa !50
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 4
  %28 = load i16, ptr %27, align 4, !tbaa !49
  br label %29

29:                                               ; preds = %20, %26
  %30 = phi i16 [ %28, %26 ], [ %24, %20 ]
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  br label %33

33:                                               ; preds = %37, %29
  %34 = phi ptr [ %32, %29 ], [ %35, %37 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !100
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %41, label %33, !llvm.loop !105

41:                                               ; preds = %37
  tail call void @BKE_lattice_resize(ptr noundef %4, i32 noundef %13, i32 noundef %22, i32 noundef %31, ptr noundef nonnull %35) #13
  %42 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !56
  tail call void @BKE_lattice_resize(ptr noundef %46, i32 noundef %13, i32 noundef %22, i32 noundef %31, ptr noundef nonnull %35) #13
  br label %53

47:                                               ; preds = %33
  tail call void @BKE_lattice_resize(ptr noundef %4, i32 noundef %13, i32 noundef %22, i32 noundef %31, ptr noundef null) #13
  %48 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %49, align 8, !tbaa !56
  tail call void @BKE_lattice_resize(ptr noundef %52, i32 noundef %13, i32 noundef %22, i32 noundef %31, ptr noundef null) #13
  br label %53

53:                                               ; preds = %45, %41, %47, %51
  %54 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @DAG_id_tag_update(ptr noundef %54, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %54) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Lattice_size_editable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @rna_Lattice_update_data_editlatt(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load ptr, ptr %2, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 10
  %11 = load i8, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 10
  store i8 %11, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 11
  %14 = load i8, ptr %13, align 1, !tbaa !52
  %15 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 11
  store i8 %14, ptr %15, align 1, !tbaa !52
  %16 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 12
  %17 = load i8, ptr %16, align 2, !tbaa !53
  %18 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 12
  store i8 %17, ptr %18, align 2, !tbaa !53
  %19 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 5
  %20 = load i16, ptr %19, align 2, !tbaa !54
  %21 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 5
  store i16 %20, ptr %21, align 2, !tbaa !54
  %22 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 25
  %23 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 25
  %24 = tail call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef nonnull %23, i64 noundef 64) #13
  br label %25

25:                                               ; preds = %8, %3
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #13
  ret void
}

declare ptr @rna_ID_refine(ptr noundef) #4

declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: nounwind uwtable
define internal void @rna_Lattice_update_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_LatticePoint_path(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8, %1
  %14 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  br label %16

16:                                               ; preds = %8, %13
  %17 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %4, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %49

21:                                               ; preds = %16
  %22 = icmp ult ptr %4, %17
  br i1 %22, label %46, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !40
  %26 = sext i16 %25 to i64
  %27 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !47
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 4
  %31 = load i16, ptr %30, align 4, !tbaa !49
  %32 = sext i16 %31 to i64
  %33 = shl nsw i64 %26, 32
  %34 = mul nsw i64 %33, %29
  %35 = mul i64 %34, %32
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds %struct.BPoint, ptr %17, i64 %36
  %38 = icmp ult ptr %4, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = ptrtoint ptr %4 to i64
  %41 = ptrtoint ptr %17 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 36
  %44 = trunc i64 %43 to i32
  %45 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.71, i32 noundef %44) #13
  br label %46

46:                                               ; preds = %21, %23, %39
  %47 = phi ptr [ %45, %39 ], [ undef, %23 ], [ undef, %21 ]
  %48 = phi i1 [ false, %39 ], [ true, %23 ], [ true, %21 ]
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %16
  %50 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.12) #13
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %50, %49 ], [ %47, %46 ]
  ret ptr %52
}

declare void @outside_lattice(ptr noundef) local_unnamed_addr #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #4

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #4

declare void @BKE_lattice_index_to_uvw(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare void @BKE_lattice_transform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #4

declare void @BKE_lattice_resize(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #4

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !43, i64 128}
!41 = !{!"Lattice", !42, i64 0, !37, i64 120, !43, i64 128, !43, i64 130, !43, i64 132, !43, i64 134, !43, i64 136, !43, i64 138, !43, i64 140, !43, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !44, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"float", !38, i64 0}
!46 = !{!41, !43, i64 136}
!47 = !{!41, !43, i64 130}
!48 = !{!41, !43, i64 138}
!49 = !{!41, !43, i64 132}
!50 = !{!41, !43, i64 140}
!51 = !{!41, !38, i64 144}
!52 = !{!41, !38, i64 145}
!53 = !{!41, !38, i64 146}
!54 = !{!41, !43, i64 134}
!55 = !{!41, !37, i64 272}
!56 = !{!57, !37, i64 0}
!57 = !{!"EditLatt", !37, i64 0, !44, i64 8, !38, i64 12}
!58 = !{!41, !37, i64 192}
!59 = !{i64 0, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 8, !60}
!60 = !{!37, !37, i64 0}
!61 = !{!62, !37, i64 48}
!62 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!63 = !{!41, !37, i64 176}
!64 = !{!62, !44, i64 128}
!65 = !{!66}
!66 = distinct !{!66, !67, !"Lattice_points_get: argument 0"}
!67 = distinct !{!67, !"Lattice_points_get"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"Lattice_points_get: argument 0"}
!70 = distinct !{!70, !"Lattice_points_get"}
!71 = !{!35, !37, i64 0}
!72 = !{!41, !37, i64 120}
!73 = !{!74, !43, i64 24}
!74 = !{!"BPoint", !38, i64 0, !45, i64 16, !45, i64 20, !43, i64 24, !43, i64 26, !45, i64 28, !45, i64 32}
!75 = !{!41, !45, i64 152}
!76 = !{!44, !44, i64 0}
!77 = !{!41, !45, i64 164}
!78 = !{!45, !45, i64 0}
!79 = !{!41, !45, i64 156}
!80 = !{!41, !45, i64 168}
!81 = !{!41, !45, i64 160}
!82 = !{!41, !45, i64 172}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !84, !85}
!87 = !{!74, !45, i64 20}
!88 = !{!41, !37, i64 200}
!89 = !{!90, !37, i64 0}
!90 = !{!"MDeformVert", !37, i64 0, !44, i64 8, !44, i64 12}
!91 = !{!90, !44, i64 8}
!92 = !{!93}
!93 = distinct !{!93, !94, !"LatticePoint_groups_get: argument 0"}
!94 = distinct !{!94, !"LatticePoint_groups_get"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"LatticePoint_groups_get: argument 0"}
!97 = distinct !{!97, !"LatticePoint_groups_get"}
!98 = !{!99, !37, i64 0}
!99 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!100 = !{!101, !37, i64 296}
!101 = !{!"Object", !42, i64 0, !37, i64 120, !37, i64 128, !43, i64 136, !43, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !102, i64 312, !37, i64 360, !103, i64 368, !103, i64 384, !103, i64 400, !103, i64 416, !44, i64 432, !44, i64 436, !37, i64 440, !37, i64 448, !44, i64 456, !44, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !44, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !38, i64 966, !38, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !38, i64 1042, !38, i64 1043, !43, i64 1044, !38, i64 1046, !38, i64 1047, !45, i64 1048, !45, i64 1052, !103, i64 1056, !103, i64 1072, !103, i64 1088, !103, i64 1104, !45, i64 1120, !43, i64 1124, !43, i64 1126, !38, i64 1128, !44, i64 1144, !44, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !43, i64 1162, !38, i64 1164, !103, i64 1176, !103, i64 1192, !103, i64 1208, !103, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !43, i64 1266, !45, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !104, i64 1304, !104, i64 1312, !44, i64 1320, !44, i64 1324, !103, i64 1328, !103, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !103, i64 1400, !37, i64 1416}
!102 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!103 = !{!"ListBase", !37, i64 0, !37, i64 8}
!104 = !{!"long", !38, i64 0}
!105 = distinct !{!105, !84, !85}
