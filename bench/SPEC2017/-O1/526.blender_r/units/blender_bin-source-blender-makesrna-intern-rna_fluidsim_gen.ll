; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_fluidsim_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_fluidsim_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }

@rna_FluidSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FluidSettings_rna_type, ptr null, i32 -1, ptr @.str, i32 128, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FluidSettings_rna_properties_begin, ptr @FluidSettings_rna_properties_next, ptr @FluidSettings_rna_properties_end, ptr @FluidSettings_rna_properties_get, ptr null, ptr null, ptr @FluidSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_DomainFluidSettings_fluid_mesh_vertices = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DomainFluidSettings_generate_particles, i32 -1, ptr @.str.94, i32 16384, ptr @.str.95, ptr @.str.96, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_fluid_mesh_vertices_begin, ptr @DomainFluidSettings_fluid_mesh_vertices_next, ptr @DomainFluidSettings_fluid_mesh_vertices_end, ptr @DomainFluidSettings_fluid_mesh_vertices_get, ptr @rna_FluidMeshVertex_data_length, ptr null, ptr null, ptr null, ptr @RNA_FluidMeshVertex }, align 8
@rna_FluidMeshVertex_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FluidMeshVertex_rna_type, ptr null, i32 -1, ptr @.str, i32 128, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FluidMeshVertex_rna_properties_begin, ptr @FluidMeshVertex_rna_properties_next, ptr @FluidMeshVertex_rna_properties_end, ptr @FluidMeshVertex_rna_properties_get, ptr null, ptr null, ptr @FluidMeshVertex_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_FluidSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FluidSettings_type, ptr @rna_FluidSettings_rna_properties, i32 -1, ptr @.str.4, i32 8912896, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FluidSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_FluidSettings_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FluidSettings_rna_type, i32 -1, ptr @.str.7, i32 1, ptr @.str.8, ptr @.str.9, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_FluidSettings_update_type, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FluidSettings_type_get, ptr @FluidSettings_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FluidSettings_type_items, i32 8, i32 1 }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Type of participation in the fluid simulation\00", align 1
@rna_FluidSettings_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.34 }, %struct.EnumPropertyItem { i32 2, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.184 }, %struct.EnumPropertyItem { i32 4, ptr @.str.185, i32 0, ptr @.str.186, ptr @.str.187 }, %struct.EnumPropertyItem { i32 8, ptr @.str.188, i32 0, ptr @.str.189, ptr @.str.190 }, %struct.EnumPropertyItem { i32 16, ptr @.str.191, i32 0, ptr @.str.192, ptr @.str.193 }, %struct.EnumPropertyItem { i32 32, ptr @.str.194, i32 0, ptr @.str.195, ptr @.str.196 }, %struct.EnumPropertyItem { i32 64, ptr @.str.197, i32 0, ptr @.str.198, ptr @.str.199 }, %struct.EnumPropertyItem { i32 128, ptr @.str.200, i32 0, ptr @.str.201, ptr @.str.202 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_DomainFluidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FluidMeshVertex, ptr @RNA_FluidSettings, ptr null, %struct.ListBase { ptr @rna_DomainFluidSettings_threads, ptr @rna_DomainFluidSettings_fluid_mesh_vertices } }, ptr @.str.97, ptr null, ptr null, i32 4, ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 17, ptr null, ptr @rna_FluidSettings_rna_properties, ptr @RNA_FluidSettings, ptr null, ptr @rna_FluidSettings_refine, ptr @rna_FluidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_FModifierStepped = external global %struct.StructRNA, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"FluidSettings\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Fluid Simulation Settings\00", align 1
@.str.12 = private unnamed_addr constant [70 x i8] c"Fluid simulation settings for an object taking part in the simulation\00", align 1
@RNA_FluidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DomainFluidSettings, ptr @RNA_FModifierStepped, ptr null, %struct.ListBase { ptr @rna_FluidSettings_rna_properties, ptr @rna_FluidSettings_type } }, ptr @.str.10, ptr null, ptr null, i32 4, ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 17, ptr null, ptr @rna_FluidSettings_rna_properties, ptr null, ptr null, ptr @rna_FluidSettings_refine, ptr @rna_FluidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_DomainFluidSettings_resolution = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_preview_resolution, ptr @rna_DomainFluidSettings_threads, i32 -1, ptr @.str.16, i32 8193, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 20, i32 1, ptr null, ptr null }, ptr @DomainFluidSettings_resolution_get, ptr @DomainFluidSettings_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 1024, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Simulation Threads\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"Override number of threads for the simulation, 0 is automatic\00", align 1
@rna_DomainFluidSettings_threads = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_resolution, ptr null, i32 -1, ptr @.str.13, i32 8195, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 8, i32 0, ptr null, ptr null }, ptr @DomainFluidSettings_threads_get, ptr @DomainFluidSettings_threads_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 64, i32 0, i32 64, i32 1, i32 0, ptr null }, align 8
@rna_DomainFluidSettings_preview_resolution = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_viewport_display_mode, ptr @rna_DomainFluidSettings_resolution, i32 -1, ptr @.str.19, i32 8193, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 22, i32 1, ptr null, ptr null }, ptr @DomainFluidSettings_preview_resolution_get, ptr @DomainFluidSettings_preview_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Domain resolution in X,Y and Z direction\00", align 1
@rna_DomainFluidSettings_viewport_display_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_render_display_mode, ptr @rna_DomainFluidSettings_preview_resolution, i32 -1, ptr @.str.22, i32 3, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_fluid_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_viewport_display_mode_get, ptr @DomainFluidSettings_viewport_display_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DomainFluidSettings_viewport_display_mode_items, i32 3, i32 1 }, align 8
@.str.19 = private unnamed_addr constant [19 x i8] c"preview_resolution\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Preview Resolution\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"Preview resolution in X,Y and Z direction\00", align 1
@rna_DomainFluidSettings_render_display_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_use_reverse_frames, ptr @rna_DomainFluidSettings_viewport_display_mode, i32 -1, ptr @.str.25, i32 3, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_render_display_mode_get, ptr @DomainFluidSettings_render_display_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DomainFluidSettings_render_display_mode_items, i32 3, i32 1 }, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"viewport_display_mode\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Viewport Display Mode\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"How to display the mesh in the viewport\00", align 1
@rna_DomainFluidSettings_viewport_display_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.204, i32 0, ptr @.str.205, ptr @.str.206 }, %struct.EnumPropertyItem { i32 2, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.209 }, %struct.EnumPropertyItem { i32 3, ptr @.str.210, i32 0, ptr @.str.211, ptr @.str.212 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DomainFluidSettings_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_filepath, ptr @rna_DomainFluidSettings_render_display_mode, i32 -1, ptr @.str.28, i32 3, ptr @.str.29, ptr @.str.30, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_fluid_find_enframe, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_use_reverse_frames_get, ptr @DomainFluidSettings_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"render_display_mode\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Render Display Mode\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"How to display the mesh for rendering\00", align 1
@rna_DomainFluidSettings_render_display_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.204, i32 0, ptr @.str.205, ptr @.str.206 }, %struct.EnumPropertyItem { i32 2, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.209 }, %struct.EnumPropertyItem { i32 3, ptr @.str.210, i32 0, ptr @.str.211, ptr @.str.212 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DomainFluidSettings_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_memory_estimate, ptr @rna_DomainFluidSettings_use_reverse_frames, i32 -1, ptr @.str.31, i32 262145, ptr @.str.32, ptr @.str.33, i32 0, ptr @.str.3, i32 3, i32 1, ptr null, i32 0, [3 x i32] [i32 1024, i32 0, i32 0], i32 0, ptr @rna_fluid_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_filepath_get, ptr @DomainFluidSettings_filepath_length, ptr @DomainFluidSettings_filepath_set, ptr null, ptr null, ptr null, i32 1024, ptr @.str.34 }, align 8
@.str.28 = private unnamed_addr constant [19 x i8] c"use_reverse_frames\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Reverse Frames\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Reverse fluid frames\00", align 1
@rna_DomainFluidSettings_memory_estimate = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_gravity, ptr @rna_DomainFluidSettings_filepath, i32 -1, ptr @.str.35, i32 262144, ptr @.str.36, ptr @.str.37, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_memory_estimate_get, ptr @DomainFluidSettings_memory_estimate_length, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.34 }, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.33 = private unnamed_addr constant [76 x i8] c"Directory (and/or filename prefix) to store baked fluid simulation files in\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_DomainFluidSettings_gravity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_use_time_override, ptr @rna_DomainFluidSettings_memory_estimate, i32 -1, ptr @.str.38, i32 8195, ptr @.str.39, ptr @.str.40, i32 0, ptr @.str.3, i32 2, i32 524312, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @DomainFluidSettings_gravity_get, ptr @DomainFluidSettings_gravity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC08F40CCC0000000, float 0x408F40CCC0000000, float 0xC08F40CCC0000000, float 0x408F40CCC0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_DomainFluidSettings_gravity_default }, align 8
@.str.35 = private unnamed_addr constant [16 x i8] c"memory_estimate\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Memory Estimate\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"Estimated amount of memory needed for baking the domain\00", align 1
@rna_DomainFluidSettings_use_time_override = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_start_time, ptr @rna_DomainFluidSettings_gravity, i32 -1, ptr @.str.41, i32 3, ptr @.str.42, ptr @.str.43, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_use_time_override_get, ptr @DomainFluidSettings_use_time_override_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Gravity\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"Gravity in X, Y and Z direction\00", align 1
@rna_DomainFluidSettings_gravity_default = internal global [3 x float] zeroinitializer, align 4
@rna_DomainFluidSettings_start_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_end_time, ptr @rna_DomainFluidSettings_use_time_override, i32 -1, ptr @.str.44, i32 8195, ptr @.str.45, ptr @.str.46, i32 0, ptr @.str.3, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_start_time_get, ptr @DomainFluidSettings_start_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.41 = private unnamed_addr constant [18 x i8] c"use_time_override\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Override Time\00", align 1
@.str.43 = private unnamed_addr constant [77 x i8] c"Use a custom start and end time (in seconds) instead of the scene's timeline\00", align 1
@rna_DomainFluidSettings_end_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_frame_offset, ptr @rna_DomainFluidSettings_start_time, i32 -1, ptr @.str.47, i32 8195, ptr @.str.48, ptr @.str.49, i32 0, ptr @.str.3, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_end_time_get, ptr @DomainFluidSettings_end_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.44 = private unnamed_addr constant [11 x i8] c"start_time\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Start Time\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"Simulation time of the first blender frame (in seconds)\00", align 1
@rna_DomainFluidSettings_frame_offset = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_simulation_scale, ptr @rna_DomainFluidSettings_end_time, i32 -1, ptr @.str.50, i32 8195, ptr @.str.51, ptr @.str.52, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_fluid_update, i32 83886080, ptr null, ptr null, i32 68, i32 0, ptr null, ptr null }, ptr @DomainFluidSettings_frame_offset_get, ptr @DomainFluidSettings_frame_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.47 = private unnamed_addr constant [9 x i8] c"end_time\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"End Time\00", align 1
@.str.49 = private unnamed_addr constant [55 x i8] c"Simulation time of the last blender frame (in seconds)\00", align 1
@rna_DomainFluidSettings_simulation_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_simulation_rate, ptr @rna_DomainFluidSettings_frame_offset, i32 -1, ptr @.str.53, i32 8195, ptr @.str.54, ptr @.str.55, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_simulation_scale_get, ptr @DomainFluidSettings_simulation_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+01, float 0x3F50624DE0000000, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.50 = private unnamed_addr constant [13 x i8] c"frame_offset\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"Cache Offset\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"Offset when reading baked cache\00", align 1
@rna_DomainFluidSettings_simulation_rate = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_viscosity_base, ptr @rna_DomainFluidSettings_simulation_scale, i32 -1, ptr @.str.56, i32 8195, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1252, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_simulation_rate_get, ptr @DomainFluidSettings_simulation_rate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.53 = private unnamed_addr constant [17 x i8] c"simulation_scale\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"Real World Size\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Size of the simulation domain in meters\00", align 1
@rna_DomainFluidSettings_viscosity_base = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_viscosity_exponent, ptr @rna_DomainFluidSettings_simulation_rate, i32 -1, ptr @.str.59, i32 8195, ptr @.str.60, ptr @.str.61, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_viscosity_base_get, ptr @DomainFluidSettings_viscosity_base_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.56 = private unnamed_addr constant [16 x i8] c"simulation_rate\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"Simulation Speed\00", align 1
@.str.58 = private unnamed_addr constant [53 x i8] c"Fluid motion rate (0 = stationary, 1 = normal speed)\00", align 1
@rna_DomainFluidSettings_viscosity_exponent = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_grid_levels, ptr @rna_DomainFluidSettings_viscosity_base, i32 -1, ptr @.str.62, i32 8195, ptr @.str.63, ptr @.str.64, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 38, i32 1, ptr null, ptr null }, ptr @DomainFluidSettings_viscosity_exponent_get, ptr @DomainFluidSettings_viscosity_exponent_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10, i32 0, i32 10, i32 1, i32 0, ptr null }, align 8
@.str.59 = private unnamed_addr constant [15 x i8] c"viscosity_base\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Viscosity Base\00", align 1
@.str.61 = private unnamed_addr constant [80 x i8] c"Viscosity setting: value that is multiplied by 10 to the power of (exponent*-1)\00", align 1
@rna_DomainFluidSettings_grid_levels = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_compressibility, ptr @rna_DomainFluidSettings_viscosity_exponent, i32 -1, ptr @.str.65, i32 8193, ptr @.str.66, ptr @.str.67, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 80, i32 0, ptr null, ptr null }, ptr @DomainFluidSettings_grid_levels_get, ptr @DomainFluidSettings_grid_levels_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i32 4, i32 -1, i32 4, i32 1, i32 0, ptr null }, align 8
@.str.62 = private unnamed_addr constant [19 x i8] c"viscosity_exponent\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"Viscosity Exponent\00", align 1
@.str.64 = private unnamed_addr constant [91 x i8] c"Negative exponent for the viscosity value (to simplify entering small values e.g. 5*10^-6)\00", align 1
@rna_DomainFluidSettings_compressibility = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_slip_type, ptr @rna_DomainFluidSettings_grid_levels, i32 -1, ptr @.str.68, i32 8193, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_compressibility_get, ptr @DomainFluidSettings_compressibility_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 0x3FB99999A0000000, float 0x3F50624DE0000000, float 0x3FB99999A0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.65 = private unnamed_addr constant [12 x i8] c"grid_levels\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Grid Levels\00", align 1
@.str.67 = private unnamed_addr constant [52 x i8] c"Number of coarsened grids to use (-1 for automatic)\00", align 1
@rna_DomainFluidSettings_slip_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_partial_slip_factor, ptr @rna_DomainFluidSettings_compressibility, i32 -1, ptr @.str.71, i32 1, ptr @.str.72, ptr @.str.34, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_slip_type_get, ptr @DomainFluidSettings_slip_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DomainFluidSettings_slip_type_items, i32 3, i32 512 }, align 8
@.str.68 = private unnamed_addr constant [16 x i8] c"compressibility\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"Compressibility\00", align 1
@.str.70 = private unnamed_addr constant [110 x i8] c"Allowed compressibility due to gravitational force for standing fluid (directly affects simulation step size)\00", align 1
@rna_DomainFluidSettings_partial_slip_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_surface_smooth, ptr @rna_DomainFluidSettings_slip_type, i32 -1, ptr @.str.73, i32 8195, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1172, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_partial_slip_factor_get, ptr @DomainFluidSettings_partial_slip_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.71 = private unnamed_addr constant [10 x i8] c"slip_type\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Slip Type\00", align 1
@rna_DomainFluidSettings_slip_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 512, ptr @.str.214, i32 0, ptr @.str.215, ptr @.str.216 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.219 }, %struct.EnumPropertyItem { i32 2048, ptr @.str.220, i32 0, ptr @.str.221, ptr @.str.222 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DomainFluidSettings_surface_smooth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_surface_subdivisions, ptr @rna_DomainFluidSettings_partial_slip_factor, i32 -1, ptr @.str.76, i32 8193, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1184, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_surface_smooth_get, ptr @DomainFluidSettings_surface_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.73 = private unnamed_addr constant [20 x i8] c"partial_slip_factor\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"Partial Slip Amount\00", align 1
@.str.75 = private unnamed_addr constant [76 x i8] c"Amount of mixing between no- and free-slip, 0 is no slip and 1 is free slip\00", align 1
@rna_DomainFluidSettings_surface_subdivisions = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_use_speed_vectors, ptr @rna_DomainFluidSettings_surface_smooth, i32 -1, ptr @.str.79, i32 8193, ptr @.str.80, ptr @.str.81, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1188, i32 0, ptr null, ptr null }, ptr @DomainFluidSettings_surface_subdivisions_get, ptr @DomainFluidSettings_surface_subdivisions_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 5, i32 0, i32 5, i32 1, i32 0, ptr null }, align 8
@.str.76 = private unnamed_addr constant [15 x i8] c"surface_smooth\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"Surface Smoothing\00", align 1
@.str.78 = private unnamed_addr constant [108 x i8] c"Amount of surface smoothing (a value of 0 is off, 1 is normal smoothing and more than 1 is extra smoothing)\00", align 1
@rna_DomainFluidSettings_use_speed_vectors = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_use_surface_noobs, ptr @rna_DomainFluidSettings_surface_subdivisions, i32 -1, ptr @.str.82, i32 8193, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1170, i32 2, ptr null, ptr null }, ptr @DomainFluidSettings_use_speed_vectors_get, ptr @DomainFluidSettings_use_speed_vectors_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.79 = private unnamed_addr constant [21 x i8] c"surface_subdivisions\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"Surface Subdivisions\00", align 1
@.str.81 = private unnamed_addr constant [163 x i8] c"Number of isosurface subdivisions (this is necessary for the inclusion of particles into the surface generation - WARNING: can lead to longer computation times !)\00", align 1
@rna_DomainFluidSettings_use_surface_noobs = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_tracer_particles, ptr @rna_DomainFluidSettings_use_speed_vectors, i32 -1, ptr @.str.85, i32 1, ptr @.str.86, ptr @.str.87, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DomainFluidSettings_use_surface_noobs_get, ptr @DomainFluidSettings_use_surface_noobs_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.82 = private unnamed_addr constant [18 x i8] c"use_speed_vectors\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"Generate Speed Vectors\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"Generate speed vectors for vector blur\00", align 1
@rna_DomainFluidSettings_tracer_particles = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_generate_particles, ptr @rna_DomainFluidSettings_use_surface_noobs, i32 -1, ptr @.str.88, i32 8193, ptr @.str.89, ptr @.str.90, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1176, i32 0, ptr null, ptr null }, ptr @DomainFluidSettings_tracer_particles_get, ptr @DomainFluidSettings_tracer_particles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 10000, i32 1, i32 0, ptr null }, align 8
@.str.85 = private unnamed_addr constant [18 x i8] c"use_surface_noobs\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"Remove air bubbles\00", align 1
@.str.87 = private unnamed_addr constant [117 x i8] c"Removes the air gap between fluid surface and obstacles - WARNING: Can result in a dissolving surface in other areas\00", align 1
@rna_DomainFluidSettings_generate_particles = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DomainFluidSettings_fluid_mesh_vertices, ptr @rna_DomainFluidSettings_tracer_particles, i32 -1, ptr @.str.91, i32 8193, ptr @.str.92, ptr @.str.93, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1180, i32 4, ptr null, ptr null }, ptr @DomainFluidSettings_generate_particles_get, ptr @DomainFluidSettings_generate_particles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.88 = private unnamed_addr constant [17 x i8] c"tracer_particles\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"Tracer Particles\00", align 1
@.str.90 = private unnamed_addr constant [39 x i8] c"Number of tracer particles to generate\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"generate_particles\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"Generate Particles\00", align 1
@.str.93 = private unnamed_addr constant [59 x i8] c"Amount of particles to generate (0=off, 1=normal, >1=more)\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"fluid_mesh_vertices\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"Fluid Mesh Vertices\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"Vertices of the fluid mesh generated by simulation\00", align 1
@RNA_FluidMeshVertex = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FluidFluidSettings, ptr @RNA_DomainFluidSettings, ptr null, %struct.ListBase { ptr @rna_FluidMeshVertex_rna_properties, ptr @rna_FluidMeshVertex_velocity } }, ptr @.str.102, ptr null, ptr null, i32 4, ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 546, ptr null, ptr @rna_FluidMeshVertex_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.97 = private unnamed_addr constant [20 x i8] c"DomainFluidSettings\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"Domain Fluid Simulation Settings\00", align 1
@.str.99 = private unnamed_addr constant [63 x i8] c"Fluid simulation settings for the domain of a fluid simulation\00", align 1
@rna_FluidMeshVertex_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FluidMeshVertex_velocity, ptr @rna_FluidMeshVertex_rna_properties, i32 -1, ptr @.str.4, i32 8912896, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FluidMeshVertex_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_FluidMeshVertex_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FluidMeshVertex_rna_type, i32 -1, ptr @.str.100, i32 8194, ptr @.str.101, ptr @.str.34, i32 0, ptr @.str.3, i32 2, i32 458775, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @FluidMeshVertex_velocity_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_FluidMeshVertex_velocity_default }, align 8
@.str.100 = private unnamed_addr constant [9 x i8] c"velocity\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"Velocity\00", align 1
@rna_FluidMeshVertex_velocity_default = internal global [3 x float] zeroinitializer, align 4
@RNA_FluidFluidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ObstacleFluidSettings, ptr @RNA_FluidMeshVertex, ptr null, %struct.ListBase { ptr @rna_FluidFluidSettings_use, ptr @rna_FluidFluidSettings_initial_velocity } }, ptr @.str.117, ptr null, ptr null, i32 4, ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 17, ptr null, ptr @rna_FluidSettings_rna_properties, ptr @RNA_FluidSettings, ptr null, ptr @rna_FluidSettings_refine, ptr @rna_FluidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.102 = private unnamed_addr constant [16 x i8] c"FluidMeshVertex\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"Fluid Mesh Vertex\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"Vertex of a simulated fluid mesh\00", align 1
@rna_FluidFluidSettings_volume_initialization = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FluidFluidSettings_use_animated_mesh, ptr @rna_FluidFluidSettings_use, i32 -1, ptr @.str.108, i32 1, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FluidFluidSettings_volume_initialization_get, ptr @FluidFluidSettings_volume_initialization_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FluidFluidSettings_volume_initialization_items, i32 3, i32 1 }, align 8
@.str.105 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.107 = private unnamed_addr constant [43 x i8] c"Object contributes to the fluid simulation\00", align 1
@rna_FluidFluidSettings_use = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FluidFluidSettings_volume_initialization, ptr null, i32 -1, ptr @.str.105, i32 3, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FluidFluidSettings_use_get, ptr @FluidFluidSettings_use_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_FluidFluidSettings_use_animated_mesh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FluidFluidSettings_initial_velocity, ptr @rna_FluidFluidSettings_volume_initialization, i32 -1, ptr @.str.111, i32 8193, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1170, i32 2, ptr null, ptr null }, ptr @FluidFluidSettings_use_animated_mesh_get, ptr @FluidFluidSettings_use_animated_mesh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.108 = private unnamed_addr constant [22 x i8] c"volume_initialization\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"Volume Initialization\00", align 1
@.str.110 = private unnamed_addr constant [105 x i8] c"Volume initialization type (WARNING: complex volumes might require too much memory and break simulation)\00", align 1
@rna_FluidFluidSettings_volume_initialization_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.225 }, %struct.EnumPropertyItem { i32 2, ptr @.str.226, i32 0, ptr @.str.227, ptr @.str.228 }, %struct.EnumPropertyItem { i32 3, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.231 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FluidFluidSettings_initial_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FluidFluidSettings_use_animated_mesh, i32 -1, ptr @.str.114, i32 8195, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.3, i32 2, i32 458775, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 84, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @FluidFluidSettings_initial_velocity_get, ptr @FluidFluidSettings_initial_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC08F40CCC0000000, float 0x408F40CCC0000000, float 0xC08F40CCC0000000, float 0x408F40CCC0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_FluidFluidSettings_initial_velocity_default }, align 8
@.str.111 = private unnamed_addr constant [18 x i8] c"use_animated_mesh\00", align 1
@.str.112 = private unnamed_addr constant [21 x i8] c"Export Animated Mesh\00", align 1
@.str.113 = private unnamed_addr constant [184 x i8] c"Export this mesh as an animated one (slower and enforces No Slip, only use if really necessary [e.g. armatures or parented objects], animated pos/rot/scale F-Curves do not require it)\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"initial_velocity\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"Initial Velocity\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"Initial velocity of fluid\00", align 1
@rna_FluidFluidSettings_initial_velocity_default = internal global [3 x float] zeroinitializer, align 4
@RNA_ObstacleFluidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_InflowFluidSettings, ptr @RNA_FluidFluidSettings, ptr null, %struct.ListBase { ptr @rna_ObstacleFluidSettings_use, ptr @rna_ObstacleFluidSettings_impact_factor } }, ptr @.str.123, ptr null, ptr null, i32 4, ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 17, ptr null, ptr @rna_FluidSettings_rna_properties, ptr @RNA_FluidSettings, ptr null, ptr @rna_FluidSettings_refine, ptr @rna_FluidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.117 = private unnamed_addr constant [19 x i8] c"FluidFluidSettings\00", align 1
@.str.118 = private unnamed_addr constant [32 x i8] c"Fluid Fluid Simulation Settings\00", align 1
@.str.119 = private unnamed_addr constant [58 x i8] c"Fluid simulation settings for the fluid in the simulation\00", align 1
@rna_ObstacleFluidSettings_volume_initialization = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ObstacleFluidSettings_use_animated_mesh, ptr @rna_ObstacleFluidSettings_use, i32 -1, ptr @.str.108, i32 1, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObstacleFluidSettings_volume_initialization_get, ptr @ObstacleFluidSettings_volume_initialization_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ObstacleFluidSettings_volume_initialization_items, i32 3, i32 1 }, align 8
@rna_ObstacleFluidSettings_use = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObstacleFluidSettings_volume_initialization, ptr null, i32 -1, ptr @.str.105, i32 3, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObstacleFluidSettings_use_get, ptr @ObstacleFluidSettings_use_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ObstacleFluidSettings_use_animated_mesh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObstacleFluidSettings_slip_type, ptr @rna_ObstacleFluidSettings_volume_initialization, i32 -1, ptr @.str.111, i32 8193, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1170, i32 2, ptr null, ptr null }, ptr @ObstacleFluidSettings_use_animated_mesh_get, ptr @ObstacleFluidSettings_use_animated_mesh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ObstacleFluidSettings_volume_initialization_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.225 }, %struct.EnumPropertyItem { i32 2, ptr @.str.226, i32 0, ptr @.str.227, ptr @.str.228 }, %struct.EnumPropertyItem { i32 3, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.231 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ObstacleFluidSettings_slip_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ObstacleFluidSettings_partial_slip_factor, ptr @rna_ObstacleFluidSettings_use_animated_mesh, i32 -1, ptr @.str.71, i32 1, ptr @.str.72, ptr @.str.34, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObstacleFluidSettings_slip_type_get, ptr @ObstacleFluidSettings_slip_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ObstacleFluidSettings_slip_type_items, i32 3, i32 512 }, align 8
@rna_ObstacleFluidSettings_partial_slip_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ObstacleFluidSettings_impact_factor, ptr @rna_ObstacleFluidSettings_slip_type, i32 -1, ptr @.str.73, i32 8195, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1172, i32 4, ptr null, ptr null }, ptr @ObstacleFluidSettings_partial_slip_factor_get, ptr @ObstacleFluidSettings_partial_slip_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_ObstacleFluidSettings_slip_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 512, ptr @.str.214, i32 0, ptr @.str.215, ptr @.str.216 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.219 }, %struct.EnumPropertyItem { i32 2048, ptr @.str.220, i32 0, ptr @.str.221, ptr @.str.222 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ObstacleFluidSettings_impact_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ObstacleFluidSettings_partial_slip_factor, i32 -1, ptr @.str.120, i32 8193, ptr @.str.121, ptr @.str.122, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1184, i32 4, ptr null, ptr null }, ptr @ObstacleFluidSettings_impact_factor_get, ptr @ObstacleFluidSettings_impact_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+00, float 1.000000e+01, float -2.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.120 = private unnamed_addr constant [14 x i8] c"impact_factor\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"Impact Factor\00", align 1
@.str.122 = private unnamed_addr constant [231 x i8] c"This is an unphysical value for moving objects - it controls the impact an obstacle has on the fluid, =0 behaves a bit like outflow (deleting fluid), =1 is default, while >1 results in high forces (can be used to tweak total mass)\00", align 1
@RNA_InflowFluidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OutflowFluidSettings, ptr @RNA_ObstacleFluidSettings, ptr null, %struct.ListBase { ptr @rna_InflowFluidSettings_use, ptr @rna_InflowFluidSettings_use_local_coords } }, ptr @.str.131, ptr null, ptr null, i32 4, ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 17, ptr null, ptr @rna_FluidSettings_rna_properties, ptr @RNA_FluidSettings, ptr null, ptr @rna_FluidSettings_refine, ptr @rna_FluidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.123 = private unnamed_addr constant [22 x i8] c"ObstacleFluidSettings\00", align 1
@.str.124 = private unnamed_addr constant [35 x i8] c"Obstacle Fluid Simulation Settings\00", align 1
@.str.125 = private unnamed_addr constant [58 x i8] c"Fluid simulation settings for obstacles in the simulation\00", align 1
@rna_InflowFluidSettings_volume_initialization = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_InflowFluidSettings_use_animated_mesh, ptr @rna_InflowFluidSettings_use, i32 -1, ptr @.str.108, i32 1, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @InflowFluidSettings_volume_initialization_get, ptr @InflowFluidSettings_volume_initialization_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_InflowFluidSettings_volume_initialization_items, i32 3, i32 1 }, align 8
@rna_InflowFluidSettings_use = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_InflowFluidSettings_volume_initialization, ptr null, i32 -1, ptr @.str.105, i32 3, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @InflowFluidSettings_use_get, ptr @InflowFluidSettings_use_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_InflowFluidSettings_use_animated_mesh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_InflowFluidSettings_inflow_velocity, ptr @rna_InflowFluidSettings_volume_initialization, i32 -1, ptr @.str.111, i32 8193, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1170, i32 2, ptr null, ptr null }, ptr @InflowFluidSettings_use_animated_mesh_get, ptr @InflowFluidSettings_use_animated_mesh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_InflowFluidSettings_volume_initialization_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.225 }, %struct.EnumPropertyItem { i32 2, ptr @.str.226, i32 0, ptr @.str.227, ptr @.str.228 }, %struct.EnumPropertyItem { i32 3, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.231 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_InflowFluidSettings_inflow_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_InflowFluidSettings_use_local_coords, ptr @rna_InflowFluidSettings_use_animated_mesh, i32 -1, ptr @.str.126, i32 8195, ptr @.str.127, ptr @.str.116, i32 0, ptr @.str.3, i32 2, i32 458775, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 84, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @InflowFluidSettings_inflow_velocity_get, ptr @InflowFluidSettings_inflow_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC08F40CCC0000000, float 0x408F40CCC0000000, float 0xC08F40CCC0000000, float 0x408F40CCC0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_InflowFluidSettings_inflow_velocity_default }, align 8
@rna_InflowFluidSettings_use_local_coords = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_InflowFluidSettings_inflow_velocity, i32 -1, ptr @.str.128, i32 1, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @InflowFluidSettings_use_local_coords_get, ptr @InflowFluidSettings_use_local_coords_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.126 = private unnamed_addr constant [16 x i8] c"inflow_velocity\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"Inflow Velocity\00", align 1
@rna_InflowFluidSettings_inflow_velocity_default = internal global [3 x float] zeroinitializer, align 4
@.str.128 = private unnamed_addr constant [17 x i8] c"use_local_coords\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"Local Coordinates\00", align 1
@.str.130 = private unnamed_addr constant [61 x i8] c"Use local coordinates for inflow (e.g. for rotating objects)\00", align 1
@RNA_OutflowFluidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ParticleFluidSettings, ptr @RNA_InflowFluidSettings, ptr null, %struct.ListBase { ptr @rna_OutflowFluidSettings_use, ptr @rna_OutflowFluidSettings_use_animated_mesh } }, ptr @.str.134, ptr null, ptr null, i32 4, ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 17, ptr null, ptr @rna_FluidSettings_rna_properties, ptr @RNA_FluidSettings, ptr null, ptr @rna_FluidSettings_refine, ptr @rna_FluidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.131 = private unnamed_addr constant [20 x i8] c"InflowFluidSettings\00", align 1
@.str.132 = private unnamed_addr constant [33 x i8] c"Inflow Fluid Simulation Settings\00", align 1
@.str.133 = private unnamed_addr constant [70 x i8] c"Fluid simulation settings for objects adding fluids in the simulation\00", align 1
@rna_OutflowFluidSettings_volume_initialization = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_OutflowFluidSettings_use_animated_mesh, ptr @rna_OutflowFluidSettings_use, i32 -1, ptr @.str.108, i32 1, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OutflowFluidSettings_volume_initialization_get, ptr @OutflowFluidSettings_volume_initialization_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_OutflowFluidSettings_volume_initialization_items, i32 3, i32 1 }, align 8
@rna_OutflowFluidSettings_use = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_OutflowFluidSettings_volume_initialization, ptr null, i32 -1, ptr @.str.105, i32 3, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OutflowFluidSettings_use_get, ptr @OutflowFluidSettings_use_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_OutflowFluidSettings_use_animated_mesh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_OutflowFluidSettings_volume_initialization, i32 -1, ptr @.str.111, i32 8193, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1170, i32 2, ptr null, ptr null }, ptr @OutflowFluidSettings_use_animated_mesh_get, ptr @OutflowFluidSettings_use_animated_mesh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_OutflowFluidSettings_volume_initialization_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.225 }, %struct.EnumPropertyItem { i32 2, ptr @.str.226, i32 0, ptr @.str.227, ptr @.str.228 }, %struct.EnumPropertyItem { i32 3, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.231 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_ParticleFluidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ControlFluidSettings, ptr @RNA_OutflowFluidSettings, ptr null, %struct.ListBase { ptr @rna_ParticleFluidSettings_use_drops, ptr @rna_ParticleFluidSettings_filepath } }, ptr @.str.153, ptr null, ptr null, i32 4, ptr @.str.154, ptr @.str.155, ptr @.str.3, i32 17, ptr null, ptr @rna_FluidSettings_rna_properties, ptr @RNA_FluidSettings, ptr null, ptr @rna_FluidSettings_refine, ptr @rna_FluidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.134 = private unnamed_addr constant [21 x i8] c"OutflowFluidSettings\00", align 1
@.str.135 = private unnamed_addr constant [34 x i8] c"Outflow Fluid Simulation Settings\00", align 1
@.str.136 = private unnamed_addr constant [74 x i8] c"Fluid simulation settings for objects removing fluids from the simulation\00", align 1
@rna_ParticleFluidSettings_use_floats = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleFluidSettings_show_tracer, ptr @rna_ParticleFluidSettings_use_drops, i32 -1, ptr @.str.140, i32 3, ptr @.str.141, ptr @.str.142, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleFluidSettings_use_floats_get, ptr @ParticleFluidSettings_use_floats_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.137 = private unnamed_addr constant [10 x i8] c"use_drops\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"Drops\00", align 1
@.str.139 = private unnamed_addr constant [20 x i8] c"Show drop particles\00", align 1
@rna_ParticleFluidSettings_use_drops = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleFluidSettings_use_floats, ptr null, i32 -1, ptr @.str.137, i32 3, ptr @.str.138, ptr @.str.139, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleFluidSettings_use_drops_get, ptr @ParticleFluidSettings_use_drops_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ParticleFluidSettings_show_tracer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleFluidSettings_particle_influence, ptr @rna_ParticleFluidSettings_use_floats, i32 -1, ptr @.str.143, i32 3, ptr @.str.144, ptr @.str.145, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleFluidSettings_show_tracer_get, ptr @ParticleFluidSettings_show_tracer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.140 = private unnamed_addr constant [11 x i8] c"use_floats\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"Floats\00", align 1
@.str.142 = private unnamed_addr constant [29 x i8] c"Show floating foam particles\00", align 1
@rna_ParticleFluidSettings_particle_influence = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleFluidSettings_alpha_influence, ptr @rna_ParticleFluidSettings_show_tracer, i32 -1, ptr @.str.146, i32 8195, ptr @.str.147, ptr @.str.148, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1196, i32 4, ptr null, ptr null }, ptr @ParticleFluidSettings_particle_influence_get, ptr @ParticleFluidSettings_particle_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.143 = private unnamed_addr constant [12 x i8] c"show_tracer\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"Tracer\00", align 1
@.str.145 = private unnamed_addr constant [22 x i8] c"Show tracer particles\00", align 1
@rna_ParticleFluidSettings_alpha_influence = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleFluidSettings_filepath, ptr @rna_ParticleFluidSettings_particle_influence, i32 -1, ptr @.str.149, i32 8195, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1200, i32 4, ptr null, ptr null }, ptr @ParticleFluidSettings_alpha_influence_get, ptr @ParticleFluidSettings_alpha_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.146 = private unnamed_addr constant [19 x i8] c"particle_influence\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"Particle Influence\00", align 1
@.str.148 = private unnamed_addr constant [92 x i8] c"Amount of particle size scaling: 0=off (all same size), 1=full (range 0.2-2.0), >1=stronger\00", align 1
@rna_ParticleFluidSettings_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ParticleFluidSettings_alpha_influence, i32 -1, ptr @.str.31, i32 262145, ptr @.str.32, ptr @.str.152, i32 0, ptr @.str.3, i32 3, i32 1, ptr null, i32 0, [3 x i32] [i32 1024, i32 0, i32 0], i32 0, ptr @rna_fluid_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleFluidSettings_filepath_get, ptr @ParticleFluidSettings_filepath_length, ptr @ParticleFluidSettings_filepath_set, ptr null, ptr null, ptr null, i32 1024, ptr @.str.34 }, align 8
@.str.149 = private unnamed_addr constant [16 x i8] c"alpha_influence\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"Alpha Influence\00", align 1
@.str.151 = private unnamed_addr constant [155 x i8] c"Amount of particle alpha change, inverse of size influence: 0=off (all same alpha), 1=full (larger particles get lower alphas, smaller ones higher values)\00", align 1
@.str.152 = private unnamed_addr constant [68 x i8] c"Directory (and/or filename prefix) to store and load particles from\00", align 1
@RNA_ControlFluidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GreasePencil, ptr @RNA_ParticleFluidSettings, ptr null, %struct.ListBase { ptr @rna_ControlFluidSettings_use, ptr @rna_ControlFluidSettings_use_reverse_frames } }, ptr @.str.173, ptr null, ptr null, i32 4, ptr @.str.174, ptr @.str.175, ptr @.str.3, i32 17, ptr null, ptr @rna_FluidSettings_rna_properties, ptr @RNA_FluidSettings, ptr null, ptr @rna_FluidSettings_refine, ptr @rna_FluidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.153 = private unnamed_addr constant [22 x i8] c"ParticleFluidSettings\00", align 1
@.str.154 = private unnamed_addr constant [35 x i8] c"Particle Fluid Simulation Settings\00", align 1
@.str.155 = private unnamed_addr constant [90 x i8] c"Fluid simulation settings for objects storing fluid particles generated by the simulation\00", align 1
@rna_ControlFluidSettings_start_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ControlFluidSettings_end_time, ptr @rna_ControlFluidSettings_use, i32 -1, ptr @.str.44, i32 8195, ptr @.str.45, ptr @.str.156, i32 0, ptr @.str.3, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1220, i32 4, ptr null, ptr null }, ptr @ControlFluidSettings_start_time_get, ptr @ControlFluidSettings_start_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_ControlFluidSettings_use = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ControlFluidSettings_start_time, ptr null, i32 -1, ptr @.str.105, i32 3, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ControlFluidSettings_use_get, ptr @ControlFluidSettings_use_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ControlFluidSettings_end_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ControlFluidSettings_attraction_strength, ptr @rna_ControlFluidSettings_start_time, i32 -1, ptr @.str.47, i32 8195, ptr @.str.48, ptr @.str.157, i32 0, ptr @.str.3, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1224, i32 4, ptr null, ptr null }, ptr @ControlFluidSettings_end_time_get, ptr @ControlFluidSettings_end_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.156 = private unnamed_addr constant [46 x i8] c"Time when the control particles are activated\00", align 1
@rna_ControlFluidSettings_attraction_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ControlFluidSettings_attraction_radius, ptr @rna_ControlFluidSettings_end_time, i32 -1, ptr @.str.158, i32 8195, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1232, i32 4, ptr null, ptr null }, ptr @ControlFluidSettings_attraction_strength_get, ptr @ControlFluidSettings_attraction_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.157 = private unnamed_addr constant [48 x i8] c"Time when the control particles are deactivated\00", align 1
@rna_ControlFluidSettings_attraction_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ControlFluidSettings_velocity_strength, ptr @rna_ControlFluidSettings_attraction_strength, i32 -1, ptr @.str.161, i32 8195, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1236, i32 4, ptr null, ptr null }, ptr @ControlFluidSettings_attraction_radius_get, ptr @ControlFluidSettings_attraction_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.158 = private unnamed_addr constant [20 x i8] c"attraction_strength\00", align 1
@.str.159 = private unnamed_addr constant [20 x i8] c"Attraction Strength\00", align 1
@.str.160 = private unnamed_addr constant [69 x i8] c"Force strength for directional attraction towards the control object\00", align 1
@rna_ControlFluidSettings_velocity_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ControlFluidSettings_velocity_radius, ptr @rna_ControlFluidSettings_attraction_radius, i32 -1, ptr @.str.164, i32 8195, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1240, i32 4, ptr null, ptr null }, ptr @ControlFluidSettings_velocity_strength_get, ptr @ControlFluidSettings_velocity_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.161 = private unnamed_addr constant [18 x i8] c"attraction_radius\00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"Attraction Radius\00", align 1
@.str.163 = private unnamed_addr constant [45 x i8] c"Force field radius around the control object\00", align 1
@rna_ControlFluidSettings_velocity_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ControlFluidSettings_quality, ptr @rna_ControlFluidSettings_velocity_strength, i32 -1, ptr @.str.167, i32 8195, ptr @.str.168, ptr @.str.163, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1244, i32 4, ptr null, ptr null }, ptr @ControlFluidSettings_velocity_radius_get, ptr @ControlFluidSettings_velocity_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.164 = private unnamed_addr constant [18 x i8] c"velocity_strength\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"Velocity Strength\00", align 1
@.str.166 = private unnamed_addr constant [94 x i8] c"Force strength of how much of the control object's velocity is influencing the fluid velocity\00", align 1
@rna_ControlFluidSettings_quality = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ControlFluidSettings_use_reverse_frames, ptr @rna_ControlFluidSettings_velocity_radius, i32 -1, ptr @.str.169, i32 8193, ptr @.str.170, ptr @.str.171, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1228, i32 4, ptr null, ptr null }, ptr @ControlFluidSettings_quality_get, ptr @ControlFluidSettings_quality_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 5.000000e+00, float 1.000000e+02, float 5.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.167 = private unnamed_addr constant [16 x i8] c"velocity_radius\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"Velocity Radius\00", align 1
@rna_ControlFluidSettings_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ControlFluidSettings_quality, i32 -1, ptr @.str.28, i32 1, ptr @.str.29, ptr @.str.172, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_fluid_find_enframe, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ControlFluidSettings_use_reverse_frames_get, ptr @ControlFluidSettings_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.169 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.171 = private unnamed_addr constant [71 x i8] c"Quality which is used for object sampling (higher = better but slower)\00", align 1
@.str.172 = private unnamed_addr constant [32 x i8] c"Reverse control object movement\00", align 1
@RNA_GreasePencil = external global %struct.StructRNA, align 8
@.str.173 = private unnamed_addr constant [21 x i8] c"ControlFluidSettings\00", align 1
@.str.174 = private unnamed_addr constant [34 x i8] c"Control Fluid Simulation Settings\00", align 1
@.str.175 = private unnamed_addr constant [88 x i8] c"Fluid simulation settings for objects controlling the motion of fluid in the simulation\00", align 1
@.str.176 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.177 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.178 = private unnamed_addr constant [15 x i8] c"FluidParticles\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"FluidParticleSystem\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"DOMAIN\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.184 = private unnamed_addr constant [88 x i8] c"Bounding box of this object represents the computational domain of the fluid simulation\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"FLUID\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"Fluid\00", align 1
@.str.187 = private unnamed_addr constant [54 x i8] c"Object represents a volume of fluid in the simulation\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"OBSTACLE\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"Obstacle\00", align 1
@.str.190 = private unnamed_addr constant [27 x i8] c"Object is a fixed obstacle\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"INFLOW\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"Inflow\00", align 1
@.str.193 = private unnamed_addr constant [36 x i8] c"Object adds fluid to the simulation\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"OUTFLOW\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"Outflow\00", align 1
@.str.196 = private unnamed_addr constant [41 x i8] c"Object removes fluid from the simulation\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"PARTICLE\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.199 = private unnamed_addr constant [92 x i8] c"Object is made a particle system to display particles generated by a fluidsim domain object\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"CONTROL\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.202 = private unnamed_addr constant [64 x i8] c"Object is made a fluid control mesh, which influences the fluid\00", align 1
@.str.203 = private unnamed_addr constant [25 x i8] c"modifiers[\22%s\22].settings\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"GEOMETRY\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"Geometry\00", align 1
@.str.206 = private unnamed_addr constant [17 x i8] c"Display geometry\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"PREVIEW\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.209 = private unnamed_addr constant [32 x i8] c"Display preview quality results\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"Final\00", align 1
@.str.212 = private unnamed_addr constant [30 x i8] c"Display final quality results\00", align 1
@.str.213 = private unnamed_addr constant [32 x i8] c"fluidsurface_final_####.bobj.gz\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"NOSLIP\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"No Slip\00", align 1
@.str.216 = private unnamed_addr constant [112 x i8] c"Obstacle causes zero normal and tangential velocity (=sticky), default for all (only option for moving objects)\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"PARTIALSLIP\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"Partial Slip\00", align 1
@.str.219 = private unnamed_addr constant [61 x i8] c"Mix between no-slip and free-slip (non moving objects only!)\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"FREESLIP\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"Free Slip\00", align 1
@.str.222 = private unnamed_addr constant [82 x i8] c"Obstacle only causes zero normal velocity (=not sticky, non moving objects only!)\00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c"VOLUME\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.225 = private unnamed_addr constant [38 x i8] c"Use only the inner volume of the mesh\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"Shell\00", align 1
@.str.228 = private unnamed_addr constant [37 x i8] c"Use only the outer shell of the mesh\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"BOTH\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@.str.231 = private unnamed_addr constant [58 x i8] c"Use both the inner volume and the outer shell of the mesh\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @FluidSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FluidSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
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
define internal void @FluidSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @FluidSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FluidSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @FluidSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FluidSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FluidSettings_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !46
  %6 = and i16 %5, 255
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FluidSettings_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !46
  %7 = and i16 %6, -256
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_threads_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_threads_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !51
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 5
  store i16 %7, ptr %8, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_preview_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !52
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_preview_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 6
  store i16 %7, ptr %8, align 2, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_viewport_display_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !53
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_viewport_display_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 8
  store i16 %5, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_render_display_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !54
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_render_display_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 9
  store i16 %5, ptr %6, align 2, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_use_reverse_frames_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 39
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 39
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DomainFluidSettings_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 27
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #15
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_filepath_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 27
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @DomainFluidSettings_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 27
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @DomainFluidSettings_memory_estimate_get(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #10 {
  store i8 0, ptr %1, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @DomainFluidSettings_memory_estimate_length(ptr nocapture readnone %0) #11 {
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_gravity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 13
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !58

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_gravity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 13
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fcmp olt float %9, 0xC08F40CCC0000000
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x408F40CCC0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0xC08F40CCC0000000, %6 ], [ %9, %13 ], [ 0x408F40CCC0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !57
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !61

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_use_time_override_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 39
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_use_time_override_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 39
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_start_time_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !62
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_start_time_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_end_time_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 8, !tbaa !63
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_end_time_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_frame_offset_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !64
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_frame_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 18
  store i32 %1, ptr %5, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_simulation_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !65
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_simulation_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_simulation_rate_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 53
  %5 = load float, ptr %4, align 4, !tbaa !66
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_simulation_rate_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 53
  store float %8, ptr %9, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_viscosity_base_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !67
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_viscosity_base_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_viscosity_exponent_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !68
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_viscosity_exponent_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 12
  store i16 %7, ptr %8, align 2, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_grid_levels_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 21
  %5 = load i32, ptr %4, align 8, !tbaa !69
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_grid_levels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 4)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -1)
  %7 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 21
  store i32 %6, ptr %7, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_compressibility_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 4, !tbaa !70
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_compressibility_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 0x3FB99999A0000000
  %7 = select i1 %6, float 0x3FB99999A0000000, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_slip_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 31
  %5 = load i16, ptr %4, align 8, !tbaa !71
  %6 = and i16 %5, 3584
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_slip_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 31
  %6 = load i16, ptr %5, align 8, !tbaa !71
  %7 = and i16 %6, -3585
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_partial_slip_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 34
  %5 = load float, ptr %4, align 4, !tbaa !72
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_partial_slip_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 34
  store float %8, ptr %9, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_surface_smooth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 37
  %5 = load float, ptr %4, align 8, !tbaa !73
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_surface_smooth_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 37
  store float %8, ptr %9, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_surface_subdivisions_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 38
  %5 = load i32, ptr %4, align 4, !tbaa !74
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_surface_subdivisions_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 5)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 38
  store i32 %6, ptr %7, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_use_speed_vectors_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 32
  %5 = load i8, ptr %4, align 2, !tbaa !75
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_use_speed_vectors_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = zext i1 %5 to i8
  %7 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 32
  store i8 %6, ptr %7, align 2, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_use_surface_noobs_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 31
  %5 = load i16, ptr %4, align 8, !tbaa !71
  %6 = lshr i16 %5, 13
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_use_surface_noobs_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 31
  %7 = load i16, ptr %6, align 8, !tbaa !71
  %8 = and i16 %7, -8193
  %9 = select i1 %5, i16 0, i16 8192
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DomainFluidSettings_tracer_particles_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 35
  %5 = load i32, ptr %4, align 8, !tbaa !76
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_tracer_particles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 35
  store i32 %6, ptr %7, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DomainFluidSettings_generate_particles_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 36
  %5 = load float, ptr %4, align 4, !tbaa !77
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DomainFluidSettings_generate_particles_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 36
  store float %8, ptr %9, align 4, !tbaa !77
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DomainFluidSettings_fluid_mesh_vertices_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DomainFluidSettings_fluid_mesh_vertices, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.FluidsimSettings, ptr %6, i64 0, i32 43
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %6, i64 0, i32 44
  %10 = load i32, ptr %9, align 8, !tbaa !79
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 12, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #15
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !80
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FluidMeshVertex, ptr noundef %16) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DomainFluidSettings_fluid_mesh_vertices_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FluidMeshVertex, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DomainFluidSettings_fluid_mesh_vertices_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !83
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FluidMeshVertex, ptr noundef %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @DomainFluidSettings_fluid_mesh_vertices_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #15
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FluidMeshVertex_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FluidMeshVertex_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FluidMeshVertex_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FluidMeshVertex_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FluidMeshVertex_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FluidMeshVertex_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @FluidMeshVertex_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FluidMeshVertex_velocity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !57
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !86

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FluidFluidSettings_use_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 39
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FluidFluidSettings_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 39
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FluidFluidSettings_volume_initialization_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 33
  %5 = load i8, ptr %4, align 1, !tbaa !87
  %6 = and i8 %5, 3
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FluidFluidSettings_volume_initialization_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 33
  %6 = load i8, ptr %5, align 1, !tbaa !87
  %7 = and i8 %6, -4
  %8 = trunc i32 %1 to i8
  %9 = or i8 %7, %8
  store i8 %9, ptr %5, align 1, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FluidFluidSettings_use_animated_mesh_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 32
  %5 = load i8, ptr %4, align 2, !tbaa !75
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FluidFluidSettings_use_animated_mesh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 32
  store i8 %5, ptr %6, align 2, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FluidFluidSettings_initial_velocity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !88
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !89

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FluidFluidSettings_initial_velocity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fcmp olt float %9, 0xC08F40CCC0000000
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x408F40CCC0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0xC08F40CCC0000000, %6 ], [ %9, %13 ], [ 0x408F40CCC0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !88
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !90

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObstacleFluidSettings_use_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 39
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObstacleFluidSettings_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 39
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObstacleFluidSettings_volume_initialization_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 33
  %5 = load i8, ptr %4, align 1, !tbaa !87
  %6 = and i8 %5, 3
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObstacleFluidSettings_volume_initialization_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 33
  %6 = load i8, ptr %5, align 1, !tbaa !87
  %7 = and i8 %6, -4
  %8 = trunc i32 %1 to i8
  %9 = or i8 %7, %8
  store i8 %9, ptr %5, align 1, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObstacleFluidSettings_use_animated_mesh_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 32
  %5 = load i8, ptr %4, align 2, !tbaa !75
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObstacleFluidSettings_use_animated_mesh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 32
  store i8 %5, ptr %6, align 2, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObstacleFluidSettings_slip_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 31
  %5 = load i16, ptr %4, align 8, !tbaa !71
  %6 = and i16 %5, 3584
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObstacleFluidSettings_slip_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 31
  %6 = load i16, ptr %5, align 8, !tbaa !71
  %7 = and i16 %6, -3585
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObstacleFluidSettings_partial_slip_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 34
  %5 = load float, ptr %4, align 4, !tbaa !72
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObstacleFluidSettings_partial_slip_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 34
  store float %8, ptr %9, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ObstacleFluidSettings_impact_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 37
  %5 = load float, ptr %4, align 8, !tbaa !73
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObstacleFluidSettings_impact_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -2.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float -2.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 37
  store float %8, ptr %9, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @InflowFluidSettings_use_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 39
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @InflowFluidSettings_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 39
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @InflowFluidSettings_volume_initialization_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 33
  %5 = load i8, ptr %4, align 1, !tbaa !87
  %6 = and i8 %5, 3
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @InflowFluidSettings_volume_initialization_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 33
  %6 = load i8, ptr %5, align 1, !tbaa !87
  %7 = and i8 %6, -4
  %8 = trunc i32 %1 to i8
  %9 = or i8 %7, %8
  store i8 %9, ptr %5, align 1, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @InflowFluidSettings_use_animated_mesh_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 32
  %5 = load i8, ptr %4, align 2, !tbaa !75
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @InflowFluidSettings_use_animated_mesh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 32
  store i8 %5, ptr %6, align 2, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @InflowFluidSettings_inflow_velocity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !88
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !91

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @InflowFluidSettings_inflow_velocity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fcmp olt float %9, 0xC08F40CCC0000000
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x408F40CCC0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0xC08F40CCC0000000, %6 ], [ %9, %13 ], [ 0x408F40CCC0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !88
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !92

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @InflowFluidSettings_use_local_coords_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 31
  %5 = load i16, ptr %4, align 8, !tbaa !71
  %6 = lshr i16 %5, 12
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @InflowFluidSettings_use_local_coords_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 31
  %7 = load i16, ptr %6, align 8, !tbaa !71
  %8 = and i16 %7, -4097
  %9 = select i1 %5, i16 0, i16 4096
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OutflowFluidSettings_use_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 39
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @OutflowFluidSettings_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 39
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OutflowFluidSettings_volume_initialization_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 33
  %5 = load i8, ptr %4, align 1, !tbaa !87
  %6 = and i8 %5, 3
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @OutflowFluidSettings_volume_initialization_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 33
  %6 = load i8, ptr %5, align 1, !tbaa !87
  %7 = and i8 %6, -4
  %8 = trunc i32 %1 to i8
  %9 = or i8 %7, %8
  store i8 %9, ptr %5, align 1, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OutflowFluidSettings_use_animated_mesh_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 32
  %5 = load i8, ptr %4, align 2, !tbaa !75
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OutflowFluidSettings_use_animated_mesh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 32
  store i8 %5, ptr %6, align 2, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleFluidSettings_use_drops_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 31
  %5 = load i16, ptr %4, align 8, !tbaa !71
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleFluidSettings_use_drops_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 31
  %7 = load i16, ptr %6, align 8, !tbaa !71
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleFluidSettings_use_floats_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 31
  %5 = load i16, ptr %4, align 8, !tbaa !71
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleFluidSettings_use_floats_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 31
  %7 = load i16, ptr %6, align 8, !tbaa !71
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleFluidSettings_show_tracer_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 31
  %5 = load i16, ptr %4, align 8, !tbaa !71
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleFluidSettings_show_tracer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 31
  %7 = load i16, ptr %6, align 8, !tbaa !71
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ParticleFluidSettings_particle_influence_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 40
  %5 = load float, ptr %4, align 4, !tbaa !93
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleFluidSettings_particle_influence_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 40
  store float %8, ptr %9, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ParticleFluidSettings_alpha_influence_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 41
  %5 = load float, ptr %4, align 8, !tbaa !94
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleFluidSettings_alpha_influence_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 41
  store float %8, ptr %9, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ParticleFluidSettings_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 27
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleFluidSettings_filepath_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 27
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @ParticleFluidSettings_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 27
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ControlFluidSettings_use_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 39
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_use_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 39
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ControlFluidSettings_start_time_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 45
  %5 = load float, ptr %4, align 4, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_start_time_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 45
  store float %8, ptr %9, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ControlFluidSettings_end_time_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 8, !tbaa !96
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_end_time_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 46
  store float %8, ptr %9, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ControlFluidSettings_attraction_strength_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 48
  %5 = load float, ptr %4, align 8, !tbaa !97
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_attraction_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -1.000000e+01
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float -1.000000e+01, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 48
  store float %8, ptr %9, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ControlFluidSettings_attraction_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 49
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_attraction_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 49
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ControlFluidSettings_velocity_strength_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 50
  %5 = load float, ptr %4, align 8, !tbaa !99
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_velocity_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 50
  store float %8, ptr %9, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ControlFluidSettings_velocity_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 51
  %5 = load float, ptr %4, align 4, !tbaa !100
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_velocity_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 51
  store float %8, ptr %9, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ControlFluidSettings_quality_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 47
  %5 = load float, ptr %4, align 4, !tbaa !101
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_quality_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 5.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 5.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 47
  store float %8, ptr %9, align 4, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ControlFluidSettings_use_reverse_frames_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 39
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ControlFluidSettings_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.FluidsimSettings, ptr %4, i64 0, i32 39
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_FluidSettings_update_type(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !102
  %5 = tail call ptr @modifiers_findByType(ptr noundef %4, i32 noundef 26) #15
  %6 = getelementptr inbounds %struct.FluidsimModifierData, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.FluidsimSettings, ptr %7, i64 0, i32 39
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = and i32 %9, -2
  store i32 %10, ptr %8, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.FluidsimSettings, ptr %7, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !46
  %13 = and i16 %12, 64
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 109
  br i1 %14, label %47, label %16

16:                                               ; preds = %3, %20
  %17 = phi ptr [ %18, %20 ], [ %15, %3 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %22, i64 0, i32 7
  %24 = load i16, ptr %23, align 8, !tbaa !109
  %25 = icmp eq i16 %24, 3
  br i1 %25, label %26, label %16, !llvm.loop !112

26:                                               ; preds = %20, %16
  %27 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %28 = load i16, ptr %27, align 8, !tbaa !113
  %29 = icmp ne i16 %28, 1
  %30 = or i1 %19, %29
  br i1 %30, label %64, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @psys_new_settings(ptr noundef nonnull @.str.176, ptr noundef %0) #15
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %34 = tail call ptr %33(i64 noundef 656, ptr noundef nonnull @.str.177) #15
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %32, i64 0, i32 7
  store i16 3, ptr %35, align 8, !tbaa !109
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %34, i64 0, i32 2
  store ptr %32, ptr %36, align 8, !tbaa !106
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %34, i64 0, i32 41
  %38 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %37) #15
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %34, i64 0, i32 40
  store ptr %38, ptr %39, align 8, !tbaa !117
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %34, i64 0, i32 18
  %41 = tail call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef nonnull @.str.178, i64 noundef 64) #15
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %34) #15
  %42 = tail call ptr @modifier_new(i32 noundef 19) #15
  %43 = getelementptr inbounds %struct.ModifierData, ptr %42, i64 0, i32 6
  %44 = tail call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef nonnull @.str.179, i64 noundef 64) #15
  %45 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %42, i64 0, i32 1
  store ptr %34, ptr %45, align 8, !tbaa !118
  %46 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 26
  tail call void @BLI_addtail(ptr noundef nonnull %46, ptr noundef %42) #15
  tail call void @modifier_unique_name(ptr noundef nonnull %46, ptr noundef %42) #15
  br label %64

