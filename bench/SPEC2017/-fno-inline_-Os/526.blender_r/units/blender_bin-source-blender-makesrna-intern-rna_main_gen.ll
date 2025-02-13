; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_main_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_main_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"Object does not have geometry data\00", align 1
@rna_BlendData_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendData_rna_properties_begin, ptr @BlendData_rna_properties_next, ptr @BlendData_rna_properties_end, ptr @BlendData_rna_properties_get, ptr null, ptr null, ptr @BlendData_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendData_cameras = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_scenes, ptr @rna_BlendData_version, i32 -1, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataCameras, ptr null }, ptr @BlendData_cameras_begin, ptr @BlendData_cameras_next, ptr @BlendData_cameras_end, ptr @BlendData_cameras_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Camera }, align 8
@rna_BlendData_scenes = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_objects, ptr @rna_BlendData_cameras, i32 -1, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.29, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataScenes, ptr null }, ptr @BlendData_scenes_begin, ptr @BlendData_scenes_next, ptr @BlendData_scenes_end, ptr @BlendData_scenes_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@rna_BlendData_objects = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_materials, ptr @rna_BlendData_scenes, i32 -1, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.32, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataObjects, ptr null }, ptr @BlendData_objects_begin, ptr @BlendData_objects_next, ptr @BlendData_objects_end, ptr @BlendData_objects_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_BlendData_materials = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_node_groups, ptr @rna_BlendData_objects, i32 -1, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.35, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataMaterials, ptr null }, ptr @BlendData_materials_begin, ptr @BlendData_materials_next, ptr @BlendData_materials_end, ptr @BlendData_materials_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Material }, align 8
@rna_BlendData_node_groups = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_meshes, ptr @rna_BlendData_materials, i32 -1, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.38, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataNodeTrees, ptr null }, ptr @BlendData_node_groups_begin, ptr @BlendData_node_groups_next, ptr @BlendData_node_groups_end, ptr @BlendData_node_groups_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@rna_BlendData_meshes = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_lamps, ptr @rna_BlendData_node_groups, i32 -1, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataMeshes, ptr null }, ptr @BlendData_meshes_begin, ptr @BlendData_meshes_next, ptr @BlendData_meshes_end, ptr @BlendData_meshes_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mesh }, align 8
@rna_BlendData_lamps = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_libraries, ptr @rna_BlendData_meshes, i32 -1, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataLamps, ptr null }, ptr @BlendData_lamps_begin, ptr @BlendData_lamps_next, ptr @BlendData_lamps_end, ptr @BlendData_lamps_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Lamp }, align 8
@rna_BlendData_libraries = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_screens, ptr @rna_BlendData_lamps, i32 -1, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataLibraries, ptr null }, ptr @BlendData_libraries_begin, ptr @BlendData_libraries_next, ptr @BlendData_libraries_end, ptr @BlendData_libraries_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Library }, align 8
@rna_BlendData_screens = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_window_managers, ptr @rna_BlendData_libraries, i32 -1, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataScreens, ptr null }, ptr @BlendData_screens_begin, ptr @BlendData_screens_next, ptr @BlendData_screens_end, ptr @BlendData_screens_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Screen }, align 8
@rna_BlendData_window_managers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_images, ptr @rna_BlendData_screens, i32 -1, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataWindowManagers, ptr null }, ptr @BlendData_window_managers_begin, ptr @BlendData_window_managers_next, ptr @BlendData_window_managers_end, ptr @BlendData_window_managers_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_WindowManager }, align 8
@rna_BlendData_images = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_lattices, ptr @rna_BlendData_window_managers, i32 -1, ptr @.str.54, i32 0, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataImages, ptr null }, ptr @BlendData_images_begin, ptr @BlendData_images_next, ptr @BlendData_images_end, ptr @BlendData_images_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Image }, align 8
@rna_BlendData_lattices = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_curves, ptr @rna_BlendData_images, i32 -1, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataLattices, ptr null }, ptr @BlendData_lattices_begin, ptr @BlendData_lattices_next, ptr @BlendData_lattices_end, ptr @BlendData_lattices_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Lattice }, align 8
@rna_BlendData_curves = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_metaballs, ptr @rna_BlendData_lattices, i32 -1, ptr @.str.60, i32 0, ptr @.str.61, ptr @.str.62, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataCurves, ptr null }, ptr @BlendData_curves_begin, ptr @BlendData_curves_next, ptr @BlendData_curves_end, ptr @BlendData_curves_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Curve }, align 8
@rna_BlendData_metaballs = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_fonts, ptr @rna_BlendData_curves, i32 -1, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.65, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataMetaBalls, ptr null }, ptr @BlendData_metaballs_begin, ptr @BlendData_metaballs_next, ptr @BlendData_metaballs_end, ptr @BlendData_metaballs_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MetaBall }, align 8
@rna_BlendData_fonts = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_textures, ptr @rna_BlendData_metaballs, i32 -1, ptr @.str.66, i32 0, ptr @.str.67, ptr @.str.68, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataFonts, ptr null }, ptr @BlendData_fonts_begin, ptr @BlendData_fonts_next, ptr @BlendData_fonts_end, ptr @BlendData_fonts_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_VectorFont }, align 8
@rna_BlendData_textures = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_brushes, ptr @rna_BlendData_fonts, i32 -1, ptr @.str.69, i32 0, ptr @.str.70, ptr @.str.71, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataTextures, ptr null }, ptr @BlendData_textures_begin, ptr @BlendData_textures_next, ptr @BlendData_textures_end, ptr @BlendData_textures_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Texture }, align 8
@rna_BlendData_brushes = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_worlds, ptr @rna_BlendData_textures, i32 -1, ptr @.str.72, i32 0, ptr @.str.73, ptr @.str.74, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataBrushes, ptr null }, ptr @BlendData_brushes_begin, ptr @BlendData_brushes_next, ptr @BlendData_brushes_end, ptr @BlendData_brushes_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Brush }, align 8
@rna_BlendData_worlds = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_groups, ptr @rna_BlendData_brushes, i32 -1, ptr @.str.75, i32 0, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataWorlds, ptr null }, ptr @BlendData_worlds_begin, ptr @BlendData_worlds_next, ptr @BlendData_worlds_end, ptr @BlendData_worlds_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_World }, align 8
@rna_BlendData_groups = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_shape_keys, ptr @rna_BlendData_worlds, i32 -1, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.80, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataGroups, ptr null }, ptr @BlendData_groups_begin, ptr @BlendData_groups_next, ptr @BlendData_groups_end, ptr @BlendData_groups_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Group }, align 8
@rna_BlendData_shape_keys = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_scripts, ptr @rna_BlendData_groups, i32 -1, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendData_shape_keys_begin, ptr @BlendData_shape_keys_next, ptr @BlendData_shape_keys_end, ptr @BlendData_shape_keys_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Key }, align 8
@rna_BlendData_scripts = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_texts, ptr @rna_BlendData_shape_keys, i32 -1, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendData_scripts_begin, ptr @BlendData_scripts_next, ptr @BlendData_scripts_end, ptr @BlendData_scripts_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ID }, align 8
@rna_BlendData_texts = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_speakers, ptr @rna_BlendData_scripts, i32 -1, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataTexts, ptr null }, ptr @BlendData_texts_begin, ptr @BlendData_texts_next, ptr @BlendData_texts_end, ptr @BlendData_texts_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Text }, align 8
@rna_BlendData_speakers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_sounds, ptr @rna_BlendData_texts, i32 -1, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataSpeakers, ptr null }, ptr @BlendData_speakers_begin, ptr @BlendData_speakers_next, ptr @BlendData_speakers_end, ptr @BlendData_speakers_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Speaker }, align 8
@rna_BlendData_sounds = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_armatures, ptr @rna_BlendData_speakers, i32 -1, ptr @.str.93, i32 0, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataSounds, ptr null }, ptr @BlendData_sounds_begin, ptr @BlendData_sounds_next, ptr @BlendData_sounds_end, ptr @BlendData_sounds_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sound }, align 8
@rna_BlendData_armatures = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_actions, ptr @rna_BlendData_sounds, i32 -1, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataArmatures, ptr null }, ptr @BlendData_armatures_begin, ptr @BlendData_armatures_next, ptr @BlendData_armatures_end, ptr @BlendData_armatures_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Armature }, align 8
@rna_BlendData_actions = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_particles, ptr @rna_BlendData_armatures, i32 -1, ptr @.str.99, i32 0, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataActions, ptr null }, ptr @BlendData_actions_begin, ptr @BlendData_actions_next, ptr @BlendData_actions_end, ptr @BlendData_actions_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Action }, align 8
@rna_BlendData_particles = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_grease_pencil, ptr @rna_BlendData_actions, i32 -1, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataParticles, ptr null }, ptr @BlendData_particles_begin, ptr @BlendData_particles_next, ptr @BlendData_particles_end, ptr @BlendData_particles_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ParticleSettings }, align 8
@rna_BlendData_grease_pencil = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_movieclips, ptr @rna_BlendData_particles, i32 -1, ptr @.str.105, i32 0, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataGreasePencils, ptr null }, ptr @BlendData_grease_pencil_begin, ptr @BlendData_grease_pencil_next, ptr @BlendData_grease_pencil_end, ptr @BlendData_grease_pencil_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GreasePencil }, align 8
@rna_BlendData_movieclips = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_masks, ptr @rna_BlendData_grease_pencil, i32 -1, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataMovieClips, ptr null }, ptr @BlendData_movieclips_begin, ptr @BlendData_movieclips_next, ptr @BlendData_movieclips_end, ptr @BlendData_movieclips_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@rna_BlendData_masks = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_linestyles, ptr @rna_BlendData_movieclips, i32 -1, ptr @.str.111, i32 0, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataMasks, ptr null }, ptr @BlendData_masks_begin, ptr @BlendData_masks_next, ptr @BlendData_masks_end, ptr @BlendData_masks_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mask }, align 8
@rna_BlendData_linestyles = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendData_masks, i32 -1, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BlendDataLineStyles, ptr null }, ptr @BlendData_linestyles_begin, ptr @BlendData_linestyles_next, ptr @BlendData_linestyles_end, ptr @BlendData_linestyles_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FreestyleLineStyle }, align 8
@rna_BlendDataCameras_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataCameras_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataCameras_rna_properties_begin, ptr @BlendDataCameras_rna_properties_next, ptr @BlendDataCameras_rna_properties_end, ptr @BlendDataCameras_rna_properties_get, ptr null, ptr null, ptr @BlendDataCameras_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataScenes_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataScenes_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataScenes_rna_properties_begin, ptr @BlendDataScenes_rna_properties_next, ptr @BlendDataScenes_rna_properties_end, ptr @BlendDataScenes_rna_properties_get, ptr null, ptr null, ptr @BlendDataScenes_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataObjects_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataObjects_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataObjects_rna_properties_begin, ptr @BlendDataObjects_rna_properties_next, ptr @BlendDataObjects_rna_properties_end, ptr @BlendDataObjects_rna_properties_get, ptr null, ptr null, ptr @BlendDataObjects_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataMaterials_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMaterials_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMaterials_rna_properties_begin, ptr @BlendDataMaterials_rna_properties_next, ptr @BlendDataMaterials_rna_properties_end, ptr @BlendDataMaterials_rna_properties_get, ptr null, ptr null, ptr @BlendDataMaterials_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataNodeTrees_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataNodeTrees_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataNodeTrees_rna_properties_begin, ptr @BlendDataNodeTrees_rna_properties_next, ptr @BlendDataNodeTrees_rna_properties_end, ptr @BlendDataNodeTrees_rna_properties_get, ptr null, ptr null, ptr @BlendDataNodeTrees_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataMeshes_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMeshes_rna_properties_begin, ptr @BlendDataMeshes_rna_properties_next, ptr @BlendDataMeshes_rna_properties_end, ptr @BlendDataMeshes_rna_properties_get, ptr null, ptr null, ptr @BlendDataMeshes_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataLamps_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLamps_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLamps_rna_properties_begin, ptr @BlendDataLamps_rna_properties_next, ptr @BlendDataLamps_rna_properties_end, ptr @BlendDataLamps_rna_properties_get, ptr null, ptr null, ptr @BlendDataLamps_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataLibraries_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLibraries_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLibraries_rna_properties_begin, ptr @BlendDataLibraries_rna_properties_next, ptr @BlendDataLibraries_rna_properties_end, ptr @BlendDataLibraries_rna_properties_get, ptr null, ptr null, ptr @BlendDataLibraries_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataScreens_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataScreens_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataScreens_rna_properties_begin, ptr @BlendDataScreens_rna_properties_next, ptr @BlendDataScreens_rna_properties_end, ptr @BlendDataScreens_rna_properties_get, ptr null, ptr null, ptr @BlendDataScreens_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataWindowManagers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataWindowManagers_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataWindowManagers_rna_properties_begin, ptr @BlendDataWindowManagers_rna_properties_next, ptr @BlendDataWindowManagers_rna_properties_end, ptr @BlendDataWindowManagers_rna_properties_get, ptr null, ptr null, ptr @BlendDataWindowManagers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataImages_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataImages_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataImages_rna_properties_begin, ptr @BlendDataImages_rna_properties_next, ptr @BlendDataImages_rna_properties_end, ptr @BlendDataImages_rna_properties_get, ptr null, ptr null, ptr @BlendDataImages_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataLattices_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLattices_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLattices_rna_properties_begin, ptr @BlendDataLattices_rna_properties_next, ptr @BlendDataLattices_rna_properties_end, ptr @BlendDataLattices_rna_properties_get, ptr null, ptr null, ptr @BlendDataLattices_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataCurves_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataCurves_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataCurves_rna_properties_begin, ptr @BlendDataCurves_rna_properties_next, ptr @BlendDataCurves_rna_properties_end, ptr @BlendDataCurves_rna_properties_get, ptr null, ptr null, ptr @BlendDataCurves_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataMetaBalls_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMetaBalls_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMetaBalls_rna_properties_begin, ptr @BlendDataMetaBalls_rna_properties_next, ptr @BlendDataMetaBalls_rna_properties_end, ptr @BlendDataMetaBalls_rna_properties_get, ptr null, ptr null, ptr @BlendDataMetaBalls_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataFonts_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataFonts_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataFonts_rna_properties_begin, ptr @BlendDataFonts_rna_properties_next, ptr @BlendDataFonts_rna_properties_end, ptr @BlendDataFonts_rna_properties_get, ptr null, ptr null, ptr @BlendDataFonts_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataTextures_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTextures_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataTextures_rna_properties_begin, ptr @BlendDataTextures_rna_properties_next, ptr @BlendDataTextures_rna_properties_end, ptr @BlendDataTextures_rna_properties_get, ptr null, ptr null, ptr @BlendDataTextures_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataBrushes_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataBrushes_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataBrushes_rna_properties_begin, ptr @BlendDataBrushes_rna_properties_next, ptr @BlendDataBrushes_rna_properties_end, ptr @BlendDataBrushes_rna_properties_get, ptr null, ptr null, ptr @BlendDataBrushes_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataWorlds_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataWorlds_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataWorlds_rna_properties_begin, ptr @BlendDataWorlds_rna_properties_next, ptr @BlendDataWorlds_rna_properties_end, ptr @BlendDataWorlds_rna_properties_get, ptr null, ptr null, ptr @BlendDataWorlds_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataGroups_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataGroups_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataGroups_rna_properties_begin, ptr @BlendDataGroups_rna_properties_next, ptr @BlendDataGroups_rna_properties_end, ptr @BlendDataGroups_rna_properties_get, ptr null, ptr null, ptr @BlendDataGroups_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataTexts_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTexts_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataTexts_rna_properties_begin, ptr @BlendDataTexts_rna_properties_next, ptr @BlendDataTexts_rna_properties_end, ptr @BlendDataTexts_rna_properties_get, ptr null, ptr null, ptr @BlendDataTexts_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataSpeakers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataSpeakers_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataSpeakers_rna_properties_begin, ptr @BlendDataSpeakers_rna_properties_next, ptr @BlendDataSpeakers_rna_properties_end, ptr @BlendDataSpeakers_rna_properties_get, ptr null, ptr null, ptr @BlendDataSpeakers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataSounds_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataSounds_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataSounds_rna_properties_begin, ptr @BlendDataSounds_rna_properties_next, ptr @BlendDataSounds_rna_properties_end, ptr @BlendDataSounds_rna_properties_get, ptr null, ptr null, ptr @BlendDataSounds_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataArmatures_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataArmatures_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataArmatures_rna_properties_begin, ptr @BlendDataArmatures_rna_properties_next, ptr @BlendDataArmatures_rna_properties_end, ptr @BlendDataArmatures_rna_properties_get, ptr null, ptr null, ptr @BlendDataArmatures_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataActions_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataActions_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataActions_rna_properties_begin, ptr @BlendDataActions_rna_properties_next, ptr @BlendDataActions_rna_properties_end, ptr @BlendDataActions_rna_properties_get, ptr null, ptr null, ptr @BlendDataActions_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataParticles_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataParticles_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataParticles_rna_properties_begin, ptr @BlendDataParticles_rna_properties_next, ptr @BlendDataParticles_rna_properties_end, ptr @BlendDataParticles_rna_properties_get, ptr null, ptr null, ptr @BlendDataParticles_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataGreasePencils_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataGreasePencils_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataGreasePencils_rna_properties_begin, ptr @BlendDataGreasePencils_rna_properties_next, ptr @BlendDataGreasePencils_rna_properties_end, ptr @BlendDataGreasePencils_rna_properties_get, ptr null, ptr null, ptr @BlendDataGreasePencils_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataMovieClips_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMovieClips_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMovieClips_rna_properties_begin, ptr @BlendDataMovieClips_rna_properties_next, ptr @BlendDataMovieClips_rna_properties_end, ptr @BlendDataMovieClips_rna_properties_get, ptr null, ptr null, ptr @BlendDataMovieClips_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataMasks_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMasks_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMasks_rna_properties_begin, ptr @BlendDataMasks_rna_properties_next, ptr @BlendDataMasks_rna_properties_end, ptr @BlendDataMasks_rna_properties_get, ptr null, ptr null, ptr @BlendDataMasks_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendDataLineStyles_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLineStyles_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLineStyles_rna_properties_begin, ptr @BlendDataLineStyles_rna_properties_next, ptr @BlendDataLineStyles_rna_properties_end, ptr @BlendDataLineStyles_rna_properties_get, ptr null, ptr null, ptr @BlendDataLineStyles_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BlendData_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_filepath, ptr @rna_BlendData_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendData_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_BlendData_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_is_dirty, ptr @rna_BlendData_rna_type, i32 -1, ptr @.str.8, i32 262144, ptr @.str.9, ptr @.str.10, i32 0, ptr @.str.4, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendData_filepath_get, ptr @BlendData_filepath_length, ptr null, ptr null, ptr null, ptr null, i32 1024, ptr @.str.11 }, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_BlendData_is_dirty = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_is_saved, ptr @rna_BlendData_filepath, i32 -1, ptr @.str.12, i32 2, ptr @.str.13, ptr @.str.14, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendData_is_dirty_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Path to the .blend file\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_BlendData_is_saved = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_use_autopack, ptr @rna_BlendData_is_dirty, i32 -1, ptr @.str.15, i32 2, ptr @.str.16, ptr @.str.17, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendData_is_saved_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"is_dirty\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"File Has Unsaved Changes\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Have recent edits been saved to disk\00", align 1
@rna_BlendData_use_autopack = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_version, ptr @rna_BlendData_is_saved, i32 -1, ptr @.str.18, i32 3, ptr @.str.19, ptr @.str.20, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendData_use_autopack_get, ptr @BlendData_use_autopack_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"is_saved\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"File is Saved\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"Has the current session been saved to disk as a .blend file\00", align 1
@rna_BlendData_version = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendData_cameras, ptr @rna_BlendData_use_autopack, i32 -1, ptr @.str.21, i32 8388610, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.4, i32 1, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @BlendData_version_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr @rna_BlendData_version_default }, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"use_autopack\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Use Autopack\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"Automatically pack all external data into .blend file\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"Version of the blender the .blend was saved with\00", align 1
@rna_BlendData_version_default = internal global [3 x i32] zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"cameras\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Cameras\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Camera datablocks\00", align 1
@RNA_BlendDataCameras = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataScenes, ptr @RNA_BlendData, ptr null, %struct.ListBase { ptr @rna_BlendDataCameras_rna_properties, ptr @rna_BlendDataCameras_is_updated } }, ptr @.str.134, ptr null, ptr null, i32 4, ptr @.str.135, ptr @.str.136, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataCameras_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataCameras_new_func, ptr @rna_BlendDataCameras_tag_func } }, align 8
@RNA_Camera = external global %struct.StructRNA, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"scenes\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Scenes\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Scene datablocks\00", align 1
@RNA_BlendDataScenes = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataObjects, ptr @RNA_BlendDataCameras, ptr null, %struct.ListBase { ptr @rna_BlendDataScenes_rna_properties, ptr @rna_BlendDataScenes_is_updated } }, ptr @.str.143, ptr null, ptr null, i32 4, ptr @.str.144, ptr @.str.145, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataScenes_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataScenes_new_func, ptr @rna_BlendDataScenes_tag_func } }, align 8
@RNA_Scene = external global %struct.StructRNA, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Objects\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Object datablocks\00", align 1
@RNA_BlendDataObjects = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataMaterials, ptr @RNA_BlendDataScenes, ptr null, %struct.ListBase { ptr @rna_BlendDataObjects_rna_properties, ptr @rna_BlendDataObjects_is_updated } }, ptr @.str.154, ptr null, ptr null, i32 4, ptr @.str.155, ptr @.str.156, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataObjects_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataObjects_new_func, ptr @rna_BlendDataObjects_tag_func } }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@.str.33 = private unnamed_addr constant [10 x i8] c"materials\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Materials\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Material datablocks\00", align 1
@RNA_BlendDataMaterials = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataNodeTrees, ptr @RNA_BlendDataObjects, ptr null, %struct.ListBase { ptr @rna_BlendDataMaterials_rna_properties, ptr @rna_BlendDataMaterials_is_updated } }, ptr @.str.163, ptr null, ptr null, i32 4, ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataMaterials_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMaterials_new_func, ptr @rna_BlendDataMaterials_tag_func } }, align 8
@RNA_Material = external global %struct.StructRNA, align 8
@.str.36 = private unnamed_addr constant [12 x i8] c"node_groups\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Node Groups\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Node group datablocks\00", align 1
@RNA_BlendDataNodeTrees = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataMeshes, ptr @RNA_BlendDataMaterials, ptr null, %struct.ListBase { ptr @rna_BlendDataNodeTrees_rna_properties, ptr @rna_BlendDataNodeTrees_is_updated } }, ptr @.str.175, ptr null, ptr null, i32 4, ptr @.str.176, ptr @.str.177, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataNodeTrees_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataNodeTrees_new_func, ptr @rna_BlendDataNodeTrees_tag_func } }, align 8
@RNA_NodeTree = external global %struct.StructRNA, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"meshes\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Meshes\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"Mesh datablocks\00", align 1
@RNA_BlendDataMeshes = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataLamps, ptr @RNA_BlendDataNodeTrees, ptr null, %struct.ListBase { ptr @rna_BlendDataMeshes_rna_properties, ptr @rna_BlendDataMeshes_is_updated } }, ptr @.str.199, ptr null, ptr null, i32 4, ptr @.str.200, ptr @.str.201, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataMeshes_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMeshes_new_func, ptr @rna_BlendDataMeshes_tag_func } }, align 8
@RNA_Mesh = external global %struct.StructRNA, align 8
@.str.42 = private unnamed_addr constant [6 x i8] c"lamps\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Lamps\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"Lamp datablocks\00", align 1
@RNA_BlendDataLamps = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataLibraries, ptr @RNA_BlendDataMeshes, ptr null, %struct.ListBase { ptr @rna_BlendDataLamps_rna_properties, ptr @rna_BlendDataLamps_is_updated } }, ptr @.str.209, ptr null, ptr null, i32 4, ptr @.str.210, ptr @.str.211, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataLamps_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataLamps_new_func, ptr @rna_BlendDataLamps_tag_func } }, align 8
@RNA_Lamp = external global %struct.StructRNA, align 8
@.str.45 = private unnamed_addr constant [10 x i8] c"libraries\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Libraries\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"Library datablocks\00", align 1
@RNA_BlendDataLibraries = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataScreens, ptr @RNA_BlendDataLamps, ptr null, %struct.ListBase { ptr @rna_BlendDataLibraries_rna_properties, ptr @rna_BlendDataLibraries_is_updated } }, ptr @.str.212, ptr null, ptr null, i32 4, ptr @.str.213, ptr @.str.214, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataLibraries_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataLibraries_tag_func, ptr @rna_BlendDataLibraries_tag_func } }, align 8
@RNA_Library = external global %struct.StructRNA, align 8
@.str.48 = private unnamed_addr constant [8 x i8] c"screens\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"Screens\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Screen datablocks\00", align 1
@RNA_BlendDataScreens = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataWindowManagers, ptr @RNA_BlendDataLibraries, ptr null, %struct.ListBase { ptr @rna_BlendDataScreens_rna_properties, ptr @rna_BlendDataScreens_is_updated } }, ptr @.str.215, ptr null, ptr null, i32 4, ptr @.str.216, ptr @.str.217, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataScreens_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataScreens_tag_func, ptr @rna_BlendDataScreens_tag_func } }, align 8
@RNA_Screen = external global %struct.StructRNA, align 8
@.str.51 = private unnamed_addr constant [16 x i8] c"window_managers\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"Window Managers\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"Window manager datablocks\00", align 1
@RNA_BlendDataWindowManagers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataImages, ptr @RNA_BlendDataScreens, ptr null, %struct.ListBase { ptr @rna_BlendDataWindowManagers_rna_properties, ptr @rna_BlendDataWindowManagers_is_updated } }, ptr @.str.218, ptr null, ptr null, i32 4, ptr @.str.219, ptr @.str.220, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataWindowManagers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataWindowManagers_tag_func, ptr @rna_BlendDataWindowManagers_tag_func } }, align 8
@RNA_WindowManager = external global %struct.StructRNA, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Images\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Image datablocks\00", align 1
@RNA_BlendDataImages = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataLattices, ptr @RNA_BlendDataWindowManagers, ptr null, %struct.ListBase { ptr @rna_BlendDataImages_rna_properties, ptr @rna_BlendDataImages_is_updated } }, ptr @.str.241, ptr null, ptr null, i32 4, ptr @.str.242, ptr @.str.243, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataImages_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataImages_new_func, ptr @rna_BlendDataImages_tag_func } }, align 8
@RNA_Image = external global %struct.StructRNA, align 8
@.str.57 = private unnamed_addr constant [9 x i8] c"lattices\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"Lattices\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"Lattice datablocks\00", align 1
@RNA_BlendDataLattices = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataCurves, ptr @RNA_BlendDataImages, ptr null, %struct.ListBase { ptr @rna_BlendDataLattices_rna_properties, ptr @rna_BlendDataLattices_is_updated } }, ptr @.str.250, ptr null, ptr null, i32 4, ptr @.str.251, ptr @.str.252, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataLattices_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataLattices_new_func, ptr @rna_BlendDataLattices_tag_func } }, align 8
@RNA_Lattice = external global %struct.StructRNA, align 8
@.str.60 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Curves\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Curve datablocks\00", align 1
@RNA_BlendDataCurves = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataMetaBalls, ptr @RNA_BlendDataLattices, ptr null, %struct.ListBase { ptr @rna_BlendDataCurves_rna_properties, ptr @rna_BlendDataCurves_is_updated } }, ptr @.str.260, ptr null, ptr null, i32 4, ptr @.str.261, ptr @.str.262, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataCurves_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataCurves_new_func, ptr @rna_BlendDataCurves_tag_func } }, align 8
@RNA_Curve = external global %struct.StructRNA, align 8
@.str.63 = private unnamed_addr constant [10 x i8] c"metaballs\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"Metaballs\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"Metaball datablocks\00", align 1
@RNA_BlendDataMetaBalls = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataFonts, ptr @RNA_BlendDataCurves, ptr null, %struct.ListBase { ptr @rna_BlendDataMetaBalls_rna_properties, ptr @rna_BlendDataMetaBalls_is_updated } }, ptr @.str.269, ptr null, ptr null, i32 4, ptr @.str.270, ptr @.str.271, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataMetaBalls_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMetaBalls_new_func, ptr @rna_BlendDataMetaBalls_tag_func } }, align 8
@RNA_MetaBall = external global %struct.StructRNA, align 8
@.str.66 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"Vector Fonts\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"Vector font datablocks\00", align 1
@RNA_BlendDataFonts = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataTextures, ptr @RNA_BlendDataMetaBalls, ptr null, %struct.ListBase { ptr @rna_BlendDataFonts_rna_properties, ptr @rna_BlendDataFonts_is_updated } }, ptr @.str.278, ptr null, ptr null, i32 4, ptr @.str.279, ptr @.str.280, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataFonts_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataFonts_load_func, ptr @rna_BlendDataFonts_tag_func } }, align 8
@RNA_VectorFont = external global %struct.StructRNA, align 8
@.str.69 = private unnamed_addr constant [9 x i8] c"textures\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Textures\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"Texture datablocks\00", align 1
@RNA_BlendDataTextures = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataBrushes, ptr @RNA_BlendDataFonts, ptr null, %struct.ListBase { ptr @rna_BlendDataTextures_rna_properties, ptr @rna_BlendDataTextures_is_updated } }, ptr @.str.287, ptr null, ptr null, i32 4, ptr @.str.288, ptr @.str.289, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataTextures_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataTextures_new_func, ptr @rna_BlendDataTextures_tag_func } }, align 8
@RNA_Texture = external global %struct.StructRNA, align 8
@.str.72 = private unnamed_addr constant [8 x i8] c"brushes\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"Brushes\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Brush datablocks\00", align 1
@RNA_BlendDataBrushes = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataWorlds, ptr @RNA_BlendDataTextures, ptr null, %struct.ListBase { ptr @rna_BlendDataBrushes_rna_properties, ptr @rna_BlendDataBrushes_is_updated } }, ptr @.str.296, ptr null, ptr null, i32 4, ptr @.str.297, ptr @.str.298, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataBrushes_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataBrushes_new_func, ptr @rna_BlendDataBrushes_tag_func } }, align 8
@RNA_Brush = external global %struct.StructRNA, align 8
@.str.75 = private unnamed_addr constant [7 x i8] c"worlds\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Worlds\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"World datablocks\00", align 1
@RNA_BlendDataWorlds = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataGroups, ptr @RNA_BlendDataBrushes, ptr null, %struct.ListBase { ptr @rna_BlendDataWorlds_rna_properties, ptr @rna_BlendDataWorlds_is_updated } }, ptr @.str.305, ptr null, ptr null, i32 4, ptr @.str.306, ptr @.str.307, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataWorlds_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataWorlds_new_func, ptr @rna_BlendDataWorlds_tag_func } }, align 8
@RNA_World = external global %struct.StructRNA, align 8
@.str.78 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Groups\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"Group datablocks\00", align 1
@RNA_BlendDataGroups = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataTexts, ptr @RNA_BlendDataWorlds, ptr null, %struct.ListBase { ptr @rna_BlendDataGroups_rna_properties, ptr @rna_BlendDataGroups_is_updated } }, ptr @.str.314, ptr null, ptr null, i32 4, ptr @.str.315, ptr @.str.289, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataGroups_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataGroups_new_func, ptr @rna_BlendDataGroups_tag_func } }, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@.str.81 = private unnamed_addr constant [11 x i8] c"shape_keys\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"Shape Keys\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"Shape Key datablocks\00", align 1
@RNA_Key = external global %struct.StructRNA, align 8
@.str.84 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"Scripts\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Script datablocks (DEPRECATED)\00", align 1
@RNA_ID = external global %struct.StructRNA, align 8
@.str.87 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"Texts\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"Text datablocks\00", align 1
@RNA_BlendDataTexts = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataSpeakers, ptr @RNA_BlendDataGroups, ptr null, %struct.ListBase { ptr @rna_BlendDataTexts_rna_properties, ptr @rna_BlendDataTexts_is_updated } }, ptr @.str.328, ptr null, ptr null, i32 4, ptr @.str.329, ptr @.str.330, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataTexts_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataTexts_new_func, ptr @rna_BlendDataTexts_tag_func } }, align 8
@RNA_Text = external global %struct.StructRNA, align 8
@.str.90 = private unnamed_addr constant [9 x i8] c"speakers\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"Speakers\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"Speaker datablocks\00", align 1
@RNA_BlendDataSpeakers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataSounds, ptr @RNA_BlendDataTexts, ptr null, %struct.ListBase { ptr @rna_BlendDataSpeakers_rna_properties, ptr @rna_BlendDataSpeakers_is_updated } }, ptr @.str.337, ptr null, ptr null, i32 4, ptr @.str.338, ptr @.str.339, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataSpeakers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataSpeakers_new_func, ptr @rna_BlendDataSpeakers_tag_func } }, align 8
@RNA_Speaker = external global %struct.StructRNA, align 8
@.str.93 = private unnamed_addr constant [7 x i8] c"sounds\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"Sounds\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"Sound datablocks\00", align 1
@RNA_BlendDataSounds = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataArmatures, ptr @RNA_BlendDataSpeakers, ptr null, %struct.ListBase { ptr @rna_BlendDataSounds_rna_properties, ptr @rna_BlendDataSounds_is_updated } }, ptr @.str.340, ptr null, ptr null, i32 4, ptr @.str.341, ptr @.str.342, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataSounds_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataSounds_tag_func, ptr @rna_BlendDataSounds_tag_func } }, align 8
@RNA_Sound = external global %struct.StructRNA, align 8
@.str.96 = private unnamed_addr constant [10 x i8] c"armatures\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"Armatures\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"Armature datablocks\00", align 1
@RNA_BlendDataArmatures = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataActions, ptr @RNA_BlendDataSounds, ptr null, %struct.ListBase { ptr @rna_BlendDataArmatures_rna_properties, ptr @rna_BlendDataArmatures_is_updated } }, ptr @.str.349, ptr null, ptr null, i32 4, ptr @.str.350, ptr @.str.351, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataArmatures_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataArmatures_new_func, ptr @rna_BlendDataArmatures_tag_func } }, align 8
@RNA_Armature = external global %struct.StructRNA, align 8
@.str.99 = private unnamed_addr constant [8 x i8] c"actions\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"Actions\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"Action datablocks\00", align 1
@RNA_BlendDataActions = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataParticles, ptr @RNA_BlendDataArmatures, ptr null, %struct.ListBase { ptr @rna_BlendDataActions_rna_properties, ptr @rna_BlendDataActions_is_updated } }, ptr @.str.358, ptr null, ptr null, i32 4, ptr @.str.359, ptr @.str.360, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataActions_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataActions_new_func, ptr @rna_BlendDataActions_tag_func } }, align 8
@RNA_Action = external global %struct.StructRNA, align 8
@.str.102 = private unnamed_addr constant [10 x i8] c"particles\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"Particles\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"Particle datablocks\00", align 1
@RNA_BlendDataParticles = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataGreasePencils, ptr @RNA_BlendDataActions, ptr null, %struct.ListBase { ptr @rna_BlendDataParticles_rna_properties, ptr @rna_BlendDataParticles_is_updated } }, ptr @.str.367, ptr null, ptr null, i32 4, ptr @.str.368, ptr @.str.369, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataParticles_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataParticles_new_func, ptr @rna_BlendDataParticles_tag_func } }, align 8
@RNA_ParticleSettings = external global %struct.StructRNA, align 8
@.str.105 = private unnamed_addr constant [14 x i8] c"grease_pencil\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"Grease Pencil datablocks\00", align 1
@RNA_BlendDataGreasePencils = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataMovieClips, ptr @RNA_BlendDataParticles, ptr null, %struct.ListBase { ptr @rna_BlendDataGreasePencils_rna_properties, ptr @rna_BlendDataGreasePencils_is_updated } }, ptr @.str.374, ptr null, ptr null, i32 4, ptr @.str.375, ptr @.str.376, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataGreasePencils_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataGreasePencils_tag_func, ptr @rna_BlendDataGreasePencils_remove_func } }, align 8
@RNA_GreasePencil = external global %struct.StructRNA, align 8
@.str.108 = private unnamed_addr constant [11 x i8] c"movieclips\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"Movie Clips\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"Movie Clip datablocks\00", align 1
@RNA_BlendDataMovieClips = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataMasks, ptr @RNA_BlendDataGreasePencils, ptr null, %struct.ListBase { ptr @rna_BlendDataMovieClips_rna_properties, ptr @rna_BlendDataMovieClips_rna_type } }, ptr @.str.382, ptr null, ptr null, i32 4, ptr @.str.383, ptr @.str.384, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataMovieClips_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMovieClips_tag_func, ptr @rna_BlendDataMovieClips_load_func } }, align 8
@RNA_MovieClip = external global %struct.StructRNA, align 8
@.str.111 = private unnamed_addr constant [6 x i8] c"masks\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"Masks\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"Masks datablocks\00", align 1
@RNA_BlendDataMasks = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataLineStyles, ptr @RNA_BlendDataMovieClips, ptr null, %struct.ListBase { ptr @rna_BlendDataMasks_rna_properties, ptr @rna_BlendDataMasks_rna_type } }, ptr @.str.392, ptr null, ptr null, i32 4, ptr @.str.393, ptr @.str.394, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataMasks_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMasks_tag_func, ptr @rna_BlendDataMasks_remove_func } }, align 8
@RNA_Mask = external global %struct.StructRNA, align 8
@.str.114 = private unnamed_addr constant [11 x i8] c"linestyles\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"Line Styles\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"Line Style datablocks\00", align 1
@RNA_BlendDataLineStyles = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Material, ptr @RNA_BlendDataMasks, ptr null, %struct.ListBase { ptr @rna_BlendDataLineStyles_rna_properties, ptr @rna_BlendDataLineStyles_is_updated } }, ptr @.str.401, ptr null, ptr null, i32 4, ptr @.str.402, ptr @.str.403, ptr @.str.4, i32 17, ptr null, ptr @rna_BlendDataLineStyles_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataLineStyles_tag_func, ptr @rna_BlendDataLineStyles_remove_func } }, align 8
@RNA_FreestyleLineStyle = external global %struct.StructRNA, align 8
@RNA_LineStyleTextureSlot = external global %struct.StructRNA, align 8
@.str.117 = private unnamed_addr constant [10 x i8] c"BlendData\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"Blendfile Data\00", align 1
@.str.119 = private unnamed_addr constant [70 x i8] c"Main data structure representing a .blend file and all its datablocks\00", align 1
@RNA_BlendData = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BlendDataCameras, ptr @RNA_LineStyleTextureSlot, ptr null, %struct.ListBase { ptr @rna_BlendData_rna_properties, ptr @rna_BlendData_linestyles } }, ptr @.str.117, ptr null, ptr null, i32 4, ptr @.str.118, ptr @.str.119, ptr @.str.4, i32 15, ptr null, ptr @rna_BlendData_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_BlendDataCameras_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataCameras_is_updated, ptr @rna_BlendDataCameras_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataCameras_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataCameras_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataCameras_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataCameras_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.120 = private unnamed_addr constant [11 x i8] c"is_updated\00", align 1
@rna_BlendDataCameras_new_camera = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataCameras_new_name, i32 -1, ptr @.str.124, i32 8388616, ptr @.str.11, ptr @.str.125, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Camera }, align 8
@.str.121 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.122 = private unnamed_addr constant [27 x i8] c"New name for the datablock\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@rna_BlendDataCameras_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataCameras_new_camera, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.123 }, align 8
@.str.124 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"New camera datablock\00", align 1
@rna_BlendDataCameras_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataCameras_tag_func, ptr @rna_BlendDataCameras_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataCameras_remove_camera, ptr @rna_BlendDataCameras_remove_camera } }, ptr @.str.129, i32 16, ptr @.str.130, ptr @BlendDataCameras_remove_call, ptr null }, align 8
@.str.126 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.127 = private unnamed_addr constant [38 x i8] c"Add a new camera to the main database\00", align 1
@rna_BlendDataCameras_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataCameras_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataCameras_new_name, ptr @rna_BlendDataCameras_new_camera } }, ptr @.str.126, i32 0, ptr @.str.127, ptr @BlendDataCameras_new_call, ptr @rna_BlendDataCameras_new_camera }, align 8
@.str.128 = private unnamed_addr constant [17 x i8] c"Camera to remove\00", align 1
@rna_BlendDataCameras_remove_camera = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.124, i32 264196, ptr @.str.11, ptr @.str.128, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Camera }, align 8
@rna_BlendDataCameras_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataCameras_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataCameras_tag_value, ptr @rna_BlendDataCameras_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataCameras_tag_call, ptr null }, align 8
@.str.129 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.130 = private unnamed_addr constant [43 x i8] c"Remove a camera from the current blendfile\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@rna_BlendDataCameras_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.133 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"BlendDataCameras\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"Main Cameras\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"Collection of cameras\00", align 1
@rna_BlendDataScenes_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataScenes_is_updated, ptr @rna_BlendDataScenes_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataScenes_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataScenes_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataScenes_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataScenes_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataScenes_new_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataScenes_new_name, i32 -1, ptr @.str.138, i32 8388616, ptr @.str.11, ptr @.str.139, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@.str.137 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@rna_BlendDataScenes_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataScenes_new_scene, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.137 }, align 8
@.str.138 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.139 = private unnamed_addr constant [20 x i8] c"New scene datablock\00", align 1
@rna_BlendDataScenes_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataScenes_tag_func, ptr @rna_BlendDataScenes_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataScenes_remove_scene, ptr @rna_BlendDataScenes_remove_scene } }, ptr @.str.129, i32 24, ptr @.str.142, ptr @BlendDataScenes_remove_call, ptr null }, align 8
@.str.140 = private unnamed_addr constant [37 x i8] c"Add a new scene to the main database\00", align 1
@rna_BlendDataScenes_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataScenes_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataScenes_new_name, ptr @rna_BlendDataScenes_new_scene } }, ptr @.str.126, i32 0, ptr @.str.140, ptr @BlendDataScenes_new_call, ptr @rna_BlendDataScenes_new_scene }, align 8
@.str.141 = private unnamed_addr constant [16 x i8] c"Scene to remove\00", align 1
@rna_BlendDataScenes_remove_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.138, i32 264196, ptr @.str.11, ptr @.str.141, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@rna_BlendDataScenes_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataScenes_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataScenes_tag_value, ptr @rna_BlendDataScenes_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataScenes_tag_call, ptr null }, align 8
@.str.142 = private unnamed_addr constant [42 x i8] c"Remove a scene from the current blendfile\00", align 1
@rna_BlendDataScenes_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.143 = private unnamed_addr constant [16 x i8] c"BlendDataScenes\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"Main Scenes\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"Collection of scenes\00", align 1
@rna_BlendDataObjects_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataObjects_is_updated, ptr @rna_BlendDataObjects_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataObjects_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataObjects_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataObjects_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataObjects_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataObjects_new_object_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataObjects_new_object, ptr @rna_BlendDataObjects_new_name, i32 -1, ptr @.str.147, i32 8388612, ptr @.str.11, ptr @.str.148, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ID }, align 8
@.str.146 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@rna_BlendDataObjects_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataObjects_new_object_data, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.146 }, align 8
@rna_BlendDataObjects_new_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataObjects_new_object_data, i32 -1, ptr @.str.149, i32 8388616, ptr @.str.11, ptr @.str.150, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.147 = private unnamed_addr constant [12 x i8] c"object_data\00", align 1
@.str.148 = private unnamed_addr constant [40 x i8] c"Object data or None for an empty object\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"New object datablock\00", align 1
@rna_BlendDataObjects_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataObjects_tag_func, ptr @rna_BlendDataObjects_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataObjects_remove_object, ptr @rna_BlendDataObjects_remove_object } }, ptr @.str.129, i32 16, ptr @.str.153, ptr @BlendDataObjects_remove_call, ptr null }, align 8
@.str.151 = private unnamed_addr constant [38 x i8] c"Add a new object to the main database\00", align 1
@rna_BlendDataObjects_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataObjects_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataObjects_new_name, ptr @rna_BlendDataObjects_new_object } }, ptr @.str.126, i32 16, ptr @.str.151, ptr @BlendDataObjects_new_call, ptr @rna_BlendDataObjects_new_object }, align 8
@.str.152 = private unnamed_addr constant [17 x i8] c"Object to remove\00", align 1
@rna_BlendDataObjects_remove_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.149, i32 264196, ptr @.str.11, ptr @.str.152, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_BlendDataObjects_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataObjects_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataObjects_tag_value, ptr @rna_BlendDataObjects_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataObjects_tag_call, ptr null }, align 8
@.str.153 = private unnamed_addr constant [43 x i8] c"Remove a object from the current blendfile\00", align 1
@rna_BlendDataObjects_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.154 = private unnamed_addr constant [17 x i8] c"BlendDataObjects\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"Main Objects\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"Collection of objects\00", align 1
@rna_BlendDataMaterials_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMaterials_is_updated, ptr @rna_BlendDataMaterials_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMaterials_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataMaterials_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMaterials_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMaterials_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataMaterials_new_material = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMaterials_new_name, i32 -1, ptr @.str.158, i32 8388616, ptr @.str.11, ptr @.str.159, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Material }, align 8
@.str.157 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@rna_BlendDataMaterials_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMaterials_new_material, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.157 }, align 8
@.str.158 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c"New material datablock\00", align 1
@rna_BlendDataMaterials_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMaterials_tag_func, ptr @rna_BlendDataMaterials_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMaterials_remove_material, ptr @rna_BlendDataMaterials_remove_material } }, ptr @.str.129, i32 16, ptr @.str.162, ptr @BlendDataMaterials_remove_call, ptr null }, align 8
@.str.160 = private unnamed_addr constant [40 x i8] c"Add a new material to the main database\00", align 1
@rna_BlendDataMaterials_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMaterials_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMaterials_new_name, ptr @rna_BlendDataMaterials_new_material } }, ptr @.str.126, i32 0, ptr @.str.160, ptr @BlendDataMaterials_new_call, ptr @rna_BlendDataMaterials_new_material }, align 8
@.str.161 = private unnamed_addr constant [19 x i8] c"Material to remove\00", align 1
@rna_BlendDataMaterials_remove_material = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.158, i32 264196, ptr @.str.11, ptr @.str.161, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Material }, align 8
@rna_BlendDataMaterials_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataMaterials_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMaterials_tag_value, ptr @rna_BlendDataMaterials_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataMaterials_tag_call, ptr null }, align 8
@.str.162 = private unnamed_addr constant [45 x i8] c"Remove a material from the current blendfile\00", align 1
@rna_BlendDataMaterials_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.163 = private unnamed_addr constant [19 x i8] c"BlendDataMaterials\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"Main Materials\00", align 1
@.str.165 = private unnamed_addr constant [24 x i8] c"Collection of materials\00", align 1
@rna_BlendDataNodeTrees_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataNodeTrees_is_updated, ptr @rna_BlendDataNodeTrees_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataNodeTrees_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataNodeTrees_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataNodeTrees_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataNodeTrees_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataNodeTrees_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataNodeTrees_new_tree, ptr @rna_BlendDataNodeTrees_new_name, i32 -1, ptr @.str.167, i32 7, ptr @.str.168, ptr @.str.169, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @rna_Main_nodetree_type_itemf, ptr null, ptr null, ptr null, ptr @rna_BlendDataNodeTrees_new_type_items, i32 1, i32 0 }, align 8
@.str.166 = private unnamed_addr constant [10 x i8] c"NodeGroup\00", align 1
@rna_BlendDataNodeTrees_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataNodeTrees_new_type, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.166 }, align 8
@rna_BlendDataNodeTrees_new_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataNodeTrees_new_type, i32 -1, ptr @.str.170, i32 8388616, ptr @.str.11, ptr @.str.171, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@.str.167 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.169 = private unnamed_addr constant [30 x i8] c"The type of node_group to add\00", align 1
@rna_BlendDataNodeTrees_new_type_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.432, i32 0, ptr @.str.11, ptr @.str.11 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.170 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.171 = private unnamed_addr constant [24 x i8] c"New node tree datablock\00", align 1
@rna_BlendDataNodeTrees_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataNodeTrees_tag_func, ptr @rna_BlendDataNodeTrees_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataNodeTrees_remove_tree, ptr @rna_BlendDataNodeTrees_remove_tree } }, ptr @.str.129, i32 16, ptr @.str.174, ptr @BlendDataNodeTrees_remove_call, ptr null }, align 8
@.str.172 = private unnamed_addr constant [41 x i8] c"Add a new node tree to the main database\00", align 1
@rna_BlendDataNodeTrees_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataNodeTrees_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataNodeTrees_new_name, ptr @rna_BlendDataNodeTrees_new_tree } }, ptr @.str.126, i32 0, ptr @.str.172, ptr @BlendDataNodeTrees_new_call, ptr @rna_BlendDataNodeTrees_new_tree }, align 8
@.str.173 = private unnamed_addr constant [20 x i8] c"Node tree to remove\00", align 1
@rna_BlendDataNodeTrees_remove_tree = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.170, i32 264196, ptr @.str.11, ptr @.str.173, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_NodeTree }, align 8
@rna_BlendDataNodeTrees_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataNodeTrees_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataNodeTrees_tag_value, ptr @rna_BlendDataNodeTrees_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataNodeTrees_tag_call, ptr null }, align 8
@.str.174 = private unnamed_addr constant [46 x i8] c"Remove a node tree from the current blendfile\00", align 1
@rna_BlendDataNodeTrees_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.175 = private unnamed_addr constant [19 x i8] c"BlendDataNodeTrees\00", align 1
@.str.176 = private unnamed_addr constant [16 x i8] c"Main Node Trees\00", align 1
@.str.177 = private unnamed_addr constant [25 x i8] c"Collection of node trees\00", align 1
@rna_BlendDataMeshes_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_is_updated, ptr @rna_BlendDataMeshes_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMeshes_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataMeshes_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMeshes_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMeshes_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataMeshes_new_mesh = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMeshes_new_name, i32 -1, ptr @.str.179, i32 8388616, ptr @.str.11, ptr @.str.180, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mesh }, align 8
@.str.178 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@rna_BlendDataMeshes_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_new_mesh, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.178 }, align 8
@.str.179 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.180 = private unnamed_addr constant [19 x i8] c"New mesh datablock\00", align 1
@rna_BlendDataMeshes_new_from_object_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMeshes_remove_func, ptr @rna_BlendDataMeshes_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMeshes_new_from_object_scene, ptr @rna_BlendDataMeshes_new_from_object_mesh } }, ptr @.str.195, i32 16, ptr @.str.196, ptr @BlendDataMeshes_new_from_object_call, ptr @rna_BlendDataMeshes_new_from_object_mesh }, align 8
@.str.181 = private unnamed_addr constant [36 x i8] c"Add a new mesh to the main database\00", align 1
@rna_BlendDataMeshes_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMeshes_new_from_object_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMeshes_new_name, ptr @rna_BlendDataMeshes_new_mesh } }, ptr @.str.126, i32 0, ptr @.str.181, ptr @BlendDataMeshes_new_call, ptr @rna_BlendDataMeshes_new_mesh }, align 8
@rna_BlendDataMeshes_new_from_object_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_new_from_object_apply_modifiers, ptr @rna_BlendDataMeshes_new_from_object_scene, i32 -1, ptr @.str.149, i32 8650756, ptr @.str.11, ptr @.str.183, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.182 = private unnamed_addr constant [41 x i8] c"Scene within which to evaluate modifiers\00", align 1
@rna_BlendDataMeshes_new_from_object_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_new_from_object_object, ptr null, i32 -1, ptr @.str.138, i32 8650756, ptr @.str.11, ptr @.str.182, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@rna_BlendDataMeshes_new_from_object_apply_modifiers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_new_from_object_settings, ptr @rna_BlendDataMeshes_new_from_object_object, i32 -1, ptr @.str.184, i32 7, ptr @.str.11, ptr @.str.185, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.183 = private unnamed_addr constant [27 x i8] c"Object to create mesh from\00", align 1
@rna_BlendDataMeshes_new_from_object_settings = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_new_from_object_calc_tessface, ptr @rna_BlendDataMeshes_new_from_object_apply_modifiers, i32 -1, ptr @.str.186, i32 7, ptr @.str.11, ptr @.str.187, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_BlendDataMeshes_new_from_object_settings_items, i32 2, i32 1 }, align 8
@.str.184 = private unnamed_addr constant [16 x i8] c"apply_modifiers\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"Apply modifiers\00", align 1
@rna_BlendDataMeshes_new_from_object_calc_tessface = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_new_from_object_calc_undeformed, ptr @rna_BlendDataMeshes_new_from_object_settings, i32 -1, ptr @.str.188, i32 3, ptr @.str.189, ptr @.str.190, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@.str.186 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"Modifier settings to apply\00", align 1
@rna_BlendDataMeshes_new_from_object_settings_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.433, i32 0, ptr @.str.434, ptr @.str.435 }, %struct.EnumPropertyItem { i32 2, ptr @.str.436, i32 0, ptr @.str.437, ptr @.str.438 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BlendDataMeshes_new_from_object_calc_undeformed = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMeshes_new_from_object_mesh, ptr @rna_BlendDataMeshes_new_from_object_calc_tessface, i32 -1, ptr @.str.191, i32 3, ptr @.str.192, ptr @.str.193, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.188 = private unnamed_addr constant [14 x i8] c"calc_tessface\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"Calculate Tessellation\00", align 1
@.str.190 = private unnamed_addr constant [29 x i8] c"Calculate tessellation faces\00", align 1
@rna_BlendDataMeshes_new_from_object_mesh = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMeshes_new_from_object_calc_undeformed, i32 -1, ptr @.str.179, i32 8388616, ptr @.str.11, ptr @.str.194, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mesh }, align 8
@.str.191 = private unnamed_addr constant [16 x i8] c"calc_undeformed\00", align 1
@.str.192 = private unnamed_addr constant [21 x i8] c"Calculate Undeformed\00", align 1
@.str.193 = private unnamed_addr constant [40 x i8] c"Calculate undeformed vertex coordinates\00", align 1
@.str.194 = private unnamed_addr constant [66 x i8] c"Mesh created from object, remove it if it is only used for export\00", align 1
@rna_BlendDataMeshes_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMeshes_tag_func, ptr @rna_BlendDataMeshes_new_from_object_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMeshes_remove_mesh, ptr @rna_BlendDataMeshes_remove_mesh } }, ptr @.str.129, i32 16, ptr @.str.198, ptr @BlendDataMeshes_remove_call, ptr null }, align 8
@.str.195 = private unnamed_addr constant [16 x i8] c"new_from_object\00", align 1
@.str.196 = private unnamed_addr constant [58 x i8] c"Add a new mesh created from object with modifiers applied\00", align 1
@.str.197 = private unnamed_addr constant [15 x i8] c"Mesh to remove\00", align 1
@rna_BlendDataMeshes_remove_mesh = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.179, i32 264196, ptr @.str.11, ptr @.str.197, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mesh }, align 8
@rna_BlendDataMeshes_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataMeshes_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMeshes_tag_value, ptr @rna_BlendDataMeshes_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataMeshes_tag_call, ptr null }, align 8
@.str.198 = private unnamed_addr constant [41 x i8] c"Remove a mesh from the current blendfile\00", align 1
@rna_BlendDataMeshes_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.199 = private unnamed_addr constant [16 x i8] c"BlendDataMeshes\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"Main Meshes\00", align 1
@.str.201 = private unnamed_addr constant [21 x i8] c"Collection of meshes\00", align 1
@rna_BlendDataLamps_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLamps_is_updated, ptr @rna_BlendDataLamps_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLamps_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataLamps_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataLamps_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLamps_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataLamps_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLamps_new_lamp, ptr @rna_BlendDataLamps_new_name, i32 -1, ptr @.str.167, i32 7, ptr @.str.168, ptr @.str.203, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_BlendDataLamps_new_type_items, i32 5, i32 0 }, align 8
@.str.202 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@rna_BlendDataLamps_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLamps_new_type, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.202 }, align 8
@rna_BlendDataLamps_new_lamp = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataLamps_new_type, i32 -1, ptr @.str.204, i32 8388616, ptr @.str.11, ptr @.str.205, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Lamp }, align 8
@.str.203 = private unnamed_addr constant [27 x i8] c"The type of texture to add\00", align 1
@rna_BlendDataLamps_new_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.439, i32 0, ptr @.str.440, ptr @.str.441 }, %struct.EnumPropertyItem { i32 1, ptr @.str.442, i32 0, ptr @.str.443, ptr @.str.444 }, %struct.EnumPropertyItem { i32 2, ptr @.str.445, i32 0, ptr @.str.446, ptr @.str.447 }, %struct.EnumPropertyItem { i32 3, ptr @.str.448, i32 0, ptr @.str.449, ptr @.str.450 }, %struct.EnumPropertyItem { i32 4, ptr @.str.451, i32 0, ptr @.str.452, ptr @.str.453 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.204 = private unnamed_addr constant [5 x i8] c"lamp\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"New lamp datablock\00", align 1
@rna_BlendDataLamps_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataLamps_tag_func, ptr @rna_BlendDataLamps_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataLamps_remove_lamp, ptr @rna_BlendDataLamps_remove_lamp } }, ptr @.str.129, i32 16, ptr @.str.208, ptr @BlendDataLamps_remove_call, ptr null }, align 8
@.str.206 = private unnamed_addr constant [36 x i8] c"Add a new lamp to the main database\00", align 1
@rna_BlendDataLamps_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataLamps_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataLamps_new_name, ptr @rna_BlendDataLamps_new_lamp } }, ptr @.str.126, i32 0, ptr @.str.206, ptr @BlendDataLamps_new_call, ptr @rna_BlendDataLamps_new_lamp }, align 8
@.str.207 = private unnamed_addr constant [15 x i8] c"Lamp to remove\00", align 1
@rna_BlendDataLamps_remove_lamp = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.204, i32 264196, ptr @.str.11, ptr @.str.207, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Lamp }, align 8
@rna_BlendDataLamps_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataLamps_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataLamps_tag_value, ptr @rna_BlendDataLamps_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataLamps_tag_call, ptr null }, align 8
@.str.208 = private unnamed_addr constant [41 x i8] c"Remove a lamp from the current blendfile\00", align 1
@rna_BlendDataLamps_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.209 = private unnamed_addr constant [15 x i8] c"BlendDataLamps\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"Main Lamps\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"Collection of lamps\00", align 1
@rna_BlendDataLibraries_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLibraries_is_updated, ptr @rna_BlendDataLibraries_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLibraries_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataLibraries_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataLibraries_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLibraries_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataLibraries_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataLibraries_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataLibraries_tag_value, ptr @rna_BlendDataLibraries_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataLibraries_tag_call, ptr null }, align 8
@.str.212 = private unnamed_addr constant [19 x i8] c"BlendDataLibraries\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"Main Libraries\00", align 1
@.str.214 = private unnamed_addr constant [24 x i8] c"Collection of libraries\00", align 1
@rna_BlendDataScreens_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataScreens_is_updated, ptr @rna_BlendDataScreens_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataScreens_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataScreens_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataScreens_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataScreens_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataScreens_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataScreens_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataScreens_tag_value, ptr @rna_BlendDataScreens_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataScreens_tag_call, ptr null }, align 8
@.str.215 = private unnamed_addr constant [17 x i8] c"BlendDataScreens\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"Main Screens\00", align 1
@.str.217 = private unnamed_addr constant [22 x i8] c"Collection of screens\00", align 1
@rna_BlendDataWindowManagers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataWindowManagers_is_updated, ptr @rna_BlendDataWindowManagers_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataWindowManagers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataWindowManagers_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataWindowManagers_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataWindowManagers_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataWindowManagers_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataWindowManagers_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataWindowManagers_tag_value, ptr @rna_BlendDataWindowManagers_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataWindowManagers_tag_call, ptr null }, align 8
@.str.218 = private unnamed_addr constant [24 x i8] c"BlendDataWindowManagers\00", align 1
@.str.219 = private unnamed_addr constant [21 x i8] c"Main Window Managers\00", align 1
@.str.220 = private unnamed_addr constant [30 x i8] c"Collection of window managers\00", align 1
@rna_BlendDataImages_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataImages_is_updated, ptr @rna_BlendDataImages_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataImages_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataImages_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataImages_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataImages_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataImages_new_width = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataImages_new_height, ptr @rna_BlendDataImages_new_name, i32 -1, ptr @.str.222, i32 7, ptr @.str.11, ptr @.str.223, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 2147483647, i32 1, i32 2147483647, i32 1, i32 1024, ptr null }, align 8
@.str.221 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@rna_BlendDataImages_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataImages_new_width, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.221 }, align 8
@rna_BlendDataImages_new_height = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataImages_new_alpha, ptr @rna_BlendDataImages_new_width, i32 -1, ptr @.str.224, i32 7, ptr @.str.11, ptr @.str.225, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 2147483647, i32 1, i32 2147483647, i32 1, i32 1024, ptr null }, align 8
@.str.222 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.223 = private unnamed_addr constant [19 x i8] c"Width of the image\00", align 1
@rna_BlendDataImages_new_alpha = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataImages_new_float_buffer, ptr @rna_BlendDataImages_new_height, i32 -1, ptr @.str.226, i32 3, ptr @.str.227, ptr @.str.228, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.224 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.225 = private unnamed_addr constant [20 x i8] c"Height of the image\00", align 1
@rna_BlendDataImages_new_float_buffer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataImages_new_image, ptr @rna_BlendDataImages_new_alpha, i32 -1, ptr @.str.229, i32 3, ptr @.str.230, ptr @.str.231, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.226 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.228 = private unnamed_addr constant [18 x i8] c"Use alpha channel\00", align 1
@rna_BlendDataImages_new_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataImages_new_float_buffer, i32 -1, ptr @.str.232, i32 8388616, ptr @.str.11, ptr @.str.233, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Image }, align 8
@.str.229 = private unnamed_addr constant [13 x i8] c"float_buffer\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"Float Buffer\00", align 1
@.str.231 = private unnamed_addr constant [42 x i8] c"Create an image with floating point color\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.233 = private unnamed_addr constant [20 x i8] c"New image datablock\00", align 1
@rna_BlendDataImages_load_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataImages_remove_func, ptr @rna_BlendDataImages_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataImages_load_filepath, ptr @rna_BlendDataImages_load_image } }, ptr @.str.237, i32 16, ptr @.str.238, ptr @BlendDataImages_load_call, ptr @rna_BlendDataImages_load_image }, align 8
@.str.234 = private unnamed_addr constant [37 x i8] c"Add a new image to the main database\00", align 1
@rna_BlendDataImages_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataImages_load_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataImages_new_name, ptr @rna_BlendDataImages_new_image } }, ptr @.str.126, i32 0, ptr @.str.234, ptr @BlendDataImages_new_call, ptr @rna_BlendDataImages_new_image }, align 8
@rna_BlendDataImages_load_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataImages_load_filepath, i32 -1, ptr @.str.232, i32 8388616, ptr @.str.11, ptr @.str.233, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Image }, align 8
@.str.235 = private unnamed_addr constant [25 x i8] c"path of the file to load\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"File Path\00", align 1
@rna_BlendDataImages_load_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataImages_load_image, ptr null, i32 -1, ptr @.str.8, i32 262149, ptr @.str.11, ptr @.str.235, i32 0, ptr @.str.4, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.236 }, align 8
@rna_BlendDataImages_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataImages_tag_func, ptr @rna_BlendDataImages_load_func, ptr null, %struct.ListBase { ptr @rna_BlendDataImages_remove_image, ptr @rna_BlendDataImages_remove_image } }, ptr @.str.129, i32 16, ptr @.str.240, ptr @BlendDataImages_remove_call, ptr null }, align 8
@.str.237 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.238 = private unnamed_addr constant [40 x i8] c"Load a new image into the main database\00", align 1
@.str.239 = private unnamed_addr constant [16 x i8] c"Image to remove\00", align 1
@rna_BlendDataImages_remove_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.232, i32 264196, ptr @.str.11, ptr @.str.239, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Image }, align 8
@rna_BlendDataImages_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataImages_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataImages_tag_value, ptr @rna_BlendDataImages_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataImages_tag_call, ptr null }, align 8
@.str.240 = private unnamed_addr constant [43 x i8] c"Remove an image from the current blendfile\00", align 1
@rna_BlendDataImages_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.241 = private unnamed_addr constant [16 x i8] c"BlendDataImages\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"Main Images\00", align 1
@.str.243 = private unnamed_addr constant [21 x i8] c"Collection of images\00", align 1
@rna_BlendDataLattices_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLattices_is_updated, ptr @rna_BlendDataLattices_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLattices_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataLattices_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataLattices_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLattices_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataLattices_new_lattice = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataLattices_new_name, i32 -1, ptr @.str.245, i32 8388616, ptr @.str.11, ptr @.str.246, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Lattice }, align 8
@.str.244 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@rna_BlendDataLattices_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLattices_new_lattice, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.244 }, align 8
@.str.245 = private unnamed_addr constant [8 x i8] c"lattice\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"New lattices datablock\00", align 1
@rna_BlendDataLattices_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataLattices_tag_func, ptr @rna_BlendDataLattices_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataLattices_remove_lattice, ptr @rna_BlendDataLattices_remove_lattice } }, ptr @.str.129, i32 16, ptr @.str.249, ptr @BlendDataLattices_remove_call, ptr null }, align 8
@.str.247 = private unnamed_addr constant [39 x i8] c"Add a new lattice to the main database\00", align 1
@rna_BlendDataLattices_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataLattices_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataLattices_new_name, ptr @rna_BlendDataLattices_new_lattice } }, ptr @.str.126, i32 0, ptr @.str.247, ptr @BlendDataLattices_new_call, ptr @rna_BlendDataLattices_new_lattice }, align 8
@.str.248 = private unnamed_addr constant [18 x i8] c"Lattice to remove\00", align 1
@rna_BlendDataLattices_remove_lattice = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.245, i32 264196, ptr @.str.11, ptr @.str.248, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Lattice }, align 8
@rna_BlendDataLattices_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataLattices_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataLattices_tag_value, ptr @rna_BlendDataLattices_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataLattices_tag_call, ptr null }, align 8
@.str.249 = private unnamed_addr constant [44 x i8] c"Remove a lattice from the current blendfile\00", align 1
@rna_BlendDataLattices_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.250 = private unnamed_addr constant [18 x i8] c"BlendDataLattices\00", align 1
@.str.251 = private unnamed_addr constant [14 x i8] c"Main Lattices\00", align 1
@.str.252 = private unnamed_addr constant [23 x i8] c"Collection of lattices\00", align 1
@rna_BlendDataCurves_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataCurves_is_updated, ptr @rna_BlendDataCurves_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataCurves_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataCurves_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataCurves_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataCurves_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataCurves_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataCurves_new_curve, ptr @rna_BlendDataCurves_new_name, i32 -1, ptr @.str.167, i32 7, ptr @.str.168, ptr @.str.254, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_BlendDataCurves_new_type_items, i32 3, i32 2 }, align 8
@.str.253 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@rna_BlendDataCurves_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataCurves_new_type, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.253 }, align 8
@rna_BlendDataCurves_new_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataCurves_new_type, i32 -1, ptr @.str.255, i32 8388616, ptr @.str.11, ptr @.str.256, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Curve }, align 8
@.str.254 = private unnamed_addr constant [25 x i8] c"The type of curve to add\00", align 1
@rna_BlendDataCurves_new_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.454, i32 0, ptr @.str.253, ptr @.str.11 }, %struct.EnumPropertyItem { i32 3, ptr @.str.455, i32 0, ptr @.str.456, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.457, i32 0, ptr @.str.458, ptr @.str.11 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.255 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.256 = private unnamed_addr constant [20 x i8] c"New curve datablock\00", align 1
@rna_BlendDataCurves_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataCurves_tag_func, ptr @rna_BlendDataCurves_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataCurves_remove_curve, ptr @rna_BlendDataCurves_remove_curve } }, ptr @.str.129, i32 16, ptr @.str.259, ptr @BlendDataCurves_remove_call, ptr null }, align 8
@.str.257 = private unnamed_addr constant [37 x i8] c"Add a new curve to the main database\00", align 1
@rna_BlendDataCurves_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataCurves_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataCurves_new_name, ptr @rna_BlendDataCurves_new_curve } }, ptr @.str.126, i32 0, ptr @.str.257, ptr @BlendDataCurves_new_call, ptr @rna_BlendDataCurves_new_curve }, align 8
@.str.258 = private unnamed_addr constant [16 x i8] c"Curve to remove\00", align 1
@rna_BlendDataCurves_remove_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.255, i32 264196, ptr @.str.11, ptr @.str.258, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Curve }, align 8
@rna_BlendDataCurves_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataCurves_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataCurves_tag_value, ptr @rna_BlendDataCurves_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataCurves_tag_call, ptr null }, align 8
@.str.259 = private unnamed_addr constant [42 x i8] c"Remove a curve from the current blendfile\00", align 1
@rna_BlendDataCurves_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.260 = private unnamed_addr constant [16 x i8] c"BlendDataCurves\00", align 1
@.str.261 = private unnamed_addr constant [12 x i8] c"Main Curves\00", align 1
@.str.262 = private unnamed_addr constant [21 x i8] c"Collection of curves\00", align 1
@rna_BlendDataMetaBalls_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMetaBalls_is_updated, ptr @rna_BlendDataMetaBalls_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMetaBalls_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataMetaBalls_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMetaBalls_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMetaBalls_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataMetaBalls_new_metaball = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMetaBalls_new_name, i32 -1, ptr @.str.264, i32 8388616, ptr @.str.11, ptr @.str.265, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MetaBall }, align 8
@.str.263 = private unnamed_addr constant [9 x i8] c"MetaBall\00", align 1
@rna_BlendDataMetaBalls_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMetaBalls_new_metaball, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.263 }, align 8
@.str.264 = private unnamed_addr constant [9 x i8] c"metaball\00", align 1
@.str.265 = private unnamed_addr constant [23 x i8] c"New metaball datablock\00", align 1
@rna_BlendDataMetaBalls_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMetaBalls_tag_func, ptr @rna_BlendDataMetaBalls_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMetaBalls_remove_metaball, ptr @rna_BlendDataMetaBalls_remove_metaball } }, ptr @.str.129, i32 16, ptr @.str.268, ptr @BlendDataMetaBalls_remove_call, ptr null }, align 8
@.str.266 = private unnamed_addr constant [40 x i8] c"Add a new metaball to the main database\00", align 1
@rna_BlendDataMetaBalls_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMetaBalls_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMetaBalls_new_name, ptr @rna_BlendDataMetaBalls_new_metaball } }, ptr @.str.126, i32 0, ptr @.str.266, ptr @BlendDataMetaBalls_new_call, ptr @rna_BlendDataMetaBalls_new_metaball }, align 8
@.str.267 = private unnamed_addr constant [19 x i8] c"Metaball to remove\00", align 1
@rna_BlendDataMetaBalls_remove_metaball = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.264, i32 264196, ptr @.str.11, ptr @.str.267, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MetaBall }, align 8
@rna_BlendDataMetaBalls_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataMetaBalls_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMetaBalls_tag_value, ptr @rna_BlendDataMetaBalls_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataMetaBalls_tag_call, ptr null }, align 8
@.str.268 = private unnamed_addr constant [45 x i8] c"Remove a metaball from the current blendfile\00", align 1
@rna_BlendDataMetaBalls_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.269 = private unnamed_addr constant [19 x i8] c"BlendDataMetaBalls\00", align 1
@.str.270 = private unnamed_addr constant [15 x i8] c"Main Metaballs\00", align 1
@.str.271 = private unnamed_addr constant [24 x i8] c"Collection of metaballs\00", align 1
@rna_BlendDataFonts_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataFonts_is_updated, ptr @rna_BlendDataFonts_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataFonts_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataFonts_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataFonts_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataFonts_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataFonts_load_vfont = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataFonts_load_filepath, i32 -1, ptr @.str.273, i32 8388616, ptr @.str.11, ptr @.str.274, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_VectorFont }, align 8
@.str.272 = private unnamed_addr constant [25 x i8] c"path of the font to load\00", align 1
@rna_BlendDataFonts_load_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataFonts_load_vfont, ptr null, i32 -1, ptr @.str.8, i32 262149, ptr @.str.11, ptr @.str.272, i32 0, ptr @.str.4, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.236 }, align 8
@.str.273 = private unnamed_addr constant [6 x i8] c"vfont\00", align 1
@.str.274 = private unnamed_addr constant [19 x i8] c"New font datablock\00", align 1
@rna_BlendDataFonts_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataFonts_tag_func, ptr @rna_BlendDataFonts_load_func, ptr null, %struct.ListBase { ptr @rna_BlendDataFonts_remove_vfont, ptr @rna_BlendDataFonts_remove_vfont } }, ptr @.str.129, i32 16, ptr @.str.277, ptr @BlendDataFonts_remove_call, ptr null }, align 8
@.str.275 = private unnamed_addr constant [39 x i8] c"Load a new font into the main database\00", align 1
@rna_BlendDataFonts_load_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataFonts_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataFonts_load_filepath, ptr @rna_BlendDataFonts_load_vfont } }, ptr @.str.237, i32 16, ptr @.str.275, ptr @BlendDataFonts_load_call, ptr @rna_BlendDataFonts_load_vfont }, align 8
@.str.276 = private unnamed_addr constant [15 x i8] c"Font to remove\00", align 1
@rna_BlendDataFonts_remove_vfont = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.273, i32 264196, ptr @.str.11, ptr @.str.276, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_VectorFont }, align 8
@rna_BlendDataFonts_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataFonts_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataFonts_tag_value, ptr @rna_BlendDataFonts_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataFonts_tag_call, ptr null }, align 8
@.str.277 = private unnamed_addr constant [41 x i8] c"Remove a font from the current blendfile\00", align 1
@rna_BlendDataFonts_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.278 = private unnamed_addr constant [15 x i8] c"BlendDataFonts\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"Main Fonts\00", align 1
@.str.280 = private unnamed_addr constant [20 x i8] c"Collection of fonts\00", align 1
@rna_BlendDataTextures_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTextures_is_updated, ptr @rna_BlendDataTextures_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataTextures_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataTextures_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataTextures_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataTextures_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataTextures_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTextures_new_texture, ptr @rna_BlendDataTextures_new_name, i32 -1, ptr @.str.167, i32 7, ptr @.str.168, ptr @.str.203, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_BlendDataTextures_new_type_items, i32 16, i32 0 }, align 8
@.str.281 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@rna_BlendDataTextures_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTextures_new_type, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.281 }, align 8
@rna_BlendDataTextures_new_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataTextures_new_type, i32 -1, ptr @.str.282, i32 8388616, ptr @.str.11, ptr @.str.283, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Texture }, align 8
@rna_BlendDataTextures_new_type_items = internal global [17 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.459, i32 0, ptr @.str.460, ptr @.str.11 }, %struct.EnumPropertyItem { i32 5, ptr @.str.461, i32 80, ptr @.str.462, ptr @.str.463 }, %struct.EnumPropertyItem { i32 1, ptr @.str.464, i32 80, ptr @.str.465, ptr @.str.466 }, %struct.EnumPropertyItem { i32 13, ptr @.str.467, i32 80, ptr @.str.468, ptr @.str.469 }, %struct.EnumPropertyItem { i32 10, ptr @.str.470, i32 183, ptr @.str.471, ptr @.str.472 }, %struct.EnumPropertyItem { i32 8, ptr @.str.473, i32 183, ptr @.str.474, ptr @.str.475 }, %struct.EnumPropertyItem { i32 4, ptr @.str.476, i32 80, ptr @.str.477, ptr @.str.478 }, %struct.EnumPropertyItem { i32 3, ptr @.str.479, i32 80, ptr @.str.480, ptr @.str.481 }, %struct.EnumPropertyItem { i32 11, ptr @.str.482, i32 80, ptr @.str.483, ptr @.str.484 }, %struct.EnumPropertyItem { i32 7, ptr @.str.485, i32 80, ptr @.str.486, ptr @.str.487 }, %struct.EnumPropertyItem { i32 16, ptr @.str.488, i32 80, ptr @.str.489, ptr @.str.490 }, %struct.EnumPropertyItem { i32 14, ptr @.str.491, i32 80, ptr @.str.492, ptr @.str.11 }, %struct.EnumPropertyItem { i32 6, ptr @.str.493, i32 80, ptr @.str.494, ptr @.str.495 }, %struct.EnumPropertyItem { i32 12, ptr @.str.496, i32 80, ptr @.str.497, ptr @.str.498 }, %struct.EnumPropertyItem { i32 15, ptr @.str.499, i32 80, ptr @.str.500, ptr @.str.501 }, %struct.EnumPropertyItem { i32 2, ptr @.str.502, i32 80, ptr @.str.503, ptr @.str.504 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.282 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.283 = private unnamed_addr constant [22 x i8] c"New texture datablock\00", align 1
@rna_BlendDataTextures_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataTextures_tag_func, ptr @rna_BlendDataTextures_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataTextures_remove_texture, ptr @rna_BlendDataTextures_remove_texture } }, ptr @.str.129, i32 16, ptr @.str.286, ptr @BlendDataTextures_remove_call, ptr null }, align 8
@.str.284 = private unnamed_addr constant [39 x i8] c"Add a new texture to the main database\00", align 1
@rna_BlendDataTextures_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataTextures_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataTextures_new_name, ptr @rna_BlendDataTextures_new_texture } }, ptr @.str.126, i32 0, ptr @.str.284, ptr @BlendDataTextures_new_call, ptr @rna_BlendDataTextures_new_texture }, align 8
@.str.285 = private unnamed_addr constant [18 x i8] c"Texture to remove\00", align 1
@rna_BlendDataTextures_remove_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.282, i32 264196, ptr @.str.11, ptr @.str.285, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Texture }, align 8
@rna_BlendDataTextures_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataTextures_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataTextures_tag_value, ptr @rna_BlendDataTextures_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataTextures_tag_call, ptr null }, align 8
@.str.286 = private unnamed_addr constant [44 x i8] c"Remove a texture from the current blendfile\00", align 1
@rna_BlendDataTextures_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.287 = private unnamed_addr constant [18 x i8] c"BlendDataTextures\00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"Main Textures\00", align 1
@.str.289 = private unnamed_addr constant [21 x i8] c"Collection of groups\00", align 1
@rna_BlendDataBrushes_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataBrushes_is_updated, ptr @rna_BlendDataBrushes_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataBrushes_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataBrushes_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataBrushes_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataBrushes_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataBrushes_new_brush = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataBrushes_new_name, i32 -1, ptr @.str.291, i32 8388616, ptr @.str.11, ptr @.str.292, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Brush }, align 8
@.str.290 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@rna_BlendDataBrushes_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataBrushes_new_brush, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.290 }, align 8
@.str.291 = private unnamed_addr constant [6 x i8] c"brush\00", align 1
@.str.292 = private unnamed_addr constant [20 x i8] c"New brush datablock\00", align 1
@rna_BlendDataBrushes_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataBrushes_tag_func, ptr @rna_BlendDataBrushes_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataBrushes_remove_brush, ptr @rna_BlendDataBrushes_remove_brush } }, ptr @.str.129, i32 16, ptr @.str.295, ptr @BlendDataBrushes_remove_call, ptr null }, align 8
@.str.293 = private unnamed_addr constant [37 x i8] c"Add a new brush to the main database\00", align 1
@rna_BlendDataBrushes_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataBrushes_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataBrushes_new_name, ptr @rna_BlendDataBrushes_new_brush } }, ptr @.str.126, i32 0, ptr @.str.293, ptr @BlendDataBrushes_new_call, ptr @rna_BlendDataBrushes_new_brush }, align 8
@.str.294 = private unnamed_addr constant [16 x i8] c"Brush to remove\00", align 1
@rna_BlendDataBrushes_remove_brush = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.291, i32 264196, ptr @.str.11, ptr @.str.294, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Brush }, align 8
@rna_BlendDataBrushes_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataBrushes_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataBrushes_tag_value, ptr @rna_BlendDataBrushes_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataBrushes_tag_call, ptr null }, align 8
@.str.295 = private unnamed_addr constant [42 x i8] c"Remove a brush from the current blendfile\00", align 1
@rna_BlendDataBrushes_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.296 = private unnamed_addr constant [17 x i8] c"BlendDataBrushes\00", align 1
@.str.297 = private unnamed_addr constant [13 x i8] c"Main Brushes\00", align 1
@.str.298 = private unnamed_addr constant [22 x i8] c"Collection of brushes\00", align 1
@rna_BlendDataWorlds_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataWorlds_is_updated, ptr @rna_BlendDataWorlds_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataWorlds_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataWorlds_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataWorlds_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataWorlds_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataWorlds_new_world = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataWorlds_new_name, i32 -1, ptr @.str.300, i32 8388616, ptr @.str.11, ptr @.str.301, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_World }, align 8
@.str.299 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@rna_BlendDataWorlds_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataWorlds_new_world, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.299 }, align 8
@.str.300 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.301 = private unnamed_addr constant [20 x i8] c"New world datablock\00", align 1
@rna_BlendDataWorlds_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataWorlds_tag_func, ptr @rna_BlendDataWorlds_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataWorlds_remove_world, ptr @rna_BlendDataWorlds_remove_world } }, ptr @.str.129, i32 16, ptr @.str.304, ptr @BlendDataWorlds_remove_call, ptr null }, align 8
@.str.302 = private unnamed_addr constant [37 x i8] c"Add a new world to the main database\00", align 1
@rna_BlendDataWorlds_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataWorlds_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataWorlds_new_name, ptr @rna_BlendDataWorlds_new_world } }, ptr @.str.126, i32 0, ptr @.str.302, ptr @BlendDataWorlds_new_call, ptr @rna_BlendDataWorlds_new_world }, align 8
@.str.303 = private unnamed_addr constant [16 x i8] c"World to remove\00", align 1
@rna_BlendDataWorlds_remove_world = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.300, i32 264196, ptr @.str.11, ptr @.str.303, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_World }, align 8
@rna_BlendDataWorlds_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataWorlds_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataWorlds_tag_value, ptr @rna_BlendDataWorlds_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataWorlds_tag_call, ptr null }, align 8
@.str.304 = private unnamed_addr constant [42 x i8] c"Remove a world from the current blendfile\00", align 1
@rna_BlendDataWorlds_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.305 = private unnamed_addr constant [16 x i8] c"BlendDataWorlds\00", align 1
@.str.306 = private unnamed_addr constant [12 x i8] c"Main Worlds\00", align 1
@.str.307 = private unnamed_addr constant [21 x i8] c"Collection of worlds\00", align 1
@rna_BlendDataGroups_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataGroups_is_updated, ptr @rna_BlendDataGroups_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataGroups_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataGroups_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataGroups_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataGroups_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataGroups_new_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataGroups_new_name, i32 -1, ptr @.str.309, i32 8388616, ptr @.str.11, ptr @.str.310, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.308 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@rna_BlendDataGroups_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataGroups_new_group, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.308 }, align 8
@.str.309 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.310 = private unnamed_addr constant [20 x i8] c"New group datablock\00", align 1
@rna_BlendDataGroups_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataGroups_tag_func, ptr @rna_BlendDataGroups_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataGroups_remove_group, ptr @rna_BlendDataGroups_remove_group } }, ptr @.str.129, i32 0, ptr @.str.313, ptr @BlendDataGroups_remove_call, ptr null }, align 8
@.str.311 = private unnamed_addr constant [37 x i8] c"Add a new group to the main database\00", align 1
@rna_BlendDataGroups_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataGroups_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataGroups_new_name, ptr @rna_BlendDataGroups_new_group } }, ptr @.str.126, i32 0, ptr @.str.311, ptr @BlendDataGroups_new_call, ptr @rna_BlendDataGroups_new_group }, align 8
@.str.312 = private unnamed_addr constant [16 x i8] c"Group to remove\00", align 1
@rna_BlendDataGroups_remove_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.309, i32 264196, ptr @.str.11, ptr @.str.312, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Group }, align 8
@rna_BlendDataGroups_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataGroups_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataGroups_tag_value, ptr @rna_BlendDataGroups_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataGroups_tag_call, ptr null }, align 8
@.str.313 = private unnamed_addr constant [42 x i8] c"Remove a group from the current blendfile\00", align 1
@rna_BlendDataGroups_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.314 = private unnamed_addr constant [16 x i8] c"BlendDataGroups\00", align 1
@.str.315 = private unnamed_addr constant [12 x i8] c"Main Groups\00", align 1
@rna_BlendDataTexts_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTexts_is_updated, ptr @rna_BlendDataTexts_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataTexts_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataTexts_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataTexts_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataTexts_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataTexts_new_text = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataTexts_new_name, i32 -1, ptr @.str.317, i32 8388616, ptr @.str.11, ptr @.str.318, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Text }, align 8
@.str.316 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@rna_BlendDataTexts_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTexts_new_text, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.316 }, align 8
@.str.317 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.318 = private unnamed_addr constant [19 x i8] c"New text datablock\00", align 1
@rna_BlendDataTexts_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataTexts_load_func, ptr @rna_BlendDataTexts_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataTexts_remove_text, ptr @rna_BlendDataTexts_remove_text } }, ptr @.str.129, i32 0, ptr @.str.321, ptr @BlendDataTexts_remove_call, ptr null }, align 8
@.str.319 = private unnamed_addr constant [36 x i8] c"Add a new text to the main database\00", align 1
@rna_BlendDataTexts_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataTexts_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataTexts_new_name, ptr @rna_BlendDataTexts_new_text } }, ptr @.str.126, i32 0, ptr @.str.319, ptr @BlendDataTexts_new_call, ptr @rna_BlendDataTexts_new_text }, align 8
@.str.320 = private unnamed_addr constant [15 x i8] c"Text to remove\00", align 1
@rna_BlendDataTexts_remove_text = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.317, i32 264196, ptr @.str.11, ptr @.str.320, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Text }, align 8
@rna_BlendDataTexts_load_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataTexts_tag_func, ptr @rna_BlendDataTexts_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataTexts_load_filepath, ptr @rna_BlendDataTexts_load_text } }, ptr @.str.237, i32 16, ptr @.str.327, ptr @BlendDataTexts_load_call, ptr @rna_BlendDataTexts_load_text }, align 8
@.str.321 = private unnamed_addr constant [41 x i8] c"Remove a text from the current blendfile\00", align 1
@rna_BlendDataTexts_load_internal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTexts_load_text, ptr @rna_BlendDataTexts_load_filepath, i32 -1, ptr @.str.324, i32 3, ptr @.str.325, ptr @.str.326, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.322 = private unnamed_addr constant [23 x i8] c"path for the datablock\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@rna_BlendDataTexts_load_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataTexts_load_internal, ptr null, i32 -1, ptr @.str.8, i32 262149, ptr @.str.11, ptr @.str.322, i32 0, ptr @.str.4, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1024, ptr @.str.323 }, align 8
@rna_BlendDataTexts_load_text = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataTexts_load_internal, i32 -1, ptr @.str.317, i32 8388616, ptr @.str.11, ptr @.str.318, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Text }, align 8
@.str.324 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.325 = private unnamed_addr constant [14 x i8] c"Make internal\00", align 1
@.str.326 = private unnamed_addr constant [38 x i8] c"Make text file internal after loading\00", align 1
@rna_BlendDataTexts_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataTexts_load_func, ptr null, %struct.ListBase { ptr @rna_BlendDataTexts_tag_value, ptr @rna_BlendDataTexts_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataTexts_tag_call, ptr null }, align 8
@.str.327 = private unnamed_addr constant [48 x i8] c"Add a new text to the main database from a file\00", align 1
@rna_BlendDataTexts_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.328 = private unnamed_addr constant [15 x i8] c"BlendDataTexts\00", align 1
@.str.329 = private unnamed_addr constant [11 x i8] c"Main Texts\00", align 1
@.str.330 = private unnamed_addr constant [20 x i8] c"Collection of texts\00", align 1
@rna_BlendDataSpeakers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataSpeakers_is_updated, ptr @rna_BlendDataSpeakers_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataSpeakers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataSpeakers_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataSpeakers_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataSpeakers_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataSpeakers_new_speaker = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataSpeakers_new_name, i32 -1, ptr @.str.332, i32 8388616, ptr @.str.11, ptr @.str.333, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Speaker }, align 8
@.str.331 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@rna_BlendDataSpeakers_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataSpeakers_new_speaker, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.331 }, align 8
@.str.332 = private unnamed_addr constant [8 x i8] c"speaker\00", align 1
@.str.333 = private unnamed_addr constant [22 x i8] c"New speaker datablock\00", align 1
@rna_BlendDataSpeakers_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataSpeakers_tag_func, ptr @rna_BlendDataSpeakers_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataSpeakers_remove_speaker, ptr @rna_BlendDataSpeakers_remove_speaker } }, ptr @.str.129, i32 16, ptr @.str.336, ptr @BlendDataSpeakers_remove_call, ptr null }, align 8
@.str.334 = private unnamed_addr constant [39 x i8] c"Add a new speaker to the main database\00", align 1
@rna_BlendDataSpeakers_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataSpeakers_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataSpeakers_new_name, ptr @rna_BlendDataSpeakers_new_speaker } }, ptr @.str.126, i32 0, ptr @.str.334, ptr @BlendDataSpeakers_new_call, ptr @rna_BlendDataSpeakers_new_speaker }, align 8
@.str.335 = private unnamed_addr constant [18 x i8] c"Speaker to remove\00", align 1
@rna_BlendDataSpeakers_remove_speaker = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.332, i32 264196, ptr @.str.11, ptr @.str.335, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Speaker }, align 8
@rna_BlendDataSpeakers_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataSpeakers_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataSpeakers_tag_value, ptr @rna_BlendDataSpeakers_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataSpeakers_tag_call, ptr null }, align 8
@.str.336 = private unnamed_addr constant [44 x i8] c"Remove a speaker from the current blendfile\00", align 1
@rna_BlendDataSpeakers_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.337 = private unnamed_addr constant [18 x i8] c"BlendDataSpeakers\00", align 1
@.str.338 = private unnamed_addr constant [14 x i8] c"Main Speakers\00", align 1
@.str.339 = private unnamed_addr constant [23 x i8] c"Collection of speakers\00", align 1
@rna_BlendDataSounds_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataSounds_is_updated, ptr @rna_BlendDataSounds_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataSounds_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataSounds_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataSounds_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataSounds_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataSounds_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataSounds_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataSounds_tag_value, ptr @rna_BlendDataSounds_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataSounds_tag_call, ptr null }, align 8
@.str.340 = private unnamed_addr constant [16 x i8] c"BlendDataSounds\00", align 1
@.str.341 = private unnamed_addr constant [12 x i8] c"Main Sounds\00", align 1
@.str.342 = private unnamed_addr constant [21 x i8] c"Collection of sounds\00", align 1
@rna_BlendDataArmatures_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataArmatures_is_updated, ptr @rna_BlendDataArmatures_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataArmatures_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataArmatures_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataArmatures_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataArmatures_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataArmatures_new_armature = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataArmatures_new_name, i32 -1, ptr @.str.344, i32 8388616, ptr @.str.11, ptr @.str.345, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Armature }, align 8
@.str.343 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@rna_BlendDataArmatures_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataArmatures_new_armature, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.343 }, align 8
@.str.344 = private unnamed_addr constant [9 x i8] c"armature\00", align 1
@.str.345 = private unnamed_addr constant [23 x i8] c"New armature datablock\00", align 1
@rna_BlendDataArmatures_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataArmatures_tag_func, ptr @rna_BlendDataArmatures_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataArmatures_remove_armature, ptr @rna_BlendDataArmatures_remove_armature } }, ptr @.str.129, i32 16, ptr @.str.348, ptr @BlendDataArmatures_remove_call, ptr null }, align 8
@.str.346 = private unnamed_addr constant [40 x i8] c"Add a new armature to the main database\00", align 1
@rna_BlendDataArmatures_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataArmatures_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataArmatures_new_name, ptr @rna_BlendDataArmatures_new_armature } }, ptr @.str.126, i32 0, ptr @.str.346, ptr @BlendDataArmatures_new_call, ptr @rna_BlendDataArmatures_new_armature }, align 8
@.str.347 = private unnamed_addr constant [19 x i8] c"Armature to remove\00", align 1
@rna_BlendDataArmatures_remove_armature = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.344, i32 264196, ptr @.str.11, ptr @.str.347, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Armature }, align 8
@rna_BlendDataArmatures_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataArmatures_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataArmatures_tag_value, ptr @rna_BlendDataArmatures_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataArmatures_tag_call, ptr null }, align 8
@.str.348 = private unnamed_addr constant [45 x i8] c"Remove a armature from the current blendfile\00", align 1
@rna_BlendDataArmatures_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.349 = private unnamed_addr constant [19 x i8] c"BlendDataArmatures\00", align 1
@.str.350 = private unnamed_addr constant [15 x i8] c"Main Armatures\00", align 1
@.str.351 = private unnamed_addr constant [24 x i8] c"Collection of armatures\00", align 1
@rna_BlendDataActions_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataActions_is_updated, ptr @rna_BlendDataActions_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataActions_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataActions_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataActions_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataActions_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataActions_new_action = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataActions_new_name, i32 -1, ptr @.str.353, i32 8388616, ptr @.str.11, ptr @.str.354, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Action }, align 8
@.str.352 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@rna_BlendDataActions_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataActions_new_action, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.352 }, align 8
@.str.353 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.354 = private unnamed_addr constant [21 x i8] c"New action datablock\00", align 1
@rna_BlendDataActions_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataActions_tag_func, ptr @rna_BlendDataActions_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataActions_remove_action, ptr @rna_BlendDataActions_remove_action } }, ptr @.str.129, i32 16, ptr @.str.357, ptr @BlendDataActions_remove_call, ptr null }, align 8
@.str.355 = private unnamed_addr constant [38 x i8] c"Add a new action to the main database\00", align 1
@rna_BlendDataActions_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataActions_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataActions_new_name, ptr @rna_BlendDataActions_new_action } }, ptr @.str.126, i32 0, ptr @.str.355, ptr @BlendDataActions_new_call, ptr @rna_BlendDataActions_new_action }, align 8
@.str.356 = private unnamed_addr constant [17 x i8] c"Action to remove\00", align 1
@rna_BlendDataActions_remove_action = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.353, i32 264196, ptr @.str.11, ptr @.str.356, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Action }, align 8
@rna_BlendDataActions_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataActions_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataActions_tag_value, ptr @rna_BlendDataActions_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataActions_tag_call, ptr null }, align 8
@.str.357 = private unnamed_addr constant [43 x i8] c"Remove a action from the current blendfile\00", align 1
@rna_BlendDataActions_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.358 = private unnamed_addr constant [17 x i8] c"BlendDataActions\00", align 1
@.str.359 = private unnamed_addr constant [13 x i8] c"Main Actions\00", align 1
@.str.360 = private unnamed_addr constant [22 x i8] c"Collection of actions\00", align 1
@rna_BlendDataParticles_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataParticles_is_updated, ptr @rna_BlendDataParticles_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataParticles_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataParticles_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataParticles_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataParticles_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataParticles_new_particle = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataParticles_new_name, i32 -1, ptr @.str.362, i32 8388616, ptr @.str.11, ptr @.str.363, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ParticleSettings }, align 8
@.str.361 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@rna_BlendDataParticles_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataParticles_new_particle, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.361 }, align 8
@.str.362 = private unnamed_addr constant [9 x i8] c"particle\00", align 1
@.str.363 = private unnamed_addr constant [32 x i8] c"New particle settings datablock\00", align 1
@rna_BlendDataParticles_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataParticles_tag_func, ptr @rna_BlendDataParticles_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataParticles_remove_particle, ptr @rna_BlendDataParticles_remove_particle } }, ptr @.str.129, i32 16, ptr @.str.366, ptr @BlendDataParticles_remove_call, ptr null }, align 8
@.str.364 = private unnamed_addr constant [58 x i8] c"Add a new particle settings instance to the main database\00", align 1
@rna_BlendDataParticles_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataParticles_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataParticles_new_name, ptr @rna_BlendDataParticles_new_particle } }, ptr @.str.126, i32 0, ptr @.str.364, ptr @BlendDataParticles_new_call, ptr @rna_BlendDataParticles_new_particle }, align 8
@.str.365 = private unnamed_addr constant [28 x i8] c"Particle Settings to remove\00", align 1
@rna_BlendDataParticles_remove_particle = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.362, i32 264196, ptr @.str.11, ptr @.str.365, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ParticleSettings }, align 8
@rna_BlendDataParticles_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataParticles_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataParticles_tag_value, ptr @rna_BlendDataParticles_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataParticles_tag_call, ptr null }, align 8
@.str.366 = private unnamed_addr constant [63 x i8] c"Remove a particle settings instance from the current blendfile\00", align 1
@rna_BlendDataParticles_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.367 = private unnamed_addr constant [19 x i8] c"BlendDataParticles\00", align 1
@.str.368 = private unnamed_addr constant [23 x i8] c"Main Particle Settings\00", align 1
@.str.369 = private unnamed_addr constant [32 x i8] c"Collection of particle settings\00", align 1
@rna_BlendDataGreasePencils_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataGreasePencils_is_updated, ptr @rna_BlendDataGreasePencils_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataGreasePencils_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataGreasePencils_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataGreasePencils_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataGreasePencils_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataGreasePencils_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataGreasePencils_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataGreasePencils_remove_func, ptr @rna_BlendDataGreasePencils_tag_func, ptr null, %struct.ListBase { ptr @rna_BlendDataGreasePencils_new_name, ptr @rna_BlendDataGreasePencils_new_grease_pencil } }, ptr @.str.126, i32 1, ptr @.str.126, ptr @BlendDataGreasePencils_new_call, ptr @rna_BlendDataGreasePencils_new_grease_pencil }, align 8
@rna_BlendDataGreasePencils_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataGreasePencils_new_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataGreasePencils_tag_value, ptr @rna_BlendDataGreasePencils_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataGreasePencils_tag_call, ptr null }, align 8
@rna_BlendDataGreasePencils_new_grease_pencil = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataGreasePencils_new_name, i32 -1, ptr @.str.105, i32 8388616, ptr @.str.11, ptr @.str.371, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GreasePencil }, align 8
@.str.370 = private unnamed_addr constant [13 x i8] c"GreasePencil\00", align 1
@rna_BlendDataGreasePencils_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataGreasePencils_new_grease_pencil, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.370 }, align 8
@.str.371 = private unnamed_addr constant [28 x i8] c"New grease pencil datablock\00", align 1
@rna_BlendDataGreasePencils_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataGreasePencils_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataGreasePencils_remove_grease_pencil, ptr @rna_BlendDataGreasePencils_remove_grease_pencil } }, ptr @.str.129, i32 16, ptr @.str.373, ptr @BlendDataGreasePencils_remove_call, ptr null }, align 8
@.str.372 = private unnamed_addr constant [24 x i8] c"Grease Pencil to remove\00", align 1
@rna_BlendDataGreasePencils_remove_grease_pencil = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.105, i32 264196, ptr @.str.11, ptr @.str.372, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GreasePencil }, align 8
@.str.373 = private unnamed_addr constant [59 x i8] c"Remove a grease pencil instance from the current blendfile\00", align 1
@.str.374 = private unnamed_addr constant [23 x i8] c"BlendDataGreasePencils\00", align 1
@.str.375 = private unnamed_addr constant [20 x i8] c"Main Grease Pencils\00", align 1
@.str.376 = private unnamed_addr constant [29 x i8] c"Collection of grease pencils\00", align 1
@rna_BlendDataMovieClips_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMovieClips_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMovieClips_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataMovieClips_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataMovieClips_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMovieClips_load_func, ptr @rna_BlendDataMovieClips_tag_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMovieClips_remove_clip, ptr @rna_BlendDataMovieClips_remove_clip } }, ptr @.str.129, i32 0, ptr @.str.379, ptr @BlendDataMovieClips_remove_call, ptr null }, align 8
@rna_BlendDataMovieClips_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMovieClips_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMovieClips_tag_value, ptr @rna_BlendDataMovieClips_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataMovieClips_tag_call, ptr null }, align 8
@.str.377 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.378 = private unnamed_addr constant [21 x i8] c"Movie clip to remove\00", align 1
@rna_BlendDataMovieClips_remove_clip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.377, i32 264196, ptr @.str.11, ptr @.str.378, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@rna_BlendDataMovieClips_load_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataMovieClips_remove_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMovieClips_load_filepath, ptr @rna_BlendDataMovieClips_load_clip } }, ptr @.str.237, i32 16, ptr @.str.381, ptr @BlendDataMovieClips_load_call, ptr @rna_BlendDataMovieClips_load_clip }, align 8
@.str.379 = private unnamed_addr constant [48 x i8] c"Remove a movie clip from the current blendfile.\00", align 1
@rna_BlendDataMovieClips_load_clip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMovieClips_load_filepath, i32 -1, ptr @.str.377, i32 8388616, ptr @.str.11, ptr @.str.380, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@rna_BlendDataMovieClips_load_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMovieClips_load_clip, ptr null, i32 -1, ptr @.str.8, i32 262149, ptr @.str.11, ptr @.str.322, i32 0, ptr @.str.4, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1024, ptr @.str.323 }, align 8
@.str.380 = private unnamed_addr constant [25 x i8] c"New movie clip datablock\00", align 1
@.str.381 = private unnamed_addr constant [54 x i8] c"Add a new movie clip to the main database from a file\00", align 1
@.str.382 = private unnamed_addr constant [20 x i8] c"BlendDataMovieClips\00", align 1
@.str.383 = private unnamed_addr constant [17 x i8] c"Main Movie Clips\00", align 1
@.str.384 = private unnamed_addr constant [26 x i8] c"Collection of movie clips\00", align 1
@rna_BlendDataMasks_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMasks_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataMasks_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataMasks_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataMasks_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMasks_remove_func, ptr @rna_BlendDataMasks_tag_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMasks_new_name, ptr @rna_BlendDataMasks_new_mask } }, ptr @.str.126, i32 0, ptr @.str.389, ptr @BlendDataMasks_new_call, ptr @rna_BlendDataMasks_new_mask }, align 8
@rna_BlendDataMasks_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataMasks_new_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataMasks_tag_value, ptr @rna_BlendDataMasks_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataMasks_tag_call, ptr null }, align 8
@rna_BlendDataMasks_new_mask = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataMasks_new_name, i32 -1, ptr @.str.387, i32 8388616, ptr @.str.11, ptr @.str.388, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mask }, align 8
@.str.385 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.386 = private unnamed_addr constant [27 x i8] c"Name of new mask datablock\00", align 1
@rna_BlendDataMasks_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataMasks_new_mask, ptr null, i32 -1, ptr @.str.121, i32 262145, ptr @.str.385, ptr @.str.386, i32 0, ptr @.str.4, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 64, ptr @.str.11 }, align 8
@.str.387 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.388 = private unnamed_addr constant [19 x i8] c"New mask datablock\00", align 1
@rna_BlendDataMasks_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataMasks_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataMasks_remove_mask, ptr @rna_BlendDataMasks_remove_mask } }, ptr @.str.129, i32 0, ptr @.str.391, ptr @BlendDataMasks_remove_call, ptr null }, align 8
@.str.389 = private unnamed_addr constant [54 x i8] c"Add a new mask with a given name to the main database\00", align 1
@.str.390 = private unnamed_addr constant [15 x i8] c"Mask to remove\00", align 1
@rna_BlendDataMasks_remove_mask = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.387, i32 264196, ptr @.str.11, ptr @.str.390, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mask }, align 8
@.str.391 = private unnamed_addr constant [43 x i8] c"Remove a masks from the current blendfile.\00", align 1
@.str.392 = private unnamed_addr constant [15 x i8] c"BlendDataMasks\00", align 1
@.str.393 = private unnamed_addr constant [11 x i8] c"Main Masks\00", align 1
@.str.394 = private unnamed_addr constant [20 x i8] c"Collection of masks\00", align 1
@rna_BlendDataLineStyles_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLineStyles_is_updated, ptr @rna_BlendDataLineStyles_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLineStyles_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BlendDataLineStyles_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataLineStyles_rna_type, i32 -1, ptr @.str.120, i32 2, ptr @.str.120, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BlendDataLineStyles_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataLineStyles_tag_value = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.131, i32 7, ptr @.str.132, ptr @.str.11, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BlendDataLineStyles_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataLineStyles_remove_func, ptr @rna_BlendDataLineStyles_tag_func, ptr null, %struct.ListBase { ptr @rna_BlendDataLineStyles_new_name, ptr @rna_BlendDataLineStyles_new_linestyle } }, ptr @.str.126, i32 0, ptr @.str.398, ptr @BlendDataLineStyles_new_call, ptr @rna_BlendDataLineStyles_new_linestyle }, align 8
@rna_BlendDataLineStyles_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BlendDataLineStyles_new_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BlendDataLineStyles_tag_value, ptr @rna_BlendDataLineStyles_tag_value } }, ptr @.str.133, i32 0, ptr @.str.133, ptr @BlendDataLineStyles_tag_call, ptr null }, align 8
@rna_BlendDataLineStyles_new_linestyle = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BlendDataLineStyles_new_name, i32 -1, ptr @.str.396, i32 8388616, ptr @.str.11, ptr @.str.397, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FreestyleLineStyle }, align 8
@.str.395 = private unnamed_addr constant [19 x i8] c"FreestyleLineStyle\00", align 1
@rna_BlendDataLineStyles_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BlendDataLineStyles_new_linestyle, ptr null, i32 -1, ptr @.str.121, i32 262149, ptr @.str.11, ptr @.str.122, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.395 }, align 8
@.str.396 = private unnamed_addr constant [10 x i8] c"linestyle\00", align 1
@.str.397 = private unnamed_addr constant [25 x i8] c"New line style datablock\00", align 1
@rna_BlendDataLineStyles_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BlendDataLineStyles_new_func, ptr null, %struct.ListBase { ptr @rna_BlendDataLineStyles_remove_linestyle, ptr @rna_BlendDataLineStyles_remove_linestyle } }, ptr @.str.129, i32 16, ptr @.str.400, ptr @BlendDataLineStyles_remove_call, ptr null }, align 8
@.str.398 = private unnamed_addr constant [51 x i8] c"Add a new line style instance to the main database\00", align 1
@.str.399 = private unnamed_addr constant [21 x i8] c"Line style to remove\00", align 1
@rna_BlendDataLineStyles_remove_linestyle = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.396, i32 8388612, ptr @.str.11, ptr @.str.399, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FreestyleLineStyle }, align 8
@.str.400 = private unnamed_addr constant [56 x i8] c"Remove a line style instance from the current blendfile\00", align 1
@.str.401 = private unnamed_addr constant [20 x i8] c"BlendDataLineStyles\00", align 1
@.str.402 = private unnamed_addr constant [17 x i8] c"Main Line Styles\00", align 1
@.str.403 = private unnamed_addr constant [26 x i8] c"Collection of line styles\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.404 = private unnamed_addr constant [57 x i8] c"Camera '%s' must have zero users to be removed, found %d\00", align 1
@.str.405 = private unnamed_addr constant [42 x i8] c"Scene '%s' is the last, cannot be removed\00", align 1
@id_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.406 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.407 = private unnamed_addr constant [40 x i8] c"ID type '%s' is not valid for an object\00", align 1
@.str.408 = private unnamed_addr constant [57 x i8] c"Object '%s' must have zero users to be removed, found %d\00", align 1
@.str.409 = private unnamed_addr constant [59 x i8] c"Material '%s' must have zero users to be removed, found %d\00", align 1
@.str.410 = private unnamed_addr constant [60 x i8] c"Node tree '%s' must have zero users to be removed, found %d\00", align 1
@.str.411 = private unnamed_addr constant [55 x i8] c"Mesh '%s' must have zero users to be removed, found %d\00", align 1
@.str.412 = private unnamed_addr constant [55 x i8] c"Lamp '%s' must have zero users to be removed, found %d\00", align 1
@__const.rna_Main_images_new.color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@.str.413 = private unnamed_addr constant [21 x i8] c"Cannot read '%s': %s\00", align 1
@.str.414 = private unnamed_addr constant [25 x i8] c"unsupported image format\00", align 1
@.str.415 = private unnamed_addr constant [56 x i8] c"Image '%s' must have zero users to be removed, found %d\00", align 1
@.str.416 = private unnamed_addr constant [58 x i8] c"Lattice '%s' must have zero users to be removed, found %d\00", align 1
@.str.417 = private unnamed_addr constant [56 x i8] c"Curve '%s' must have zero users to be removed, found %d\00", align 1
@.str.418 = private unnamed_addr constant [59 x i8] c"Metaball '%s' must have zero users to be removed, found %d\00", align 1
@.str.419 = private unnamed_addr constant [24 x i8] c"unsupported font format\00", align 1
@.str.420 = private unnamed_addr constant [55 x i8] c"Font '%s' must have zero users to be removed, found %d\00", align 1
@.str.421 = private unnamed_addr constant [58 x i8] c"Texture '%s' must have zero users to be removed, found %d\00", align 1
@.str.422 = private unnamed_addr constant [56 x i8] c"Brush '%s' must have zero users to be removed, found %d\00", align 1
@.str.423 = private unnamed_addr constant [56 x i8] c"World '%s' must have zero users to be removed, found %d\00", align 1
@.str.424 = private unnamed_addr constant [20 x i8] c"unable to load text\00", align 1
@.str.425 = private unnamed_addr constant [58 x i8] c"Speaker '%s' must have zero users to be removed, found %d\00", align 1
@.str.426 = private unnamed_addr constant [59 x i8] c"Armature '%s' must have zero users to be removed, found %d\00", align 1
@.str.427 = private unnamed_addr constant [57 x i8] c"Action '%s' must have zero users to be removed, found %d\00", align 1
@.str.428 = private unnamed_addr constant [68 x i8] c"Particle settings '%s' must have zero users to be removed, found %d\00", align 1
@.str.429 = private unnamed_addr constant [64 x i8] c"Grease pencil '%s' must have zero users to be removed, found %d\00", align 1
@.str.430 = private unnamed_addr constant [26 x i8] c"unable to load movie clip\00", align 1
@.str.431 = private unnamed_addr constant [61 x i8] c"Line style '%s' must have zero users to be removed, found %d\00", align 1
@.str.432 = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@.str.433 = private unnamed_addr constant [8 x i8] c"PREVIEW\00", align 1
@.str.434 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.435 = private unnamed_addr constant [32 x i8] c"Apply modifier preview settings\00", align 1
@.str.436 = private unnamed_addr constant [7 x i8] c"RENDER\00", align 1
@.str.437 = private unnamed_addr constant [7 x i8] c"Render\00", align 1
@.str.438 = private unnamed_addr constant [31 x i8] c"Apply modifier render settings\00", align 1
@.str.439 = private unnamed_addr constant [6 x i8] c"POINT\00", align 1
@.str.440 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.441 = private unnamed_addr constant [35 x i8] c"Omnidirectional point light source\00", align 1
@.str.442 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.443 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.444 = private unnamed_addr constant [45 x i8] c"Constant direction parallel ray light source\00", align 1
@.str.445 = private unnamed_addr constant [5 x i8] c"SPOT\00", align 1
@.str.446 = private unnamed_addr constant [5 x i8] c"Spot\00", align 1
@.str.447 = private unnamed_addr constant [30 x i8] c"Directional cone light source\00", align 1
@.str.448 = private unnamed_addr constant [5 x i8] c"HEMI\00", align 1
@.str.449 = private unnamed_addr constant [5 x i8] c"Hemi\00", align 1
@.str.450 = private unnamed_addr constant [33 x i8] c"180 degree constant light source\00", align 1
@.str.451 = private unnamed_addr constant [5 x i8] c"AREA\00", align 1
@.str.452 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.453 = private unnamed_addr constant [30 x i8] c"Directional area light source\00", align 1
@.str.454 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.455 = private unnamed_addr constant [8 x i8] c"SURFACE\00", align 1
@.str.456 = private unnamed_addr constant [8 x i8] c"Surface\00", align 1
@.str.457 = private unnamed_addr constant [5 x i8] c"FONT\00", align 1
@.str.458 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.459 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.460 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.461 = private unnamed_addr constant [6 x i8] c"BLEND\00", align 1
@.str.462 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.463 = private unnamed_addr constant [35 x i8] c"Procedural - create a ramp texture\00", align 1
@.str.464 = private unnamed_addr constant [7 x i8] c"CLOUDS\00", align 1
@.str.465 = private unnamed_addr constant [7 x i8] c"Clouds\00", align 1
@.str.466 = private unnamed_addr constant [55 x i8] c"Procedural - create a cloud-like fractal noise texture\00", align 1
@.str.467 = private unnamed_addr constant [16 x i8] c"DISTORTED_NOISE\00", align 1
@.str.468 = private unnamed_addr constant [16 x i8] c"Distorted Noise\00", align 1
@.str.469 = private unnamed_addr constant [61 x i8] c"Procedural - noise texture distorted by two noise algorithms\00", align 1
@.str.470 = private unnamed_addr constant [16 x i8] c"ENVIRONMENT_MAP\00", align 1
@.str.471 = private unnamed_addr constant [16 x i8] c"Environment Map\00", align 1
@.str.472 = private unnamed_addr constant [55 x i8] c"Create a render of the environment mapped to a texture\00", align 1
@.str.473 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.474 = private unnamed_addr constant [15 x i8] c"Image or Movie\00", align 1
@.str.475 = private unnamed_addr constant [50 x i8] c"Allow for images or movies to be used as textures\00", align 1
@.str.476 = private unnamed_addr constant [6 x i8] c"MAGIC\00", align 1
@.str.477 = private unnamed_addr constant [6 x i8] c"Magic\00", align 1
@.str.478 = private unnamed_addr constant [60 x i8] c"Procedural - color texture based on trigonometric functions\00", align 1
@.str.479 = private unnamed_addr constant [7 x i8] c"MARBLE\00", align 1
@.str.480 = private unnamed_addr constant [7 x i8] c"Marble\00", align 1
@.str.481 = private unnamed_addr constant [65 x i8] c"Procedural - marble-like noise texture with wave generated bands\00", align 1
@.str.482 = private unnamed_addr constant [9 x i8] c"MUSGRAVE\00", align 1
@.str.483 = private unnamed_addr constant [9 x i8] c"Musgrave\00", align 1
@.str.484 = private unnamed_addr constant [51 x i8] c"Procedural - highly flexible fractal noise texture\00", align 1
@.str.485 = private unnamed_addr constant [6 x i8] c"NOISE\00", align 1
@.str.486 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.487 = private unnamed_addr constant [97 x i8] c"Procedural - random noise, gives a different result every time, for every frame, for every pixel\00", align 1
@.str.488 = private unnamed_addr constant [6 x i8] c"OCEAN\00", align 1
@.str.489 = private unnamed_addr constant [6 x i8] c"Ocean\00", align 1
@.str.490 = private unnamed_addr constant [45 x i8] c"Use a texture generated by an Ocean modifier\00", align 1
@.str.491 = private unnamed_addr constant [14 x i8] c"POINT_DENSITY\00", align 1
@.str.492 = private unnamed_addr constant [14 x i8] c"Point Density\00", align 1
@.str.493 = private unnamed_addr constant [7 x i8] c"STUCCI\00", align 1
@.str.494 = private unnamed_addr constant [7 x i8] c"Stucci\00", align 1
@.str.495 = private unnamed_addr constant [44 x i8] c"Procedural - create a fractal noise texture\00", align 1
@.str.496 = private unnamed_addr constant [8 x i8] c"VORONOI\00", align 1
@.str.497 = private unnamed_addr constant [8 x i8] c"Voronoi\00", align 1
@.str.498 = private unnamed_addr constant [61 x i8] c"Procedural - create cell-like patterns based on Worley noise\00", align 1
@.str.499 = private unnamed_addr constant [11 x i8] c"VOXEL_DATA\00", align 1
@.str.500 = private unnamed_addr constant [11 x i8] c"Voxel Data\00", align 1
@.str.501 = private unnamed_addr constant [45 x i8] c"Create a 3D texture based on volumetric data\00", align 1
@.str.502 = private unnamed_addr constant [5 x i8] c"WOOD\00", align 1
@.str.503 = private unnamed_addr constant [5 x i8] c"Wood\00", align 1
@.str.504 = private unnamed_addr constant [64 x i8] c"Procedural - wave generated bands or rings, with optional noise\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_Main_meshes_new_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !34
  %11 = add i16 %10, -1
  %12 = icmp ult i16 %11, 5
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str) #14
  br label %16

