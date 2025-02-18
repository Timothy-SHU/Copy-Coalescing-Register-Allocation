; ModuleID = 'blender/source/blender/editors/object/object_bake_api.c'
source_filename = "blender/source/blender/editors/object/object_bake_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BakeAPIRender = type { ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i8, i8, i8, i8, i8, float, i32, [3 x i32], [64 x i8], [64 x i8], [1024 x i8], i32, i32, ptr, i32, i8, ptr, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BakeImages = type { ptr, ptr, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BakeImage = type { ptr, i32, i32, i64 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BakeHighPolyData = type { ptr, ptr, ptr, ptr, i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]] }
%struct.TriangulateModifierData = type { %struct.ModifierData, i32, i32, i32, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.BakePixel = type { i32, [2 x float], float, float, float, float }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"Bake\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Bake image textures of selected objects\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"OBJECT_OT_bake\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@render_pass_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"Type of pass to bake, some of them may not be supported by the current render engine\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"File Path\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Image filepath to use when saving externally\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"Horizontal dimension of the baking map (external only)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Vertical dimension of the baking map (external only)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"margin\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Margin\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"Extends the baked result as a post process filter\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"use_selected_to_active\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Selected to Active\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"Bake shading on the surface of selected objects to the active object\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"cage_extrusion\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Cage Extrusion\00", align 1
@.str.23 = private unnamed_addr constant [70 x i8] c"Distance to use for the inward ray cast when using selected to active\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"cage_object\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Cage Object\00", align 1
@.str.26 = private unnamed_addr constant [98 x i8] c"Object to use as cage, instead of calculating the cage from the active object with cage extrusion\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"normal_space\00", align 1
@normal_space_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.28 = private unnamed_addr constant [13 x i8] c"Normal Space\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Choose normal space for baking\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"normal_r\00", align 1
@normal_swizzle_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.31 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Axis to bake in red channel\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"normal_g\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Axis to bake in green channel\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"normal_b\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Axis to bake in blue channel\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"save_mode\00", align 1
@bake_save_mode_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.40 = private unnamed_addr constant [10 x i8] c"Save Mode\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"Choose how to save the baking map\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"use_clear\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"Clear Images before baking (only for internal saving)\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"use_cage\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Cage\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"Cast rays to active object from a cage\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"use_split_materials\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Split Materials\00", align 1
@.str.50 = private unnamed_addr constant [82 x i8] c"Split baked maps per material, using material name in output file (external only)\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"use_automatic_name\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Automatic Name\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"Automatically name the output file with the pass type\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"uv_layer\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"UV Layer\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"UV layer to override active\00", align 1
@.str.57 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.58 = private unnamed_addr constant [93 x i8] c"Object \22%s\22 is not a mesh or can't be converted to a mesh (Curve, Text, Surface or Metaball)\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"No valid selected objects\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"Object \22%s\22 is not a mesh\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"No active UV layer found in the object \22%s\22\00", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"Circular dependency for image \22%s\22 from object \22%s\22\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"Uninitialized image \22%s\22 from object \22%s\22\00", align 1
@.str.64 = private unnamed_addr constant [60 x i8] c"No active image found in material \22%s\22 (%d) for object \22%s\22\00", align 1
@.str.65 = private unnamed_addr constant [55 x i8] c"No active image found in material (%d) for object \22%s\22\00", align 1
@.str.66 = private unnamed_addr constant [46 x i8] c"Current render engine does not support baking\00", align 1
@.str.67 = private unnamed_addr constant [48 x i8] c"No UV layer named \22%s\22 found in the object \22%s\22\00", align 1
@.str.68 = private unnamed_addr constant [66 x i8] c"No active image found, add a material or bake to an external file\00", align 1
@.str.69 = private unnamed_addr constant [81 x i8] c"No active image found, add a material or bake without the Split Materials option\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.70 = private unnamed_addr constant [47 x i8] c"bake images dimensions (width, height, offset)\00", align 1
@.str.71 = private unnamed_addr constant [48 x i8] c"bake images lookup (from material to BakeImage)\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"No valid cage object\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"bake pixels low poly\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.74 = private unnamed_addr constant [19 x i8] c"bake return pixels\00", align 1
@.str.75 = private unnamed_addr constant [91 x i8] c"Invalid cage object, the cage mesh must have the same number of faces as the active object\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"bake high poly objects\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"bake pixels high poly\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"TmpTriangulate\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"Error handling selected objects\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"Error baking from object \22%s\22\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Problem baking object \22%s\22\00", align 1
@.str.82 = private unnamed_addr constant [55 x i8] c"Problem saving the bake map internally for object \22%s\22\00", align 1
@.str.83 = private unnamed_addr constant [66 x i8] c"Baking map saved to internal image, save it externally or pack it\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"Problem saving baked map in \22%s\22\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"Baking map written to \22%s\22\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.88 = private unnamed_addr constant [23 x i8] c"Uninitialized image %s\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"Bake Mask\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"render bake\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"Texture Bake\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_bake(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @bake_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @bake_modal, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @bake_invoke, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable_mesh, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @render_pass_type_items, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string_file_path(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef 512, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 64, i32 noundef 4096) #9
  %15 = load ptr, ptr %8, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef 512, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 64, i32 noundef 4096) #9
  %17 = load ptr, ptr %8, align 8, !tbaa !48
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.15, i32 noundef 16, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 64) #9
  %19 = load ptr, ptr %8, align 8, !tbaa !48
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #9
  %21 = load ptr, ptr %8, align 8, !tbaa !48
  %22 = tail call ptr @RNA_def_float(ptr noundef %21, ptr noundef nonnull @.str.21, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  %23 = load ptr, ptr %8, align 8, !tbaa !48
  %24 = tail call ptr @RNA_def_string(ptr noundef %23, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  %25 = load ptr, ptr %8, align 8, !tbaa !48
  %26 = tail call ptr @RNA_def_enum(ptr noundef %25, ptr noundef nonnull @.str.27, ptr noundef nonnull @normal_space_items, i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #9
  %27 = load ptr, ptr %8, align 8, !tbaa !48
  %28 = tail call ptr @RNA_def_enum(ptr noundef %27, ptr noundef nonnull @.str.30, ptr noundef nonnull @normal_swizzle_items, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #9
  %29 = load ptr, ptr %8, align 8, !tbaa !48
  %30 = tail call ptr @RNA_def_enum(ptr noundef %29, ptr noundef nonnull @.str.33, ptr noundef nonnull @normal_swizzle_items, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #9
  %31 = load ptr, ptr %8, align 8, !tbaa !48
  %32 = tail call ptr @RNA_def_enum(ptr noundef %31, ptr noundef nonnull @.str.36, ptr noundef nonnull @normal_swizzle_items, i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #9
  %33 = load ptr, ptr %8, align 8, !tbaa !48
  %34 = tail call ptr @RNA_def_enum(ptr noundef %33, ptr noundef nonnull @.str.39, ptr noundef nonnull @bake_save_mode_items, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #9
  %35 = load ptr, ptr %8, align 8, !tbaa !48
  %36 = tail call ptr @RNA_def_boolean(ptr noundef %35, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #9
  %37 = load ptr, ptr %8, align 8, !tbaa !48
  %38 = tail call ptr @RNA_def_boolean(ptr noundef %37, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #9
  %39 = load ptr, ptr %8, align 8, !tbaa !48
  %40 = tail call ptr @RNA_def_boolean(ptr noundef %39, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #9
  %41 = load ptr, ptr %8, align 8, !tbaa !48
  %42 = tail call ptr @RNA_def_boolean(ptr noundef %41, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #9
  %43 = load ptr, ptr %8, align 8, !tbaa !48
  %44 = tail call ptr @RNA_def_string(ptr noundef %43, ptr noundef nonnull @.str.54, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @bake_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BakeAPIRender, align 8
  call void @llvm.lifetime.start.p0(i64 1296, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1296) %3, i8 0, i64 1296, i1 false)
  call fastcc void @bake_init_api_data(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  call void @RE_test_break_cb(ptr noundef %5, ptr noundef null, ptr noundef nonnull @bake_break) #9
  %6 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = load ptr, ptr %3, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 4
  %10 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 11
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = call fastcc zeroext i8 @bake_objects_check(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %11, i8 noundef zeroext %13)
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %142, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 8
  %18 = load i8, ptr %17, align 4, !tbaa !57
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = icmp eq i32 %22, 256
  %24 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 14
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 3
  %27 = select i1 %23, i1 %26, i1 false
  %28 = zext i1 %27 to i8
  %29 = load ptr, ptr %6, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %20, %40
  %34 = phi ptr [ %41, %40 ], [ %31, %20 ]
  %35 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !60
  %37 = and i16 %36, 1024
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  call void @RE_bake_ibuf_clear(ptr noundef nonnull %34, i8 noundef zeroext %28) #9
  br label %40

40:                                               ; preds = %39, %33
  %41 = load ptr, ptr %34, align 8, !tbaa !59
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %33, !llvm.loop !64

43:                                               ; preds = %40, %20, %16
  %44 = load ptr, ptr %10, align 8, !tbaa !55
  call void @RE_SetReports(ptr noundef %5, ptr noundef %44) #9
  %45 = load i8, ptr %12, align 1, !tbaa !56
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %84, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 8, !tbaa !49
  %49 = load ptr, ptr %6, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = load ptr, ptr %3, align 8, !tbaa !54
  %53 = load ptr, ptr %10, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !58
  %56 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !68
  %58 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !69
  %60 = load i8, ptr %17, align 4, !tbaa !57
  %61 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !70
  %63 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 10
  %64 = load i8, ptr %63, align 2, !tbaa !71
  %65 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 12
  %66 = load i8, ptr %65, align 8, !tbaa !72
  %67 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 13
  %68 = load float, ptr %67, align 4, !tbaa !73
  %69 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 14
  %70 = load i32, ptr %69, align 8, !tbaa !74
  %71 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 15
  %72 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 17
  %73 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 18
  %74 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 19
  %75 = load i32, ptr %74, align 8, !tbaa !75
  %76 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 20
  %77 = load i32, ptr %76, align 4, !tbaa !76
  %78 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 21
  %79 = load ptr, ptr %78, align 8, !tbaa !77
  %80 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 27
  %81 = load ptr, ptr %80, align 8, !tbaa !78
  %82 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 16
  %83 = call fastcc i32 @bake(ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %52, ptr noundef nonnull %9, ptr noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i8 noundef zeroext %60, i8 noundef zeroext %62, i8 noundef zeroext %64, i8 noundef zeroext 1, i8 noundef zeroext %66, float noundef %68, i32 noundef %70, ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef nonnull %73, i32 noundef %75, i32 noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef nonnull %82)
  br label %140

84:                                               ; preds = %43
  %85 = load i8, ptr %17, align 4, !tbaa !57
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %9, align 8, !tbaa !79
  %89 = icmp ne ptr %88, null
  %90 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 4, i32 1
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %88, %91
  %93 = select i1 %89, i1 %92, i1 false
  %94 = zext i1 %93 to i8
  br label %95

95:                                               ; preds = %87, %84
  %96 = phi i8 [ 0, %84 ], [ %94, %87 ]
  %97 = load ptr, ptr %9, align 8, !tbaa !80
  %98 = icmp eq ptr %97, null
  br i1 %98, label %140, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 2
  %101 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 5
  %102 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 6
  %103 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 7
  %104 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 9
  %105 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 10
  %106 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 12
  %107 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 13
  %108 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 14
  %109 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 15
  %110 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 17
  %111 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 18
  %112 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 19
  %113 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 20
  %114 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 21
  %115 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 27
  %116 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 16
  br label %117

117:                                              ; preds = %99, %117
  %118 = phi ptr [ %97, %99 ], [ %138, %117 ]
  %119 = getelementptr inbounds %struct.CollectionPointerLink, ptr %118, i64 0, i32 2, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !81
  %121 = load ptr, ptr %4, align 8, !tbaa !49
  %122 = load ptr, ptr %6, align 8, !tbaa !53
  %123 = load ptr, ptr %100, align 8, !tbaa !67
  %124 = load ptr, ptr %10, align 8, !tbaa !55
  %125 = load i32, ptr %101, align 8, !tbaa !58
  %126 = load i32, ptr %102, align 4, !tbaa !68
  %127 = load i32, ptr %103, align 8, !tbaa !69
  %128 = load i8, ptr %104, align 1, !tbaa !70
  %129 = load i8, ptr %105, align 2, !tbaa !71
  %130 = load i8, ptr %106, align 8, !tbaa !72
  %131 = load float, ptr %107, align 4, !tbaa !73
  %132 = load i32, ptr %108, align 8, !tbaa !74
  %133 = load i32, ptr %112, align 8, !tbaa !75
  %134 = load i32, ptr %113, align 4, !tbaa !76
  %135 = load ptr, ptr %114, align 8, !tbaa !77
  %136 = load ptr, ptr %115, align 8, !tbaa !78
  %137 = call fastcc i32 @bake(ptr noundef %121, ptr noundef %122, ptr noundef %123, ptr noundef %120, ptr noundef null, ptr noundef %124, i32 noundef %125, i32 noundef %126, i32 noundef %127, i8 noundef zeroext %96, i8 noundef zeroext %128, i8 noundef zeroext %129, i8 noundef zeroext 0, i8 noundef zeroext %130, float noundef %131, i32 noundef %132, ptr noundef nonnull %109, ptr noundef nonnull %110, ptr noundef nonnull %111, i32 noundef %133, i32 noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef nonnull %116)
  %138 = load ptr, ptr %118, align 8, !tbaa !85
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %117, !llvm.loop !86

140:                                              ; preds = %117, %95, %47
  %141 = phi i32 [ %83, %47 ], [ 2, %95 ], [ %137, %117 ]
  call void @RE_SetReports(ptr noundef %5, ptr noundef null) #9
  call void @BLI_freelistN(ptr noundef nonnull %9) #9
  br label %142

142:                                              ; preds = %2, %140
  %143 = phi i32 [ %141, %140 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1296, ptr nonnull %3) #9
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @bake_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 8) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !87
  %11 = icmp eq i16 %10, 218
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !90
  br label %13

13:                                               ; preds = %8, %3, %12
  %14 = phi i32 [ 1, %12 ], [ 12, %3 ], [ 8, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @bake_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef nonnull @.str.6) #9
  %8 = load ptr, ptr %5, align 8, !tbaa !92
  %9 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %8, ptr noundef %7) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 1
  tail call void @RNA_property_string_set(ptr noundef %12, ptr noundef %7, ptr noundef nonnull %13) #9
  br label %14

14:                                               ; preds = %11, %3
  %15 = load ptr, ptr %5, align 8, !tbaa !92
  %16 = tail call ptr @RNA_struct_find_property(ptr noundef %15, ptr noundef nonnull @.str.9) #9
  %17 = load ptr, ptr %5, align 8, !tbaa !92
  %18 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %17, ptr noundef %16) #9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8, !tbaa !92
  %22 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !94
  %24 = sext i16 %23 to i32
  tail call void @RNA_property_int_set(ptr noundef %21, ptr noundef %16, i32 noundef %24) #9
  br label %25

25:                                               ; preds = %20, %14
  %26 = load ptr, ptr %5, align 8, !tbaa !92
  %27 = tail call ptr @RNA_struct_find_property(ptr noundef %26, ptr noundef nonnull @.str.12) #9
  %28 = load ptr, ptr %5, align 8, !tbaa !92
  %29 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %28, ptr noundef %27) #9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load ptr, ptr %5, align 8, !tbaa !92
  %33 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !94
  %35 = sext i16 %34 to i32
  tail call void @RNA_property_int_set(ptr noundef %32, ptr noundef %27, i32 noundef %35) #9
  br label %36

36:                                               ; preds = %31, %25
  %37 = load ptr, ptr %5, align 8, !tbaa !92
  %38 = tail call ptr @RNA_struct_find_property(ptr noundef %37, ptr noundef nonnull @.str.15) #9
  %39 = load ptr, ptr %5, align 8, !tbaa !92
  %40 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %39, ptr noundef %38) #9
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load ptr, ptr %5, align 8, !tbaa !92
  %44 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 4
  %45 = load i16, ptr %44, align 4, !tbaa !99
  %46 = sext i16 %45 to i32
  tail call void @RNA_property_int_set(ptr noundef %43, ptr noundef %38, i32 noundef %46) #9
  br label %47

47:                                               ; preds = %42, %36
  %48 = load ptr, ptr %5, align 8, !tbaa !92
  %49 = tail call ptr @RNA_struct_find_property(ptr noundef %48, ptr noundef nonnull @.str.18) #9
  %50 = load ptr, ptr %5, align 8, !tbaa !92
  %51 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %50, ptr noundef %49) #9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load ptr, ptr %5, align 8, !tbaa !92
  %55 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 5
  %56 = load i16, ptr %55, align 2, !tbaa !100
  %57 = and i16 %56, 4
  %58 = zext nneg i16 %57 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %54, ptr noundef %49, i32 noundef %58) #9
  br label %59

59:                                               ; preds = %53, %47
  %60 = load ptr, ptr %5, align 8, !tbaa !92
  %61 = tail call ptr @RNA_struct_find_property(ptr noundef %60, ptr noundef nonnull @.str.21) #9
  %62 = load ptr, ptr %5, align 8, !tbaa !92
  %63 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %62, ptr noundef %61) #9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load ptr, ptr %5, align 8, !tbaa !92
  %67 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 6
  %68 = load float, ptr %67, align 8, !tbaa !101
  tail call void @RNA_property_float_set(ptr noundef %66, ptr noundef %61, float noundef %68) #9
  br label %69

69:                                               ; preds = %65, %59
  %70 = load ptr, ptr %5, align 8, !tbaa !92
  %71 = tail call ptr @RNA_struct_find_property(ptr noundef %70, ptr noundef nonnull @.str.24) #9
  %72 = load ptr, ptr %5, align 8, !tbaa !92
  %73 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %72, ptr noundef %71) #9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load ptr, ptr %5, align 8, !tbaa !92
  %77 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 12
  tail call void @RNA_property_string_set(ptr noundef %76, ptr noundef %71, ptr noundef nonnull %77) #9
  br label %78

78:                                               ; preds = %75, %69
  %79 = load ptr, ptr %5, align 8, !tbaa !92
  %80 = tail call ptr @RNA_struct_find_property(ptr noundef %79, ptr noundef nonnull @.str.27) #9
  %81 = load ptr, ptr %5, align 8, !tbaa !92
  %82 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %81, ptr noundef %80) #9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load ptr, ptr %5, align 8, !tbaa !92
  %86 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 9
  %87 = load i8, ptr %86, align 1, !tbaa !102
  %88 = zext i8 %87 to i32
  tail call void @RNA_property_enum_set(ptr noundef %85, ptr noundef %80, i32 noundef %88) #9
  br label %89

89:                                               ; preds = %84, %78
  %90 = load ptr, ptr %5, align 8, !tbaa !92
  %91 = tail call ptr @RNA_struct_find_property(ptr noundef %90, ptr noundef nonnull @.str.30) #9
  %92 = load ptr, ptr %5, align 8, !tbaa !92
  %93 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %92, ptr noundef %91) #9
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load ptr, ptr %5, align 8, !tbaa !92
  %97 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 8
  %98 = load i8, ptr %97, align 8, !tbaa !103
  %99 = zext i8 %98 to i32
  tail call void @RNA_property_enum_set(ptr noundef %96, ptr noundef %91, i32 noundef %99) #9
  br label %100

100:                                              ; preds = %95, %89
  %101 = load ptr, ptr %5, align 8, !tbaa !92
  %102 = tail call ptr @RNA_struct_find_property(ptr noundef %101, ptr noundef nonnull @.str.33) #9
  %103 = load ptr, ptr %5, align 8, !tbaa !92
  %104 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %103, ptr noundef %102) #9
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load ptr, ptr %5, align 8, !tbaa !92
  %108 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 8, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !103
  %110 = zext i8 %109 to i32
  tail call void @RNA_property_enum_set(ptr noundef %107, ptr noundef %102, i32 noundef %110) #9
  br label %111