47:                                               ; preds = %3
  %48 = load ptr, ptr %15, align 8, !tbaa !120
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 26
  br label %52

52:                                               ; preds = %50, %62
  %53 = phi ptr [ %48, %50 ], [ %54, %62 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !121
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %53, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !106
  %57 = getelementptr inbounds %struct.ParticleSettings, ptr %56, i64 0, i32 7
  %58 = load i16, ptr %57, align 8, !tbaa !109
  %59 = icmp eq i16 %58, 3
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = tail call ptr @psys_get_modifier(ptr noundef %4, ptr noundef nonnull %53) #15
  tail call void @BLI_remlink(ptr noundef nonnull %51, ptr noundef %61) #15
  tail call void @modifier_free(ptr noundef %61) #15
  tail call void @BLI_remlink(ptr noundef nonnull %15, ptr noundef nonnull %53) #15
  tail call void @psys_free(ptr noundef %4, ptr noundef nonnull %53) #15
  br label %62

62:                                               ; preds = %52, %60
  %63 = icmp eq ptr %54, null
  br i1 %63, label %64, label %52, !llvm.loop !122

64:                                               ; preds = %62, %47, %26, %31
  %65 = load ptr, ptr %2, align 8, !tbaa !102
  tail call void @DAG_id_tag_update(ptr noundef %65, i16 noundef signext 2) #15
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %65) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_FluidSettings_refine(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !46
  switch i16 %5, label %12 [
    i16 2, label %13
    i16 4, label %6
    i16 8, label %7
    i16 16, label %8
    i16 32, label %9
    i16 64, label %10
    i16 128, label %11
  ]

6:                                                ; preds = %1
  br label %13

7:                                                ; preds = %1
  br label %13

8:                                                ; preds = %1
  br label %13

9:                                                ; preds = %1
  br label %13

10:                                               ; preds = %1
  br label %13

11:                                               ; preds = %1
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %1, %12, %11, %10, %9, %8, %7, %6
  %14 = phi ptr [ @RNA_FluidSettings, %12 ], [ @RNA_ControlFluidSettings, %11 ], [ @RNA_ParticleFluidSettings, %10 ], [ @RNA_OutflowFluidSettings, %9 ], [ @RNA_InflowFluidSettings, %8 ], [ @RNA_ObstacleFluidSettings, %7 ], [ @RNA_FluidFluidSettings, %6 ], [ @RNA_DomainFluidSettings, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_FluidSettings_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 6
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #15
  %8 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.203, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #15
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal void @rna_fluid_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !102
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #15
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_fluid_find_enframe(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = load ptr, ptr %2, align 8, !tbaa !102
  %7 = tail call ptr @modifiers_findByType(ptr noundef %6, i32 noundef 26) #15
  %8 = getelementptr inbounds %struct.FluidsimModifierData, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.FluidsimSettings, ptr %9, i64 0, i32 39
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  %15 = getelementptr inbounds %struct.FluidsimSettings, ptr %9, i64 0, i32 27
  call void @BLI_join_dirfile(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull %15, ptr noundef nonnull @.str.213) #15
  %16 = call ptr @modifier_path_relbase(ptr noundef %6) #15
  %17 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef %16) #15
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i32 [ 1, %14 ], [ %21, %18 ]
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 1024) #15
  %21 = add nuw nsw i32 %19, 1
  %22 = call zeroext i8 @BLI_path_frame(ptr noundef nonnull %4, i32 noundef %19, i32 noundef 0) #15
  %23 = call i32 @BLI_exists(ptr noundef nonnull %4) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %18, !llvm.loop !124

25:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #15
  %26 = load ptr, ptr %8, align 8, !tbaa !103
  br label %27

27:                                               ; preds = %3, %25
  %28 = phi ptr [ %26, %25 ], [ %9, %3 ]
  %29 = phi i32 [ %19, %25 ], [ -1, %3 ]
  %30 = getelementptr inbounds %struct.FluidsimSettings, ptr %28, i64 0, i32 52
  store i32 %29, ptr %30, align 8, !tbaa !125
  %31 = load ptr, ptr %2, align 8, !tbaa !102
  call void @DAG_id_tag_update(ptr noundef %31, i16 noundef signext 2) #15
  call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %31) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_FluidMeshVertex_data_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FluidsimSettings, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !79
  ret i32 %5
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #3

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @psys_new_settings(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #3

declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @modifier_free(ptr noundef) local_unnamed_addr #3

declare void @psys_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @modifier_path_relbase(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!46 = !{!47, !48, i64 16}
!47 = !{!"FluidsimSettings", !36, i64 0, !43, i64 8, !43, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !49, i64 24, !48, i64 28, !48, i64 30, !49, i64 32, !48, i64 36, !48, i64 38, !37, i64 40, !49, i64 52, !49, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !49, i64 76, !43, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 1136, !37, i64 1148, !36, i64 1160, !48, i64 1168, !37, i64 1170, !37, i64 1171, !49, i64 1172, !43, i64 1176, !49, i64 1180, !49, i64 1184, !43, i64 1188, !43, i64 1192, !49, i64 1196, !49, i64 1200, !49, i64 1204, !36, i64 1208, !43, i64 1216, !49, i64 1220, !49, i64 1224, !49, i64 1228, !49, i64 1232, !49, i64 1236, !49, i64 1240, !49, i64 1244, !43, i64 1248, !49, i64 1252}
!48 = !{!"short", !37, i64 0}
!49 = !{!"float", !37, i64 0}
!50 = !{!47, !43, i64 8}
!51 = !{!47, !48, i64 20}
!52 = !{!47, !48, i64 22}
!53 = !{!47, !48, i64 28}
!54 = !{!47, !48, i64 30}
!55 = !{!47, !43, i64 1192}
!56 = !{!37, !37, i64 0}
!57 = !{!49, !49, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
!62 = !{!47, !49, i64 52}
!63 = !{!47, !49, i64 56}
!64 = !{!47, !43, i64 68}
!65 = !{!47, !49, i64 24}
!66 = !{!47, !49, i64 1252}
!67 = !{!47, !49, i64 32}
!68 = !{!47, !48, i64 38}
!69 = !{!47, !43, i64 80}
!70 = !{!47, !49, i64 76}
!71 = !{!47, !48, i64 1168}
!72 = !{!47, !49, i64 1172}
!73 = !{!47, !49, i64 1184}
!74 = !{!47, !43, i64 1188}
!75 = !{!47, !37, i64 1170}
!76 = !{!47, !43, i64 1176}
!77 = !{!47, !49, i64 1180}
!78 = !{!47, !36, i64 1208}
!79 = !{!47, !43, i64 1216}
!80 = !{!81}
!81 = distinct !{!81, !82, !"DomainFluidSettings_fluid_mesh_vertices_get: argument 0"}
!82 = distinct !{!82, !"DomainFluidSettings_fluid_mesh_vertices_get"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"DomainFluidSettings_fluid_mesh_vertices_get: argument 0"}
!85 = distinct !{!85, !"DomainFluidSettings_fluid_mesh_vertices_get"}
!86 = distinct !{!86, !59, !60}
!87 = !{!47, !37, i64 1171}
!88 = !{!47, !49, i64 84}
!89 = distinct !{!89, !59, !60}
!90 = distinct !{!90, !59, !60}
!91 = distinct !{!91, !59, !60}
!92 = distinct !{!92, !59, !60}
!93 = !{!47, !49, i64 1196}
!94 = !{!47, !49, i64 1200}
!95 = !{!47, !49, i64 1220}
!96 = !{!47, !49, i64 1224}
!97 = !{!47, !49, i64 1232}
!98 = !{!47, !49, i64 1236}
!99 = !{!47, !49, i64 1240}
!100 = !{!47, !49, i64 1244}
!101 = !{!47, !49, i64 1228}
!102 = !{!41, !36, i64 0}
!103 = !{!104, !36, i64 112}
!104 = !{!"FluidsimModifierData", !105, i64 0, !36, i64 112, !36, i64 120}
!105 = !{!"ModifierData", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!106 = !{!107, !36, i64 16}
!107 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !108, i64 72, !108, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !108, i64 152, !37, i64 168, !37, i64 232, !49, i64 296, !49, i64 300, !49, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !48, i64 340, !48, i64 342, !48, i64 344, !48, i64 346, !37, i64 348, !37, i64 540, !48, i64 564, !48, i64 566, !36, i64 568, !36, i64 576, !108, i64 584, !36, i64 600, !36, i64 608, !43, i64 616, !43, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !49, i64 648, !49, i64 652}
!108 = !{!"ListBase", !36, i64 0, !36, i64 8}
!109 = !{!110, !48, i64 160}
!110 = !{!"ParticleSettings", !111, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !43, i64 152, !43, i64 156, !48, i64 160, !48, i64 162, !48, i64 164, !48, i64 166, !48, i64 168, !48, i64 170, !48, i64 172, !48, i64 174, !43, i64 176, !43, i64 180, !48, i64 184, !48, i64 186, !48, i64 188, !48, i64 190, !48, i64 192, !48, i64 194, !48, i64 196, !48, i64 198, !48, i64 200, !48, i64 202, !48, i64 204, !48, i64 206, !48, i64 208, !48, i64 210, !48, i64 212, !48, i64 214, !48, i64 216, !48, i64 218, !48, i64 220, !48, i64 222, !48, i64 224, !48, i64 226, !48, i64 228, !48, i64 230, !49, i64 232, !49, i64 236, !37, i64 240, !37, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !48, i64 268, !48, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !37, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !48, i64 340, !37, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !37, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !37, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !43, i64 444, !43, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !37, i64 552, !49, i64 560, !49, i64 564, !43, i64 568, !43, i64 572, !37, i64 576, !36, i64 720, !108, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !48, i64 792, !37, i64 794}
!111 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !48, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!112 = distinct !{!112, !59, !60}
!113 = !{!114, !48, i64 136}
!114 = !{!"Object", !111, i64 0, !36, i64 120, !36, i64 128, !48, i64 136, !48, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !115, i64 312, !36, i64 360, !108, i64 368, !108, i64 384, !108, i64 400, !108, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !37, i64 1042, !37, i64 1043, !48, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !108, i64 1056, !108, i64 1072, !108, i64 1088, !108, i64 1104, !49, i64 1120, !48, i64 1124, !48, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !48, i64 1162, !37, i64 1164, !108, i64 1176, !108, i64 1192, !108, i64 1208, !108, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !48, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !116, i64 1304, !116, i64 1312, !43, i64 1320, !43, i64 1324, !108, i64 1328, !108, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !108, i64 1400, !36, i64 1416}
!115 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!116 = !{!"long", !37, i64 0}
!117 = !{!107, !36, i64 576}
!118 = !{!119, !36, i64 112}
!119 = !{!"ParticleSystemModifierData", !105, i64 0, !36, i64 112, !36, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !48, i64 140, !48, i64 142}
!120 = !{!114, !36, i64 1224}
!121 = !{!107, !36, i64 0}
!122 = distinct !{!122, !59, !60}
!123 = !{!47, !36, i64 0}
!124 = distinct !{!124, !59, !60}
!125 = !{!47, !43, i64 1248}