14:                                               ; preds = %8
  %15 = tail call ptr @BKE_mesh_new_from_object(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #14
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi ptr [ null, %13 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mesh_new_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !53 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendData_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Main_filepath_get(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BlendData_filepath_length(ptr nocapture noundef readonly %0) #5 {
  %2 = tail call fastcc i32 @rna_Main_filepath_length(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Main_filepath_length(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BlendData_is_dirty_get(ptr nocapture noundef readonly %0) #6 {
  %2 = tail call fastcc i32 @rna_Main_is_dirty_get(ptr noundef %0) #16, !range !57
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Main_is_dirty_get(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 4, !tbaa !61
  %10 = icmp eq i16 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi i32 [ %11, %7 ], [ 1, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BlendData_is_saved_get(ptr nocapture readnone %0) #6 {
  %2 = tail call fastcc i32 @rna_Main_is_saved_get() #16
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Main_is_saved_get() unnamed_addr #7 !PGOFuncName !64 {
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !65
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BlendData_use_autopack_get(ptr nocapture readnone %0) #6 {
  %2 = tail call fastcc i32 @rna_Main_use_autopack_get() #16
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Main_use_autopack_get() unnamed_addr #7 !PGOFuncName !67 {
  %1 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !68
  %2 = and i32 %1, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BlendData_use_autopack_set(ptr nocapture readnone %0, i32 noundef %1) #8 {
  tail call fastcc void @rna_Main_use_autopack_set(i32 noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Main_use_autopack_set(i32 noundef %0) unnamed_addr #9 !PGOFuncName !69 {
  %2 = icmp ne i32 %0, 0
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %4 = and i32 %3, -2
  %5 = zext i1 %2 to i32
  %6 = or disjoint i32 %4, %5
  store i32 %6, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BlendData_version_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  tail call fastcc void @rna_Main_version_get(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Main_version_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !71
  %7 = sdiv i16 %6, 100
  %8 = sext i16 %7 to i32
  store i32 %8, ptr %1, align 4, !tbaa !72
  %9 = srem i16 %6, 100
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %10, ptr %11, align 4, !tbaa !72
  %12 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 4
  %13 = load i16, ptr %12, align 2, !tbaa !73
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %14, ptr %15, align 4, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_cameras_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_cameras, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_camera_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_cameras_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_camera_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 22
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_cameras_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !75 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Camera, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_cameras_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_cameras_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_cameras_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_scenes_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_scenes, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_scene_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_scenes_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_scene_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 11
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_scenes_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !77 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Scene, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_scenes_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_scenes_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_scenes_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_objects_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_objects, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_object_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_objects_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_object_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_objects_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !79 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_objects_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_objects_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_objects_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_materials_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_materials, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_mat_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_materials_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_mat_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 17
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_materials_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !81 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Material, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_materials_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_materials_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_materials_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_node_groups_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_node_groups, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_nodetree_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_node_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_nodetree_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 35
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_node_groups_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !83 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_NodeTree, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_node_groups_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_node_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_node_groups_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_meshes_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_meshes, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_mesh_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_meshes_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_mesh_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 14
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_meshes_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !85 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Mesh, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_meshes_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_meshes_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_meshes_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_lamps_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_lamps, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_lamp_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_lamps_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_lamp_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !86 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 21
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_lamps_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !87 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Lamp, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_lamps_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_lamps_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_lamps_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_libraries_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_libraries, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_library_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_libraries_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_library_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 12
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_libraries_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !89 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Library, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_libraries_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_libraries_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_libraries_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_screens_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_screens, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_screen_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_screens_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_screen_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 26
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_screens_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !91 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Screen, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_screens_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_screens_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_screens_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_window_managers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_window_managers, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_wm_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_window_managers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_wm_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 40
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_window_managers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !93 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_WindowManager, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_window_managers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_window_managers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_window_managers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_images_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_images, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_image_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_images_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_image_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !94 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 19
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_images_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !95 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_images_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_images_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_images_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_lattices_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_lattices, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_latt_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_lattices_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_latt_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 20
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_lattices_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !97 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Lattice, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_lattices_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_lattices_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_lattices_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_curves_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_curves, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_curve_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_curves_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_curve_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 15
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_curves_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !99 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Curve, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_curves_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_curves_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_curves_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_metaballs_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_metaballs, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_mball_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_metaballs_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_mball_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 16
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_metaballs_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !101 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MetaBall, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_metaballs_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_metaballs_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_metaballs_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_fonts_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_fonts, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_font_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_fonts_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_font_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !102 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 28
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_fonts_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !103 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_VectorFont, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_fonts_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_fonts_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_fonts_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_textures_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_textures, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_tex_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_textures_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_tex_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !104 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 18
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_textures_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !105 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_textures_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_textures_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_textures_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_brushes_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_brushes, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_brush_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_brushes_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_brush_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !106 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 36
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_brushes_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !107 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Brush, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_brushes_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_brushes_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_brushes_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_worlds_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_worlds, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_world_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_worlds_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_world_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 25
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_worlds_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !109 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_World, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_worlds_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_worlds_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_worlds_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_groups_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_groups, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_group_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_group_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !110 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 32
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_groups_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !111 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_groups_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_groups_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_shape_keys_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_shape_keys, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_key_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_shape_keys_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_key_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !112 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 24
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_shape_keys_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !113 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Key, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_shape_keys_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_shape_keys_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_shape_keys_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_scripts_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_scripts, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_script_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_scripts_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_script_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !114 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 27
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_scripts_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !115 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_scripts_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_scripts_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_scripts_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_texts_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_texts, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_text_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_texts_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_text_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 29
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_texts_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !117 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Text, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_texts_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_texts_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_texts_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_speakers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_speakers, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_speaker_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_speakers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_speaker_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !118 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 30
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_speakers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !119 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Speaker, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_speakers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_speakers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_speakers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_sounds_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_sounds, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_sound_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_sounds_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_sound_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 31
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_sounds_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !121 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sound, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_sounds_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_sounds_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_sounds_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_armatures_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_armatures, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_armature_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_armatures_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_armature_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 33
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_armatures_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !123 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Armature, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_armatures_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_armatures_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_armatures_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_actions_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_actions, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_action_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_actions_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_action_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !124 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 34
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_actions_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !125 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Action, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_actions_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_actions_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_actions_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_particles_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_particles, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_particle_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_particles_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_particle_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !126 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 37
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_particles_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !127 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ParticleSettings, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_particles_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_particles_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_particles_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_grease_pencil_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_grease_pencil, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_gpencil_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_grease_pencil_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_gpencil_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !128 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 41
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_grease_pencil_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !129 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GreasePencil, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_grease_pencil_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_grease_pencil_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_grease_pencil_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_movieclips_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_movieclips, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_movieclips_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_movieclips_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_movieclips_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !130 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 42
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_movieclips_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !131 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClip, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_movieclips_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_movieclips_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_movieclips_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_masks_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_masks, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_masks_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_masks_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_masks_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !132 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 43
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_masks_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !133 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Mask, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_masks_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_masks_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_masks_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_linestyles_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendData_linestyles, ptr %4, align 8, !tbaa !48
  tail call fastcc void @rna_Main_linestyle_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendData_linestyles_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_linestyle_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !134 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 44
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendData_linestyles_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !135 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FreestyleLineStyle, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_linestyles_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendData_linestyles_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendData_linestyles_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataCameras_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataCameras_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataCameras_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !136 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataCameras_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataCameras_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataCameras_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_cameras_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_cameras_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 16707) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataScenes_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataScenes_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataScenes_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !138 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataScenes_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataScenes_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataScenes_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_scenes_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_scenes_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 17235) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataObjects_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataObjects_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataObjects_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !140 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataObjects_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataObjects_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataObjects_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_objects_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_objects_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !141 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 16975) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataMaterials_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataMaterials_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataMaterials_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !142 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataMaterials_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataMaterials_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataMaterials_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_materials_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_materials_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 16717) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataNodeTrees_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataNodeTrees_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataNodeTrees_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !144 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataNodeTrees_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataNodeTrees_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataNodeTrees_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_node_groups_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_node_groups_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !145 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 21582) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataMeshes_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataMeshes_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataMeshes_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !146 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataMeshes_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataMeshes_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataMeshes_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_meshes_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_meshes_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 17741) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataLamps_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataLamps_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataLamps_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !148 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataLamps_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataLamps_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataLamps_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_lamps_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_lamps_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 16716) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLibraries_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataLibraries_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataLibraries_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataLibraries_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !150 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLibraries_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataLibraries_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLibraries_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataLibraries_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLibraries_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataLibraries_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_libraries_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_libraries_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !151 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 18764) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScreens_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataScreens_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataScreens_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataScreens_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !152 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScreens_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataScreens_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScreens_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataScreens_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScreens_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataScreens_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_screens_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_screens_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !153 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 21075) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWindowManagers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataWindowManagers_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataWindowManagers_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataWindowManagers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !154 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWindowManagers_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataWindowManagers_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWindowManagers_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataWindowManagers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWindowManagers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataWindowManagers_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_window_managers_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_window_managers_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !155 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 19799) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataImages_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataImages_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataImages_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !156 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataImages_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataImages_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataImages_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_images_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_images_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !157 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 19785) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataLattices_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataLattices_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataLattices_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !158 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataLattices_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataLattices_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataLattices_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_lattices_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_lattices_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !159 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 21580) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataCurves_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataCurves_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataCurves_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !160 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataCurves_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataCurves_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataCurves_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_curves_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_curves_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !161 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 21827) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataMetaBalls_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataMetaBalls_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataMetaBalls_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !162 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataMetaBalls_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataMetaBalls_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataMetaBalls_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_metaballs_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_metaballs_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !163 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 16973) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataFonts_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataFonts_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataFonts_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !164 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataFonts_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataFonts_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataFonts_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_fonts_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_fonts_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 18006) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataTextures_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataTextures_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataTextures_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !166 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataTextures_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataTextures_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataTextures_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_textures_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_textures_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !167 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 17748) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataBrushes_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataBrushes_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataBrushes_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !168 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataBrushes_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataBrushes_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataBrushes_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_brushes_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_brushes_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !169 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 21058) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataWorlds_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataWorlds_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataWorlds_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !170 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataWorlds_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataWorlds_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataWorlds_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_worlds_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_worlds_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !171 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 20311) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataGroups_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataGroups_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataGroups_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !172 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataGroups_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataGroups_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataGroups_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_groups_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_groups_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !173 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 21063) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataTexts_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataTexts_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataTexts_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !174 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataTexts_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataTexts_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataTexts_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_texts_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_texts_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !175 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 22612) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataSpeakers_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataSpeakers_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataSpeakers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !176 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataSpeakers_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataSpeakers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataSpeakers_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_speakers_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_speakers_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !177 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 19283) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSounds_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataSounds_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataSounds_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataSounds_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !178 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSounds_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataSounds_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSounds_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataSounds_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSounds_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataSounds_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_sounds_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_sounds_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !179 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 20307) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataArmatures_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataArmatures_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataArmatures_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !180 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataArmatures_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataArmatures_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataArmatures_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_armatures_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_armatures_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !181 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 21057) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataActions_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataActions_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataActions_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !182 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataActions_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataActions_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataActions_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_actions_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_actions_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !183 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 17217) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataParticles_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataParticles_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataParticles_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !184 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataParticles_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataParticles_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataParticles_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_particles_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_particles_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !185 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 16720) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataGreasePencils_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataGreasePencils_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataGreasePencils_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !186 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataGreasePencils_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataGreasePencils_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataGreasePencils_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_gpencil_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_gpencil_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !187 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 17479) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataMovieClips_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataMovieClips_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataMovieClips_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !188 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataMovieClips_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataMovieClips_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataMasks_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataMasks_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataMasks_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !189 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataMasks_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataMasks_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BlendDataLineStyles_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BlendDataLineStyles_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BlendDataLineStyles_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !190 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BlendDataLineStyles_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataLineStyles_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlendDataLineStyles_is_updated_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Main_linestyle_is_updated_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Main_linestyle_is_updated_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !191 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %3, i16 noundef signext 21324) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataCameras_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_cameras_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_cameras_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !192 {
  %3 = tail call ptr @BKE_camera_add(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_cameras_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_cameras_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_cameras_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !195 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.404, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_cameras_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_cameras_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_cameras_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !198 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCameras_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_cameras_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataScenes_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_scenes_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Main_scenes_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !199 {
  %3 = tail call ptr @BKE_scene_add(ptr noundef %0, ptr noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_scenes_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_scenes_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_scenes_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !200 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !201
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 8, !tbaa !220
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %8, %4 ], [ %11, %10 ]
  %15 = tail call ptr @CTX_wm_screen(ptr noundef %1) #14
  %16 = getelementptr inbounds %struct.bScreen, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !221
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @ED_screen_set_scene(ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %14) #14
  br label %20

20:                                               ; preds = %19, %13
  tail call void @BKE_scene_unlink(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %14) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %23

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.405, ptr noundef nonnull %22) #14
  br label %23

23:                                               ; preds = %21, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_remove_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_scenes_remove(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_scenes_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_scenes_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !223 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScenes_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_scenes_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataObjects_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @rna_Main_objects_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_objects_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !224 {
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !225
  switch i16 %9, label %19 [
    i16 17741, label %28
    i16 21827, label %10
    i16 16973, label %13
    i16 16716, label %14
    i16 19283, label %15
    i16 16707, label %16
    i16 21580, label %17
    i16 21057, label %18
  ]

10:                                               ; preds = %7
  %11 = tail call signext i16 @BKE_curve_type_get(ptr noundef nonnull %3) #14
  %12 = sext i16 %11 to i32
  br label %28

13:                                               ; preds = %7
  br label %28

14:                                               ; preds = %7
  br label %28

15:                                               ; preds = %7
  br label %28

16:                                               ; preds = %7
  br label %28

17:                                               ; preds = %7
  br label %28

18:                                               ; preds = %7
  br label %28

19:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %20 = sext i16 %9 to i32
  %21 = call zeroext i8 @RNA_enum_id_from_value(ptr noundef nonnull @id_type_items, i32 noundef %20, ptr noundef nonnull %5) #14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 8, !tbaa !47
  br label %26

25:                                               ; preds = %19
  store ptr @.str.406, ptr %5, align 8, !tbaa !47
  br label %26

26:                                               ; preds = %23, %25
  %27 = phi ptr [ %24, %23 ], [ @.str.406, %25 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.407, ptr noundef %27) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %34

28:                                               ; preds = %7, %18, %17, %16, %15, %14, %13, %10
  %29 = phi i32 [ 25, %18 ], [ 22, %17 ], [ 11, %16 ], [ 12, %15 ], [ 10, %14 ], [ 5, %13 ], [ %12, %10 ], [ 1, %7 ]
  tail call void @id_us_plus(ptr noundef nonnull %3) #14
  br label %30

30:                                               ; preds = %28, %4
  %31 = phi i32 [ %29, %28 ], [ 0, %4 ]
  %32 = tail call ptr @BKE_object_add_only_object(ptr noundef %0, i32 noundef %31, ptr noundef %2) #14
  tail call void @id_us_min(ptr noundef %32) #14
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 19
  store ptr %3, ptr %33, align 8, !tbaa !226
  tail call void @test_object_materials(ptr noundef %0, ptr noundef %3) #14
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi ptr [ null, %26 ], [ %32, %30 ]
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_new_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds i8, ptr %7, i64 16
  %12 = tail call fastcc ptr @rna_Main_objects_new(ptr noundef %6, ptr noundef %1, ptr noundef %8, ptr noundef %10) #16
  store ptr %12, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_objects_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_objects_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !227 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_object_unlink(ptr noundef nonnull %5) #14
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.408, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_objects_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_objects_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_objects_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !228 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataObjects_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_objects_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataMaterials_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_materials_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_materials_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !229 {
  %3 = tail call ptr @BKE_material_add(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_materials_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_materials_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_materials_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !230 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.409, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_materials_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_materials_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_materials_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !231 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMaterials_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_materials_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataNodeTrees_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_Main_nodetree_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_nodetree_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !232 {
  %4 = tail call ptr @rna_node_tree_type_from_enum(i32 noundef %2) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bNodeTreeType, ptr %4, i64 0, i32 1
  %8 = tail call ptr @ntreeAddTree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #14
  tail call void @id_us_min(ptr noundef %8) #14
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc ptr @rna_Main_nodetree_new(ptr noundef %6, ptr noundef %8, i32 noundef %10) #16
  store ptr %12, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_nodetree_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_nodetree_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !233 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.410, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_nodetree_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_node_groups_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_node_groups_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !234 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataNodeTrees_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_node_groups_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataMeshes_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_meshes_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_meshes_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !235 {
  %3 = tail call ptr @BKE_mesh_add(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_meshes_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataMeshes_new_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @rna_Main_meshes_new_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #16
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_new_from_object_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds i8, ptr %7, i64 16
  %12 = load i32, ptr %11, align 4, !tbaa !72
  %13 = getelementptr inbounds i8, ptr %7, i64 20
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = getelementptr inbounds i8, ptr %7, i64 24
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = getelementptr inbounds i8, ptr %7, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !72
  %19 = getelementptr inbounds i8, ptr %7, i64 32
  %20 = tail call ptr @rna_Main_meshes_new_from_object(ptr noundef %6, ptr noundef %1, ptr noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #16
  store ptr %20, ptr %19, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_meshes_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_meshes_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !236 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.411, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_meshes_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_meshes_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_meshes_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !237 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMeshes_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_meshes_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataLamps_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_Main_lamps_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_lamps_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !238 {
  %4 = tail call ptr @BKE_lamp_add(ptr noundef %0, ptr noundef %1) #14
  %5 = trunc i32 %2 to i16
  %6 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 2
  store i16 %5, ptr %6, align 8, !tbaa !239
  tail call void @id_us_min(ptr noundef %4) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc ptr @rna_Main_lamps_new(ptr noundef %6, ptr noundef %8, i32 noundef %10) #16
  store ptr %12, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_lamps_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_lamps_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !241 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.412, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_lamps_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_lamps_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_lamps_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !242 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLamps_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_lamps_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLibraries_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_libraries_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_libraries_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !243 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 12
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLibraries_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_libraries_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScreens_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_screens_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_screens_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !244 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataScreens_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_screens_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWindowManagers_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_window_managers_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_window_managers_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !245 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWindowManagers_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_window_managers_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataImages_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @rna_Main_images_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_images_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !246 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.rna_Main_images_new.color, i64 16, i1 false)
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %8, i32 24, i32 32
  %10 = call ptr @BKE_image_add_generated(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef %1, i32 noundef %9, i32 noundef %5, i16 noundef signext 0, ptr noundef nonnull %7) #14
  call void @id_us_min(ptr noundef %10) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !72
  %13 = getelementptr inbounds i8, ptr %7, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = getelementptr inbounds i8, ptr %7, i64 20
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = getelementptr inbounds i8, ptr %7, i64 24
  %18 = tail call fastcc ptr @rna_Main_images_new(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #16
  store ptr %18, ptr %17, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataImages_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_Main_images_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Main_images_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !247 {
  %4 = tail call ptr @__errno_location() #18
  store i32 0, ptr %4, align 4, !tbaa !72
  %5 = tail call ptr @BKE_image_load(ptr noundef %0, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4, !tbaa !72
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @strerror(i32 noundef %8) #14
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %11, %10 ], [ @.str.414, %7 ]
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.413, ptr noundef %2, ptr noundef %13) #14
  br label %14

14:                                               ; preds = %12, %3
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_load_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_images_load(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_images_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_images_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !248 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.415, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_images_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_images_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_images_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !249 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataImages_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_images_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataLattices_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_lattices_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_lattices_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !250 {
  %3 = tail call ptr @BKE_lattice_add(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_lattices_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_lattices_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_lattices_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !251 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.416, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_lattices_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_lattices_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_lattices_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !252 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLattices_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_lattices_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataCurves_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_Main_curves_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_curves_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !253 {
  %4 = tail call ptr @BKE_curve_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  tail call void @id_us_min(ptr noundef %4) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc ptr @rna_Main_curves_new(ptr noundef %6, ptr noundef %8, i32 noundef %10) #16
  store ptr %12, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_curves_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_curves_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !254 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.417, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_curves_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_curves_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_curves_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !255 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataCurves_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_curves_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataMetaBalls_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_metaballs_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_metaballs_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !256 {
  %3 = tail call ptr @BKE_mball_add(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_metaballs_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_metaballs_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_metaballs_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !257 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.418, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_metaballs_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_metaballs_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_metaballs_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !258 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMetaBalls_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_metaballs_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataFonts_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_Main_fonts_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Main_fonts_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !259 {
  %4 = tail call ptr @__errno_location() #18
  store i32 0, ptr %4, align 4, !tbaa !72
  %5 = tail call ptr @BKE_vfont_load(ptr noundef %0, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4, !tbaa !72
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @strerror(i32 noundef %8) #14
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %11, %10 ], [ @.str.419, %7 ]
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.413, ptr noundef %2, ptr noundef %13) #14
  br label %14

14:                                               ; preds = %12, %3
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_load_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_fonts_load(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_fonts_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_fonts_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !260 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.420, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_fonts_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_fonts_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_fonts_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !261 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 28
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataFonts_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_fonts_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataTextures_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_Main_textures_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_textures_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !262 {
  %4 = tail call ptr @add_texture(ptr noundef %0, ptr noundef %1) #14
  tail call void @tex_set_type(ptr noundef %4, i32 noundef %2) #14
  tail call void @id_us_min(ptr noundef %4) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc ptr @rna_Main_textures_new(ptr noundef %6, ptr noundef %8, i32 noundef %10) #16
  store ptr %12, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_textures_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_textures_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !263 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.421, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_textures_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_textures_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_textures_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !264 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTextures_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_textures_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataBrushes_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_brushes_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_brushes_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !265 {
  %3 = tail call ptr @BKE_brush_add(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_brushes_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_brushes_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_brushes_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !266 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.422, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_brushes_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_brushes_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_brushes_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !267 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataBrushes_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_brushes_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataWorlds_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_worlds_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_worlds_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !268 {
  %3 = tail call ptr @add_world(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_worlds_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_worlds_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_worlds_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !269 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.423, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_worlds_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_worlds_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_worlds_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !270 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataWorlds_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_worlds_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataGroups_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_groups_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Main_groups_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !271 {
  %3 = tail call ptr @BKE_group_add(ptr noundef %0, ptr noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_groups_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_remove(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_groups_remove(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_groups_remove(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !272 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  tail call void @BKE_group_unlink(ptr noundef %4) #14
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef %4) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_remove_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_groups_remove(ptr noundef %6, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_groups_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_groups_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !273 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGroups_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_groups_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataTexts_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_texts_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Main_texts_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !274 {
  %3 = tail call ptr @BKE_text_add(ptr noundef %0, ptr noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_texts_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_remove(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_texts_remove(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_texts_remove(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !275 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  tail call void @BKE_text_unlink(ptr noundef %0, ptr noundef %4) #14
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef %4) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_remove_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_texts_remove(ptr noundef %6, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataTexts_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @rna_Main_texts_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Main_texts_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !276 {
  %5 = tail call ptr @__errno_location() #18
  store i32 0, ptr %5, align 4, !tbaa !72
  %6 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %7 = trunc i32 %3 to i8
  %8 = tail call ptr @BKE_text_load_ex(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, i8 noundef zeroext %7) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4, !tbaa !72
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @strerror(i32 noundef %11) #14
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %14, %13 ], [ @.str.424, %10 ]
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.413, ptr noundef %2, ptr noundef %16) #14
  br label %17

17:                                               ; preds = %15, %4
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_load_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc ptr @rna_Main_texts_load(ptr noundef %6, ptr noundef %1, ptr noundef %8, i32 noundef %10) #16
  store ptr %12, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_texts_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_texts_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !277 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 29
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataTexts_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_texts_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataSpeakers_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_speakers_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_speakers_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !278 {
  %3 = tail call ptr @BKE_speaker_add(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_speakers_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_speakers_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_speakers_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !279 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.425, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_speakers_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_speakers_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_speakers_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !280 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSpeakers_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_speakers_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSounds_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_sounds_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_sounds_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !281 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 31
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataSounds_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_sounds_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataArmatures_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_armatures_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_armatures_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !282 {
  %3 = tail call ptr @BKE_armature_add(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_armatures_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_armatures_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_armatures_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !283 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.426, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_armatures_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_armatures_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_armatures_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !284 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataArmatures_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_armatures_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataActions_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_actions_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_actions_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !285 {
  %3 = tail call ptr @add_empty_action(ptr noundef %0, ptr noundef %1) #14
  tail call void @id_us_min(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !286
  %6 = and i16 %5, -513
  store i16 %6, ptr %4, align 2, !tbaa !286
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_actions_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_actions_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_actions_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !288 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.427, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_actions_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_actions_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_actions_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !289 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataActions_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_actions_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataParticles_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_particles_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_particles_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !290 {
  %3 = tail call ptr @psys_new_settings(ptr noundef %1, ptr noundef %0) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_particles_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_particles_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_particles_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !291 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.428, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_particles_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_particles_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_particles_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !292 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataParticles_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_particles_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_gpencil_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_gpencil_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !293 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 41
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_gpencil_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataGreasePencils_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @gpencil_data_addnew(ptr noundef %0) #14
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gpencil_data_addnew(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !193
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = tail call ptr @gpencil_data_addnew(ptr noundef %6) #14
  store ptr %8, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_grease_pencil_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_grease_pencil_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !294 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !196
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !197
  %10 = lshr i16 %9, 9
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  %13 = sub nsw i32 %7, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @BKE_gpencil_free(ptr noundef nonnull %5) #14
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.429, ptr noundef nonnull %17, i32 noundef %13) #14
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataGreasePencils_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_grease_pencil_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_movieclips_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_movieclips_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !295 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_movieclips_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_remove(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_movieclips_remove(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_movieclips_remove(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !296 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  tail call void @BKE_movieclip_unlink(ptr noundef %0, ptr noundef %4) #14
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef %4) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_remove_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_movieclips_remove(ptr noundef %6, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataMovieClips_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_Main_movieclip_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Main_movieclip_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !297 {
  %4 = tail call ptr @__errno_location() #18
  store i32 0, ptr %4, align 4, !tbaa !72
  %5 = tail call ptr @BKE_movieclip_file_add(ptr noundef %0, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4, !tbaa !72
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @strerror(i32 noundef %8) #14
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %11, %10 ], [ @.str.430, %7 ]
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.413, ptr noundef %2, ptr noundef %13) #14
  br label %14

14:                                               ; preds = %12, %3
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMovieClips_load_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_movieclip_load(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_masks_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_masks_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !298 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_masks_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlendDataMasks_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_mask_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Main_mask_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !299 {
  %3 = tail call ptr @BKE_mask_new(ptr noundef %0, ptr noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_mask_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_remove(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_masks_remove(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_masks_remove(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !300 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  tail call void @BKE_mask_free(ptr noundef %0, ptr noundef %4) #14
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef %4) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataMasks_remove_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_masks_remove(ptr noundef %6, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_linestyle_tag(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_linestyle_tag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !301 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %4 = trunc i32 %1 to i8
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_tag_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load i32, ptr %7, align 4, !tbaa !72
  tail call fastcc void @rna_Main_linestyle_tag(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlendDataLineStyles_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Main_linestyles_new(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_Main_linestyles_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !302 {
  %3 = tail call ptr @BKE_linestyle_new(ptr noundef %1, ptr noundef %0) #14
  tail call void @id_us_min(ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Main_linestyles_new(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Main_linestyles_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Main_linestyles_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !303 {
  %4 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !196
  %6 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !197
  %8 = lshr i16 %7, 9
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  %11 = sub nsw i32 %5, %10
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %2) #14
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.431, ptr noundef nonnull %15, i32 noundef %11) #14
  br label %16

16:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BlendDataLineStyles_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %3, align 8, !tbaa !193
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Main_linestyles_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_Main_nodetree_type_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3) #0 !PGOFuncName !304 {
  %5 = tail call ptr @rna_node_tree_type_itemf(ptr noundef null, ptr noundef null, ptr noundef %3) #14
  ret ptr %5
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @DAG_id_type_tagged(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_camera_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_main_id_tag_listbase(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_scene_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @BKE_curve_type_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_id_from_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_add_only_object(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @test_object_materials(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_material_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @rna_node_tree_type_from_enum(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeAddTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mesh_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_lamp_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_image_add_generated(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @BKE_image_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @BKE_lattice_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_curve_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mball_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_vfont_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @add_texture(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_set_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_brush_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @add_world(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_group_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_group_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_text_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_text_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_text_load_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_speaker_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_armature_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @psys_new_settings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_gpencil_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_movieclip_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_movieclip_file_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mask_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_mask_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_linestyle_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @rna_node_tree_type_itemf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { nounwind optsize willreturn memory(none) }

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
!34 = !{!35, !40, i64 136}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!47 = !{!37, !37, i64 0}
!48 = !{!49, !37, i64 48}
!49 = !{!"CollectionPropertyIterator", !50, i64 0, !50, i64 24, !37, i64 48, !38, i64 56, !41, i64 96, !41, i64 100, !50, i64 104, !41, i64 128}
!50 = !{!"PointerRNA", !51, i64 0, !37, i64 8, !37, i64 16}
!51 = !{!"", !37, i64 0}
!52 = !{!49, !41, i64 128}
!53 = !{!"rna_main_gen.c:BlendData_rna_properties_get"}
!54 = !{!"rna_main_gen.c:rna_Main_filepath_get"}
!55 = !{!50, !37, i64 16}
!56 = !{!"rna_main_gen.c:rna_Main_filepath_length"}
!57 = !{i32 0, i32 2}
!58 = !{!"rna_main_gen.c:rna_Main_is_dirty_get"}
!59 = !{!60, !37, i64 1552}
!60 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !45, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !43, i64 1088, !43, i64 1104, !43, i64 1120, !43, i64 1136, !43, i64 1152, !43, i64 1168, !43, i64 1184, !43, i64 1200, !43, i64 1216, !43, i64 1232, !43, i64 1248, !43, i64 1264, !43, i64 1280, !43, i64 1296, !43, i64 1312, !43, i64 1328, !43, i64 1344, !43, i64 1360, !43, i64 1376, !43, i64 1392, !43, i64 1408, !43, i64 1424, !43, i64 1440, !43, i64 1456, !43, i64 1472, !43, i64 1488, !43, i64 1504, !43, i64 1520, !43, i64 1536, !43, i64 1552, !43, i64 1568, !43, i64 1584, !43, i64 1600, !43, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!61 = !{!62, !40, i64 156}
!62 = !{!"wmWindowManager", !36, i64 0, !37, i64 120, !37, i64 128, !43, i64 136, !41, i64 152, !40, i64 156, !40, i64 158, !43, i64 160, !43, i64 176, !63, i64 192, !43, i64 232, !43, i64 248, !43, i64 264, !43, i64 280, !37, i64 296, !37, i64 304, !37, i64 312, !43, i64 320, !37, i64 336, !38, i64 344, !38, i64 345}
!63 = !{!"ReportList", !43, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!64 = !{!"rna_main_gen.c:rna_Main_is_saved_get"}
!65 = !{!66, !38, i64 2056}
!66 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!67 = !{!"rna_main_gen.c:rna_Main_use_autopack_get"}
!68 = !{!66, !41, i64 2108}
!69 = !{!"rna_main_gen.c:rna_Main_use_autopack_set"}
!70 = !{!"rna_main_gen.c:rna_Main_version_get"}
!71 = !{!60, !40, i64 1040}
!72 = !{!41, !41, i64 0}
!73 = !{!60, !40, i64 1042}
!74 = !{!"rna_main_gen.c:rna_Main_camera_begin"}
!75 = !{!"rna_main_gen.c:BlendData_cameras_get"}
!76 = !{!"rna_main_gen.c:rna_Main_scene_begin"}
!77 = !{!"rna_main_gen.c:BlendData_scenes_get"}
!78 = !{!"rna_main_gen.c:rna_Main_object_begin"}
!79 = !{!"rna_main_gen.c:BlendData_objects_get"}
!80 = !{!"rna_main_gen.c:rna_Main_mat_begin"}
!81 = !{!"rna_main_gen.c:BlendData_materials_get"}
!82 = !{!"rna_main_gen.c:rna_Main_nodetree_begin"}
!83 = !{!"rna_main_gen.c:BlendData_node_groups_get"}
!84 = !{!"rna_main_gen.c:rna_Main_mesh_begin"}
!85 = !{!"rna_main_gen.c:BlendData_meshes_get"}
!86 = !{!"rna_main_gen.c:rna_Main_lamp_begin"}
!87 = !{!"rna_main_gen.c:BlendData_lamps_get"}
!88 = !{!"rna_main_gen.c:rna_Main_library_begin"}
!89 = !{!"rna_main_gen.c:BlendData_libraries_get"}
!90 = !{!"rna_main_gen.c:rna_Main_screen_begin"}
!91 = !{!"rna_main_gen.c:BlendData_screens_get"}
!92 = !{!"rna_main_gen.c:rna_Main_wm_begin"}
!93 = !{!"rna_main_gen.c:BlendData_window_managers_get"}
!94 = !{!"rna_main_gen.c:rna_Main_image_begin"}
!95 = !{!"rna_main_gen.c:BlendData_images_get"}
!96 = !{!"rna_main_gen.c:rna_Main_latt_begin"}
!97 = !{!"rna_main_gen.c:BlendData_lattices_get"}
!98 = !{!"rna_main_gen.c:rna_Main_curve_begin"}
!99 = !{!"rna_main_gen.c:BlendData_curves_get"}
!100 = !{!"rna_main_gen.c:rna_Main_mball_begin"}
!101 = !{!"rna_main_gen.c:BlendData_metaballs_get"}
!102 = !{!"rna_main_gen.c:rna_Main_font_begin"}
!103 = !{!"rna_main_gen.c:BlendData_fonts_get"}
!104 = !{!"rna_main_gen.c:rna_Main_tex_begin"}
!105 = !{!"rna_main_gen.c:BlendData_textures_get"}
!106 = !{!"rna_main_gen.c:rna_Main_brush_begin"}
!107 = !{!"rna_main_gen.c:BlendData_brushes_get"}
!108 = !{!"rna_main_gen.c:rna_Main_world_begin"}
!109 = !{!"rna_main_gen.c:BlendData_worlds_get"}
!110 = !{!"rna_main_gen.c:rna_Main_group_begin"}
!111 = !{!"rna_main_gen.c:BlendData_groups_get"}
!112 = !{!"rna_main_gen.c:rna_Main_key_begin"}
!113 = !{!"rna_main_gen.c:BlendData_shape_keys_get"}
!114 = !{!"rna_main_gen.c:rna_Main_script_begin"}
!115 = !{!"rna_main_gen.c:BlendData_scripts_get"}
!116 = !{!"rna_main_gen.c:rna_Main_text_begin"}
!117 = !{!"rna_main_gen.c:BlendData_texts_get"}
!118 = !{!"rna_main_gen.c:rna_Main_speaker_begin"}
!119 = !{!"rna_main_gen.c:BlendData_speakers_get"}
!120 = !{!"rna_main_gen.c:rna_Main_sound_begin"}
!121 = !{!"rna_main_gen.c:BlendData_sounds_get"}
!122 = !{!"rna_main_gen.c:rna_Main_armature_begin"}
!123 = !{!"rna_main_gen.c:BlendData_armatures_get"}
!124 = !{!"rna_main_gen.c:rna_Main_action_begin"}
!125 = !{!"rna_main_gen.c:BlendData_actions_get"}
!126 = !{!"rna_main_gen.c:rna_Main_particle_begin"}
!127 = !{!"rna_main_gen.c:BlendData_particles_get"}
!128 = !{!"rna_main_gen.c:rna_Main_gpencil_begin"}
!129 = !{!"rna_main_gen.c:BlendData_grease_pencil_get"}
!130 = !{!"rna_main_gen.c:rna_Main_movieclips_begin"}
!131 = !{!"rna_main_gen.c:BlendData_movieclips_get"}
!132 = !{!"rna_main_gen.c:rna_Main_masks_begin"}
!133 = !{!"rna_main_gen.c:BlendData_masks_get"}
!134 = !{!"rna_main_gen.c:rna_Main_linestyle_begin"}
!135 = !{!"rna_main_gen.c:BlendData_linestyles_get"}
!136 = !{!"rna_main_gen.c:BlendDataCameras_rna_properties_get"}
!137 = !{!"rna_main_gen.c:rna_Main_cameras_is_updated_get"}
!138 = !{!"rna_main_gen.c:BlendDataScenes_rna_properties_get"}
!139 = !{!"rna_main_gen.c:rna_Main_scenes_is_updated_get"}
!140 = !{!"rna_main_gen.c:BlendDataObjects_rna_properties_get"}
!141 = !{!"rna_main_gen.c:rna_Main_objects_is_updated_get"}
!142 = !{!"rna_main_gen.c:BlendDataMaterials_rna_properties_get"}
!143 = !{!"rna_main_gen.c:rna_Main_materials_is_updated_get"}
!144 = !{!"rna_main_gen.c:BlendDataNodeTrees_rna_properties_get"}
!145 = !{!"rna_main_gen.c:rna_Main_node_groups_is_updated_get"}
!146 = !{!"rna_main_gen.c:BlendDataMeshes_rna_properties_get"}
!147 = !{!"rna_main_gen.c:rna_Main_meshes_is_updated_get"}
!148 = !{!"rna_main_gen.c:BlendDataLamps_rna_properties_get"}
!149 = !{!"rna_main_gen.c:rna_Main_lamps_is_updated_get"}
!150 = !{!"rna_main_gen.c:BlendDataLibraries_rna_properties_get"}
!151 = !{!"rna_main_gen.c:rna_Main_libraries_is_updated_get"}
!152 = !{!"rna_main_gen.c:BlendDataScreens_rna_properties_get"}
!153 = !{!"rna_main_gen.c:rna_Main_screens_is_updated_get"}
!154 = !{!"rna_main_gen.c:BlendDataWindowManagers_rna_properties_get"}
!155 = !{!"rna_main_gen.c:rna_Main_window_managers_is_updated_get"}
!156 = !{!"rna_main_gen.c:BlendDataImages_rna_properties_get"}
!157 = !{!"rna_main_gen.c:rna_Main_images_is_updated_get"}
!158 = !{!"rna_main_gen.c:BlendDataLattices_rna_properties_get"}
!159 = !{!"rna_main_gen.c:rna_Main_lattices_is_updated_get"}
!160 = !{!"rna_main_gen.c:BlendDataCurves_rna_properties_get"}
!161 = !{!"rna_main_gen.c:rna_Main_curves_is_updated_get"}
!162 = !{!"rna_main_gen.c:BlendDataMetaBalls_rna_properties_get"}
!163 = !{!"rna_main_gen.c:rna_Main_metaballs_is_updated_get"}
!164 = !{!"rna_main_gen.c:BlendDataFonts_rna_properties_get"}
!165 = !{!"rna_main_gen.c:rna_Main_fonts_is_updated_get"}
!166 = !{!"rna_main_gen.c:BlendDataTextures_rna_properties_get"}
!167 = !{!"rna_main_gen.c:rna_Main_textures_is_updated_get"}
!168 = !{!"rna_main_gen.c:BlendDataBrushes_rna_properties_get"}
!169 = !{!"rna_main_gen.c:rna_Main_brushes_is_updated_get"}
!170 = !{!"rna_main_gen.c:BlendDataWorlds_rna_properties_get"}
!171 = !{!"rna_main_gen.c:rna_Main_worlds_is_updated_get"}
!172 = !{!"rna_main_gen.c:BlendDataGroups_rna_properties_get"}
!173 = !{!"rna_main_gen.c:rna_Main_groups_is_updated_get"}
!174 = !{!"rna_main_gen.c:BlendDataTexts_rna_properties_get"}
!175 = !{!"rna_main_gen.c:rna_Main_texts_is_updated_get"}
!176 = !{!"rna_main_gen.c:BlendDataSpeakers_rna_properties_get"}
!177 = !{!"rna_main_gen.c:rna_Main_speakers_is_updated_get"}
!178 = !{!"rna_main_gen.c:BlendDataSounds_rna_properties_get"}
!179 = !{!"rna_main_gen.c:rna_Main_sounds_is_updated_get"}
!180 = !{!"rna_main_gen.c:BlendDataArmatures_rna_properties_get"}
!181 = !{!"rna_main_gen.c:rna_Main_armatures_is_updated_get"}
!182 = !{!"rna_main_gen.c:BlendDataActions_rna_properties_get"}
!183 = !{!"rna_main_gen.c:rna_Main_actions_is_updated_get"}
!184 = !{!"rna_main_gen.c:BlendDataParticles_rna_properties_get"}
!185 = !{!"rna_main_gen.c:rna_Main_particles_is_updated_get"}
!186 = !{!"rna_main_gen.c:BlendDataGreasePencils_rna_properties_get"}
!187 = !{!"rna_main_gen.c:rna_Main_gpencil_is_updated_get"}
!188 = !{!"rna_main_gen.c:BlendDataMovieClips_rna_properties_get"}
!189 = !{!"rna_main_gen.c:BlendDataMasks_rna_properties_get"}
!190 = !{!"rna_main_gen.c:BlendDataLineStyles_rna_properties_get"}
!191 = !{!"rna_main_gen.c:rna_Main_linestyle_is_updated_get"}
!192 = !{!"rna_main_gen.c:rna_Main_cameras_new"}
!193 = !{!194, !37, i64 0}
!194 = !{!"ParameterList", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24}
!195 = !{!"rna_main_gen.c:rna_Main_cameras_remove"}
!196 = !{!36, !41, i64 100}
!197 = !{!36, !40, i64 98}
!198 = !{!"rna_main_gen.c:rna_Main_cameras_tag"}
!199 = !{!"rna_main_gen.c:rna_Main_scenes_new"}
!200 = !{!"rna_main_gen.c:rna_Main_scenes_remove"}
!201 = !{!202, !37, i64 8}
!202 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !203, i64 280, !212, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !213, i64 4400, !214, i64 4416, !217, i64 4600, !37, i64 4608, !218, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !205, i64 4664, !206, i64 4824, !219, i64 4888, !37, i64 4952}
!203 = !{!"RenderData", !204, i64 0, !37, i64 248, !37, i64 256, !207, i64 264, !208, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !209, i64 544, !209, i64 560, !210, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !211, i64 2616, !41, i64 3976, !41, i64 3980}
!204 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !205, i64 24, !206, i64 184}
!205 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!206 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!207 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!208 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!209 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!210 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!211 = !{!"BakeData", !204, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!212 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!213 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!214 = !{!"GameData", !213, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !215, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !216, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!215 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!216 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!217 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!218 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!219 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!220 = !{!202, !37, i64 0}
!221 = !{!222, !37, i64 184}
!222 = !{!"bScreen", !36, i64 0, !43, i64 120, !43, i64 136, !43, i64 152, !43, i64 168, !37, i64 184, !37, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !37, i64 232, !37, i64 240}
!223 = !{!"rna_main_gen.c:rna_Main_scenes_tag"}
!224 = !{!"rna_main_gen.c:rna_Main_objects_new"}
!225 = !{!40, !40, i64 0}
!226 = !{!35, !37, i64 296}
!227 = !{!"rna_main_gen.c:rna_Main_objects_remove"}
!228 = !{!"rna_main_gen.c:rna_Main_objects_tag"}
!229 = !{!"rna_main_gen.c:rna_Main_materials_new"}
!230 = !{!"rna_main_gen.c:rna_Main_materials_remove"}
!231 = !{!"rna_main_gen.c:rna_Main_materials_tag"}
!232 = !{!"rna_main_gen.c:rna_Main_nodetree_new"}
!233 = !{!"rna_main_gen.c:rna_Main_nodetree_remove"}
!234 = !{!"rna_main_gen.c:rna_Main_node_groups_tag"}
!235 = !{!"rna_main_gen.c:rna_Main_meshes_new"}
!236 = !{!"rna_main_gen.c:rna_Main_meshes_remove"}
!237 = !{!"rna_main_gen.c:rna_Main_meshes_tag"}
!238 = !{!"rna_main_gen.c:rna_Main_lamps_new"}
!239 = !{!240, !40, i64 128}
!240 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!241 = !{!"rna_main_gen.c:rna_Main_lamps_remove"}
!242 = !{!"rna_main_gen.c:rna_Main_lamps_tag"}
!243 = !{!"rna_main_gen.c:rna_Main_libraries_tag"}
!244 = !{!"rna_main_gen.c:rna_Main_screens_tag"}
!245 = !{!"rna_main_gen.c:rna_Main_window_managers_tag"}
!246 = !{!"rna_main_gen.c:rna_Main_images_new"}
!247 = !{!"rna_main_gen.c:rna_Main_images_load"}
!248 = !{!"rna_main_gen.c:rna_Main_images_remove"}
!249 = !{!"rna_main_gen.c:rna_Main_images_tag"}
!250 = !{!"rna_main_gen.c:rna_Main_lattices_new"}
!251 = !{!"rna_main_gen.c:rna_Main_lattices_remove"}
!252 = !{!"rna_main_gen.c:rna_Main_lattices_tag"}
!253 = !{!"rna_main_gen.c:rna_Main_curves_new"}
!254 = !{!"rna_main_gen.c:rna_Main_curves_remove"}
!255 = !{!"rna_main_gen.c:rna_Main_curves_tag"}
!256 = !{!"rna_main_gen.c:rna_Main_metaballs_new"}
!257 = !{!"rna_main_gen.c:rna_Main_metaballs_remove"}
!258 = !{!"rna_main_gen.c:rna_Main_metaballs_tag"}
!259 = !{!"rna_main_gen.c:rna_Main_fonts_load"}
!260 = !{!"rna_main_gen.c:rna_Main_fonts_remove"}
!261 = !{!"rna_main_gen.c:rna_Main_fonts_tag"}
!262 = !{!"rna_main_gen.c:rna_Main_textures_new"}
!263 = !{!"rna_main_gen.c:rna_Main_textures_remove"}
!264 = !{!"rna_main_gen.c:rna_Main_textures_tag"}
!265 = !{!"rna_main_gen.c:rna_Main_brushes_new"}
!266 = !{!"rna_main_gen.c:rna_Main_brushes_remove"}
!267 = !{!"rna_main_gen.c:rna_Main_brushes_tag"}
!268 = !{!"rna_main_gen.c:rna_Main_worlds_new"}
!269 = !{!"rna_main_gen.c:rna_Main_worlds_remove"}
!270 = !{!"rna_main_gen.c:rna_Main_worlds_tag"}
!271 = !{!"rna_main_gen.c:rna_Main_groups_new"}
!272 = !{!"rna_main_gen.c:rna_Main_groups_remove"}
!273 = !{!"rna_main_gen.c:rna_Main_groups_tag"}
!274 = !{!"rna_main_gen.c:rna_Main_texts_new"}
!275 = !{!"rna_main_gen.c:rna_Main_texts_remove"}
!276 = !{!"rna_main_gen.c:rna_Main_texts_load"}
!277 = !{!"rna_main_gen.c:rna_Main_texts_tag"}
!278 = !{!"rna_main_gen.c:rna_Main_speakers_new"}
!279 = !{!"rna_main_gen.c:rna_Main_speakers_remove"}
!280 = !{!"rna_main_gen.c:rna_Main_speakers_tag"}
!281 = !{!"rna_main_gen.c:rna_Main_sounds_tag"}
!282 = !{!"rna_main_gen.c:rna_Main_armatures_new"}
!283 = !{!"rna_main_gen.c:rna_Main_armatures_remove"}
!284 = !{!"rna_main_gen.c:rna_Main_armatures_tag"}
!285 = !{!"rna_main_gen.c:rna_Main_actions_new"}
!286 = !{!287, !40, i64 98}
!287 = !{!"bAction", !36, i64 0, !43, i64 120, !43, i64 136, !43, i64 152, !43, i64 168, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196}
!288 = !{!"rna_main_gen.c:rna_Main_actions_remove"}
!289 = !{!"rna_main_gen.c:rna_Main_actions_tag"}
!290 = !{!"rna_main_gen.c:rna_Main_particles_new"}
!291 = !{!"rna_main_gen.c:rna_Main_particles_remove"}
!292 = !{!"rna_main_gen.c:rna_Main_particles_tag"}
!293 = !{!"rna_main_gen.c:rna_Main_gpencil_tag"}
!294 = !{!"rna_main_gen.c:rna_Main_grease_pencil_remove"}
!295 = !{!"rna_main_gen.c:rna_Main_movieclips_tag"}
!296 = !{!"rna_main_gen.c:rna_Main_movieclips_remove"}
!297 = !{!"rna_main_gen.c:rna_Main_movieclip_load"}
!298 = !{!"rna_main_gen.c:rna_Main_masks_tag"}
!299 = !{!"rna_main_gen.c:rna_Main_mask_new"}
!300 = !{!"rna_main_gen.c:rna_Main_masks_remove"}
!301 = !{!"rna_main_gen.c:rna_Main_linestyle_tag"}
!302 = !{!"rna_main_gen.c:rna_Main_linestyles_new"}
!303 = !{!"rna_main_gen.c:rna_Main_linestyles_remove"}
!304 = !{!"rna_main_gen.c:rna_Main_nodetree_type_itemf"}