111:                                              ; preds = %106, %100
  %112 = load ptr, ptr %5, align 8, !tbaa !92
  %113 = tail call ptr @RNA_struct_find_property(ptr noundef %112, ptr noundef nonnull @.str.36) #9
  %114 = load ptr, ptr %5, align 8, !tbaa !92
  %115 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %114, ptr noundef %113) #9
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load ptr, ptr %5, align 8, !tbaa !92
  %119 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 8, i64 2
  %120 = load i8, ptr %119, align 2, !tbaa !103
  %121 = zext i8 %120 to i32
  tail call void @RNA_property_enum_set(ptr noundef %118, ptr noundef %113, i32 noundef %121) #9
  br label %122

122:                                              ; preds = %117, %111
  %123 = load ptr, ptr %5, align 8, !tbaa !92
  %124 = tail call ptr @RNA_struct_find_property(ptr noundef %123, ptr noundef nonnull @.str.39) #9
  %125 = load ptr, ptr %5, align 8, !tbaa !92
  %126 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %125, ptr noundef %124) #9
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load ptr, ptr %5, align 8, !tbaa !92
  %130 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 10
  %131 = load i8, ptr %130, align 4, !tbaa !104
  %132 = zext i8 %131 to i32
  tail call void @RNA_property_enum_set(ptr noundef %129, ptr noundef %124, i32 noundef %132) #9
  br label %133

133:                                              ; preds = %128, %122
  %134 = load ptr, ptr %5, align 8, !tbaa !92
  %135 = tail call ptr @RNA_struct_find_property(ptr noundef %134, ptr noundef nonnull @.str.42) #9
  %136 = load ptr, ptr %5, align 8, !tbaa !92
  %137 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %136, ptr noundef %135) #9
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load ptr, ptr %5, align 8, !tbaa !92
  %141 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 5
  %142 = load i16, ptr %141, align 2, !tbaa !100
  %143 = and i16 %142, 1
  %144 = zext nneg i16 %143 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %140, ptr noundef %135, i32 noundef %144) #9
  br label %145

145:                                              ; preds = %139, %133
  %146 = load ptr, ptr %5, align 8, !tbaa !92
  %147 = tail call ptr @RNA_struct_find_property(ptr noundef %146, ptr noundef nonnull @.str.45) #9
  %148 = load ptr, ptr %5, align 8, !tbaa !92
  %149 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %148, ptr noundef %147) #9
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load ptr, ptr %5, align 8, !tbaa !92
  %153 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 5
  %154 = load i16, ptr %153, align 2, !tbaa !100
  %155 = and i16 %154, 256
  %156 = zext nneg i16 %155 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %152, ptr noundef %147, i32 noundef %156) #9
  br label %157

157:                                              ; preds = %151, %145
  %158 = load ptr, ptr %5, align 8, !tbaa !92
  %159 = tail call ptr @RNA_struct_find_property(ptr noundef %158, ptr noundef nonnull @.str.48) #9
  %160 = load ptr, ptr %5, align 8, !tbaa !92
  %161 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %160, ptr noundef %159) #9
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load ptr, ptr %5, align 8, !tbaa !92
  %165 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 5
  %166 = load i16, ptr %165, align 2, !tbaa !100
  %167 = and i16 %166, 512
  %168 = zext nneg i16 %167 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %164, ptr noundef %159, i32 noundef %168) #9
  br label %169

169:                                              ; preds = %163, %157
  %170 = load ptr, ptr %5, align 8, !tbaa !92
  %171 = tail call ptr @RNA_struct_find_property(ptr noundef %170, ptr noundef nonnull @.str.51) #9
  %172 = load ptr, ptr %5, align 8, !tbaa !92
  %173 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %172, ptr noundef %171) #9
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load ptr, ptr %5, align 8, !tbaa !92
  %177 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 116, i32 5
  %178 = load i16, ptr %177, align 2, !tbaa !100
  %179 = and i16 %178, 1024
  %180 = zext nneg i16 %179 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %176, ptr noundef %171, i32 noundef %180) #9
  br label %181

181:                                              ; preds = %169, %175
  %182 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %183 = tail call zeroext i8 @WM_jobs_test(ptr noundef %182, ptr noundef %4, i32 noundef 8) #9
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %187 = tail call ptr %186(i64 noundef 1296, ptr noundef nonnull @.str.90) #9
  tail call fastcc void @bake_init_api_data(ptr noundef %1, ptr noundef %0, ptr noundef %187)
  %188 = getelementptr inbounds %struct.BakeAPIRender, ptr %187, i64 0, i32 24
  %189 = load ptr, ptr %188, align 8, !tbaa !49
  tail call void @RE_test_break_cb(ptr noundef %189, ptr noundef null, ptr noundef nonnull @bake_break) #9
  tail call void @RE_progress_cb(ptr noundef %189, ptr noundef %187, ptr noundef nonnull @bake_progress_update) #9
  %190 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %191 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %192 = tail call ptr @WM_jobs_get(ptr noundef %190, ptr noundef %191, ptr noundef %4, ptr noundef nonnull @.str.91, i32 noundef 7, i32 noundef 8) #9
  tail call void @WM_jobs_customdata_set(ptr noundef %192, ptr noundef %187, ptr noundef nonnull @bake_freejob) #9
  tail call void @WM_jobs_timer(ptr noundef %192, double noundef 5.000000e-01, i32 noundef 167772160, i32 noundef 0) #9
  tail call void @WM_jobs_callbacks(ptr noundef %192, ptr noundef nonnull @bake_startjob, ptr noundef null, ptr noundef null, ptr noundef null) #9
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !90
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !105
  %193 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  tail call void @WM_jobs_start(ptr noundef %193, ptr noundef %192) #9
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #9
  %194 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %4) #9
  br label %195

195:                                              ; preds = %181, %185
  %196 = phi i32 [ 1, %185 ], [ 2, %181 ]
  ret i32 %196
}

declare i32 @ED_operator_object_active_editable_mesh(ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_string_file_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @bake_init_api_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %1) #9
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %1) #9
  store ptr %5, ptr %2, align 8, !tbaa !54
  %6 = tail call ptr @CTX_data_main(ptr noundef %1) #9
  %7 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !53
  %8 = tail call ptr @CTX_data_scene(ptr noundef %1) #9
  %9 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !67
  %10 = icmp eq ptr %4, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @BKE_screen_find_big_area(ptr noundef nonnull %4, i32 noundef 6, i16 noundef signext 10) #9
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi ptr [ %12, %11 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = tail call i32 @RNA_enum_get(ptr noundef %17, ptr noundef nonnull @.str.3) #9
  %19 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 5
  store i32 %18, ptr %19, align 8, !tbaa !58
  %20 = load ptr, ptr %16, align 8, !tbaa !92
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.15) #9
  %22 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 6
  store i32 %21, ptr %22, align 4, !tbaa !68
  %23 = load ptr, ptr %16, align 8, !tbaa !92
  %24 = tail call i32 @RNA_enum_get(ptr noundef %23, ptr noundef nonnull @.str.39) #9
  %25 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 7
  store i32 %24, ptr %25, align 8, !tbaa !69
  %26 = icmp eq i32 %24, 0
  %27 = load ptr, ptr %16, align 8, !tbaa !92
  %28 = tail call i32 @RNA_boolean_get(ptr noundef %27, ptr noundef nonnull @.str.42) #9
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 8
  store i8 %29, ptr %30, align 4, !tbaa !57
  br i1 %26, label %36, label %31

31:                                               ; preds = %13
  %32 = load ptr, ptr %16, align 8, !tbaa !92
  %33 = tail call i32 @RNA_boolean_get(ptr noundef %32, ptr noundef nonnull @.str.48) #9
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %31, %13
  %37 = phi i8 [ 0, %13 ], [ %35, %31 ]
  %38 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 9
  store i8 %37, ptr %38, align 1, !tbaa !70
  %39 = load ptr, ptr %16, align 8, !tbaa !92
  %40 = tail call i32 @RNA_boolean_get(ptr noundef %39, ptr noundef nonnull @.str.51) #9
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 10
  store i8 %41, ptr %42, align 2, !tbaa !71
  %43 = load ptr, ptr %16, align 8, !tbaa !92
  %44 = tail call i32 @RNA_boolean_get(ptr noundef %43, ptr noundef nonnull @.str.18) #9
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 11
  store i8 %45, ptr %46, align 1, !tbaa !56
  %47 = load ptr, ptr %16, align 8, !tbaa !92
  %48 = tail call i32 @RNA_boolean_get(ptr noundef %47, ptr noundef nonnull @.str.45) #9
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 12
  store i8 %49, ptr %50, align 8, !tbaa !72
  %51 = load ptr, ptr %16, align 8, !tbaa !92
  %52 = tail call float @RNA_float_get(ptr noundef %51, ptr noundef nonnull @.str.21) #9
  %53 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 13
  store float %52, ptr %53, align 4, !tbaa !73
  %54 = load ptr, ptr %16, align 8, !tbaa !92
  %55 = tail call i32 @RNA_enum_get(ptr noundef %54, ptr noundef nonnull @.str.27) #9
  %56 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 14
  store i32 %55, ptr %56, align 8, !tbaa !74
  %57 = load ptr, ptr %16, align 8, !tbaa !92
  %58 = tail call i32 @RNA_enum_get(ptr noundef %57, ptr noundef nonnull @.str.30) #9
  %59 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 15
  store i32 %58, ptr %59, align 4, !tbaa !106
  %60 = load ptr, ptr %16, align 8, !tbaa !92
  %61 = tail call i32 @RNA_enum_get(ptr noundef %60, ptr noundef nonnull @.str.33) #9
  %62 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 15, i64 1
  store i32 %61, ptr %62, align 4, !tbaa !106
  %63 = load ptr, ptr %16, align 8, !tbaa !92
  %64 = tail call i32 @RNA_enum_get(ptr noundef %63, ptr noundef nonnull @.str.36) #9
  %65 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 15, i64 2
  store i32 %64, ptr %65, align 4, !tbaa !106
  %66 = load ptr, ptr %16, align 8, !tbaa !92
  %67 = tail call i32 @RNA_int_get(ptr noundef %66, ptr noundef nonnull @.str.9) #9
  %68 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 19
  store i32 %67, ptr %68, align 8, !tbaa !75
  %69 = load ptr, ptr %16, align 8, !tbaa !92
  %70 = tail call i32 @RNA_int_get(ptr noundef %69, ptr noundef nonnull @.str.12) #9
  %71 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 20
  store i32 %70, ptr %71, align 4, !tbaa !76
  %72 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 21
  store ptr @.str.57, ptr %72, align 8, !tbaa !77
  %73 = load ptr, ptr %16, align 8, !tbaa !92
  %74 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 16
  tail call void @RNA_string_get(ptr noundef %73, ptr noundef nonnull @.str.54, ptr noundef nonnull %74) #9
  %75 = load ptr, ptr %16, align 8, !tbaa !92
  %76 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 17
  tail call void @RNA_string_get(ptr noundef %75, ptr noundef nonnull @.str.24, ptr noundef nonnull %76) #9
  br i1 %26, label %86, label %77

77:                                               ; preds = %36
  %78 = load i8, ptr %42, align 2, !tbaa !71
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %16, align 8, !tbaa !92
  %82 = tail call ptr @RNA_struct_find_property(ptr noundef %81, ptr noundef nonnull @.str.3) #9
  %83 = load ptr, ptr %16, align 8, !tbaa !92
  %84 = load i32, ptr %19, align 8, !tbaa !58
  %85 = tail call zeroext i8 @RNA_property_enum_identifier(ptr noundef %1, ptr noundef %83, ptr noundef %82, i32 noundef %84, ptr noundef nonnull %72) #9
  br label %86

86:                                               ; preds = %80, %77, %36
  %87 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 4
  %88 = tail call i32 @CTX_data_selected_objects(ptr noundef %1, ptr noundef nonnull %87) #9
  %89 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !107
  %91 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 3
  store ptr %90, ptr %91, align 8, !tbaa !55
  %92 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 22
  store i32 2, ptr %92, align 8, !tbaa !108
  %93 = load ptr, ptr %9, align 8, !tbaa !67
  %94 = getelementptr inbounds %struct.ID, ptr %93, i64 0, i32 4
  %95 = tail call ptr @RE_NewRender(ptr noundef nonnull %94) #9
  %96 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 24
  store ptr %95, ptr %96, align 8, !tbaa !49
  store i32 0, ptr %25, align 8, !tbaa !69
  ret void
}

declare void @RE_test_break_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @bake_break(ptr nocapture readnone %0) #4 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !90
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @bake_objects_check(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 19785, i8 noundef zeroext 0) #9
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc zeroext i8 @bake_object_check(ptr noundef %1, ptr noundef %3), !range !109
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %10, %32
  %14 = phi ptr [ %33, %32 ], [ %11, %10 ]
  %15 = phi i32 [ %29, %32 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = add i16 %21, -1
  %23 = icmp ult i16 %22, 5
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.58, ptr noundef nonnull %25) #9
  br label %28

26:                                               ; preds = %19
  %27 = add nsw i32 %15, 1
  br label %28

28:                                               ; preds = %13, %26, %24
  %29 = phi i32 [ %15, %24 ], [ %27, %26 ], [ %15, %13 ]
  %30 = phi i1 [ false, %24 ], [ true, %26 ], [ false, %13 ]
  %31 = phi i32 [ 1, %24 ], [ 0, %26 ], [ 4, %13 ]
  switch i32 %31, label %38 [
    i32 0, label %32
    i32 4, label %32
  ]

32:                                               ; preds = %28, %28
  %33 = load ptr, ptr %14, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !114

35:                                               ; preds = %32
  %36 = icmp eq i32 %29, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %10, %35
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.59) #9
  br label %53

38:                                               ; preds = %28
  br i1 %30, label %52, label %53

39:                                               ; preds = %5
  %40 = load ptr, ptr %2, align 8, !tbaa !79
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.59) #9
  br label %53

43:                                               ; preds = %39, %47
  %44 = phi ptr [ %45, %47 ], [ %2, %39 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.CollectionPointerLink, ptr %45, i64 0, i32 2, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !81
  %50 = tail call fastcc zeroext i8 @bake_object_check(ptr noundef %49, ptr noundef %3), !range !109
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %43, !llvm.loop !115

52:                                               ; preds = %43, %35, %38
  br label %53

53:                                               ; preds = %47, %37, %7, %38, %52, %42
  %54 = phi i8 [ 1, %52 ], [ 0, %38 ], [ 0, %42 ], [ 0, %7 ], [ 0, %37 ], [ 0, %47 ]
  ret i8 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @RE_SetReports(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @bake(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i8 noundef zeroext %12, i8 noundef zeroext %13, float noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef readonly %22, ptr noundef %23) unnamed_addr #0 {
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca %struct.BakeImages, align 8
  %29 = alloca %struct.ListBase, align 8
  %30 = alloca %struct.ListBase, align 8
  %31 = alloca [1024 x i8], align 16
  %32 = alloca [4 x i8], align 1
  %33 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 102
  %34 = load i8, ptr %33, align 8, !tbaa !116
  %35 = icmp eq i32 %8, 0
  switch i32 %6, label %36 [
    i32 32768, label %39
    i32 4096, label %39
    i32 2048, label %39
    i32 512, label %39
    i32 256, label %39
    i32 2, label %39
  ]

36:                                               ; preds = %24
  %37 = icmp eq i32 %6, 262144
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %24, %24, %24, %24, %24, %24, %36
  %40 = phi i8 [ 1, %24 ], [ %38, %36 ], [ 1, %24 ], [ 1, %24 ], [ 1, %24 ], [ 1, %24 ], [ 1, %24 ]
  %41 = tail call i32 @RE_pass_depth(i32 noundef %6) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  tail call void @RE_bake_engine_set_engine_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  %42 = tail call zeroext i8 @RE_bake_has_engine(ptr noundef %0) #9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.66) #9
  br label %710

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %47 = load i32, ptr %46, align 8, !tbaa !117
  %48 = icmp eq ptr %23, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i8, ptr %23, align 1, !tbaa !103
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !118
  %55 = getelementptr inbounds %struct.Mesh, ptr %54, i64 0, i32 25
  %56 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %55, i32 noundef 16, ptr noundef nonnull %23) #9
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.67, ptr noundef nonnull %23, ptr noundef nonnull %59) #9
  br label %710

60:                                               ; preds = %52, %49, %45
  %61 = icmp eq i32 %47, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  br i1 %35, label %63, label %64

63:                                               ; preds = %62
  tail call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.68) #9
  br label %710

64:                                               ; preds = %62
  %65 = icmp eq i8 %10, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.69) #9
  br label %710

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %47, %60 ], [ 1, %64 ]
  %69 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %70 = sext i32 %68 to i64
  %71 = mul nsw i64 %70, 24
  %72 = tail call ptr %69(i64 noundef %71, ptr noundef nonnull @.str.70) #9
  store ptr %72, ptr %28, align 8, !tbaa !119
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %74 = shl nsw i64 %70, 2
  %75 = tail call ptr %73(i64 noundef %74, ptr noundef nonnull @.str.71) #9
  %76 = getelementptr inbounds %struct.BakeImages, ptr %28, i64 0, i32 1
  store ptr %75, ptr %76, align 8, !tbaa !121
  %77 = load i32, ptr %46, align 8, !tbaa !117
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 19785, i8 noundef zeroext 0) #9
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %67
  %80 = zext nneg i32 %77 to i64
  br label %81

81:                                               ; preds = %79, %119
  %82 = phi i64 [ 0, %79 ], [ %84, %119 ]
  %83 = phi i32 [ 0, %79 ], [ %120, %119 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #9
  %84 = add nuw nsw i64 %82, 1
  %85 = trunc i64 %84 to i32
  %86 = call zeroext i8 @ED_object_get_active_image(ptr noundef %3, i32 noundef %85, ptr noundef nonnull %27, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %87 = load ptr, ptr %27, align 8, !tbaa !59
  %88 = getelementptr inbounds %struct.ID, ptr %87, i64 0, i32 5
  %89 = load i16, ptr %88, align 2, !tbaa !60
  %90 = and i16 %89, 1024
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %81
  %93 = icmp eq i64 %82, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %92
  %95 = load ptr, ptr %28, align 8, !tbaa !119
  br label %96

96:                                               ; preds = %94, %105
  %97 = phi i64 [ 0, %94 ], [ %106, %105 ]
  %98 = getelementptr inbounds %struct.BakeImage, ptr %95, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !122
  %100 = icmp eq ptr %99, %87
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = trunc i64 %97 to i32
  %103 = load ptr, ptr %76, align 8, !tbaa !121
  %104 = getelementptr inbounds i32, ptr %103, i64 %82
  store i32 %102, ptr %104, align 4, !tbaa !106
  br label %119

105:                                              ; preds = %96
  %106 = add nuw nsw i64 %97, 1
  %107 = icmp eq i64 %106, %82
  br i1 %107, label %119, label %96, !llvm.loop !124

108:                                              ; preds = %81
  %109 = load ptr, ptr %76, align 8, !tbaa !121
  %110 = getelementptr inbounds i32, ptr %109, i64 %82
  store i32 %83, ptr %110, align 4, !tbaa !106
  %111 = load ptr, ptr %28, align 8, !tbaa !119
  %112 = sext i32 %83 to i64
  %113 = getelementptr inbounds %struct.BakeImage, ptr %111, i64 %112
  store ptr %87, ptr %113, align 8, !tbaa !122
  %114 = load ptr, ptr %27, align 8, !tbaa !59
  %115 = getelementptr inbounds %struct.ID, ptr %114, i64 0, i32 5
  %116 = load i16, ptr %115, align 2, !tbaa !60
  %117 = or i16 %116, 1024
  store i16 %117, ptr %115, align 2, !tbaa !60
  %118 = add nsw i32 %83, 1
  br label %119

119:                                              ; preds = %105, %92, %108, %101
  %120 = phi i32 [ %83, %101 ], [ %118, %108 ], [ %83, %92 ], [ %83, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #9
  %121 = icmp eq i64 %84, %80
  br i1 %121, label %122, label %81, !llvm.loop !125

122:                                              ; preds = %119, %67
  %123 = phi i32 [ 0, %67 ], [ %120, %119 ]
  %124 = getelementptr inbounds %struct.BakeImages, ptr %28, i64 0, i32 2
  store i32 %123, ptr %124, align 8, !tbaa !126
  br i1 %35, label %125, label %165

125:                                              ; preds = %122
  %126 = load i32, ptr %124, align 8, !tbaa !126
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %133, label %162

128:                                              ; preds = %160
  %129 = add nuw nsw i64 %134, 1
  %130 = load i32, ptr %124, align 8, !tbaa !126
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %133, label %162, !llvm.loop !127

133:                                              ; preds = %125, %128
  %134 = phi i64 [ %129, %128 ], [ 0, %125 ]
  %135 = phi i64 [ %161, %128 ], [ 0, %125 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #9
  %136 = load ptr, ptr %28, align 8, !tbaa !119
  %137 = getelementptr inbounds %struct.BakeImage, ptr %136, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !122
  %139 = call ptr @BKE_image_acquire_ibuf(ptr noundef %138, ptr noundef null, ptr noundef nonnull %26) #9
  %140 = icmp eq ptr %139, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.ImBuf, ptr %139, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !128
  %144 = getelementptr inbounds %struct.BakeImage, ptr %136, i64 %134, i32 1
  store i32 %143, ptr %144, align 8, !tbaa !132
  %145 = getelementptr inbounds %struct.ImBuf, ptr %139, i64 0, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !133
  %147 = getelementptr inbounds %struct.BakeImage, ptr %136, i64 %134, i32 2
  store i32 %146, ptr %147, align 4, !tbaa !134
  %148 = getelementptr inbounds %struct.BakeImage, ptr %136, i64 %134, i32 3
  store i64 %135, ptr %148, align 8, !tbaa !135
  %149 = sext i32 %143 to i64
  %150 = sext i32 %146 to i64
  %151 = mul nsw i64 %150, %149
  %152 = add i64 %151, %135
  %153 = load ptr, ptr %137, align 8, !tbaa !122
  %154 = load ptr, ptr %26, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %153, ptr noundef nonnull %139, ptr noundef %154) #9
  br label %160

155:                                              ; preds = %133
  %156 = load ptr, ptr %137, align 8, !tbaa !122
  %157 = load ptr, ptr %26, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %156, ptr noundef null, ptr noundef %157) #9
  %158 = load ptr, ptr %137, align 8, !tbaa !122
  %159 = getelementptr inbounds %struct.ID, ptr %158, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.88, ptr noundef nonnull %159) #9
  br label %160

160:                                              ; preds = %155, %141
  %161 = phi i64 [ %152, %141 ], [ %135, %155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #9
  br i1 %140, label %162, label %128

162:                                              ; preds = %160, %128, %125
  %163 = phi i64 [ 0, %125 ], [ 0, %160 ], [ %161, %128 ]
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %710, label %194

165:                                              ; preds = %122
  %166 = sext i32 %19 to i64
  %167 = sext i32 %20 to i64
  %168 = mul nsw i64 %167, %166
  %169 = sext i32 %123 to i64
  %170 = mul i64 %168, %169
  %171 = icmp sgt i32 %123, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %165
  %173 = load ptr, ptr %28, align 8, !tbaa !119
  %174 = icmp eq i8 %10, 0
  %175 = select i1 %174, i64 0, i64 %170
  %176 = zext nneg i32 %123 to i64
  br label %177

177:                                              ; preds = %172, %177
  %178 = phi i64 [ 0, %172 ], [ %183, %177 ]
  %179 = getelementptr inbounds %struct.BakeImage, ptr %173, i64 %178, i32 1
  store i32 %19, ptr %179, align 8, !tbaa !132
  %180 = getelementptr inbounds %struct.BakeImage, ptr %173, i64 %178, i32 2
  store i32 %20, ptr %180, align 4, !tbaa !134
  %181 = getelementptr inbounds %struct.BakeImage, ptr %173, i64 %178, i32 3
  store i64 %175, ptr %181, align 8, !tbaa !135
  %182 = getelementptr inbounds %struct.BakeImage, ptr %173, i64 %178
  store ptr null, ptr %182, align 8, !tbaa !122
  %183 = add nuw nsw i64 %178, 1
  %184 = icmp eq i64 %183, %176
  br i1 %184, label %185, label %177, !llvm.loop !136

185:                                              ; preds = %177, %165
  %186 = icmp eq i8 %10, 0
  %187 = icmp sgt i32 %68, 0
  %188 = and i1 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load ptr, ptr %76, align 8, !tbaa !121
  %191 = call i32 @llvm.umax.i32(i32 %47, i32 1)
  %192 = zext i32 %191 to i64
  %193 = shl nuw nsw i64 %192, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %190, i8 0, i64 %193, i1 false), !tbaa !106
  br label %194

194:                                              ; preds = %189, %185, %162
  %195 = phi i64 [ %163, %162 ], [ %170, %185 ], [ %170, %189 ]
  %196 = icmp eq i8 %12, 0
  br i1 %196, label %233, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr %4, align 8, !tbaa !59
  %199 = icmp eq ptr %198, null
  br i1 %199, label %210, label %200

200:                                              ; preds = %197, %200
  %201 = phi ptr [ %208, %200 ], [ %198, %197 ]
  %202 = phi i32 [ %207, %200 ], [ 0, %197 ]
  %203 = getelementptr inbounds %struct.CollectionPointerLink, ptr %201, i64 0, i32 2, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !81
  %205 = icmp ne ptr %204, %3
  %206 = zext i1 %205 to i32
  %207 = add nuw nsw i32 %202, %206
  %208 = load ptr, ptr %201, align 8, !tbaa !59
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %200, !llvm.loop !137

210:                                              ; preds = %200, %197
  %211 = phi i32 [ 0, %197 ], [ %207, %200 ]
  %212 = icmp eq i8 %13, 0
  br i1 %212, label %229, label %213

213:                                              ; preds = %210
  %214 = load i8, ptr %17, align 1, !tbaa !103
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %229, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 13
  %218 = call ptr @BLI_findstring(ptr noundef nonnull %217, ptr noundef nonnull %17, i32 noundef 34) #9
  %219 = icmp eq ptr %218, null
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.Object, ptr %218, i64 0, i32 3
  %222 = load i16, ptr %221, align 8, !tbaa !110
  %223 = icmp eq i16 %222, 1
  br i1 %223, label %225, label %224

224:                                              ; preds = %220, %216
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.72) #9
  br label %229

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.Object, ptr %218, i64 0, i32 102
  %227 = load i8, ptr %226, align 8, !tbaa !116
  %228 = or i8 %227, 4
  store i8 %228, ptr %226, align 8, !tbaa !116
  br label %229

229:                                              ; preds = %210, %213, %225, %224
  %230 = phi i8 [ 0, %224 ], [ %227, %225 ], [ 0, %213 ], [ 0, %210 ]
  %231 = phi i1 [ false, %224 ], [ true, %225 ], [ true, %213 ], [ true, %210 ]
  %232 = phi ptr [ %218, %224 ], [ %218, %225 ], [ null, %213 ], [ null, %210 ]
  br i1 %231, label %233, label %710

233:                                              ; preds = %229, %194
  %234 = phi i8 [ %230, %229 ], [ 0, %194 ]
  %235 = phi i32 [ %211, %229 ], [ undef, %194 ]
  %236 = phi ptr [ %232, %229 ], [ null, %194 ]
  %237 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %238 = mul i64 %195, 28
  %239 = call ptr %237(i64 noundef %238, ptr noundef nonnull @.str.73) #9
  %240 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %241 = sext i32 %41 to i64
  %242 = shl nsw i64 %241, 2
  %243 = mul i64 %242, %195
  %244 = call ptr %240(i64 noundef %243, ptr noundef nonnull @.str.74) #9
  %245 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  %246 = icmp ne i8 %12, 0
  %247 = icmp eq ptr %236, null
  %248 = and i1 %246, %247
  %249 = icmp ne i8 %13, 0
  %250 = and i1 %249, %248
  br i1 %250, label %252, label %251

251:                                              ; preds = %233
  call void @RE_bake_pixels_populate(ptr noundef %245, ptr noundef %239, i64 noundef %195, ptr noundef nonnull %28, ptr noundef %23) #9
  br label %252

252:                                              ; preds = %251, %233
  br i1 %196, label %384, label %253

253:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30)
  %254 = icmp ne ptr %236, null
  br i1 %254, label %255, label %263

255:                                              ; preds = %253
  %256 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %236, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  %257 = getelementptr inbounds %struct.Mesh, ptr %245, i64 0, i32 28
  %258 = load i32, ptr %257, align 8, !tbaa !138
  %259 = getelementptr inbounds %struct.Mesh, ptr %256, i64 0, i32 28
  %260 = load i32, ptr %259, align 8, !tbaa !138
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %284, label %262

262:                                              ; preds = %255
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.75) #9
  br label %378

263:                                              ; preds = %253
  %264 = icmp eq i8 %13, 0
  br i1 %264, label %284, label %265

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %266, i64 16, i1 false), !tbaa.struct !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %267 = load ptr, ptr %266, align 8, !tbaa !59
  %268 = icmp eq ptr %267, null
  br i1 %268, label %282, label %269

269:                                              ; preds = %265, %279
  %270 = phi ptr [ %280, %279 ], [ %267, %265 ]
  %271 = getelementptr inbounds %struct.ModifierData, ptr %270, i64 0, i32 2
  %272 = load i32, ptr %271, align 8, !tbaa !142
  %273 = icmp eq i32 %272, 13
  br i1 %273, label %279, label %274

274:                                              ; preds = %269
  %275 = call ptr @modifier_new(i32 noundef %272) #9
  %276 = getelementptr inbounds %struct.ModifierData, ptr %275, i64 0, i32 6
  %277 = getelementptr inbounds %struct.ModifierData, ptr %270, i64 0, i32 6
  %278 = call ptr @BLI_strncpy(ptr noundef nonnull %276, ptr noundef nonnull %277, i64 noundef 64) #9
  call void @modifier_copyData(ptr noundef nonnull %270, ptr noundef %275) #9
  call void @BLI_addtail(ptr noundef nonnull %29, ptr noundef %275) #9
  br label %279

279:                                              ; preds = %269, %274
  %280 = load ptr, ptr %270, align 8, !tbaa !59
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %269, !llvm.loop !144

282:                                              ; preds = %279, %265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %266, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !141
  %283 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  call void @RE_bake_pixels_populate(ptr noundef %283, ptr noundef %239, i64 noundef %195, ptr noundef nonnull %28, ptr noundef %23) #9
  br label %284

284:                                              ; preds = %263, %282, %255
  %285 = phi ptr [ %256, %255 ], [ %283, %282 ], [ null, %263 ]
  %286 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %287 = sext i32 %235 to i64
  %288 = mul nsw i64 %287, 232
  %289 = call ptr %286(i64 noundef %288, ptr noundef nonnull @.str.76) #9
  %290 = load ptr, ptr %4, align 8, !tbaa !59
  %291 = icmp eq ptr %290, null
  br i1 %291, label %336, label %292

292:                                              ; preds = %284, %332
  %293 = phi ptr [ %334, %332 ], [ %290, %284 ]
  %294 = phi i32 [ %333, %332 ], [ 0, %284 ]
  %295 = getelementptr inbounds %struct.CollectionPointerLink, ptr %293, i64 0, i32 2, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !81
  %297 = icmp eq ptr %296, %3
  br i1 %297, label %332, label %298

298:                                              ; preds = %292
  %299 = sext i32 %294 to i64
  %300 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299
  %301 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299, i32 1
  store ptr %296, ptr %301, align 8, !tbaa !145
  %302 = getelementptr inbounds %struct.Object, ptr %296, i64 0, i32 102
  %303 = load i8, ptr %302, align 8, !tbaa !116
  %304 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299, i32 4
  store i8 %303, ptr %304, align 8, !tbaa !147
  %305 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %306 = call ptr %305(i64 noundef %238, ptr noundef nonnull @.str.77) #9
  store ptr %306, ptr %300, align 8, !tbaa !148
  %307 = load ptr, ptr %301, align 8, !tbaa !145
  %308 = call ptr @ED_object_modifier_add(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %307, ptr noundef nonnull @.str.78, i32 noundef 44) #9
  %309 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299, i32 2
  store ptr %308, ptr %309, align 8, !tbaa !149
  %310 = getelementptr inbounds %struct.TriangulateModifierData, ptr %308, i64 0, i32 2
  store i32 1, ptr %310, align 4, !tbaa !150
  %311 = getelementptr inbounds %struct.TriangulateModifierData, ptr %308, i64 0, i32 3
  store i32 1, ptr %311, align 8, !tbaa !152
  %312 = load ptr, ptr %301, align 8, !tbaa !145
  %313 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef %312, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  %314 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299, i32 3
  store ptr %313, ptr %314, align 8, !tbaa !153
  %315 = load ptr, ptr %301, align 8, !tbaa !145
  %316 = getelementptr inbounds %struct.Object, ptr %315, i64 0, i32 102
  %317 = load i8, ptr %316, align 8, !tbaa !116
  %318 = and i8 %317, -5
  store i8 %318, ptr %316, align 8, !tbaa !116
  %319 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299, i32 5
  %320 = getelementptr inbounds %struct.Object, ptr %315, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %319, ptr noundef nonnull %320) #9
  %321 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299, i32 6
  %322 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %321, ptr noundef nonnull %319) #9
  %323 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299, i32 7
  call void @normalize_m4_m4(ptr noundef nonnull %323, ptr noundef nonnull %321) #9
  %324 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %299, i32 7, i64 3
  store float 0.000000e+00, ptr %324, align 4, !tbaa !154
  %325 = getelementptr inbounds float, ptr %324, i64 1
  store float 0.000000e+00, ptr %325, align 4, !tbaa !154
  %326 = getelementptr inbounds float, ptr %324, i64 2
  store float 0.000000e+00, ptr %326, align 4, !tbaa !154
  %327 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %323) #9
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %298
  call void @negate_m3(ptr noundef nonnull %323) #9
  br label %330

330:                                              ; preds = %329, %298
  %331 = add nsw i32 %294, 1
  br label %332

332:                                              ; preds = %292, %330
  %333 = phi i32 [ %331, %330 ], [ %294, %292 ]
  %334 = load ptr, ptr %293, align 8, !tbaa !59
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %292, !llvm.loop !155

336:                                              ; preds = %332, %284
  %337 = load i8, ptr %33, align 8, !tbaa !116
  %338 = or i8 %337, 4
  store i8 %338, ptr %33, align 8, !tbaa !116
  %339 = zext i1 %254 to i8
  %340 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %341 = getelementptr inbounds %struct.Object, ptr %236, i64 0, i32 47
  %342 = select i1 %254, ptr %341, ptr %340
  %343 = call zeroext i8 @RE_bake_pixels_populate_from_objects(ptr noundef %245, ptr noundef %239, ptr noundef %289, i32 noundef %235, i64 noundef %195, i8 noundef zeroext %339, float noundef %14, ptr noundef nonnull %340, ptr noundef nonnull %342, ptr noundef %285) #9
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %336
  %346 = icmp sgt i32 %235, 0
  br i1 %346, label %347, label %364

347:                                              ; preds = %345
  %348 = zext nneg i32 %235 to i64
  br label %353

349:                                              ; preds = %336
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.79) #9
  br label %364

350:                                              ; preds = %353
  %351 = add nuw nsw i64 %354, 1
  %352 = icmp eq i64 %351, %348
  br i1 %352, label %364, label %353, !llvm.loop !156

353:                                              ; preds = %347, %350
  %354 = phi i64 [ 0, %347 ], [ %351, %350 ]
  %355 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %354
  %356 = getelementptr inbounds %struct.BakeHighPolyData, ptr %289, i64 %354, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !145
  %358 = load ptr, ptr %355, align 8, !tbaa !148
  %359 = call zeroext i8 @RE_bake_engine(ptr noundef %0, ptr noundef %357, ptr noundef %358, i64 noundef %195, i32 noundef %41, i32 noundef %6, ptr noundef %244) #9
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %361, label %350

361:                                              ; preds = %353
  %362 = load ptr, ptr %356, align 8, !tbaa !145
  %363 = getelementptr inbounds %struct.ID, ptr %362, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.80, ptr noundef nonnull %363) #9
  br label %364

364:                                              ; preds = %350, %345, %361, %349
  %365 = phi i8 [ 0, %361 ], [ 0, %349 ], [ 0, %345 ], [ %359, %350 ]
  %366 = and i1 %249, %247
  br i1 %366, label %367, label %375

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %368, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !141
  %369 = call ptr @BLI_pophead(ptr noundef nonnull %29) #9
  %370 = icmp eq ptr %369, null
  br i1 %370, label %375, label %371

371:                                              ; preds = %367, %371
  %372 = phi ptr [ %373, %371 ], [ %369, %367 ]
  call void @modifier_free(ptr noundef nonnull %372) #9
  %373 = call ptr @BLI_pophead(ptr noundef nonnull %29) #9
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %371, !llvm.loop !157

375:                                              ; preds = %371, %367, %364
  %376 = icmp eq i8 %365, 0
  %377 = select i1 %376, i32 2, i32 0
  br label %378

378:                                              ; preds = %375, %262
  %379 = phi ptr [ %256, %262 ], [ %285, %375 ]
  %380 = phi i32 [ 2, %262 ], [ %377, %375 ]
  %381 = phi ptr [ null, %262 ], [ %289, %375 ]
  %382 = phi i8 [ 0, %262 ], [ %365, %375 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #9
  %383 = icmp eq i32 %380, 0
  br i1 %383, label %392, label %710

384:                                              ; preds = %252
  %385 = load i8, ptr %33, align 8, !tbaa !116
  %386 = and i8 %385, -5
  store i8 %386, ptr %33, align 8, !tbaa !116
  %387 = call zeroext i8 @RE_bake_has_engine(ptr noundef %0) #9
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %384
  %390 = call zeroext i8 @RE_bake_engine(ptr noundef %0, ptr noundef %3, ptr noundef %239, i64 noundef %195, i32 noundef %41, i32 noundef %6, ptr noundef %244) #9
  br label %392

391:                                              ; preds = %384
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.66) #9
  br label %710

392:                                              ; preds = %378, %389
  %393 = phi ptr [ %379, %378 ], [ null, %389 ]
  %394 = phi ptr [ %381, %378 ], [ null, %389 ]
  %395 = phi i8 [ %382, %378 ], [ %390, %389 ]
  %396 = icmp ne i8 %395, 0
  %397 = icmp eq i32 %6, 256
  %398 = and i1 %397, %396
  br i1 %398, label %399, label %429

399:                                              ; preds = %392
  switch i32 %15, label %429 [
    i32 1, label %400
    i32 2, label %412
    i32 3, label %413
  ]

400:                                              ; preds = %399
  %401 = load i32, ptr %16, align 4, !tbaa !106
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %411

403:                                              ; preds = %400
  %404 = getelementptr inbounds i32, ptr %16, i64 1
  %405 = load i32, ptr %404, align 4, !tbaa !106
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %407, label %411

407:                                              ; preds = %403
  %408 = getelementptr inbounds i32, ptr %16, i64 2
  %409 = load i32, ptr %408, align 4, !tbaa !106
  %410 = icmp eq i32 %409, 2
  br i1 %410, label %429, label %411

411:                                              ; preds = %407, %403, %400
  call void @RE_bake_normal_world_to_world(ptr noundef %239, i64 noundef %195, i32 noundef %41, ptr noundef %244, ptr noundef nonnull %16) #9
  br label %429

412:                                              ; preds = %399
  call void @RE_bake_normal_world_to_object(ptr noundef %239, i64 noundef %195, i32 noundef %41, ptr noundef %244, ptr noundef %3, ptr noundef %16) #9
  br label %429

413:                                              ; preds = %399
  br i1 %196, label %416, label %414

414:                                              ; preds = %413
  %415 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  call void @RE_bake_normal_world_to_tangent(ptr noundef %239, i64 noundef %195, i32 noundef %41, ptr noundef %244, ptr noundef %245, ptr noundef %16, ptr noundef nonnull %415) #9
  br label %429

416:                                              ; preds = %413
  %417 = call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 29) #9
  %418 = icmp eq ptr %417, null
  br i1 %418, label %423, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.ModifierData, ptr %417, i64 0, i32 3
  %421 = load i32, ptr %420, align 4, !tbaa !158
  %422 = and i32 %421, -3
  store i32 %422, ptr %420, align 4, !tbaa !158
  br label %423

423:                                              ; preds = %419, %416
  %424 = phi i32 [ %421, %419 ], [ undef, %416 ]
  %425 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  call void @RE_bake_pixels_populate(ptr noundef %425, ptr noundef %239, i64 noundef %195, ptr noundef nonnull %28, ptr noundef %23) #9
  %426 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  call void @RE_bake_normal_world_to_tangent(ptr noundef %239, i64 noundef %195, i32 noundef %41, ptr noundef %244, ptr noundef %425, ptr noundef %16, ptr noundef nonnull %426) #9
  call void @BKE_libblock_free(ptr noundef %1, ptr noundef %425) #9
  br i1 %418, label %429, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.ModifierData, ptr %417, i64 0, i32 3
  store i32 %424, ptr %428, align 4, !tbaa !158
  br label %429

429:                                              ; preds = %423, %427, %411, %412, %407, %414, %399, %392
  %430 = icmp eq i8 %395, 0
  br i1 %430, label %456, label %431

431:                                              ; preds = %429
  %432 = load i32, ptr %124, align 8, !tbaa !126
  %433 = icmp sgt i32 %432, 0
  br i1 %433, label %434, label %691

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 116
  %436 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 2
  %437 = icmp eq i8 %11, 0
  %438 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %439 = icmp eq i8 %10, 0
  %440 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 29
  %441 = getelementptr inbounds %struct.Mesh, ptr %245, i64 0, i32 5
  %442 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 116, i32 0, i32 1
  %443 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 116, i32 0, i32 2
  %444 = icmp eq i8 %40, 0
  %445 = icmp sgt i32 %7, 0
  %446 = select i1 %439, i32 25, i32 0
  %447 = icmp slt i32 %7, 1
  %448 = icmp ne i8 %9, 0
  %449 = and i1 %447, %448
  %450 = icmp eq i8 %40, 0
  %451 = icmp sgt i32 %7, 0
  %452 = icmp eq ptr %22, null
  %453 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 8
  %454 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 19
  %455 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  br label %463

456:                                              ; preds = %429
  %457 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.81, ptr noundef nonnull %457) #9
  br label %691

458:                                              ; preds = %687
  %459 = add nuw nsw i64 %464, 1
  %460 = load i32, ptr %124, align 8, !tbaa !126
  %461 = sext i32 %460 to i64
  %462 = icmp slt i64 %459, %461
  br i1 %462, label %463, label %691, !llvm.loop !159

463:                                              ; preds = %434, %458
  %464 = phi i64 [ 0, %434 ], [ %459, %458 ]
  %465 = load ptr, ptr %28, align 8, !tbaa !119
  %466 = getelementptr inbounds %struct.BakeImage, ptr %465, i64 %464
  br i1 %35, label %467, label %583

467:                                              ; preds = %463
  %468 = load ptr, ptr %466, align 8, !tbaa !122
  %469 = getelementptr inbounds %struct.BakeImage, ptr %465, i64 %464, i32 3
  %470 = load i64, ptr %469, align 8, !tbaa !135
  %471 = getelementptr inbounds %struct.BakePixel, ptr %239, i64 %470
  %472 = mul i64 %470, %241
  %473 = getelementptr inbounds float, ptr %244, i64 %472
  %474 = getelementptr inbounds %struct.BakeImage, ptr %465, i64 %464, i32 1
  %475 = load i32, ptr %474, align 8, !tbaa !132
  %476 = getelementptr inbounds %struct.BakeImage, ptr %465, i64 %464, i32 2
  %477 = load i32, ptr %476, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #9
  %478 = sext i32 %475 to i64
  %479 = sext i32 %477 to i64
  %480 = mul nsw i64 %479, %478
  %481 = call ptr @BKE_image_acquire_ibuf(ptr noundef %468, ptr noundef null, ptr noundef nonnull %25) #9
  %482 = icmp eq ptr %481, null
  br i1 %482, label %570, label %483

483:                                              ; preds = %467
  br i1 %449, label %487, label %484

484:                                              ; preds = %483
  %485 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %486 = call ptr %485(i64 noundef %480, ptr noundef nonnull @.str.89) #9
  call void @RE_bake_mask_fill(ptr noundef %471, i64 noundef %480, ptr noundef %486) #9
  br label %487

487:                                              ; preds = %484, %483
  %488 = phi ptr [ null, %483 ], [ %486, %484 ]
  %489 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 6
  %490 = load i32, ptr %489, align 8, !tbaa !160
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 32
  br i1 %450, label %493, label %510

493:                                              ; preds = %487
  %494 = call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #9
  %495 = icmp eq i8 %492, 0
  br i1 %495, label %498, label %496

496:                                              ; preds = %493
  %497 = call ptr @IMB_colormanagement_get_float_colorspace(ptr noundef %481) #9
  br label %500

498:                                              ; preds = %493
  %499 = call ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef %481) #9
  br label %500

500:                                              ; preds = %498, %496
  %501 = phi ptr [ %497, %496 ], [ %499, %498 ]
  %502 = icmp eq ptr %494, %501
  br i1 %502, label %510, label %503

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 2
  %505 = load i32, ptr %504, align 8, !tbaa !128
  %506 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 3
  %507 = load i32, ptr %506, align 4, !tbaa !133
  %508 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 5
  %509 = load i32, ptr %508, align 4, !tbaa !161
  call void @IMB_colormanagement_transform(ptr noundef %473, i32 noundef %505, i32 noundef %507, i32 noundef %509, ptr noundef %494, ptr noundef %501, i8 noundef zeroext 0) #9
  br label %510

510:                                              ; preds = %503, %500, %487
  %511 = icmp eq i8 %492, 0
  %512 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 5
  %513 = load i32, ptr %512, align 4, !tbaa !161
  br i1 %448, label %514, label %531

514:                                              ; preds = %510
  br i1 %511, label %522, label %515

515:                                              ; preds = %514
  %516 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 9
  %517 = load ptr, ptr %516, align 8, !tbaa !162
  %518 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 2
  %519 = load i32, ptr %518, align 8, !tbaa !128
  %520 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 3
  %521 = load i32, ptr %520, align 4, !tbaa !133
  call void @IMB_buffer_float_from_float(ptr noundef %517, ptr noundef %473, i32 noundef %513, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0, i32 noundef %519, i32 noundef %521, i32 noundef %519, i32 noundef %519) #9
  br label %548

522:                                              ; preds = %514
  %523 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 8
  %524 = load ptr, ptr %523, align 8, !tbaa !163
  %525 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 18
  %526 = load float, ptr %525, align 8, !tbaa !164
  %527 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 2
  %528 = load i32, ptr %527, align 8, !tbaa !128
  %529 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 3
  %530 = load i32, ptr %529, align 4, !tbaa !133
  call void @IMB_buffer_byte_from_float(ptr noundef %524, ptr noundef %473, i32 noundef %513, float noundef %526, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %528, i32 noundef %530, i32 noundef %528, i32 noundef %528) #9
  br label %548

531:                                              ; preds = %510
  br i1 %511, label %539, label %532

532:                                              ; preds = %531
  %533 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 9
  %534 = load ptr, ptr %533, align 8, !tbaa !162
  %535 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 2
  %536 = load i32, ptr %535, align 8, !tbaa !128
  %537 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 3
  %538 = load i32, ptr %537, align 4, !tbaa !133
  call void @IMB_buffer_float_from_float_mask(ptr noundef %534, ptr noundef %473, i32 noundef %513, i32 noundef %536, i32 noundef %538, i32 noundef %536, i32 noundef %536, ptr noundef %488) #9
  br label %548

539:                                              ; preds = %531
  %540 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 8
  %541 = load ptr, ptr %540, align 8, !tbaa !163
  %542 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 18
  %543 = load float, ptr %542, align 8, !tbaa !164
  %544 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 2
  %545 = load i32, ptr %544, align 8, !tbaa !128
  %546 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 3
  %547 = load i32, ptr %546, align 4, !tbaa !133
  call void @IMB_buffer_byte_from_float_mask(ptr noundef %541, ptr noundef %473, i32 noundef %513, float noundef %543, i8 noundef zeroext 0, i32 noundef %545, i32 noundef %547, i32 noundef %545, i32 noundef %545, ptr noundef %488) #9
  br label %548

548:                                              ; preds = %539, %532, %522, %515
  br i1 %451, label %549, label %550

549:                                              ; preds = %548
  call void @RE_bake_margin(ptr noundef %481, ptr noundef %488, i32 noundef %7) #9
  br label %550

550:                                              ; preds = %549, %548
  %551 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 23
  %552 = load i32, ptr %551, align 4, !tbaa !165
  %553 = or i32 %552, 18
  store i32 %553, ptr %551, align 4, !tbaa !165
  %554 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 9
  %555 = load ptr, ptr %554, align 8, !tbaa !162
  %556 = icmp eq ptr %555, null
  br i1 %556, label %559, label %557

557:                                              ; preds = %550
  %558 = or i32 %552, 26
  store i32 %558, ptr %551, align 4, !tbaa !165
  br label %559

559:                                              ; preds = %557, %550
  %560 = getelementptr inbounds %struct.ImBuf, ptr %481, i64 0, i32 19
  %561 = load ptr, ptr %560, align 8, !tbaa !59
  %562 = icmp eq ptr %561, null
  br i1 %562, label %566, label %563

563:                                              ; preds = %559
  %564 = load i32, ptr %551, align 4, !tbaa !165
  %565 = or i32 %564, 4
  store i32 %565, ptr %551, align 4, !tbaa !165
  call void @imb_freemipmapImBuf(ptr noundef %481) #9
  br label %566

566:                                              ; preds = %563, %559
  call void @BKE_image_release_ibuf(ptr noundef %468, ptr noundef %481, ptr noundef null) #9
  %567 = icmp eq ptr %488, null
  br i1 %567, label %570, label %568

568:                                              ; preds = %566
  %569 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %569(ptr noundef nonnull %488) #9
  br label %570

570:                                              ; preds = %467, %566, %568
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #9
  %571 = load ptr, ptr %466, align 8, !tbaa !122
  br i1 %452, label %580, label %572

572:                                              ; preds = %570
  %573 = load i8, ptr %453, align 8, !tbaa !166
  %574 = icmp eq i8 %573, 6
  br i1 %574, label %575, label %580

575:                                              ; preds = %572
  %576 = load ptr, ptr %454, align 8, !tbaa !168
  %577 = icmp eq ptr %576, null
  br i1 %577, label %580, label %578

578:                                              ; preds = %575
  %579 = getelementptr inbounds %struct.SpaceImage, ptr %576, i64 0, i32 5
  store ptr %571, ptr %579, align 8, !tbaa !169
  br label %580

580:                                              ; preds = %570, %572, %575, %578
  br i1 %482, label %581, label %582

581:                                              ; preds = %580
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.82, ptr noundef nonnull %455) #9
  br label %687

582:                                              ; preds = %580
  call void @BKE_report(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.83) #9
  br label %687

583:                                              ; preds = %463
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %31) #9
  %584 = load i8, ptr %435, align 8, !tbaa !175
  call void @BKE_makepicstring_from_type(ptr noundef nonnull %31, ptr noundef %18, ptr noundef nonnull %436, i32 noundef 0, i8 noundef zeroext %584, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br i1 %437, label %588, label %585

585:                                              ; preds = %583
  %586 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %31, i64 noundef 1024, ptr noundef nonnull %438, ptr noundef nonnull @.str.84) #9
  %587 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %31, i64 noundef 1024, ptr noundef %21, ptr noundef nonnull @.str.84) #9
  br label %588

588:                                              ; preds = %585, %583
  br i1 %439, label %616, label %589

589:                                              ; preds = %588
  %590 = load ptr, ptr %466, align 8, !tbaa !122
  %591 = icmp eq ptr %590, null
  br i1 %591, label %595, label %592

592:                                              ; preds = %589
  %593 = getelementptr inbounds %struct.ID, ptr %590, i64 0, i32 4, i64 2
  %594 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %31, i64 noundef 1024, ptr noundef nonnull %593, ptr noundef nonnull @.str.84) #9
  br label %616

595:                                              ; preds = %589
  %596 = load ptr, ptr %440, align 8, !tbaa !176
  %597 = getelementptr inbounds ptr, ptr %596, i64 %464
  %598 = load ptr, ptr %597, align 8, !tbaa !59
  %599 = icmp eq ptr %598, null
  br i1 %599, label %603, label %600

600:                                              ; preds = %595
  %601 = getelementptr inbounds %struct.ID, ptr %598, i64 0, i32 4, i64 2
  %602 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %31, i64 noundef 1024, ptr noundef nonnull %601, ptr noundef nonnull @.str.84) #9
  br label %616

603:                                              ; preds = %595
  %604 = load ptr, ptr %441, align 8, !tbaa !177
  %605 = getelementptr inbounds ptr, ptr %604, i64 %464
  %606 = load ptr, ptr %605, align 8, !tbaa !59
  %607 = icmp eq ptr %606, null
  br i1 %607, label %611, label %608

608:                                              ; preds = %603
  %609 = getelementptr inbounds %struct.ID, ptr %606, i64 0, i32 4, i64 2
  %610 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %31, i64 noundef 1024, ptr noundef nonnull %609, ptr noundef nonnull @.str.84) #9
  br label %616

611:                                              ; preds = %603
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #9
  %612 = trunc i64 %464 to i32
  %613 = urem i32 %612, 1000
  %614 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef %613) #9
  %615 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %31, i64 noundef 1024, ptr noundef nonnull %32, ptr noundef nonnull @.str.84) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #9
  br label %616

616:                                              ; preds = %592, %608, %611, %600, %588
  %617 = getelementptr inbounds %struct.BakeImage, ptr %465, i64 %464, i32 3
  %618 = load i64, ptr %617, align 8, !tbaa !135
  %619 = getelementptr inbounds %struct.BakePixel, ptr %239, i64 %618
  %620 = mul i64 %618, %241
  %621 = getelementptr inbounds float, ptr %244, i64 %620
  %622 = getelementptr inbounds %struct.BakeImage, ptr %465, i64 %464, i32 1
  %623 = load i32, ptr %622, align 8, !tbaa !132
  %624 = getelementptr inbounds %struct.BakeImage, ptr %465, i64 %464, i32 2
  %625 = load i32, ptr %624, align 4, !tbaa !134
  %626 = load i8, ptr %442, align 1, !tbaa !178
  %627 = icmp ugt i8 %626, 8
  %628 = load i8, ptr %443, align 2, !tbaa !179
  %629 = select i1 %627, i32 32, i32 1
  %630 = call ptr @IMB_allocImBuf(i32 noundef %623, i32 noundef %625, i8 noundef zeroext %628, i32 noundef %629) #9
  %631 = icmp eq ptr %630, null
  br i1 %631, label %680, label %632

632:                                              ; preds = %616
  br i1 %627, label %633, label %642

633:                                              ; preds = %632
  %634 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 9
  %635 = load ptr, ptr %634, align 8, !tbaa !162
  %636 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 5
  %637 = load i32, ptr %636, align 4, !tbaa !161
  %638 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 2
  %639 = load i32, ptr %638, align 8, !tbaa !128
  %640 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 3
  %641 = load i32, ptr %640, align 4, !tbaa !133
  call void @IMB_buffer_float_from_float(ptr noundef %635, ptr noundef %621, i32 noundef %637, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0, i32 noundef %639, i32 noundef %641, i32 noundef %639, i32 noundef %639) #9
  br label %663

642:                                              ; preds = %632
  br i1 %444, label %643, label %652

643:                                              ; preds = %642
  %644 = call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #9
  %645 = call ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef nonnull %630) #9
  %646 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 2
  %647 = load i32, ptr %646, align 8, !tbaa !128
  %648 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 3
  %649 = load i32, ptr %648, align 4, !tbaa !133
  %650 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 5
  %651 = load i32, ptr %650, align 4, !tbaa !161
  call void @IMB_colormanagement_transform(ptr noundef %621, i32 noundef %647, i32 noundef %649, i32 noundef %651, ptr noundef %644, ptr noundef %645, i8 noundef zeroext 0) #9
  br label %652

652:                                              ; preds = %643, %642
  %653 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 8
  %654 = load ptr, ptr %653, align 8, !tbaa !163
  %655 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 5
  %656 = load i32, ptr %655, align 4, !tbaa !161
  %657 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 18
  %658 = load float, ptr %657, align 8, !tbaa !164
  %659 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 2
  %660 = load i32, ptr %659, align 8, !tbaa !128
  %661 = getelementptr inbounds %struct.ImBuf, ptr %630, i64 0, i32 3
  %662 = load i32, ptr %661, align 4, !tbaa !133
  call void @IMB_buffer_byte_from_float(ptr noundef %654, ptr noundef %621, i32 noundef %656, float noundef %658, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %660, i32 noundef %662, i32 noundef %660, i32 noundef %660) #9
  br label %663

663:                                              ; preds = %652, %633
  br i1 %445, label %664, label %673

664:                                              ; preds = %663
  %665 = sext i32 %623 to i64
  %666 = sext i32 %625 to i64
  %667 = mul nsw i64 %666, %665
  %668 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %669 = call ptr %668(i64 noundef %667, ptr noundef nonnull @.str.89) #9
  call void @RE_bake_mask_fill(ptr noundef %619, i64 noundef %667, ptr noundef %669) #9
  call void @RE_bake_margin(ptr noundef nonnull %630, ptr noundef %669, i32 noundef %7) #9
  %670 = icmp eq ptr %669, null
  br i1 %670, label %673, label %671

671:                                              ; preds = %664
  %672 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %672(ptr noundef nonnull %669) #9
  br label %673

673:                                              ; preds = %671, %664, %663
  %674 = call i32 @BKE_imbuf_write(ptr noundef nonnull %630, ptr noundef nonnull %31, ptr noundef nonnull %435) #9
  %675 = trunc i32 %674 to i8
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %679, label %677

677:                                              ; preds = %673
  %678 = call i32 @chmod(ptr noundef nonnull %31, i32 noundef 384) #9
  br label %679

679:                                              ; preds = %677, %673
  call void @IMB_freeImBuf(ptr noundef nonnull %630) #9
  br label %680

680:                                              ; preds = %616, %679
  %681 = phi i8 [ %675, %679 ], [ 0, %616 ]
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %683, label %684

683:                                              ; preds = %680
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.86, ptr noundef nonnull %31) #9
  br label %685

684:                                              ; preds = %680
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.87, ptr noundef nonnull %31) #9
  br label %685

685:                                              ; preds = %684, %683
  %686 = phi i32 [ 4, %684 ], [ 2, %683 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %31) #9
  br label %687

687:                                              ; preds = %685, %582, %581
  %688 = phi i32 [ 0, %581 ], [ 0, %582 ], [ %446, %685 ]
  %689 = phi i32 [ 2, %581 ], [ 4, %582 ], [ %686, %685 ]
  %690 = icmp eq i32 %688, 0
  br i1 %690, label %458, label %691

691:                                              ; preds = %458, %687, %431, %456
  %692 = phi i32 [ 2, %456 ], [ 2, %431 ], [ %689, %687 ], [ %689, %458 ]
  %693 = load i32, ptr %124, align 8
  %694 = icmp sgt i32 %693, 0
  %695 = select i1 %35, i1 %694, i1 false
  br i1 %695, label %696, label %710

696:                                              ; preds = %691, %705
  %697 = phi i64 [ %706, %705 ], [ 0, %691 ]
  %698 = load ptr, ptr %28, align 8, !tbaa !119
  %699 = getelementptr inbounds %struct.BakeImage, ptr %698, i64 %697
  %700 = load ptr, ptr %699, align 8, !tbaa !122
  %701 = getelementptr inbounds %struct.Image, ptr %700, i64 0, i32 9
  %702 = load i16, ptr %701, align 4, !tbaa !180
  %703 = icmp eq i16 %702, 2
  br i1 %703, label %704, label %705

704:                                              ; preds = %696
  call void @GPU_free_image(ptr noundef %700) #9
  call void @DAG_id_tag_update(ptr noundef %700, i16 noundef signext 0) #9
  br label %705

705:                                              ; preds = %704, %696
  %706 = add nuw nsw i64 %697, 1
  %707 = load i32, ptr %124, align 8, !tbaa !126
  %708 = sext i32 %707 to i64
  %709 = icmp slt i64 %706, %708
  br i1 %709, label %696, label %710, !llvm.loop !181

710:                                              ; preds = %705, %58, %378, %229, %691, %162, %391, %66, %63, %44
  %711 = phi ptr [ null, %58 ], [ null, %63 ], [ null, %66 ], [ null, %162 ], [ null, %229 ], [ %239, %378 ], [ %239, %691 ], [ %239, %391 ], [ null, %44 ], [ %239, %705 ]
  %712 = phi ptr [ null, %58 ], [ null, %63 ], [ null, %66 ], [ null, %162 ], [ null, %229 ], [ %244, %378 ], [ %244, %691 ], [ %244, %391 ], [ null, %44 ], [ %244, %705 ]
  %713 = phi ptr [ null, %58 ], [ null, %63 ], [ null, %66 ], [ null, %162 ], [ null, %229 ], [ %379, %378 ], [ %393, %691 ], [ null, %391 ], [ null, %44 ], [ %393, %705 ]
  %714 = phi ptr [ null, %58 ], [ null, %63 ], [ null, %66 ], [ null, %162 ], [ null, %229 ], [ %245, %378 ], [ %245, %691 ], [ %245, %391 ], [ null, %44 ], [ %245, %705 ]
  %715 = phi i8 [ 0, %58 ], [ 0, %63 ], [ 0, %66 ], [ 0, %162 ], [ %230, %229 ], [ %234, %378 ], [ %234, %691 ], [ %234, %391 ], [ 0, %44 ], [ %234, %705 ]
  %716 = phi i32 [ undef, %58 ], [ undef, %63 ], [ undef, %66 ], [ undef, %162 ], [ %211, %229 ], [ %235, %378 ], [ %235, %691 ], [ %235, %391 ], [ undef, %44 ], [ %235, %705 ]
  %717 = phi ptr [ null, %58 ], [ null, %63 ], [ null, %66 ], [ null, %162 ], [ null, %229 ], [ %381, %378 ], [ %394, %691 ], [ null, %391 ], [ null, %44 ], [ %394, %705 ]
  %718 = phi ptr [ null, %58 ], [ null, %63 ], [ null, %66 ], [ null, %162 ], [ %232, %229 ], [ %236, %378 ], [ %236, %691 ], [ %236, %391 ], [ null, %44 ], [ %236, %705 ]
  %719 = phi i32 [ 2, %58 ], [ 2, %63 ], [ 2, %66 ], [ 2, %162 ], [ 2, %229 ], [ 2, %378 ], [ %692, %691 ], [ 2, %391 ], [ 2, %44 ], [ %692, %705 ]
  %720 = icmp eq ptr %717, null
  br i1 %720, label %754, label %721

721:                                              ; preds = %710
  %722 = icmp sgt i32 %716, 0
  br i1 %722, label %723, label %752

723:                                              ; preds = %721
  %724 = zext nneg i32 %716 to i64
  br label %725

725:                                              ; preds = %723, %749
  %726 = phi i64 [ 0, %723 ], [ %750, %749 ]
  %727 = getelementptr inbounds %struct.BakeHighPolyData, ptr %717, i64 %726
  %728 = getelementptr inbounds %struct.BakeHighPolyData, ptr %717, i64 %726, i32 4
  %729 = load i8, ptr %728, align 8, !tbaa !147
  %730 = getelementptr inbounds %struct.BakeHighPolyData, ptr %717, i64 %726, i32 1
  %731 = load ptr, ptr %730, align 8, !tbaa !145
  %732 = getelementptr inbounds %struct.Object, ptr %731, i64 0, i32 102
  store i8 %729, ptr %732, align 8, !tbaa !116
  %733 = load ptr, ptr %727, align 8, !tbaa !148
  %734 = icmp eq ptr %733, null
  br i1 %734, label %737, label %735

735:                                              ; preds = %725
  %736 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %736(ptr noundef nonnull %733) #9
  br label %737

737:                                              ; preds = %735, %725
  %738 = getelementptr inbounds %struct.BakeHighPolyData, ptr %717, i64 %726, i32 2
  %739 = load ptr, ptr %738, align 8, !tbaa !149
  %740 = icmp eq ptr %739, null
  br i1 %740, label %744, label %741

741:                                              ; preds = %737
  %742 = load ptr, ptr %730, align 8, !tbaa !145
  %743 = call zeroext i8 @ED_object_modifier_remove(ptr noundef %5, ptr noundef %1, ptr noundef %742, ptr noundef nonnull %739) #9
  br label %744

744:                                              ; preds = %741, %737
  %745 = getelementptr inbounds %struct.BakeHighPolyData, ptr %717, i64 %726, i32 3
  %746 = load ptr, ptr %745, align 8, !tbaa !153
  %747 = icmp eq ptr %746, null
  br i1 %747, label %749, label %748

748:                                              ; preds = %744
  call void @BKE_libblock_free(ptr noundef %1, ptr noundef nonnull %746) #9
  br label %749

749:                                              ; preds = %744, %748
  %750 = add nuw nsw i64 %726, 1
  %751 = icmp eq i64 %750, %724
  br i1 %751, label %752, label %725, !llvm.loop !182

752:                                              ; preds = %749, %721
  %753 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %753(ptr noundef nonnull %717) #9
  br label %754

754:                                              ; preds = %752, %710
  store i8 %34, ptr %33, align 8, !tbaa !116
  %755 = icmp eq ptr %718, null
  br i1 %755, label %758, label %756

756:                                              ; preds = %754
  %757 = getelementptr inbounds %struct.Object, ptr %718, i64 0, i32 102
  store i8 %715, ptr %757, align 8, !tbaa !116
  br label %758

758:                                              ; preds = %756, %754
  %759 = icmp eq ptr %711, null
  br i1 %759, label %762, label %760

760:                                              ; preds = %758
  %761 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %761(ptr noundef nonnull %711) #9
  br label %762

762:                                              ; preds = %760, %758
  %763 = load ptr, ptr %28, align 8, !tbaa !119
  %764 = icmp eq ptr %763, null
  br i1 %764, label %767, label %765

765:                                              ; preds = %762
  %766 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %766(ptr noundef nonnull %763) #9
  br label %767

767:                                              ; preds = %765, %762
  %768 = getelementptr inbounds %struct.BakeImages, ptr %28, i64 0, i32 1
  %769 = load ptr, ptr %768, align 8, !tbaa !121
  %770 = icmp eq ptr %769, null
  br i1 %770, label %773, label %771

771:                                              ; preds = %767
  %772 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %772(ptr noundef nonnull %769) #9
  br label %773

773:                                              ; preds = %771, %767
  %774 = icmp eq ptr %712, null
  br i1 %774, label %777, label %775

775:                                              ; preds = %773
  %776 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %776(ptr noundef nonnull %712) #9
  br label %777

777:                                              ; preds = %775, %773
  %778 = icmp eq ptr %714, null
  br i1 %778, label %780, label %779

779:                                              ; preds = %777
  call void @BKE_libblock_free(ptr noundef %1, ptr noundef nonnull %714) #9
  br label %780

780:                                              ; preds = %779, %777
  %781 = icmp eq ptr %713, null
  br i1 %781, label %783, label %782

782:                                              ; preds = %780
  call void @BKE_libblock_free(ptr noundef %1, ptr noundef nonnull %713) #9
  br label %783

783:                                              ; preds = %780, %782
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #9
  ret i32 %719
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_property_enum_identifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #1

declare void @BKE_main_id_tag_idcode(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @bake_object_check(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !110
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.60, ptr noundef nonnull %11) #9
  br label %85

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 25
  %16 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %15, i32 noundef 16) #9
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %20 = load i32, ptr %19, align 8, !tbaa !117
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %24 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  br label %27

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.61, ptr noundef nonnull %26) #9
  br label %85

27:                                               ; preds = %22, %77
  %28 = phi i32 [ 0, %22 ], [ %29, %77 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr null, ptr %6, align 8, !tbaa !59
  %29 = add nuw nsw i32 %28, 1
  %30 = call zeroext i8 @ED_object_get_active_image(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %31 = load ptr, ptr %3, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %6, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 8, !tbaa !59
  %38 = call zeroext i8 @BKE_node_is_connected_to_output(ptr noundef %37, ptr noundef nonnull %34) #9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %3, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.62, ptr noundef nonnull %42, ptr noundef nonnull %23) #9
  br label %43

43:                                               ; preds = %36, %40, %33
  %44 = load ptr, ptr %3, align 8, !tbaa !59
  %45 = call ptr @BKE_image_acquire_ibuf(ptr noundef %44, ptr noundef null, ptr noundef nonnull %4) #9
  %46 = icmp eq ptr %45, null
  %47 = load ptr, ptr %3, align 8, !tbaa !59
  br i1 %46, label %50, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %47, ptr noundef nonnull %45, ptr noundef %49) #9
  br label %54

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef nonnull %51, ptr noundef nonnull %24) #9
  %52 = load ptr, ptr %3, align 8, !tbaa !59
  %53 = load ptr, ptr %4, align 8, !tbaa !59
  call void @BKE_image_release_ibuf(ptr noundef %52, ptr noundef null, ptr noundef %53) #9
  br label %54

54:                                               ; preds = %48, %50
  br i1 %46, label %84, label %77

55:                                               ; preds = %27
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %57 = load ptr, ptr %56, align 8, !tbaa !176
  %58 = zext nneg i32 %28 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ID, ptr %60, i64 0, i32 4, i64 2
  %64 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.64, ptr noundef nonnull %63, i32 noundef %28, ptr noundef nonnull %64) #9
  br label %84

65:                                               ; preds = %55
  %66 = load ptr, ptr %13, align 8, !tbaa !118
  %67 = getelementptr inbounds %struct.Mesh, ptr %66, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !177
  %69 = getelementptr inbounds ptr, ptr %68, i64 %58
  %70 = load ptr, ptr %69, align 8, !tbaa !59
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.ID, ptr %70, i64 0, i32 4, i64 2
  %74 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.64, ptr noundef nonnull %73, i32 noundef %28, ptr noundef nonnull %74) #9
  br label %84

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.65, i32 noundef %28, ptr noundef nonnull %76) #9
  br label %84

77:                                               ; preds = %54
  %78 = load ptr, ptr %3, align 8, !tbaa !59
  %79 = getelementptr inbounds %struct.ID, ptr %78, i64 0, i32 5
  %80 = load i16, ptr %79, align 2, !tbaa !60
  %81 = or i16 %80, 1024
  store i16 %81, ptr %79, align 2, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %82 = load i32, ptr %19, align 8, !tbaa !117
  %83 = icmp slt i32 %29, %82
  br i1 %83, label %27, label %85, !llvm.loop !183

84:                                               ; preds = %54, %62, %75, %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %85

85:                                               ; preds = %77, %18, %25, %84, %10
  %86 = phi i8 [ 0, %10 ], [ 0, %84 ], [ 0, %25 ], [ 1, %18 ], [ 1, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i8 %86
}

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @ED_object_get_active_image(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_node_is_connected_to_output(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RE_bake_ibuf_clear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @RE_pass_depth(i32 noundef) local_unnamed_addr #1

declare void @RE_bake_engine_set_engine_parameters(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RE_bake_has_engine(ptr noundef) local_unnamed_addr #1

declare i32 @CustomData_get_named_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_mesh_new_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RE_bake_pixels_populate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @modifier_copyData(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_object_modifier_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @normalize_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #1

declare void @negate_m3(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RE_bake_pixels_populate_from_objects(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RE_bake_engine(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

declare void @modifier_free(ptr noundef) local_unnamed_addr #1

declare void @RE_bake_normal_world_to_world(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RE_bake_normal_world_to_object(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RE_bake_normal_world_to_tangent(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_makepicstring_from_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @BLI_path_suffix(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare zeroext i8 @ED_object_modifier_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RE_bake_mask_fill(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #1

declare ptr @IMB_colormanagement_get_float_colorspace(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef) local_unnamed_addr #1

declare void @IMB_colormanagement_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @IMB_buffer_float_from_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @IMB_buffer_byte_from_float(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @IMB_buffer_float_from_float_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_buffer_byte_from_float_mask(ptr noundef, ptr noundef, i32 noundef, float noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @RE_bake_margin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @imb_freemipmapImBuf(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare i32 @BKE_imbuf_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

declare void @GPU_free_image(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare void @RE_progress_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @bake_progress_update(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load float, ptr %4, align 4, !tbaa !154
  %8 = fcmp une float %7, %1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  store float %1, ptr %4, align 4, !tbaa !154
  %10 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  store i16 1, ptr %11, align 2, !tbaa !186
  br label %12

12:                                               ; preds = %9, %6, %2
  ret void
}

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @bake_freejob(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 4
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #9
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %3(ptr noundef %0) #9
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !105
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @bake_startjob(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 26
  store ptr %2, ptr %5, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 25
  store ptr %3, ptr %6, align 8, !tbaa !184
  %7 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  tail call void @RE_SetReports(ptr noundef %8, ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = load ptr, ptr %0, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %9, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 11
  %17 = load i8, ptr %16, align 1, !tbaa !56
  %18 = tail call fastcc zeroext i8 @bake_objects_check(ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15, i8 noundef zeroext %17)
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 22
  store i32 2, ptr %21, align 8, !tbaa !108
  br label %150

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 8
  %24 = load i8, ptr %23, align 4, !tbaa !57
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !58
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 14
  %32 = load i32, ptr %31, align 8, !tbaa !74
  %33 = icmp eq i32 %32, 3
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i8 [ 0, %26 ], [ %34, %30 ]
  %37 = load ptr, ptr %11, align 8, !tbaa !53
  %38 = getelementptr inbounds %struct.Main, ptr %37, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %35, %48
  %42 = phi ptr [ %49, %48 ], [ %39, %35 ]
  %43 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 5
  %44 = load i16, ptr %43, align 2, !tbaa !60
  %45 = and i16 %44, 1024
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  tail call void @RE_bake_ibuf_clear(ptr noundef nonnull %42, i8 noundef zeroext %36) #9
  br label %48

48:                                               ; preds = %47, %41
  %49 = load ptr, ptr %42, align 8, !tbaa !59
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %41, !llvm.loop !64

51:                                               ; preds = %48, %35, %22
  %52 = load i8, ptr %16, align 1, !tbaa !56
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %7, align 8, !tbaa !49
  %56 = load ptr, ptr %11, align 8, !tbaa !53
  %57 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !67
  %59 = load ptr, ptr %0, align 8, !tbaa !54
  %60 = load ptr, ptr %9, align 8, !tbaa !55
  %61 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !58
  %63 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !68
  %65 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !69
  %67 = load i8, ptr %23, align 4, !tbaa !57
  %68 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 9
  %69 = load i8, ptr %68, align 1, !tbaa !70
  %70 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 10
  %71 = load i8, ptr %70, align 2, !tbaa !71
  %72 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 12
  %73 = load i8, ptr %72, align 8, !tbaa !72
  %74 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 13
  %75 = load float, ptr %74, align 4, !tbaa !73
  %76 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 14
  %77 = load i32, ptr %76, align 8, !tbaa !74
  %78 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 15
  %79 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 17
  %80 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 18
  %81 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 19
  %82 = load i32, ptr %81, align 8, !tbaa !75
  %83 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 20
  %84 = load i32, ptr %83, align 4, !tbaa !76
  %85 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 21
  %86 = load ptr, ptr %85, align 8, !tbaa !77
  %87 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 27
  %88 = load ptr, ptr %87, align 8, !tbaa !78
  %89 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 16
  %90 = tail call fastcc i32 @bake(ptr noundef %55, ptr noundef %56, ptr noundef %58, ptr noundef %59, ptr noundef nonnull %14, ptr noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i8 noundef zeroext %67, i8 noundef zeroext %69, i8 noundef zeroext %71, i8 noundef zeroext 1, i8 noundef zeroext %73, float noundef %75, i32 noundef %77, ptr noundef nonnull %78, ptr noundef nonnull %79, ptr noundef nonnull %80, i32 noundef %82, i32 noundef %84, ptr noundef %86, ptr noundef %88, ptr noundef nonnull %89)
  %91 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 22
  store i32 %90, ptr %91, align 8, !tbaa !108
  br label %148

92:                                               ; preds = %51
  %93 = load i8, ptr %23, align 4, !tbaa !57
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %14, align 8, !tbaa !79
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 4, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !187
  %101 = icmp eq ptr %96, %100
  %102 = zext i1 %101 to i8
  br label %103

103:                                              ; preds = %98, %95, %92
  %104 = phi i8 [ 0, %92 ], [ 0, %95 ], [ %102, %98 ]
  %105 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 2
  %106 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 5
  %107 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 6
  %108 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 7
  %109 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 9
  %110 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 10
  %111 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 12
  %112 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 13
  %113 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 14
  %114 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 15
  %115 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 17
  %116 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 18
  %117 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 19
  %118 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 20
  %119 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 21
  %120 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 27
  %121 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 16
  %122 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 22
  br label %123

123:                                              ; preds = %127, %103
  %124 = phi ptr [ %14, %103 ], [ %125, %127 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !59
  %126 = icmp eq ptr %125, null
  br i1 %126, label %148, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.CollectionPointerLink, ptr %125, i64 0, i32 2, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !81
  %130 = load ptr, ptr %7, align 8, !tbaa !49
  %131 = load ptr, ptr %11, align 8, !tbaa !53
  %132 = load ptr, ptr %105, align 8, !tbaa !67
  %133 = load ptr, ptr %9, align 8, !tbaa !55
  %134 = load i32, ptr %106, align 8, !tbaa !58
  %135 = load i32, ptr %107, align 4, !tbaa !68
  %136 = load i32, ptr %108, align 8, !tbaa !69
  %137 = load i8, ptr %109, align 1, !tbaa !70
  %138 = load i8, ptr %110, align 2, !tbaa !71
  %139 = load i8, ptr %111, align 8, !tbaa !72
  %140 = load float, ptr %112, align 4, !tbaa !73
  %141 = load i32, ptr %113, align 8, !tbaa !74
  %142 = load i32, ptr %117, align 8, !tbaa !75
  %143 = load i32, ptr %118, align 4, !tbaa !76
  %144 = load ptr, ptr %119, align 8, !tbaa !77
  %145 = load ptr, ptr %120, align 8, !tbaa !78
  %146 = tail call fastcc i32 @bake(ptr noundef %130, ptr noundef %131, ptr noundef %132, ptr noundef %129, ptr noundef null, ptr noundef %133, i32 noundef %134, i32 noundef %135, i32 noundef %136, i8 noundef zeroext %104, i8 noundef zeroext %137, i8 noundef zeroext %138, i8 noundef zeroext 0, i8 noundef zeroext %139, float noundef %140, i32 noundef %141, ptr noundef nonnull %114, ptr noundef nonnull %115, ptr noundef nonnull %116, i32 noundef %142, i32 noundef %143, ptr noundef %144, ptr noundef %145, ptr noundef nonnull %121)
  store i32 %146, ptr %122, align 8, !tbaa !108
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %150, label %123, !llvm.loop !188

148:                                              ; preds = %123, %54
  %149 = load ptr, ptr %7, align 8, !tbaa !49
  tail call void @RE_SetReports(ptr noundef %149, ptr noundef null) #9
  br label %150

150:                                              ; preds = %127, %148, %20
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 64}
!46 = !{!35, !36, i64 48}
!47 = !{!35, !36, i64 72}
!48 = !{!35, !36, i64 88}
!49 = !{!50, !36, i64 1264}
!50 = !{!"BakeAPIRender", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !51, i64 48, !51, i64 52, !51, i64 56, !37, i64 60, !37, i64 61, !37, i64 62, !37, i64 63, !37, i64 64, !52, i64 68, !51, i64 72, !37, i64 76, !37, i64 88, !37, i64 152, !37, i64 216, !51, i64 1240, !51, i64 1244, !36, i64 1248, !51, i64 1256, !37, i64 1260, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288}
!51 = !{!"int", !37, i64 0}
!52 = !{!"float", !37, i64 0}
!53 = !{!50, !36, i64 8}
!54 = !{!50, !36, i64 0}
!55 = !{!50, !36, i64 24}
!56 = !{!50, !37, i64 63}
!57 = !{!50, !37, i64 60}
!58 = !{!50, !51, i64 48}
!59 = !{!36, !36, i64 0}
!60 = !{!61, !41, i64 98}
!61 = !{!"Image", !62, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !51, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !51, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !52, i64 1296, !51, i64 1300, !41, i64 1304, !41, i64 1306, !51, i64 1308, !51, i64 1312, !37, i64 1316, !37, i64 1317, !41, i64 1318, !37, i64 1320, !52, i64 1336, !52, i64 1340, !63, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!62 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!63 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!50, !36, i64 16}
!68 = !{!50, !51, i64 52}
!69 = !{!50, !51, i64 56}
!70 = !{!50, !37, i64 61}
!71 = !{!50, !37, i64 62}
!72 = !{!50, !37, i64 64}
!73 = !{!50, !52, i64 68}
!74 = !{!50, !51, i64 72}
!75 = !{!50, !51, i64 1240}
!76 = !{!50, !51, i64 1244}
!77 = !{!50, !36, i64 1248}
!78 = !{!50, !36, i64 1288}
!79 = !{!39, !36, i64 0}
!80 = !{!50, !36, i64 32}
!81 = !{!82, !36, i64 32}
!82 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !83, i64 16}
!83 = !{!"PointerRNA", !84, i64 0, !36, i64 8, !36, i64 16}
!84 = !{!"", !36, i64 0}
!85 = !{!82, !36, i64 0}
!86 = distinct !{!86, !65, !66}
!87 = !{!88, !41, i64 16}
!88 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !51, i64 48, !51, i64 52, !89, i64 56, !51, i64 64, !51, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !51, i64 108, !36, i64 112}
!89 = !{!"double", !37, i64 0}
!90 = !{!91, !37, i64 2080}
!91 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !51, i64 2096, !51, i64 2100, !37, i64 2104, !51, i64 2108, !51, i64 2112, !37, i64 2116}
!92 = !{!93, !36, i64 112}
!93 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!94 = !{!95, !41, i64 1272}
!95 = !{!"BakeData", !96, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!96 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !97, i64 24, !98, i64 184}
!97 = !{!"ColorManagedViewSettings", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!98 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!99 = !{!95, !41, i64 1276}
!100 = !{!95, !41, i64 1278}
!101 = !{!95, !52, i64 1280}
!102 = !{!95, !37, i64 1291}
!103 = !{!37, !37, i64 0}
!104 = !{!95, !37, i64 1292}
!105 = !{!91, !37, i64 2090}
!106 = !{!51, !51, i64 0}
!107 = !{!93, !36, i64 120}
!108 = !{!50, !51, i64 1256}
!109 = !{i8 0, i8 2}
!110 = !{!111, !41, i64 136}
!111 = !{!"Object", !62, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !51, i64 140, !51, i64 144, !51, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !112, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !51, i64 432, !51, i64 436, !36, i64 440, !36, i64 448, !51, i64 456, !51, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !52, i64 616, !52, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !51, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !51, i64 968, !51, i64 972, !51, i64 976, !51, i64 980, !51, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !52, i64 1048, !52, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !52, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !51, i64 1144, !51, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !113, i64 1304, !113, i64 1312, !51, i64 1320, !51, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!112 = !{!"bAnimVizSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!113 = !{!"long", !37, i64 0}
!114 = distinct !{!114, !65, !66}
!115 = distinct !{!115, !65, !66}
!116 = !{!111, !37, i64 1160}
!117 = !{!111, !51, i64 456}
!118 = !{!111, !36, i64 296}
!119 = !{!120, !36, i64 0}
!120 = !{!"BakeImages", !36, i64 0, !36, i64 8, !51, i64 16}
!121 = !{!120, !36, i64 8}
!122 = !{!123, !36, i64 0}
!123 = !{!"BakeImage", !36, i64 0, !51, i64 8, !51, i64 12, !113, i64 16}
!124 = distinct !{!124, !65, !66}
!125 = distinct !{!125, !65, !66}
!126 = !{!120, !51, i64 16}
!127 = distinct !{!127, !65, !66}
!128 = !{!129, !51, i64 16}
!129 = !{!"ImBuf", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !37, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !51, i64 72, !51, i64 76, !51, i64 80, !51, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !52, i64 112, !37, i64 120, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !36, i64 296, !36, i64 304, !51, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !51, i64 2376, !36, i64 2384, !51, i64 2392, !51, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !51, i64 2432, !130, i64 2436, !131, i64 2456}
!130 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!131 = !{!"DDSData", !51, i64 0, !51, i64 4, !36, i64 8, !51, i64 16}
!132 = !{!123, !51, i64 8}
!133 = !{!129, !51, i64 20}
!134 = !{!123, !51, i64 12}
!135 = !{!123, !113, i64 16}
!136 = distinct !{!136, !65, !66}
!137 = distinct !{!137, !65, !66}
!138 = !{!139, !51, i64 1288}
!139 = !{!"Mesh", !62, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !140, i64 280, !140, i64 480, !140, i64 680, !140, i64 880, !140, i64 1080, !51, i64 1280, !51, i64 1284, !51, i64 1288, !51, i64 1292, !51, i64 1296, !51, i64 1300, !51, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !51, i64 1344, !41, i64 1348, !41, i64 1350, !52, i64 1352, !51, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!140 = !{!"CustomData", !36, i64 0, !37, i64 8, !51, i64 172, !51, i64 176, !51, i64 180, !36, i64 184, !36, i64 192}
!141 = !{i64 0, i64 8, !59, i64 8, i64 8, !59}
!142 = !{!143, !51, i64 16}
!143 = !{!"ModifierData", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!144 = distinct !{!144, !65, !66}
!145 = !{!146, !36, i64 8}
!146 = !{!"BakeHighPolyData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 36, !37, i64 100, !37, i64 164}
!147 = !{!146, !37, i64 32}
!148 = !{!146, !36, i64 0}
!149 = !{!146, !36, i64 16}
!150 = !{!151, !51, i64 116}
!151 = !{!"TriangulateModifierData", !143, i64 0, !51, i64 112, !51, i64 116, !51, i64 120, !51, i64 124}
!152 = !{!151, !51, i64 120}
!153 = !{!146, !36, i64 24}
!154 = !{!52, !52, i64 0}
!155 = distinct !{!155, !65, !66}
!156 = distinct !{!156, !65, !66}
!157 = distinct !{!157, !65, !66}
!158 = !{!143, !51, i64 20}
!159 = distinct !{!159, !65, !66}
!160 = !{!129, !51, i64 32}
!161 = !{!129, !51, i64 28}
!162 = !{!129, !36, i64 48}
!163 = !{!129, !36, i64 40}
!164 = !{!129, !52, i64 112}
!165 = !{!129, !51, i64 292}
!166 = !{!167, !37, i64 72}
!167 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !130, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!168 = !{!167, !36, i64 96}
!169 = !{!170, !36, i64 40}
!170 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !51, i64 32, !51, i64 36, !36, i64 40, !171, i64 48, !36, i64 88, !172, i64 96, !173, i64 5360, !36, i64 10520, !37, i64 10528, !52, i64 10536, !52, i64 10540, !52, i64 10544, !52, i64 10548, !52, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !174, i64 10568}
!171 = !{!"ImageUser", !36, i64 0, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !51, i64 36}
!172 = !{!"Scopes", !51, i64 0, !51, i64 4, !51, i64 8, !52, i64 12, !51, i64 16, !52, i64 20, !52, i64 24, !51, i64 28, !52, i64 32, !51, i64 36, !37, i64 40, !173, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !51, i64 5256, !51, i64 5260}
!173 = !{!"Histogram", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !52, i64 5128, !52, i64 5132, !41, i64 5136, !41, i64 5138, !51, i64 5140, !37, i64 5144}
!174 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!175 = !{!95, !37, i64 0}
!176 = !{!111, !36, i64 440}
!177 = !{!139, !36, i64 152}
!178 = !{!96, !37, i64 1}
!179 = !{!96, !37, i64 2}
!180 = !{!61, !41, i64 1244}
!181 = distinct !{!181, !65, !66}
!182 = distinct !{!182, !65, !66}
!183 = distinct !{!183, !65, !66}
!184 = !{!50, !36, i64 1272}
!185 = !{!50, !36, i64 1280}
!186 = !{!41, !41, i64 0}
!187 = !{!39, !36, i64 8}
!188 = distinct !{!188, !65, !66}
