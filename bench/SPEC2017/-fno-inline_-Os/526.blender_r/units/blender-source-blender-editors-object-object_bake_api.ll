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
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.BakeImages = type { ptr, ptr, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BakeImage = type { ptr, i32, i32, i64 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BakeHighPolyData = type { ptr, ptr, ptr, ptr, i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]] }
%struct.TriangulateModifierData = type { %struct.ModifierData, i32, i32, i32, i32 }
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
%struct.BakePixel = type { i32, [2 x float], float, float, float, float }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
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

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @render_pass_type_items, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string_file_path(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef 512, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 64, i32 noundef 4096) #13
  %15 = load ptr, ptr %8, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef 512, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 64, i32 noundef 4096) #13
  %17 = load ptr, ptr %8, align 8, !tbaa !48
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.15, i32 noundef 16, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 64) #13
  %19 = load ptr, ptr %8, align 8, !tbaa !48
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  %21 = load ptr, ptr %8, align 8, !tbaa !48
  %22 = tail call ptr @RNA_def_float(ptr noundef %21, ptr noundef nonnull @.str.21, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  %23 = load ptr, ptr %8, align 8, !tbaa !48
  %24 = tail call ptr @RNA_def_string(ptr noundef %23, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #13
  %25 = load ptr, ptr %8, align 8, !tbaa !48
  %26 = tail call ptr @RNA_def_enum(ptr noundef %25, ptr noundef nonnull @.str.27, ptr noundef nonnull @normal_space_items, i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #13
  %27 = load ptr, ptr %8, align 8, !tbaa !48
  %28 = tail call ptr @RNA_def_enum(ptr noundef %27, ptr noundef nonnull @.str.30, ptr noundef nonnull @normal_swizzle_items, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #13
  %29 = load ptr, ptr %8, align 8, !tbaa !48
  %30 = tail call ptr @RNA_def_enum(ptr noundef %29, ptr noundef nonnull @.str.33, ptr noundef nonnull @normal_swizzle_items, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #13
  %31 = load ptr, ptr %8, align 8, !tbaa !48
  %32 = tail call ptr @RNA_def_enum(ptr noundef %31, ptr noundef nonnull @.str.36, ptr noundef nonnull @normal_swizzle_items, i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #13
  %33 = load ptr, ptr %8, align 8, !tbaa !48
  %34 = tail call ptr @RNA_def_enum(ptr noundef %33, ptr noundef nonnull @.str.39, ptr noundef nonnull @bake_save_mode_items, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #13
  %35 = load ptr, ptr %8, align 8, !tbaa !48
  %36 = tail call ptr @RNA_def_boolean(ptr noundef %35, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #13
  %37 = load ptr, ptr %8, align 8, !tbaa !48
  %38 = tail call ptr @RNA_def_boolean(ptr noundef %37, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #13
  %39 = load ptr, ptr %8, align 8, !tbaa !48
  %40 = tail call ptr @RNA_def_boolean(ptr noundef %39, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #13
  %41 = load ptr, ptr %8, align 8, !tbaa !48
  %42 = tail call ptr @RNA_def_boolean(ptr noundef %41, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #13
  %43 = load ptr, ptr %8, align 8, !tbaa !48
  %44 = tail call ptr @RNA_def_string(ptr noundef %43, ptr noundef nonnull @.str.54, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @bake_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !49 {
  %3 = alloca %struct.BakeAPIRender, align 8
  call void @llvm.lifetime.start.p0(i64 1296, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1296) %3, i8 0, i64 1296, i1 false)
  call fastcc void @bake_init_api_data(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %3) #15
  %4 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  call void @RE_test_break_cb(ptr noundef %5, ptr noundef null, ptr noundef nonnull @bake_break) #13
  %6 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = load ptr, ptr %3, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 4
  %10 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 11
  %13 = load i8, ptr %12, align 1, !tbaa !57
  %14 = call fastcc zeroext i8 @bake_objects_check(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %11, i8 noundef zeroext %13) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %123, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 8
  %18 = load i8, ptr %17, align 4, !tbaa !58
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !59
  %23 = icmp eq i32 %22, 256
  %24 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 14
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 3
  %27 = select i1 %23, i1 %26, i1 false
  %28 = zext i1 %27 to i8
  %29 = load ptr, ptr %6, align 8, !tbaa !54
  call fastcc void @bake_images_clear(ptr noundef %29, i8 noundef zeroext %28) #15
  br label %30

30:                                               ; preds = %20, %16
  %31 = load ptr, ptr %10, align 8, !tbaa !56
  call void @RE_SetReports(ptr noundef %5, ptr noundef %31) #13
  %32 = load i8, ptr %12, align 1, !tbaa !57
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !50
  %36 = load ptr, ptr %6, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = load ptr, ptr %3, align 8, !tbaa !55
  %40 = load ptr, ptr %10, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !61
  %45 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !62
  %47 = load i8, ptr %17, align 4, !tbaa !58
  %48 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 9
  %49 = load i8, ptr %48, align 1, !tbaa !63
  %50 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 10
  %51 = load i8, ptr %50, align 2, !tbaa !64
  %52 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 12
  %53 = load i8, ptr %52, align 8, !tbaa !65
  %54 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 13
  %55 = load float, ptr %54, align 4, !tbaa !66
  %56 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 14
  %57 = load i32, ptr %56, align 8, !tbaa !67
  %58 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 15
  %59 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 17
  %60 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 18
  %61 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 19
  %62 = load i32, ptr %61, align 8, !tbaa !68
  %63 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 20
  %64 = load i32, ptr %63, align 4, !tbaa !69
  %65 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 21
  %66 = load ptr, ptr %65, align 8, !tbaa !70
  %67 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 27
  %68 = load ptr, ptr %67, align 8, !tbaa !71
  %69 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 16
  %70 = call fastcc i32 @bake(ptr noundef %35, ptr noundef %36, ptr noundef %38, ptr noundef %39, ptr noundef nonnull %9, ptr noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i8 noundef zeroext %47, i8 noundef zeroext %49, i8 noundef zeroext %51, i8 noundef zeroext 1, i8 noundef zeroext %53, float noundef %55, i32 noundef %57, ptr noundef nonnull %58, ptr noundef nonnull %59, ptr noundef nonnull %60, i32 noundef %62, i32 noundef %64, ptr noundef %66, ptr noundef %68, ptr noundef nonnull %69) #15
  br label %121

71:                                               ; preds = %30
  %72 = load i8, ptr %17, align 4, !tbaa !58
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef nonnull %9) #15, !range !72
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i8 [ 0, %71 ], [ %75, %74 ]
  %78 = load ptr, ptr %9, align 8, !tbaa !73
  %79 = icmp eq ptr %78, null
  br i1 %79, label %121, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 2
  %82 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 5
  %83 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 6
  %84 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 7
  %85 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 9
  %86 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 10
  %87 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 12
  %88 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 13
  %89 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 14
  %90 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 15
  %91 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 17
  %92 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 18
  %93 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 19
  %94 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 20
  %95 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 21
  %96 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 27
  %97 = getelementptr inbounds %struct.BakeAPIRender, ptr %3, i64 0, i32 16
  br label %98

98:                                               ; preds = %80, %98
  %99 = phi ptr [ %78, %80 ], [ %119, %98 ]
  %100 = getelementptr inbounds %struct.CollectionPointerLink, ptr %99, i64 0, i32 2, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !74
  %102 = load ptr, ptr %4, align 8, !tbaa !50
  %103 = load ptr, ptr %6, align 8, !tbaa !54
  %104 = load ptr, ptr %81, align 8, !tbaa !60
  %105 = load ptr, ptr %10, align 8, !tbaa !56
  %106 = load i32, ptr %82, align 8, !tbaa !59
  %107 = load i32, ptr %83, align 4, !tbaa !61
  %108 = load i32, ptr %84, align 8, !tbaa !62
  %109 = load i8, ptr %85, align 1, !tbaa !63
  %110 = load i8, ptr %86, align 2, !tbaa !64
  %111 = load i8, ptr %87, align 8, !tbaa !65
  %112 = load float, ptr %88, align 4, !tbaa !66
  %113 = load i32, ptr %89, align 8, !tbaa !67
  %114 = load i32, ptr %93, align 8, !tbaa !68
  %115 = load i32, ptr %94, align 4, !tbaa !69
  %116 = load ptr, ptr %95, align 8, !tbaa !70
  %117 = load ptr, ptr %96, align 8, !tbaa !71
  %118 = call fastcc i32 @bake(ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %101, ptr noundef null, ptr noundef %105, i32 noundef %106, i32 noundef %107, i32 noundef %108, i8 noundef zeroext %77, i8 noundef zeroext %109, i8 noundef zeroext %110, i8 noundef zeroext 0, i8 noundef zeroext %111, float noundef %112, i32 noundef %113, ptr noundef nonnull %90, ptr noundef nonnull %91, ptr noundef nonnull %92, i32 noundef %114, i32 noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef nonnull %97) #15
  %119 = load ptr, ptr %99, align 8, !tbaa !78
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %98, !llvm.loop !79

121:                                              ; preds = %98, %76, %34
  %122 = phi i32 [ %70, %34 ], [ 2, %76 ], [ %118, %98 ]
  call void @RE_SetReports(ptr noundef %5, ptr noundef null) #13
  call void @BLI_freelistN(ptr noundef nonnull %9) #13
  br label %123

123:                                              ; preds = %2, %121
  %124 = phi i32 [ %122, %121 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1296, ptr nonnull %3) #14
  ret i32 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @bake_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !81 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 8) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !82
  %11 = icmp eq i16 %10, 218
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !85
  br label %13

13:                                               ; preds = %8, %3, %12
  %14 = phi i32 [ 1, %12 ], [ 12, %3 ], [ 8, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @bake_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !87 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  tail call fastcc void @bake_set_props(ptr noundef %1, ptr noundef %4) #15
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %5, ptr noundef %4, i32 noundef 8) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !88
  %10 = tail call ptr %9(i64 noundef 1296, ptr noundef nonnull @.str.90) #13
  tail call fastcc void @bake_init_api_data(ptr noundef %1, ptr noundef %0, ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.BakeAPIRender, ptr %10, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  tail call void @RE_test_break_cb(ptr noundef %12, ptr noundef null, ptr noundef nonnull @bake_break) #13
  tail call void @RE_progress_cb(ptr noundef %12, ptr noundef %10, ptr noundef nonnull @bake_progress_update) #13
  %13 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %14 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %15 = tail call ptr @WM_jobs_get(ptr noundef %13, ptr noundef %14, ptr noundef %4, ptr noundef nonnull @.str.91, i32 noundef 7, i32 noundef 8) #13
  tail call void @WM_jobs_customdata_set(ptr noundef %15, ptr noundef %10, ptr noundef nonnull @bake_freejob) #13
  tail call void @WM_jobs_timer(ptr noundef %15, double noundef 5.000000e-01, i32 noundef 167772160, i32 noundef 0) #13
  tail call void @WM_jobs_callbacks(ptr noundef %15, ptr noundef nonnull @bake_startjob, ptr noundef null, ptr noundef null, ptr noundef null) #13
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !85
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !89
  %16 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  tail call void @WM_jobs_start(ptr noundef %16, ptr noundef %15) #13
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #13
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %4) #13
  br label %18

18:                                               ; preds = %3, %8
  %19 = phi i32 [ 1, %8 ], [ 2, %3 ]
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable_mesh(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_string_file_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_init_api_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !90 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %1) #13
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %1) #13
  store ptr %5, ptr %2, align 8, !tbaa !55
  %6 = tail call ptr @CTX_data_main(ptr noundef %1) #13
  %7 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !54
  %8 = tail call ptr @CTX_data_scene(ptr noundef %1) #13
  %9 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !60
  %10 = icmp eq ptr %4, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @BKE_screen_find_big_area(ptr noundef nonnull %4, i32 noundef 6, i16 noundef signext 10) #13
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi ptr [ %12, %11 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !71
  %16 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = tail call i32 @RNA_enum_get(ptr noundef %17, ptr noundef nonnull @.str.3) #13
  %19 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 5
  store i32 %18, ptr %19, align 8, !tbaa !59
  %20 = load ptr, ptr %16, align 8, !tbaa !91
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.15) #13
  %22 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 6
  store i32 %21, ptr %22, align 4, !tbaa !61
  %23 = load ptr, ptr %16, align 8, !tbaa !91
  %24 = tail call i32 @RNA_enum_get(ptr noundef %23, ptr noundef nonnull @.str.39) #13
  %25 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 7
  store i32 %24, ptr %25, align 8, !tbaa !62
  %26 = icmp eq i32 %24, 0
  %27 = load ptr, ptr %16, align 8, !tbaa !91
  %28 = tail call i32 @RNA_boolean_get(ptr noundef %27, ptr noundef nonnull @.str.42) #13
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 8
  store i8 %29, ptr %30, align 4, !tbaa !58
  br i1 %26, label %36, label %31

31:                                               ; preds = %13
  %32 = load ptr, ptr %16, align 8, !tbaa !91
  %33 = tail call i32 @RNA_boolean_get(ptr noundef %32, ptr noundef nonnull @.str.48) #13
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %31, %13
  %37 = phi i8 [ 0, %13 ], [ %35, %31 ]
  %38 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 9
  store i8 %37, ptr %38, align 1, !tbaa !63
  %39 = load ptr, ptr %16, align 8, !tbaa !91
  %40 = tail call i32 @RNA_boolean_get(ptr noundef %39, ptr noundef nonnull @.str.51) #13
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 10
  store i8 %41, ptr %42, align 2, !tbaa !64
  %43 = load ptr, ptr %16, align 8, !tbaa !91
  %44 = tail call i32 @RNA_boolean_get(ptr noundef %43, ptr noundef nonnull @.str.18) #13
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 11
  store i8 %45, ptr %46, align 1, !tbaa !57
  %47 = load ptr, ptr %16, align 8, !tbaa !91
  %48 = tail call i32 @RNA_boolean_get(ptr noundef %47, ptr noundef nonnull @.str.45) #13
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 12
  store i8 %49, ptr %50, align 8, !tbaa !65
  %51 = load ptr, ptr %16, align 8, !tbaa !91
  %52 = tail call float @RNA_float_get(ptr noundef %51, ptr noundef nonnull @.str.21) #13
  %53 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 13
  store float %52, ptr %53, align 4, !tbaa !66
  %54 = load ptr, ptr %16, align 8, !tbaa !91
  %55 = tail call i32 @RNA_enum_get(ptr noundef %54, ptr noundef nonnull @.str.27) #13
  %56 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 14
  store i32 %55, ptr %56, align 8, !tbaa !67
  %57 = load ptr, ptr %16, align 8, !tbaa !91
  %58 = tail call i32 @RNA_enum_get(ptr noundef %57, ptr noundef nonnull @.str.30) #13
  %59 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 15
  store i32 %58, ptr %59, align 4, !tbaa !93
  %60 = load ptr, ptr %16, align 8, !tbaa !91
  %61 = tail call i32 @RNA_enum_get(ptr noundef %60, ptr noundef nonnull @.str.33) #13
  %62 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 15, i64 1
  store i32 %61, ptr %62, align 4, !tbaa !93
  %63 = load ptr, ptr %16, align 8, !tbaa !91
  %64 = tail call i32 @RNA_enum_get(ptr noundef %63, ptr noundef nonnull @.str.36) #13
  %65 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 15, i64 2
  store i32 %64, ptr %65, align 4, !tbaa !93
  %66 = load ptr, ptr %16, align 8, !tbaa !91
  %67 = tail call i32 @RNA_int_get(ptr noundef %66, ptr noundef nonnull @.str.9) #13
  %68 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 19
  store i32 %67, ptr %68, align 8, !tbaa !68
  %69 = load ptr, ptr %16, align 8, !tbaa !91
  %70 = tail call i32 @RNA_int_get(ptr noundef %69, ptr noundef nonnull @.str.12) #13
  %71 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 20
  store i32 %70, ptr %71, align 4, !tbaa !69
  %72 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 21
  store ptr @.str.57, ptr %72, align 8, !tbaa !70
  %73 = load ptr, ptr %16, align 8, !tbaa !91
  %74 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 16
  tail call void @RNA_string_get(ptr noundef %73, ptr noundef nonnull @.str.54, ptr noundef nonnull %74) #13
  %75 = load ptr, ptr %16, align 8, !tbaa !91
  %76 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 17
  tail call void @RNA_string_get(ptr noundef %75, ptr noundef nonnull @.str.24, ptr noundef nonnull %76) #13
  br i1 %26, label %86, label %77

77:                                               ; preds = %36
  %78 = load i8, ptr %42, align 2, !tbaa !64
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %16, align 8, !tbaa !91
  %82 = tail call ptr @RNA_struct_find_property(ptr noundef %81, ptr noundef nonnull @.str.3) #13
  %83 = load ptr, ptr %16, align 8, !tbaa !91
  %84 = load i32, ptr %19, align 8, !tbaa !59
  %85 = tail call zeroext i8 @RNA_property_enum_identifier(ptr noundef %1, ptr noundef %83, ptr noundef %82, i32 noundef %84, ptr noundef nonnull %72) #13
  br label %86

86:                                               ; preds = %80, %77, %36
  %87 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 4
  %88 = tail call i32 @CTX_data_selected_objects(ptr noundef %1, ptr noundef nonnull %87) #13
  %89 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !94
  %91 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 3
  store ptr %90, ptr %91, align 8, !tbaa !56
  %92 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 22
  store i32 2, ptr %92, align 8, !tbaa !95
  %93 = load ptr, ptr %9, align 8, !tbaa !60
  %94 = getelementptr inbounds %struct.ID, ptr %93, i64 0, i32 4
  %95 = tail call ptr @RE_NewRender(ptr noundef nonnull %94) #13
  %96 = getelementptr inbounds %struct.BakeAPIRender, ptr %2, i64 0, i32 24
  store ptr %95, ptr %96, align 8, !tbaa !50
  store i32 0, ptr %25, align 8, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare void @RE_test_break_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @bake_break(ptr nocapture readnone %0) #4 !PGOFuncName !96 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !85
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bake_objects_check(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !97 {
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 19785, i8 noundef zeroext 0) #13
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc zeroext i8 @bake_object_check(ptr noundef %1, ptr noundef %3) #15, !range !72
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %10, %28
  %14 = phi ptr [ %30, %28 ], [ %11, %10 ]
  %15 = phi i32 [ %29, %28 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !98
  %22 = add i16 %21, -1
  %23 = icmp ult i16 %22, 5
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = add nsw i32 %15, 1
  br label %28

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.58, ptr noundef nonnull %27) #13
  br label %48

28:                                               ; preds = %24, %13
  %29 = phi i32 [ %15, %13 ], [ %25, %24 ]
  %30 = load ptr, ptr %14, align 8, !tbaa !88
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !103

32:                                               ; preds = %28
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %10, %32
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.59) #13
  br label %48

35:                                               ; preds = %5
  %36 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %2) #15, !range !72
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.59) #13
  br label %48

39:                                               ; preds = %35, %43
  %40 = phi ptr [ %41, %43 ], [ %2, %35 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.CollectionPointerLink, ptr %41, i64 0, i32 2, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = tail call fastcc zeroext i8 @bake_object_check(ptr noundef %45, ptr noundef %3) #15, !range !72
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %39, !llvm.loop !104

48:                                               ; preds = %39, %43, %7, %34, %26, %32, %38
  %49 = phi i8 [ 0, %38 ], [ 1, %32 ], [ 0, %26 ], [ 0, %34 ], [ 0, %7 ], [ 1, %39 ], [ 0, %43 ]
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_images_clear(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !105 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !106
  %10 = and i16 %9, 1024
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @RE_bake_ibuf_clear(ptr noundef nonnull %7, i8 noundef zeroext %1) #13
  br label %13

13:                                               ; preds = %6, %12
  %14 = load ptr, ptr %7, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !llvm.loop !109

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @RE_SetReports(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bake(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i8 noundef zeroext %12, i8 noundef zeroext %13, float noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23) unnamed_addr #0 !PGOFuncName !110 {
  %25 = alloca %struct.BakeImages, align 8
  %26 = alloca %struct.ListBase, align 8
  %27 = alloca %struct.ListBase, align 8
  %28 = alloca [1024 x i8], align 16
  %29 = alloca [4 x i8], align 1
  %30 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 102
  %31 = load i8, ptr %30, align 8, !tbaa !111
  %32 = icmp eq i32 %8, 0
  %33 = tail call fastcc zeroext i8 @is_noncolor_pass(i32 noundef %6) #15, !range !72
  %34 = tail call i32 @RE_pass_depth(i32 noundef %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  tail call void @RE_bake_engine_set_engine_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  %35 = tail call zeroext i8 @RE_bake_has_engine(ptr noundef %0) #13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  tail call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.66) #13
  br label %464

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %40 = load i32, ptr %39, align 8, !tbaa !112
  %41 = icmp eq ptr %23, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %23, align 1, !tbaa !113
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !114
  %48 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 25
  %49 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %48, i32 noundef 16, ptr noundef nonnull %23) #13
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.67, ptr noundef nonnull %23, ptr noundef nonnull %52) #13
  br label %464

53:                                               ; preds = %45, %42, %38
  %54 = icmp eq i32 %40, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  br i1 %32, label %56, label %57

56:                                               ; preds = %55
  tail call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.68) #13
  br label %464

57:                                               ; preds = %55
  %58 = icmp eq i8 %10, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.69) #13
  br label %464

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %40, %53 ], [ 1, %57 ]
  %62 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !88
  %63 = sext i32 %61 to i64
  %64 = mul nsw i64 %63, 24
  %65 = tail call ptr %62(i64 noundef %64, ptr noundef nonnull @.str.70) #13
  store ptr %65, ptr %25, align 8, !tbaa !115
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !88
  %67 = shl nsw i64 %63, 2
  %68 = tail call ptr %66(i64 noundef %67, ptr noundef nonnull @.str.71) #13
  %69 = getelementptr inbounds %struct.BakeImages, ptr %25, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !117
  call fastcc void @build_image_lookup(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %25) #15
  br i1 %32, label %70, label %73

70:                                               ; preds = %60
  %71 = call fastcc i64 @initialize_internal_images(ptr noundef nonnull %25, ptr noundef %5) #15
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %464, label %104

73:                                               ; preds = %60
  %74 = sext i32 %19 to i64
  %75 = sext i32 %20 to i64
  %76 = mul nsw i64 %75, %74
  %77 = getelementptr inbounds %struct.BakeImages, ptr %25, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !118
  %79 = sext i32 %78 to i64
  %80 = mul i64 %76, %79
  %81 = icmp sgt i32 %78, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %73
  %83 = load ptr, ptr %25, align 8, !tbaa !115
  %84 = icmp eq i8 %10, 0
  %85 = select i1 %84, i64 0, i64 %80
  %86 = zext nneg i32 %78 to i64
  br label %87

87:                                               ; preds = %82, %87
  %88 = phi i64 [ 0, %82 ], [ %93, %87 ]
  %89 = getelementptr inbounds %struct.BakeImage, ptr %83, i64 %88, i32 1
  store i32 %19, ptr %89, align 8, !tbaa !119
  %90 = getelementptr inbounds %struct.BakeImage, ptr %83, i64 %88, i32 2
  store i32 %20, ptr %90, align 4, !tbaa !121
  %91 = getelementptr inbounds %struct.BakeImage, ptr %83, i64 %88, i32 3
  store i64 %85, ptr %91, align 8, !tbaa !122
  %92 = getelementptr inbounds %struct.BakeImage, ptr %83, i64 %88
  store ptr null, ptr %92, align 8, !tbaa !123
  %93 = add nuw nsw i64 %88, 1
  %94 = icmp eq i64 %93, %86
  br i1 %94, label %95, label %87, !llvm.loop !124

95:                                               ; preds = %87, %73
  %96 = icmp eq i8 %10, 0
  %97 = icmp sgt i32 %61, 0
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load ptr, ptr %69, align 8, !tbaa !117
  %101 = tail call i32 @llvm.umax.i32(i32 %40, i32 1)
  %102 = zext i32 %101 to i64
  %103 = shl nuw nsw i64 %102, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %100, i8 0, i64 %103, i1 false), !tbaa !93
  br label %104

104:                                              ; preds = %99, %95, %70
  %105 = phi i64 [ %71, %70 ], [ %80, %95 ], [ %80, %99 ]
  %106 = icmp eq i8 %12, 0
  br i1 %106, label %139, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %4, align 8, !tbaa !88
  %109 = icmp eq ptr %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %107, %110
  %111 = phi ptr [ %118, %110 ], [ %108, %107 ]
  %112 = phi i32 [ %117, %110 ], [ 0, %107 ]
  %113 = getelementptr inbounds %struct.CollectionPointerLink, ptr %111, i64 0, i32 2, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !74
  %115 = icmp ne ptr %114, %3
  %116 = zext i1 %115 to i32
  %117 = add nuw nsw i32 %112, %116
  %118 = load ptr, ptr %111, align 8, !tbaa !88
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %110, !llvm.loop !125

120:                                              ; preds = %110, %107
  %121 = phi i32 [ 0, %107 ], [ %117, %110 ]
  %122 = icmp eq i8 %13, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %120
  %124 = load i8, ptr %17, align 1, !tbaa !113
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 13
  %128 = tail call ptr @BLI_findstring(ptr noundef nonnull %127, ptr noundef nonnull %17, i32 noundef 34) #13
  %129 = icmp eq ptr %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.Object, ptr %128, i64 0, i32 3
  %132 = load i16, ptr %131, align 8, !tbaa !98
  %133 = icmp eq i16 %132, 1
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.Object, ptr %128, i64 0, i32 102
  %136 = load i8, ptr %135, align 8, !tbaa !111
  %137 = or i8 %136, 4
  store i8 %137, ptr %135, align 8, !tbaa !111
  br label %139

138:                                              ; preds = %126, %130
  tail call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.72) #13
  br label %465

139:                                              ; preds = %120, %123, %134, %104
  %140 = phi i8 [ 0, %104 ], [ 0, %120 ], [ 0, %123 ], [ %136, %134 ]
  %141 = phi i32 [ undef, %104 ], [ %121, %120 ], [ %121, %123 ], [ %121, %134 ]
  %142 = phi ptr [ null, %104 ], [ null, %120 ], [ null, %123 ], [ %128, %134 ]
  %143 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !88
  %144 = mul i64 %105, 28
  %145 = tail call ptr %143(i64 noundef %144, ptr noundef nonnull @.str.73) #13
  %146 = load ptr, ptr @MEM_callocN, align 8, !tbaa !88
  %147 = sext i32 %34 to i64
  %148 = shl nsw i64 %147, 2
  %149 = mul i64 %148, %105
  %150 = tail call ptr %146(i64 noundef %149, ptr noundef nonnull @.str.74) #13
  %151 = tail call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #13
  %152 = icmp ne i8 %12, 0
  %153 = icmp eq ptr %142, null
  %154 = and i1 %152, %153
  %155 = icmp ne i8 %13, 0
  %156 = and i1 %155, %154
  br i1 %156, label %157, label %158

157:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27)
  br label %170

158:                                              ; preds = %139
  call void @RE_bake_pixels_populate(ptr noundef %151, ptr noundef %145, i64 noundef %105, ptr noundef nonnull %25, ptr noundef %23) #13
  br i1 %106, label %283, label %159

159:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27)
  br i1 %153, label %168, label %160

160:                                              ; preds = %159
  %161 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %142, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #13
  %162 = getelementptr inbounds %struct.Mesh, ptr %151, i64 0, i32 28
  %163 = load i32, ptr %162, align 8, !tbaa !126
  %164 = getelementptr inbounds %struct.Mesh, ptr %161, i64 0, i32 28
  %165 = load i32, ptr %164, align 8, !tbaa !126
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %189, label %167

167:                                              ; preds = %160
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.75) #13
  br label %280

168:                                              ; preds = %159
  %169 = icmp eq i8 %13, 0
  br i1 %169, label %189, label %170

170:                                              ; preds = %157, %168
  %171 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %171, i64 16, i1 false), !tbaa.struct !129
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %26) #15
  %172 = load ptr, ptr %171, align 8, !tbaa !88
  %173 = icmp eq ptr %172, null
  br i1 %173, label %187, label %174

174:                                              ; preds = %170, %184
  %175 = phi ptr [ %185, %184 ], [ %172, %170 ]
  %176 = getelementptr inbounds %struct.ModifierData, ptr %175, i64 0, i32 2
  %177 = load i32, ptr %176, align 8, !tbaa !130
  %178 = icmp eq i32 %177, 13
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = call ptr @modifier_new(i32 noundef %177) #13
  %181 = getelementptr inbounds %struct.ModifierData, ptr %180, i64 0, i32 6
  %182 = getelementptr inbounds %struct.ModifierData, ptr %175, i64 0, i32 6
  %183 = call ptr @BLI_strncpy(ptr noundef nonnull %181, ptr noundef nonnull %182, i64 noundef 64) #13
  call void @modifier_copyData(ptr noundef nonnull %175, ptr noundef %180) #13
  call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %180) #13
  br label %184

184:                                              ; preds = %174, %179
  %185 = load ptr, ptr %175, align 8, !tbaa !88
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %174, !llvm.loop !132

187:                                              ; preds = %184, %170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %171, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false), !tbaa.struct !129
  %188 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #13
  call void @RE_bake_pixels_populate(ptr noundef %188, ptr noundef %145, i64 noundef %105, ptr noundef nonnull %25, ptr noundef %23) #13
  br label %189

189:                                              ; preds = %168, %187, %160
  %190 = phi i1 [ true, %160 ], [ false, %187 ], [ false, %168 ]
  %191 = phi ptr [ %161, %160 ], [ %188, %187 ], [ null, %168 ]
  %192 = load ptr, ptr @MEM_callocN, align 8, !tbaa !88
  %193 = sext i32 %141 to i64
  %194 = mul nsw i64 %193, 232
  %195 = call ptr %192(i64 noundef %194, ptr noundef nonnull @.str.76) #13
  %196 = load ptr, ptr %4, align 8, !tbaa !88
  %197 = icmp eq ptr %196, null
  br i1 %197, label %240, label %198

198:                                              ; preds = %189, %236
  %199 = phi ptr [ %238, %236 ], [ %196, %189 ]
  %200 = phi i32 [ %237, %236 ], [ 0, %189 ]
  %201 = getelementptr inbounds %struct.CollectionPointerLink, ptr %199, i64 0, i32 2, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !74
  %203 = icmp eq ptr %202, %3
  br i1 %203, label %236, label %204

204:                                              ; preds = %198
  %205 = sext i32 %200 to i64
  %206 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205
  %207 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205, i32 1
  store ptr %202, ptr %207, align 8, !tbaa !133
  %208 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 102
  %209 = load i8, ptr %208, align 8, !tbaa !111
  %210 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205, i32 4
  store i8 %209, ptr %210, align 8, !tbaa !135
  %211 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !88
  %212 = call ptr %211(i64 noundef %144, ptr noundef nonnull @.str.77) #13
  store ptr %212, ptr %206, align 8, !tbaa !136
  %213 = load ptr, ptr %207, align 8, !tbaa !133
  %214 = call ptr @ED_object_modifier_add(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %213, ptr noundef nonnull @.str.78, i32 noundef 44) #13
  %215 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205, i32 2
  store ptr %214, ptr %215, align 8, !tbaa !137
  %216 = getelementptr inbounds %struct.TriangulateModifierData, ptr %214, i64 0, i32 2
  store i32 1, ptr %216, align 4, !tbaa !138
  %217 = getelementptr inbounds %struct.TriangulateModifierData, ptr %214, i64 0, i32 3
  store i32 1, ptr %217, align 8, !tbaa !140
  %218 = load ptr, ptr %207, align 8, !tbaa !133
  %219 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef %218, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #13
  %220 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205, i32 3
  store ptr %219, ptr %220, align 8, !tbaa !141
  %221 = load ptr, ptr %207, align 8, !tbaa !133
  %222 = getelementptr inbounds %struct.Object, ptr %221, i64 0, i32 102
  %223 = load i8, ptr %222, align 8, !tbaa !111
  %224 = and i8 %223, -5
  store i8 %224, ptr %222, align 8, !tbaa !111
  %225 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205, i32 5
  %226 = getelementptr inbounds %struct.Object, ptr %221, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %225, ptr noundef nonnull %226) #13
  %227 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205, i32 6
  %228 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %227, ptr noundef nonnull %225) #13
  %229 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205, i32 7
  call void @normalize_m4_m4(ptr noundef nonnull %229, ptr noundef nonnull %227) #13
  %230 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %205, i32 7, i64 3
  call fastcc void @zero_v3(ptr noundef nonnull %230) #15
  %231 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %229) #13
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %204
  call void @negate_m3(ptr noundef nonnull %229) #13
  br label %234

234:                                              ; preds = %233, %204
  %235 = add nsw i32 %200, 1
  br label %236

236:                                              ; preds = %198, %234
  %237 = phi i32 [ %235, %234 ], [ %200, %198 ]
  %238 = load ptr, ptr %199, align 8, !tbaa !88
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %198, !llvm.loop !142

240:                                              ; preds = %236, %189
  %241 = load i8, ptr %30, align 8, !tbaa !111
  %242 = or i8 %241, 4
  store i8 %242, ptr %30, align 8, !tbaa !111
  %243 = zext i1 %190 to i8
  %244 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %245 = getelementptr inbounds %struct.Object, ptr %142, i64 0, i32 47
  %246 = select i1 %190, ptr %245, ptr %244
  %247 = call zeroext i8 @RE_bake_pixels_populate_from_objects(ptr noundef %151, ptr noundef %145, ptr noundef %195, i32 noundef %141, i64 noundef %105, i8 noundef zeroext %243, float noundef %14, ptr noundef nonnull %244, ptr noundef nonnull %246, ptr noundef %191) #13
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %240
  %250 = icmp sgt i32 %141, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %249
  %252 = zext nneg i32 %141 to i64
  br label %257

253:                                              ; preds = %240
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.79) #13
  br label %268

254:                                              ; preds = %257
  %255 = add nuw nsw i64 %258, 1
  %256 = icmp eq i64 %255, %252
  br i1 %256, label %268, label %257, !llvm.loop !143

257:                                              ; preds = %251, %254
  %258 = phi i64 [ 0, %251 ], [ %255, %254 ]
  %259 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %258
  %260 = getelementptr inbounds %struct.BakeHighPolyData, ptr %195, i64 %258, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !133
  %262 = load ptr, ptr %259, align 8, !tbaa !136
  %263 = call zeroext i8 @RE_bake_engine(ptr noundef %0, ptr noundef %261, ptr noundef %262, i64 noundef %105, i32 noundef %34, i32 noundef %6, ptr noundef %150) #13
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %254

265:                                              ; preds = %257
  %266 = load ptr, ptr %260, align 8, !tbaa !133
  %267 = getelementptr inbounds %struct.ID, ptr %266, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.80, ptr noundef nonnull %267) #13
  br label %268

268:                                              ; preds = %254, %249, %265, %253
  %269 = phi i1 [ true, %265 ], [ true, %253 ], [ true, %249 ], [ false, %254 ]
  %270 = and i1 %155, %153
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %272, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !129
  %273 = call ptr @BLI_pophead(ptr noundef nonnull %26) #13
  %274 = icmp eq ptr %273, null
  br i1 %274, label %279, label %275

275:                                              ; preds = %271, %275
  %276 = phi ptr [ %277, %275 ], [ %273, %271 ]
  call void @modifier_free(ptr noundef nonnull %276) #13
  %277 = call ptr @BLI_pophead(ptr noundef nonnull %26) #13
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %275, !llvm.loop !144

279:                                              ; preds = %275, %271, %268
  br i1 %269, label %280, label %294

280:                                              ; preds = %167, %279
  %281 = phi ptr [ %161, %167 ], [ %191, %279 ]
  %282 = phi ptr [ null, %167 ], [ %195, %279 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #14
  br label %426

283:                                              ; preds = %158
  %284 = load i8, ptr %30, align 8, !tbaa !111
  %285 = and i8 %284, -5
  store i8 %285, ptr %30, align 8, !tbaa !111
  %286 = call zeroext i8 @RE_bake_has_engine(ptr noundef %0) #13
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.66) #13
  br label %465

289:                                              ; preds = %283
  %290 = call zeroext i8 @RE_bake_engine(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %145, i64 noundef %105, i32 noundef %34, i32 noundef %6, ptr noundef %150) #13
  %291 = icmp ne i8 %290, 0
  %292 = icmp eq i32 %6, 256
  %293 = and i1 %292, %291
  br i1 %293, label %296, label %328

294:                                              ; preds = %279
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #14
  %295 = icmp eq i32 %6, 256
  br i1 %295, label %296, label %330

296:                                              ; preds = %294, %289
  %297 = phi ptr [ %195, %294 ], [ null, %289 ]
  %298 = phi ptr [ %191, %294 ], [ null, %289 ]
  switch i32 %15, label %330 [
    i32 1, label %299
    i32 2, label %311
    i32 3, label %312
  ]

299:                                              ; preds = %296
  %300 = load i32, ptr %16, align 4, !tbaa !93
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %299
  %303 = getelementptr inbounds i32, ptr %16, i64 1
  %304 = load i32, ptr %303, align 4, !tbaa !93
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %310

306:                                              ; preds = %302
  %307 = getelementptr inbounds i32, ptr %16, i64 2
  %308 = load i32, ptr %307, align 4, !tbaa !93
  %309 = icmp eq i32 %308, 2
  br i1 %309, label %330, label %310

310:                                              ; preds = %306, %302, %299
  call void @RE_bake_normal_world_to_world(ptr noundef %145, i64 noundef %105, i32 noundef %34, ptr noundef %150, ptr noundef nonnull %16) #13
  br label %330

311:                                              ; preds = %296
  call void @RE_bake_normal_world_to_object(ptr noundef %145, i64 noundef %105, i32 noundef %34, ptr noundef %150, ptr noundef %3, ptr noundef %16) #13
  br label %330

312:                                              ; preds = %296
  br i1 %106, label %315, label %313

313:                                              ; preds = %312
  %314 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  call void @RE_bake_normal_world_to_tangent(ptr noundef %145, i64 noundef %105, i32 noundef %34, ptr noundef %150, ptr noundef %151, ptr noundef %16, ptr noundef nonnull %314) #13
  br label %330

315:                                              ; preds = %312
  %316 = call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 29) #13
  %317 = icmp eq ptr %316, null
  br i1 %317, label %322, label %318

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.ModifierData, ptr %316, i64 0, i32 3
  %320 = load i32, ptr %319, align 4, !tbaa !145
  %321 = and i32 %320, -3
  store i32 %321, ptr %319, align 4, !tbaa !145
  br label %322

322:                                              ; preds = %318, %315
  %323 = phi i32 [ %320, %318 ], [ undef, %315 ]
  %324 = call ptr @BKE_mesh_new_from_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #13
  call void @RE_bake_pixels_populate(ptr noundef %324, ptr noundef %145, i64 noundef %105, ptr noundef nonnull %25, ptr noundef %23) #13
  %325 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  call void @RE_bake_normal_world_to_tangent(ptr noundef %145, i64 noundef %105, i32 noundef %34, ptr noundef %150, ptr noundef %324, ptr noundef %16, ptr noundef nonnull %325) #13
  call void @BKE_libblock_free(ptr noundef %1, ptr noundef %324) #13
  br i1 %317, label %330, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.ModifierData, ptr %316, i64 0, i32 3
  store i32 %323, ptr %327, align 4, !tbaa !145
  br label %330

328:                                              ; preds = %289
  %329 = icmp eq i8 %290, 0
  br i1 %329, label %344, label %330

330:                                              ; preds = %296, %313, %306, %311, %310, %326, %322, %294, %328
  %331 = phi ptr [ null, %328 ], [ %195, %294 ], [ %297, %322 ], [ %297, %326 ], [ %297, %310 ], [ %297, %311 ], [ %297, %306 ], [ %297, %313 ], [ %297, %296 ]
  %332 = phi ptr [ null, %328 ], [ %191, %294 ], [ %298, %322 ], [ %298, %326 ], [ %298, %310 ], [ %298, %311 ], [ %298, %306 ], [ %298, %313 ], [ %298, %296 ]
  %333 = getelementptr inbounds %struct.BakeImages, ptr %25, i64 0, i32 2
  %334 = load i32, ptr %333, align 8, !tbaa !118
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %336, label %421

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 116
  %338 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 2
  %339 = icmp eq i8 %11, 0
  %340 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %341 = icmp eq i8 %10, 0
  %342 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 29
  %343 = getelementptr inbounds %struct.Mesh, ptr %151, i64 0, i32 5
  br label %346

344:                                              ; preds = %328
  %345 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.81, ptr noundef nonnull %345) #13
  br label %421

346:                                              ; preds = %336, %415
  %347 = phi i64 [ 0, %336 ], [ %417, %415 ]
  %348 = load ptr, ptr %25, align 8, !tbaa !115
  %349 = getelementptr inbounds %struct.BakeImage, ptr %348, i64 %347
  br i1 %32, label %350, label %366

350:                                              ; preds = %346
  %351 = load ptr, ptr %349, align 8, !tbaa !123
  %352 = getelementptr inbounds %struct.BakeImage, ptr %348, i64 %347, i32 3
  %353 = load i64, ptr %352, align 8, !tbaa !122
  %354 = getelementptr inbounds %struct.BakePixel, ptr %145, i64 %353
  %355 = mul i64 %353, %147
  %356 = getelementptr inbounds float, ptr %150, i64 %355
  %357 = getelementptr inbounds %struct.BakeImage, ptr %348, i64 %347, i32 1
  %358 = load i32, ptr %357, align 8, !tbaa !119
  %359 = getelementptr inbounds %struct.BakeImage, ptr %348, i64 %347, i32 2
  %360 = load i32, ptr %359, align 4, !tbaa !121
  %361 = call fastcc zeroext i8 @write_internal_bake_pixels(ptr noundef %351, ptr noundef %354, ptr noundef %356, i32 noundef %358, i32 noundef %360, i32 noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %33) #15, !range !72
  %362 = load ptr, ptr %349, align 8, !tbaa !123
  call fastcc void @bake_update_image(ptr noundef %22, ptr noundef %362) #15
  %363 = icmp eq i8 %361, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %350
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.82, ptr noundef nonnull %340) #13
  br label %415

365:                                              ; preds = %350
  call void @BKE_report(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.83) #13
  br label %415

366:                                              ; preds = %346
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %28) #14
  %367 = load i8, ptr %337, align 8, !tbaa !146
  call void @BKE_makepicstring_from_type(ptr noundef nonnull %28, ptr noundef %18, ptr noundef nonnull %338, i32 noundef 0, i8 noundef zeroext %367, i8 noundef zeroext 1, i8 noundef zeroext 0) #13
  br i1 %339, label %371, label %368

368:                                              ; preds = %366
  %369 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %28, i64 noundef 1024, ptr noundef nonnull %340, ptr noundef nonnull @.str.84) #13
  %370 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %28, i64 noundef 1024, ptr noundef %21, ptr noundef nonnull @.str.84) #13
  br label %371

371:                                              ; preds = %368, %366
  br i1 %341, label %399, label %372

372:                                              ; preds = %371
  %373 = load ptr, ptr %349, align 8, !tbaa !123
  %374 = icmp eq ptr %373, null
  br i1 %374, label %378, label %375

375:                                              ; preds = %372
  %376 = getelementptr inbounds %struct.ID, ptr %373, i64 0, i32 4, i64 2
  %377 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %28, i64 noundef 1024, ptr noundef nonnull %376, ptr noundef nonnull @.str.84) #13
  br label %399

378:                                              ; preds = %372
  %379 = load ptr, ptr %342, align 8, !tbaa !151
  %380 = getelementptr inbounds ptr, ptr %379, i64 %347
  %381 = load ptr, ptr %380, align 8, !tbaa !88
  %382 = icmp eq ptr %381, null
  br i1 %382, label %386, label %383

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.ID, ptr %381, i64 0, i32 4, i64 2
  %385 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %28, i64 noundef 1024, ptr noundef nonnull %384, ptr noundef nonnull @.str.84) #13
  br label %399

386:                                              ; preds = %378
  %387 = load ptr, ptr %343, align 8, !tbaa !152
  %388 = getelementptr inbounds ptr, ptr %387, i64 %347
  %389 = load ptr, ptr %388, align 8, !tbaa !88
  %390 = icmp eq ptr %389, null
  br i1 %390, label %394, label %391

391:                                              ; preds = %386
  %392 = getelementptr inbounds %struct.ID, ptr %389, i64 0, i32 4, i64 2
  %393 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %28, i64 noundef 1024, ptr noundef nonnull %392, ptr noundef nonnull @.str.84) #13
  br label %399

394:                                              ; preds = %386
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #14
  %395 = trunc i64 %347 to i32
  %396 = urem i32 %395, 1000
  %397 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef %396) #13
  %398 = call zeroext i8 @BLI_path_suffix(ptr noundef nonnull %28, i64 noundef 1024, ptr noundef nonnull %29, ptr noundef nonnull @.str.84) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #14
  br label %399

399:                                              ; preds = %375, %391, %394, %383, %371
  %400 = getelementptr inbounds %struct.BakeImage, ptr %348, i64 %347, i32 3
  %401 = load i64, ptr %400, align 8, !tbaa !122
  %402 = getelementptr inbounds %struct.BakePixel, ptr %145, i64 %401
  %403 = mul i64 %401, %147
  %404 = getelementptr inbounds float, ptr %150, i64 %403
  %405 = getelementptr inbounds %struct.BakeImage, ptr %348, i64 %347, i32 1
  %406 = load i32, ptr %405, align 8, !tbaa !119
  %407 = getelementptr inbounds %struct.BakeImage, ptr %348, i64 %347, i32 2
  %408 = load i32, ptr %407, align 4, !tbaa !121
  %409 = call fastcc zeroext i8 @write_external_bake_pixels(ptr noundef nonnull %28, ptr noundef %402, ptr noundef %404, i32 noundef %406, i32 noundef %408, i32 noundef %7, ptr noundef nonnull %337, i8 noundef zeroext %33) #15
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %399
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.86, ptr noundef nonnull %28) #13
  br label %413

412:                                              ; preds = %399
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.87, ptr noundef nonnull %28) #13
  br label %413

413:                                              ; preds = %412, %411
  %414 = phi i32 [ 4, %412 ], [ 2, %411 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %28) #14
  br i1 %341, label %426, label %415

415:                                              ; preds = %413, %365, %364
  %416 = phi i32 [ %414, %413 ], [ 2, %364 ], [ 4, %365 ]
  %417 = add nuw nsw i64 %347, 1
  %418 = load i32, ptr %333, align 8, !tbaa !118
  %419 = sext i32 %418 to i64
  %420 = icmp slt i64 %417, %419
  br i1 %420, label %346, label %421, !llvm.loop !153

421:                                              ; preds = %415, %330, %344
  %422 = phi ptr [ null, %344 ], [ %331, %330 ], [ %331, %415 ]
  %423 = phi ptr [ null, %344 ], [ %332, %330 ], [ %332, %415 ]
  %424 = phi i32 [ 2, %344 ], [ 2, %330 ], [ %416, %415 ]
  br i1 %32, label %425, label %426

425:                                              ; preds = %421
  call fastcc void @refresh_images(ptr noundef nonnull %25) #15
  br label %426

426:                                              ; preds = %413, %280, %421, %425
  %427 = phi ptr [ %423, %425 ], [ %423, %421 ], [ %281, %280 ], [ %332, %413 ]
  %428 = phi ptr [ %422, %425 ], [ %422, %421 ], [ %282, %280 ], [ %331, %413 ]
  %429 = phi i32 [ %424, %425 ], [ %424, %421 ], [ 2, %280 ], [ %414, %413 ]
  %430 = icmp eq ptr %428, null
  br i1 %430, label %465, label %431

431:                                              ; preds = %426
  %432 = icmp sgt i32 %141, 0
  br i1 %432, label %433, label %462

433:                                              ; preds = %431
  %434 = zext nneg i32 %141 to i64
  br label %435

435:                                              ; preds = %433, %459
  %436 = phi i64 [ 0, %433 ], [ %460, %459 ]
  %437 = getelementptr inbounds %struct.BakeHighPolyData, ptr %428, i64 %436
  %438 = getelementptr inbounds %struct.BakeHighPolyData, ptr %428, i64 %436, i32 4
  %439 = load i8, ptr %438, align 8, !tbaa !135
  %440 = getelementptr inbounds %struct.BakeHighPolyData, ptr %428, i64 %436, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !133
  %442 = getelementptr inbounds %struct.Object, ptr %441, i64 0, i32 102
  store i8 %439, ptr %442, align 8, !tbaa !111
  %443 = load ptr, ptr %437, align 8, !tbaa !136
  %444 = icmp eq ptr %443, null
  br i1 %444, label %447, label %445

445:                                              ; preds = %435
  %446 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  call void %446(ptr noundef nonnull %443) #13
  br label %447

447:                                              ; preds = %445, %435
  %448 = getelementptr inbounds %struct.BakeHighPolyData, ptr %428, i64 %436, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !137
  %450 = icmp eq ptr %449, null
  br i1 %450, label %454, label %451

451:                                              ; preds = %447
  %452 = load ptr, ptr %440, align 8, !tbaa !133
  %453 = call zeroext i8 @ED_object_modifier_remove(ptr noundef %5, ptr noundef %1, ptr noundef %452, ptr noundef nonnull %449) #13
  br label %454

454:                                              ; preds = %451, %447
  %455 = getelementptr inbounds %struct.BakeHighPolyData, ptr %428, i64 %436, i32 3
  %456 = load ptr, ptr %455, align 8, !tbaa !141
  %457 = icmp eq ptr %456, null
  br i1 %457, label %459, label %458

458:                                              ; preds = %454
  call void @BKE_libblock_free(ptr noundef %1, ptr noundef nonnull %456) #13
  br label %459

459:                                              ; preds = %454, %458
  %460 = add nuw nsw i64 %436, 1
  %461 = icmp eq i64 %460, %434
  br i1 %461, label %462, label %435, !llvm.loop !154

462:                                              ; preds = %459, %431
  %463 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  call void %463(ptr noundef nonnull %428) #13
  br label %465

464:                                              ; preds = %51, %56, %59, %70, %37
  store i8 %31, ptr %30, align 8, !tbaa !111
  br label %480

465:                                              ; preds = %288, %138, %462, %426
  %466 = phi i32 [ %429, %462 ], [ %429, %426 ], [ 2, %138 ], [ 2, %288 ]
  %467 = phi ptr [ %142, %462 ], [ %142, %426 ], [ %128, %138 ], [ %142, %288 ]
  %468 = phi i8 [ %140, %462 ], [ %140, %426 ], [ 0, %138 ], [ %140, %288 ]
  %469 = phi ptr [ %151, %462 ], [ %151, %426 ], [ null, %138 ], [ %151, %288 ]
  %470 = phi ptr [ %427, %462 ], [ %427, %426 ], [ null, %138 ], [ null, %288 ]
  %471 = phi ptr [ %150, %462 ], [ %150, %426 ], [ null, %138 ], [ %150, %288 ]
  %472 = phi ptr [ %145, %462 ], [ %145, %426 ], [ null, %138 ], [ %145, %288 ]
  store i8 %31, ptr %30, align 8, !tbaa !111
  %473 = icmp eq ptr %467, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %465
  %475 = getelementptr inbounds %struct.Object, ptr %467, i64 0, i32 102
  store i8 %468, ptr %475, align 8, !tbaa !111
  br label %476

476:                                              ; preds = %474, %465
  %477 = icmp eq ptr %472, null
  br i1 %477, label %480, label %478

478:                                              ; preds = %476
  %479 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  call void %479(ptr noundef nonnull %472) #13
  br label %480

480:                                              ; preds = %464, %478, %476
  %481 = phi i32 [ 2, %464 ], [ %466, %478 ], [ %466, %476 ]
  %482 = phi ptr [ null, %464 ], [ %469, %478 ], [ %469, %476 ]
  %483 = phi ptr [ null, %464 ], [ %470, %478 ], [ %470, %476 ]
  %484 = phi ptr [ null, %464 ], [ %471, %478 ], [ %471, %476 ]
  %485 = load ptr, ptr %25, align 8, !tbaa !115
  %486 = icmp eq ptr %485, null
  br i1 %486, label %489, label %487

487:                                              ; preds = %480
  %488 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  call void %488(ptr noundef nonnull %485) #13
  br label %489

489:                                              ; preds = %487, %480
  %490 = getelementptr inbounds %struct.BakeImages, ptr %25, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !117
  %492 = icmp eq ptr %491, null
  br i1 %492, label %495, label %493

493:                                              ; preds = %489
  %494 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  call void %494(ptr noundef nonnull %491) #13
  br label %495

495:                                              ; preds = %493, %489
  %496 = icmp eq ptr %484, null
  br i1 %496, label %499, label %497

497:                                              ; preds = %495
  %498 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  call void %498(ptr noundef nonnull %484) #13
  br label %499

499:                                              ; preds = %497, %495
  %500 = icmp eq ptr %482, null
  br i1 %500, label %502, label %501

501:                                              ; preds = %499
  call void @BKE_libblock_free(ptr noundef %1, ptr noundef nonnull %482) #13
  br label %502

502:                                              ; preds = %501, %499
  %503 = icmp eq ptr %483, null
  br i1 %503, label %505, label %504

504:                                              ; preds = %502
  call void @BKE_libblock_free(ptr noundef %1, ptr noundef nonnull %483) #13
  br label %505

505:                                              ; preds = %502, %504
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #14
  ret i32 %481
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_single(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !155 {
  %2 = load ptr, ptr %0, align 8, !tbaa !156
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = icmp eq ptr %2, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_property_enum_identifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_main_id_tag_idcode(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bake_object_check(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !158 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !98
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.60, ptr noundef nonnull %11) #13
  br label %80

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 25
  %16 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %15, i32 noundef 16) #13
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  br label %26

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.61, ptr noundef nonnull %25) #13
  br label %80

26:                                               ; preds = %22, %71
  %27 = phi i32 [ 0, %22 ], [ %28, %71 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !88
  %28 = add nuw nsw i32 %27, 1
  %29 = call zeroext i8 @ED_object_get_active_image(ptr noundef nonnull %0, i32 noundef %28, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5) #13
  %30 = load ptr, ptr %3, align 8, !tbaa !88
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %5, align 8, !tbaa !88
  %37 = call zeroext i8 @BKE_node_is_connected_to_output(ptr noundef %36, ptr noundef nonnull %33) #13
  %38 = icmp eq i8 %37, 0
  %39 = load ptr, ptr %3, align 8, !tbaa !88
  br i1 %38, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.62, ptr noundef nonnull %41, ptr noundef nonnull %23) #13
  %42 = load ptr, ptr %3, align 8, !tbaa !88
  br label %43

43:                                               ; preds = %35, %40, %32
  %44 = phi ptr [ %39, %35 ], [ %42, %40 ], [ %30, %32 ]
  %45 = call ptr @BKE_image_acquire_ibuf(ptr noundef %44, ptr noundef null, ptr noundef nonnull %4) #13
  %46 = icmp eq ptr %45, null
  %47 = load ptr, ptr %3, align 8, !tbaa !88
  br i1 %46, label %48, label %71

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef nonnull %49, ptr noundef nonnull %23) #13
  %50 = load ptr, ptr %3, align 8, !tbaa !88
  %51 = load ptr, ptr %4, align 8, !tbaa !88
  call void @BKE_image_release_ibuf(ptr noundef %50, ptr noundef null, ptr noundef %51) #13
  br label %79

52:                                               ; preds = %26
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %54 = load ptr, ptr %53, align 8, !tbaa !151
  %55 = zext nneg i32 %27 to i64
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !88
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.64, ptr noundef nonnull %60, i32 noundef %27, ptr noundef nonnull %23) #13
  br label %79

61:                                               ; preds = %52
  %62 = load ptr, ptr %13, align 8, !tbaa !114
  %63 = getelementptr inbounds %struct.Mesh, ptr %62, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !152
  %65 = getelementptr inbounds ptr, ptr %64, i64 %55
  %66 = load ptr, ptr %65, align 8, !tbaa !88
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.ID, ptr %66, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.64, ptr noundef nonnull %69, i32 noundef %27, ptr noundef nonnull %23) #13
  br label %79

70:                                               ; preds = %61
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.65, i32 noundef %27, ptr noundef nonnull %23) #13
  br label %79

71:                                               ; preds = %43
  %72 = load ptr, ptr %4, align 8, !tbaa !88
  call void @BKE_image_release_ibuf(ptr noundef %47, ptr noundef nonnull %45, ptr noundef %72) #13
  %73 = load ptr, ptr %3, align 8, !tbaa !88
  %74 = getelementptr inbounds %struct.ID, ptr %73, i64 0, i32 5
  %75 = load i16, ptr %74, align 2, !tbaa !106
  %76 = or i16 %75, 1024
  store i16 %76, ptr %74, align 2, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %77 = load i32, ptr %19, align 8, !tbaa !112
  %78 = icmp slt i32 %28, %77
  br i1 %78, label %26, label %80, !llvm.loop !159

79:                                               ; preds = %48, %59, %70, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %80

80:                                               ; preds = %71, %18, %24, %79, %10
  %81 = phi i8 [ 0, %10 ], [ 0, %79 ], [ 0, %24 ], [ 1, %18 ], [ 1, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i8 %81
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !160 {
  %2 = load ptr, ptr %0, align 8, !tbaa !156
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_object_get_active_image(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_node_is_connected_to_output(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_bake_ibuf_clear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @is_noncolor_pass(i32 noundef %0) unnamed_addr #6 !PGOFuncName !161 {
  switch i32 %0, label %2 [
    i32 32768, label %5
    i32 4096, label %5
    i32 2048, label %5
    i32 512, label %5
    i32 256, label %5
    i32 2, label %5
  ]

2:                                                ; preds = %1
  %3 = icmp eq i32 %0, 262144
  %4 = zext i1 %3 to i8
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %2
  %6 = phi i8 [ 1, %1 ], [ %4, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @RE_pass_depth(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_bake_engine_set_engine_parameters(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RE_bake_has_engine(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_image_lookup(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !162 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !112
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 19785, i8 noundef zeroext 0) #13
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BakeImages, ptr %2, i64 0, i32 1
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %49
  %12 = phi i64 [ 0, %8 ], [ %14, %49 ]
  %13 = phi i32 [ 0, %8 ], [ %50, %49 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %14 = add nuw nsw i64 %12, 1
  %15 = trunc i64 %14 to i32
  %16 = call zeroext i8 @ED_object_get_active_image(ptr noundef %1, i32 noundef %15, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %17 = load ptr, ptr %4, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 5
  %19 = load i16, ptr %18, align 2, !tbaa !106
  %20 = and i16 %19, 1024
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %11
  %23 = icmp eq i64 %12, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %2, align 8, !tbaa !115
  br label %26

26:                                               ; preds = %24, %35
  %27 = phi i64 [ 0, %24 ], [ %36, %35 ]
  %28 = getelementptr inbounds %struct.BakeImage, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !123
  %30 = icmp eq ptr %29, %17
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = trunc i64 %27 to i32
  %33 = load ptr, ptr %9, align 8, !tbaa !117
  %34 = getelementptr inbounds i32, ptr %33, i64 %12
  store i32 %32, ptr %34, align 4, !tbaa !93
  br label %49

35:                                               ; preds = %26
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, %12
  br i1 %37, label %49, label %26, !llvm.loop !163

38:                                               ; preds = %11
  %39 = load ptr, ptr %9, align 8, !tbaa !117
  %40 = getelementptr inbounds i32, ptr %39, i64 %12
  store i32 %13, ptr %40, align 4, !tbaa !93
  %41 = load ptr, ptr %2, align 8, !tbaa !115
  %42 = sext i32 %13 to i64
  %43 = getelementptr inbounds %struct.BakeImage, ptr %41, i64 %42
  store ptr %17, ptr %43, align 8, !tbaa !123
  %44 = load ptr, ptr %4, align 8, !tbaa !88
  %45 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 5
  %46 = load i16, ptr %45, align 2, !tbaa !106
  %47 = or i16 %46, 1024
  store i16 %47, ptr %45, align 2, !tbaa !106
  %48 = add nsw i32 %13, 1
  br label %49

49:                                               ; preds = %35, %22, %31, %38
  %50 = phi i32 [ %13, %31 ], [ %48, %38 ], [ %13, %22 ], [ %13, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %51 = icmp eq i64 %14, %10
  br i1 %51, label %52, label %11, !llvm.loop !164

52:                                               ; preds = %49, %3
  %53 = phi i32 [ 0, %3 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.BakeImages, ptr %2, i64 0, i32 2
  store i32 %53, ptr %54, align 8, !tbaa !118
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @initialize_internal_images(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !165 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.BakeImages, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !118
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2, %20
  %8 = phi i64 [ %34, %20 ], [ 0, %2 ]
  %9 = phi i64 [ %31, %20 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %10 = load ptr, ptr %0, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.BakeImage, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = call ptr @BKE_image_acquire_ibuf(ptr noundef %12, ptr noundef null, ptr noundef nonnull %3) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr %11, align 8, !tbaa !123
  %17 = load ptr, ptr %3, align 8, !tbaa !88
  call void @BKE_image_release_ibuf(ptr noundef %16, ptr noundef null, ptr noundef %17) #13
  %18 = load ptr, ptr %11, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.88, ptr noundef nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %38

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !166
  %23 = getelementptr inbounds %struct.BakeImage, ptr %10, i64 %8, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !170
  %26 = getelementptr inbounds %struct.BakeImage, ptr %10, i64 %8, i32 2
  store i32 %25, ptr %26, align 4, !tbaa !121
  %27 = getelementptr inbounds %struct.BakeImage, ptr %10, i64 %8, i32 3
  store i64 %9, ptr %27, align 8, !tbaa !122
  %28 = sext i32 %22 to i64
  %29 = sext i32 %25 to i64
  %30 = mul nsw i64 %29, %28
  %31 = add i64 %30, %9
  %32 = load ptr, ptr %11, align 8, !tbaa !123
  %33 = load ptr, ptr %3, align 8, !tbaa !88
  call void @BKE_image_release_ibuf(ptr noundef %32, ptr noundef nonnull %13, ptr noundef %33) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %34 = add nuw nsw i64 %8, 1
  %35 = load i32, ptr %4, align 8, !tbaa !118
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %7, label %38, !llvm.loop !171

38:                                               ; preds = %20, %2, %15
  %39 = phi i64 [ 0, %15 ], [ 0, %2 ], [ %31, %20 ]
  ret i64 %39
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mesh_new_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_bake_pixels_populate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !172 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @modifier_copyData(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_object_modifier_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @normalize_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !173 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !174
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !174
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @negate_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RE_bake_pixels_populate_from_objects(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RE_bake_engine(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @modifier_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_bake_normal_world_to_world(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_bake_normal_world_to_object(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_bake_normal_world_to_tangent(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @write_internal_bake_pixels(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !175 {
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = sext i32 %3 to i64
  %11 = sext i32 %4 to i64
  %12 = mul nsw i64 %11, %10
  %13 = call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef nonnull %9) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %107, label %15

15:                                               ; preds = %8
  %16 = icmp slt i32 %5, 1
  %17 = icmp ne i8 %6, 0
  %18 = and i1 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !88
  %21 = call ptr %20(i64 noundef %12, ptr noundef nonnull @.str.89) #13
  call void @RE_bake_mask_fill(ptr noundef %1, i64 noundef %12, ptr noundef %21) #13
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ null, %15 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !176
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 32
  %28 = icmp eq i8 %7, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #13
  %31 = icmp eq i8 %27, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call ptr @IMB_colormanagement_get_float_colorspace(ptr noundef nonnull %13) #13
  br label %36

34:                                               ; preds = %29
  %35 = call ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef nonnull %13) #13
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  %38 = icmp eq ptr %30, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !166
  %42 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !170
  %44 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !177
  call void @IMB_colormanagement_transform(ptr noundef %2, i32 noundef %41, i32 noundef %43, i32 noundef %45, ptr noundef %30, ptr noundef %37, i8 noundef zeroext 0) #13
  br label %46

46:                                               ; preds = %36, %39, %22
  %47 = icmp eq i8 %27, 0
  %48 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !177
  br i1 %17, label %50, label %67

50:                                               ; preds = %46
  br i1 %47, label %58, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !178
  %54 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !166
  %56 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !170
  call void @IMB_buffer_float_from_float(ptr noundef %53, ptr noundef %2, i32 noundef %49, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0, i32 noundef %55, i32 noundef %57, i32 noundef %55, i32 noundef %55) #13
  br label %84

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !179
  %61 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 18
  %62 = load float, ptr %61, align 8, !tbaa !180
  %63 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !166
  %65 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !170
  call void @IMB_buffer_byte_from_float(ptr noundef %60, ptr noundef %2, i32 noundef %49, float noundef %62, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %64, i32 noundef %66, i32 noundef %64, i32 noundef %64) #13
  br label %84

67:                                               ; preds = %46
  br i1 %47, label %75, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !178
  %71 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !166
  %73 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !170
  call void @IMB_buffer_float_from_float_mask(ptr noundef %70, ptr noundef %2, i32 noundef %49, i32 noundef %72, i32 noundef %74, i32 noundef %72, i32 noundef %72, ptr noundef %23) #13
  br label %84

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !179
  %78 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 18
  %79 = load float, ptr %78, align 8, !tbaa !180
  %80 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !166
  %82 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !170
  call void @IMB_buffer_byte_from_float_mask(ptr noundef %77, ptr noundef %2, i32 noundef %49, float noundef %79, i8 noundef zeroext 0, i32 noundef %81, i32 noundef %83, i32 noundef %81, i32 noundef %81, ptr noundef %23) #13
  br label %84

84:                                               ; preds = %68, %75, %51, %58
  %85 = icmp sgt i32 %5, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  call void @RE_bake_margin(ptr noundef nonnull %13, ptr noundef %23, i32 noundef %5) #13
  br label %87

87:                                               ; preds = %86, %84
  %88 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 23
  %89 = load i32, ptr %88, align 4, !tbaa !181
  %90 = or i32 %89, 18
  store i32 %90, ptr %88, align 4, !tbaa !181
  %91 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !178
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = or i32 %89, 26
  store i32 %95, ptr %88, align 4, !tbaa !181
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi i32 [ %95, %94 ], [ %90, %87 ]
  %98 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !88
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = or i32 %97, 4
  store i32 %102, ptr %88, align 4, !tbaa !181
  call void @imb_freemipmapImBuf(ptr noundef nonnull %13) #13
  br label %103

103:                                              ; preds = %101, %96
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %13, ptr noundef null) #13
  %104 = icmp eq ptr %23, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %103
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  call void %106(ptr noundef nonnull %23) #13
  br label %107

107:                                              ; preds = %103, %105, %8
  %108 = phi i8 [ 0, %8 ], [ 1, %105 ], [ 1, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  ret i8 %108
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bake_update_image(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #9 !PGOFuncName !182 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !183
  %7 = icmp eq i8 %6, 6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %10, i64 0, i32 5
  store ptr %1, ptr %13, align 8, !tbaa !186
  br label %14

14:                                               ; preds = %8, %12, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @BKE_makepicstring_from_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_path_suffix(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @write_external_bake_pixels(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !192 {
  %9 = getelementptr inbounds %struct.ImageFormatData, ptr %6, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !193
  %11 = icmp ugt i8 %10, 8
  %12 = getelementptr inbounds %struct.ImageFormatData, ptr %6, i64 0, i32 2
  %13 = load i8, ptr %12, align 2, !tbaa !194
  %14 = select i1 %11, i32 32, i32 1
  %15 = tail call ptr @IMB_allocImBuf(i32 noundef %3, i32 noundef %4, i8 noundef zeroext %13, i32 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %8
  br i1 %11, label %18, label %27

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !177
  %23 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !166
  %25 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !170
  tail call void @IMB_buffer_float_from_float(ptr noundef %20, ptr noundef %2, i32 noundef %22, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %26, i32 noundef %24, i32 noundef %24) #13
  br label %49

27:                                               ; preds = %17
  %28 = icmp eq i8 %7, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #13
  %31 = tail call ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef nonnull %15) #13
  %32 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !166
  %34 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !170
  %36 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !177
  tail call void @IMB_colormanagement_transform(ptr noundef %2, i32 noundef %33, i32 noundef %35, i32 noundef %37, ptr noundef %30, ptr noundef %31, i8 noundef zeroext 0) #13
  br label %38

38:                                               ; preds = %29, %27
  %39 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !179
  %41 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !177
  %43 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 18
  %44 = load float, ptr %43, align 8, !tbaa !180
  %45 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !166
  %47 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !170
  tail call void @IMB_buffer_byte_from_float(ptr noundef %40, ptr noundef %2, i32 noundef %42, float noundef %44, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %46, i32 noundef %48, i32 noundef %46, i32 noundef %46) #13
  br label %49

49:                                               ; preds = %38, %18
  %50 = icmp sgt i32 %5, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  %52 = sext i32 %3 to i64
  %53 = sext i32 %4 to i64
  %54 = mul nsw i64 %53, %52
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !88
  %56 = tail call ptr %55(i64 noundef %54, ptr noundef nonnull @.str.89) #13
  tail call void @RE_bake_mask_fill(ptr noundef %1, i64 noundef %54, ptr noundef %56) #13
  tail call void @RE_bake_margin(ptr noundef nonnull %15, ptr noundef %56, i32 noundef %5) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  tail call void %59(ptr noundef nonnull %56) #13
  br label %60

60:                                               ; preds = %51, %58, %49
  %61 = tail call i32 @BKE_imbuf_write(ptr noundef nonnull %15, ptr noundef %0, ptr noundef nonnull %6) #13
  %62 = trunc i32 %61 to i8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @chmod(ptr noundef %0, i32 noundef 384) #13
  br label %66

66:                                               ; preds = %64, %60
  tail call void @IMB_freeImBuf(ptr noundef nonnull %15) #13
  br label %67

67:                                               ; preds = %8, %66
  %68 = phi i8 [ %62, %66 ], [ 0, %8 ]
  ret i8 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @refresh_images(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !195 {
  %2 = getelementptr inbounds %struct.BakeImages, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !118
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1, %16
  %6 = phi i32 [ %17, %16 ], [ %3, %1 ]
  %7 = phi i64 [ %18, %16 ], [ 0, %1 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.BakeImage, ptr %8, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 9
  %12 = load i16, ptr %11, align 4, !tbaa !196
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  tail call void @GPU_free_image(ptr noundef nonnull %10) #13
  tail call void @DAG_id_tag_update(ptr noundef nonnull %10, i16 noundef signext 0) #13
  %15 = load i32, ptr %2, align 8, !tbaa !118
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ %6, %5 ]
  %18 = add nuw nsw i64 %7, 1
  %19 = sext i32 %17 to i64
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %5, label %21, !llvm.loop !197

21:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_object_modifier_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_bake_mask_fill(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_colormanagement_get_float_colorspace(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_colormanagement_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_buffer_float_from_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_buffer_byte_from_float(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_buffer_float_from_float_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_buffer_byte_from_float_mask(ptr noundef, ptr noundef, i32 noundef, float noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_bake_margin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @imb_freemipmapImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_imbuf_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_free_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_set_props(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !198 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %4, ptr noundef nonnull @.str.6) #13
  %6 = load ptr, ptr %3, align 8, !tbaa !91
  %7 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %6, ptr noundef %5) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 1
  tail call void @RNA_property_string_set(ptr noundef %10, ptr noundef %5, ptr noundef nonnull %11) #13
  br label %12

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr %3, align 8, !tbaa !91
  %14 = tail call ptr @RNA_struct_find_property(ptr noundef %13, ptr noundef nonnull @.str.9) #13
  %15 = load ptr, ptr %3, align 8, !tbaa !91
  %16 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %15, ptr noundef %14) #13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !199
  %22 = sext i16 %21 to i32
  tail call void @RNA_property_int_set(ptr noundef %19, ptr noundef %14, i32 noundef %22) #13
  br label %23

23:                                               ; preds = %18, %12
  %24 = load ptr, ptr %3, align 8, !tbaa !91
  %25 = tail call ptr @RNA_struct_find_property(ptr noundef %24, ptr noundef nonnull @.str.12) #13
  %26 = load ptr, ptr %3, align 8, !tbaa !91
  %27 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %26, ptr noundef %25) #13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !199
  %33 = sext i16 %32 to i32
  tail call void @RNA_property_int_set(ptr noundef %30, ptr noundef %25, i32 noundef %33) #13
  br label %34

34:                                               ; preds = %29, %23
  %35 = load ptr, ptr %3, align 8, !tbaa !91
  %36 = tail call ptr @RNA_struct_find_property(ptr noundef %35, ptr noundef nonnull @.str.15) #13
  %37 = load ptr, ptr %3, align 8, !tbaa !91
  %38 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %37, ptr noundef %36) #13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load ptr, ptr %3, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 4
  %43 = load i16, ptr %42, align 4, !tbaa !200
  %44 = sext i16 %43 to i32
  tail call void @RNA_property_int_set(ptr noundef %41, ptr noundef %36, i32 noundef %44) #13
  br label %45

45:                                               ; preds = %40, %34
  %46 = load ptr, ptr %3, align 8, !tbaa !91
  %47 = tail call ptr @RNA_struct_find_property(ptr noundef %46, ptr noundef nonnull @.str.18) #13
  %48 = load ptr, ptr %3, align 8, !tbaa !91
  %49 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %48, ptr noundef %47) #13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load ptr, ptr %3, align 8, !tbaa !91
  %53 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 5
  %54 = load i16, ptr %53, align 2, !tbaa !201
  %55 = and i16 %54, 4
  %56 = zext nneg i16 %55 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %52, ptr noundef %47, i32 noundef %56) #13
  br label %57

57:                                               ; preds = %51, %45
  %58 = load ptr, ptr %3, align 8, !tbaa !91
  %59 = tail call ptr @RNA_struct_find_property(ptr noundef %58, ptr noundef nonnull @.str.21) #13
  %60 = load ptr, ptr %3, align 8, !tbaa !91
  %61 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %60, ptr noundef %59) #13
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load ptr, ptr %3, align 8, !tbaa !91
  %65 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 6
  %66 = load float, ptr %65, align 8, !tbaa !202
  tail call void @RNA_property_float_set(ptr noundef %64, ptr noundef %59, float noundef %66) #13
  br label %67

67:                                               ; preds = %63, %57
  %68 = load ptr, ptr %3, align 8, !tbaa !91
  %69 = tail call ptr @RNA_struct_find_property(ptr noundef %68, ptr noundef nonnull @.str.24) #13
  %70 = load ptr, ptr %3, align 8, !tbaa !91
  %71 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %70, ptr noundef %69) #13
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load ptr, ptr %3, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 12
  tail call void @RNA_property_string_set(ptr noundef %74, ptr noundef %69, ptr noundef nonnull %75) #13
  br label %76

76:                                               ; preds = %73, %67
  %77 = load ptr, ptr %3, align 8, !tbaa !91
  %78 = tail call ptr @RNA_struct_find_property(ptr noundef %77, ptr noundef nonnull @.str.27) #13
  %79 = load ptr, ptr %3, align 8, !tbaa !91
  %80 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %79, ptr noundef %78) #13
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load ptr, ptr %3, align 8, !tbaa !91
  %84 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 9
  %85 = load i8, ptr %84, align 1, !tbaa !203
  %86 = zext i8 %85 to i32
  tail call void @RNA_property_enum_set(ptr noundef %83, ptr noundef %78, i32 noundef %86) #13
  br label %87

87:                                               ; preds = %82, %76
  %88 = load ptr, ptr %3, align 8, !tbaa !91
  %89 = tail call ptr @RNA_struct_find_property(ptr noundef %88, ptr noundef nonnull @.str.30) #13
  %90 = load ptr, ptr %3, align 8, !tbaa !91
  %91 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %90, ptr noundef %89) #13
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load ptr, ptr %3, align 8, !tbaa !91
  %95 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 8
  %96 = load i8, ptr %95, align 8, !tbaa !113
  %97 = zext i8 %96 to i32
  tail call void @RNA_property_enum_set(ptr noundef %94, ptr noundef %89, i32 noundef %97) #13
  br label %98

98:                                               ; preds = %93, %87
  %99 = load ptr, ptr %3, align 8, !tbaa !91
  %100 = tail call ptr @RNA_struct_find_property(ptr noundef %99, ptr noundef nonnull @.str.33) #13
  %101 = load ptr, ptr %3, align 8, !tbaa !91
  %102 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %101, ptr noundef %100) #13
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load ptr, ptr %3, align 8, !tbaa !91
  %106 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 8, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !113
  %108 = zext i8 %107 to i32
  tail call void @RNA_property_enum_set(ptr noundef %105, ptr noundef %100, i32 noundef %108) #13
  br label %109

109:                                              ; preds = %104, %98
  %110 = load ptr, ptr %3, align 8, !tbaa !91
  %111 = tail call ptr @RNA_struct_find_property(ptr noundef %110, ptr noundef nonnull @.str.36) #13
  %112 = load ptr, ptr %3, align 8, !tbaa !91
  %113 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %112, ptr noundef %111) #13
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load ptr, ptr %3, align 8, !tbaa !91
  %117 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 8, i64 2
  %118 = load i8, ptr %117, align 2, !tbaa !113
  %119 = zext i8 %118 to i32
  tail call void @RNA_property_enum_set(ptr noundef %116, ptr noundef %111, i32 noundef %119) #13
  br label %120

120:                                              ; preds = %115, %109
  %121 = load ptr, ptr %3, align 8, !tbaa !91
  %122 = tail call ptr @RNA_struct_find_property(ptr noundef %121, ptr noundef nonnull @.str.39) #13
  %123 = load ptr, ptr %3, align 8, !tbaa !91
  %124 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %123, ptr noundef %122) #13
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load ptr, ptr %3, align 8, !tbaa !91
  %128 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 10
  %129 = load i8, ptr %128, align 4, !tbaa !204
  %130 = zext i8 %129 to i32
  tail call void @RNA_property_enum_set(ptr noundef %127, ptr noundef %122, i32 noundef %130) #13
  br label %131

131:                                              ; preds = %126, %120
  %132 = load ptr, ptr %3, align 8, !tbaa !91
  %133 = tail call ptr @RNA_struct_find_property(ptr noundef %132, ptr noundef nonnull @.str.42) #13
  %134 = load ptr, ptr %3, align 8, !tbaa !91
  %135 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %134, ptr noundef %133) #13
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load ptr, ptr %3, align 8, !tbaa !91
  %139 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 5
  %140 = load i16, ptr %139, align 2, !tbaa !201
  %141 = and i16 %140, 1
  %142 = zext nneg i16 %141 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %138, ptr noundef %133, i32 noundef %142) #13
  br label %143

143:                                              ; preds = %137, %131
  %144 = load ptr, ptr %3, align 8, !tbaa !91
  %145 = tail call ptr @RNA_struct_find_property(ptr noundef %144, ptr noundef nonnull @.str.45) #13
  %146 = load ptr, ptr %3, align 8, !tbaa !91
  %147 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %146, ptr noundef %145) #13
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load ptr, ptr %3, align 8, !tbaa !91
  %151 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 5
  %152 = load i16, ptr %151, align 2, !tbaa !201
  %153 = and i16 %152, 256
  %154 = zext nneg i16 %153 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %150, ptr noundef %145, i32 noundef %154) #13
  br label %155

155:                                              ; preds = %149, %143
  %156 = load ptr, ptr %3, align 8, !tbaa !91
  %157 = tail call ptr @RNA_struct_find_property(ptr noundef %156, ptr noundef nonnull @.str.48) #13
  %158 = load ptr, ptr %3, align 8, !tbaa !91
  %159 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %158, ptr noundef %157) #13
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load ptr, ptr %3, align 8, !tbaa !91
  %163 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 5
  %164 = load i16, ptr %163, align 2, !tbaa !201
  %165 = and i16 %164, 512
  %166 = zext nneg i16 %165 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %162, ptr noundef %157, i32 noundef %166) #13
  br label %167

167:                                              ; preds = %161, %155
  %168 = load ptr, ptr %3, align 8, !tbaa !91
  %169 = tail call ptr @RNA_struct_find_property(ptr noundef %168, ptr noundef nonnull @.str.51) #13
  %170 = load ptr, ptr %3, align 8, !tbaa !91
  %171 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %170, ptr noundef %169) #13
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load ptr, ptr %3, align 8, !tbaa !91
  %175 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 116, i32 5
  %176 = load i16, ptr %175, align 2, !tbaa !201
  %177 = and i16 %176, 1024
  %178 = zext nneg i16 %177 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %174, ptr noundef %169, i32 noundef %178) #13
  br label %179

179:                                              ; preds = %173, %167
  ret void
}

; Function Attrs: optsize
declare void @RE_progress_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @bake_progress_update(ptr nocapture noundef readonly %0, float noundef %1) #11 !PGOFuncName !205 {
  %3 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load float, ptr %4, align 4, !tbaa !174
  %8 = fcmp une float %7, %1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  store float %1, ptr %4, align 4, !tbaa !174
  %10 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !207
  store i16 1, ptr %11, align 2, !tbaa !208
  br label %12

12:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bake_freejob(ptr noundef %0) #0 !PGOFuncName !209 {
  %2 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 4
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #13
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !88
  tail call void %3(ptr noundef %0) #13
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bake_startjob(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !210 {
  %5 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 26
  store ptr %2, ptr %5, align 8, !tbaa !207
  %6 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 25
  store ptr %3, ptr %6, align 8, !tbaa !206
  %7 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  tail call void @RE_SetReports(ptr noundef %8, ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = load ptr, ptr %0, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %9, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 11
  %17 = load i8, ptr %16, align 1, !tbaa !57
  %18 = tail call fastcc zeroext i8 @bake_objects_check(ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15, i8 noundef zeroext %17) #15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 22
  store i32 2, ptr %21, align 8, !tbaa !95
  br label %131

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 8
  %24 = load i8, ptr %23, align 4, !tbaa !58
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !59
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 14
  %32 = load i32, ptr %31, align 8, !tbaa !67
  %33 = icmp eq i32 %32, 3
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i8 [ 0, %26 ], [ %34, %30 ]
  %37 = load ptr, ptr %11, align 8, !tbaa !54
  tail call fastcc void @bake_images_clear(ptr noundef %37, i8 noundef zeroext %36) #15
  br label %38

38:                                               ; preds = %35, %22
  %39 = load i8, ptr %16, align 1, !tbaa !57
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %7, align 8, !tbaa !50
  %43 = load ptr, ptr %11, align 8, !tbaa !54
  %44 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = load ptr, ptr %0, align 8, !tbaa !55
  %47 = load ptr, ptr %9, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !61
  %52 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !62
  %54 = load i8, ptr %23, align 4, !tbaa !58
  %55 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 9
  %56 = load i8, ptr %55, align 1, !tbaa !63
  %57 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 10
  %58 = load i8, ptr %57, align 2, !tbaa !64
  %59 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 12
  %60 = load i8, ptr %59, align 8, !tbaa !65
  %61 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 13
  %62 = load float, ptr %61, align 4, !tbaa !66
  %63 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 14
  %64 = load i32, ptr %63, align 8, !tbaa !67
  %65 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 15
  %66 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 17
  %67 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 18
  %68 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 19
  %69 = load i32, ptr %68, align 8, !tbaa !68
  %70 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 20
  %71 = load i32, ptr %70, align 4, !tbaa !69
  %72 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 21
  %73 = load ptr, ptr %72, align 8, !tbaa !70
  %74 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 27
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 16
  %77 = tail call fastcc i32 @bake(ptr noundef %42, ptr noundef %43, ptr noundef %45, ptr noundef %46, ptr noundef nonnull %14, ptr noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i8 noundef zeroext %54, i8 noundef zeroext %56, i8 noundef zeroext %58, i8 noundef zeroext 1, i8 noundef zeroext %60, float noundef %62, i32 noundef %64, ptr noundef nonnull %65, ptr noundef nonnull %66, ptr noundef nonnull %67, i32 noundef %69, i32 noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef nonnull %76) #15
  %78 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 22
  store i32 %77, ptr %78, align 8, !tbaa !95
  br label %129

79:                                               ; preds = %38
  %80 = load i8, ptr %23, align 4, !tbaa !58
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = tail call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef nonnull %14) #15, !range !72
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i8 [ 0, %79 ], [ %83, %82 ]
  %86 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 2
  %87 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 5
  %88 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 6
  %89 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 7
  %90 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 9
  %91 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 10
  %92 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 12
  %93 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 13
  %94 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 14
  %95 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 15
  %96 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 17
  %97 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 18
  %98 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 19
  %99 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 20
  %100 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 21
  %101 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 27
  %102 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 16
  %103 = getelementptr inbounds %struct.BakeAPIRender, ptr %0, i64 0, i32 22
  br label %104

104:                                              ; preds = %108, %84
  %105 = phi ptr [ %14, %84 ], [ %106, %108 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !88
  %107 = icmp eq ptr %106, null
  br i1 %107, label %129, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.CollectionPointerLink, ptr %106, i64 0, i32 2, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !74
  %111 = load ptr, ptr %7, align 8, !tbaa !50
  %112 = load ptr, ptr %11, align 8, !tbaa !54
  %113 = load ptr, ptr %86, align 8, !tbaa !60
  %114 = load ptr, ptr %9, align 8, !tbaa !56
  %115 = load i32, ptr %87, align 8, !tbaa !59
  %116 = load i32, ptr %88, align 4, !tbaa !61
  %117 = load i32, ptr %89, align 8, !tbaa !62
  %118 = load i8, ptr %90, align 1, !tbaa !63
  %119 = load i8, ptr %91, align 2, !tbaa !64
  %120 = load i8, ptr %92, align 8, !tbaa !65
  %121 = load float, ptr %93, align 4, !tbaa !66
  %122 = load i32, ptr %94, align 8, !tbaa !67
  %123 = load i32, ptr %98, align 8, !tbaa !68
  %124 = load i32, ptr %99, align 4, !tbaa !69
  %125 = load ptr, ptr %100, align 8, !tbaa !70
  %126 = load ptr, ptr %101, align 8, !tbaa !71
  %127 = tail call fastcc i32 @bake(ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %110, ptr noundef null, ptr noundef %114, i32 noundef %115, i32 noundef %116, i32 noundef %117, i8 noundef zeroext %85, i8 noundef zeroext %118, i8 noundef zeroext %119, i8 noundef zeroext 0, i8 noundef zeroext %120, float noundef %121, i32 noundef %122, ptr noundef nonnull %95, ptr noundef nonnull %96, ptr noundef nonnull %97, i32 noundef %123, i32 noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef nonnull %102) #15
  store i32 %127, ptr %103, align 8, !tbaa !95
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %131, label %104, !llvm.loop !211

129:                                              ; preds = %104, %41
  %130 = load ptr, ptr %7, align 8, !tbaa !50
  tail call void @RE_SetReports(ptr noundef %130, ptr noundef null) #13
  br label %131

131:                                              ; preds = %108, %129, %20
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }

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
!49 = !{!"object_bake_api.c:bake_exec"}
!50 = !{!51, !36, i64 1264}
!51 = !{!"BakeAPIRender", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !52, i64 48, !52, i64 52, !52, i64 56, !37, i64 60, !37, i64 61, !37, i64 62, !37, i64 63, !37, i64 64, !53, i64 68, !52, i64 72, !37, i64 76, !37, i64 88, !37, i64 152, !37, i64 216, !52, i64 1240, !52, i64 1244, !36, i64 1248, !52, i64 1256, !37, i64 1260, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288}
!52 = !{!"int", !37, i64 0}
!53 = !{!"float", !37, i64 0}
!54 = !{!51, !36, i64 8}
!55 = !{!51, !36, i64 0}
!56 = !{!51, !36, i64 24}
!57 = !{!51, !37, i64 63}
!58 = !{!51, !37, i64 60}
!59 = !{!51, !52, i64 48}
!60 = !{!51, !36, i64 16}
!61 = !{!51, !52, i64 52}
!62 = !{!51, !52, i64 56}
!63 = !{!51, !37, i64 61}
!64 = !{!51, !37, i64 62}
!65 = !{!51, !37, i64 64}
!66 = !{!51, !53, i64 68}
!67 = !{!51, !52, i64 72}
!68 = !{!51, !52, i64 1240}
!69 = !{!51, !52, i64 1244}
!70 = !{!51, !36, i64 1248}
!71 = !{!51, !36, i64 1288}
!72 = !{i8 0, i8 2}
!73 = !{!51, !36, i64 32}
!74 = !{!75, !36, i64 32}
!75 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !76, i64 16}
!76 = !{!"PointerRNA", !77, i64 0, !36, i64 8, !36, i64 16}
!77 = !{!"", !36, i64 0}
!78 = !{!75, !36, i64 0}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"object_bake_api.c:bake_modal"}
!82 = !{!83, !41, i64 16}
!83 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !52, i64 20, !52, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !52, i64 48, !52, i64 52, !84, i64 56, !52, i64 64, !52, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !52, i64 108, !36, i64 112}
!84 = !{!"double", !37, i64 0}
!85 = !{!86, !37, i64 2080}
!86 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !52, i64 2096, !52, i64 2100, !37, i64 2104, !52, i64 2108, !52, i64 2112, !37, i64 2116}
!87 = !{!"object_bake_api.c:bake_invoke"}
!88 = !{!36, !36, i64 0}
!89 = !{!86, !37, i64 2090}
!90 = !{!"object_bake_api.c:bake_init_api_data"}
!91 = !{!92, !36, i64 112}
!92 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!93 = !{!52, !52, i64 0}
!94 = !{!92, !36, i64 120}
!95 = !{!51, !52, i64 1256}
!96 = !{!"object_bake_api.c:bake_break"}
!97 = !{!"object_bake_api.c:bake_objects_check"}
!98 = !{!99, !41, i64 136}
!99 = !{!"Object", !100, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !101, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !52, i64 432, !52, i64 436, !36, i64 440, !36, i64 448, !52, i64 456, !52, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !53, i64 616, !53, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !52, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !53, i64 1048, !53, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !53, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !52, i64 1144, !52, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !53, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !102, i64 1304, !102, i64 1312, !52, i64 1320, !52, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!100 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!101 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!102 = !{!"long", !37, i64 0}
!103 = distinct !{!103, !80}
!104 = distinct !{!104, !80}
!105 = !{!"object_bake_api.c:bake_images_clear"}
!106 = !{!107, !41, i64 98}
!107 = !{!"Image", !100, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !52, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !53, i64 1296, !52, i64 1300, !41, i64 1304, !41, i64 1306, !52, i64 1308, !52, i64 1312, !37, i64 1316, !37, i64 1317, !41, i64 1318, !37, i64 1320, !53, i64 1336, !53, i64 1340, !108, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!108 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!109 = distinct !{!109, !80}
!110 = !{!"object_bake_api.c:bake"}
!111 = !{!99, !37, i64 1160}
!112 = !{!99, !52, i64 456}
!113 = !{!37, !37, i64 0}
!114 = !{!99, !36, i64 296}
!115 = !{!116, !36, i64 0}
!116 = !{!"BakeImages", !36, i64 0, !36, i64 8, !52, i64 16}
!117 = !{!116, !36, i64 8}
!118 = !{!116, !52, i64 16}
!119 = !{!120, !52, i64 8}
!120 = !{!"BakeImage", !36, i64 0, !52, i64 8, !52, i64 12, !102, i64 16}
!121 = !{!120, !52, i64 12}
!122 = !{!120, !102, i64 16}
!123 = !{!120, !36, i64 0}
!124 = distinct !{!124, !80}
!125 = distinct !{!125, !80}
!126 = !{!127, !52, i64 1288}
!127 = !{!"Mesh", !100, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !128, i64 280, !128, i64 480, !128, i64 680, !128, i64 880, !128, i64 1080, !52, i64 1280, !52, i64 1284, !52, i64 1288, !52, i64 1292, !52, i64 1296, !52, i64 1300, !52, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !52, i64 1344, !41, i64 1348, !41, i64 1350, !53, i64 1352, !52, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!128 = !{!"CustomData", !36, i64 0, !37, i64 8, !52, i64 172, !52, i64 176, !52, i64 180, !36, i64 184, !36, i64 192}
!129 = !{i64 0, i64 8, !88, i64 8, i64 8, !88}
!130 = !{!131, !52, i64 16}
!131 = !{!"ModifierData", !36, i64 0, !36, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!132 = distinct !{!132, !80}
!133 = !{!134, !36, i64 8}
!134 = !{!"BakeHighPolyData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 36, !37, i64 100, !37, i64 164}
!135 = !{!134, !37, i64 32}
!136 = !{!134, !36, i64 0}
!137 = !{!134, !36, i64 16}
!138 = !{!139, !52, i64 116}
!139 = !{!"TriangulateModifierData", !131, i64 0, !52, i64 112, !52, i64 116, !52, i64 120, !52, i64 124}
!140 = !{!139, !52, i64 120}
!141 = !{!134, !36, i64 24}
!142 = distinct !{!142, !80}
!143 = distinct !{!143, !80}
!144 = distinct !{!144, !80}
!145 = !{!131, !52, i64 20}
!146 = !{!147, !37, i64 0}
!147 = !{!"BakeData", !148, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!148 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !149, i64 24, !150, i64 184}
!149 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!150 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!151 = !{!99, !36, i64 440}
!152 = !{!127, !36, i64 152}
!153 = distinct !{!153, !80}
!154 = distinct !{!154, !80}
!155 = !{!"object_bake_api.c:BLI_listbase_is_single"}
!156 = !{!39, !36, i64 0}
!157 = !{!39, !36, i64 8}
!158 = !{!"object_bake_api.c:bake_object_check"}
!159 = distinct !{!159, !80}
!160 = !{!"object_bake_api.c:BLI_listbase_is_empty"}
!161 = !{!"object_bake_api.c:is_noncolor_pass"}
!162 = !{!"object_bake_api.c:build_image_lookup"}
!163 = distinct !{!163, !80}
!164 = distinct !{!164, !80}
!165 = !{!"object_bake_api.c:initialize_internal_images"}
!166 = !{!167, !52, i64 16}
!167 = !{!"ImBuf", !36, i64 0, !36, i64 8, !52, i64 16, !52, i64 20, !37, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !53, i64 112, !37, i64 120, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !36, i64 296, !36, i64 304, !52, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !52, i64 2376, !36, i64 2384, !52, i64 2392, !52, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !52, i64 2432, !168, i64 2436, !169, i64 2456}
!168 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!169 = !{!"DDSData", !52, i64 0, !52, i64 4, !36, i64 8, !52, i64 16}
!170 = !{!167, !52, i64 20}
!171 = distinct !{!171, !80}
!172 = !{!"object_bake_api.c:BLI_listbase_clear"}
!173 = !{!"object_bake_api.c:zero_v3"}
!174 = !{!53, !53, i64 0}
!175 = !{!"object_bake_api.c:write_internal_bake_pixels"}
!176 = !{!167, !52, i64 32}
!177 = !{!167, !52, i64 28}
!178 = !{!167, !36, i64 48}
!179 = !{!167, !36, i64 40}
!180 = !{!167, !53, i64 112}
!181 = !{!167, !52, i64 292}
!182 = !{!"object_bake_api.c:bake_update_image"}
!183 = !{!184, !37, i64 72}
!184 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !168, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!185 = !{!184, !36, i64 96}
!186 = !{!187, !36, i64 40}
!187 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !52, i64 32, !52, i64 36, !36, i64 40, !188, i64 48, !36, i64 88, !189, i64 96, !190, i64 5360, !36, i64 10520, !37, i64 10528, !53, i64 10536, !53, i64 10540, !53, i64 10544, !53, i64 10548, !53, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !191, i64 10568}
!188 = !{!"ImageUser", !36, i64 0, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !52, i64 36}
!189 = !{!"Scopes", !52, i64 0, !52, i64 4, !52, i64 8, !53, i64 12, !52, i64 16, !53, i64 20, !53, i64 24, !52, i64 28, !53, i64 32, !52, i64 36, !37, i64 40, !190, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !52, i64 5256, !52, i64 5260}
!190 = !{!"Histogram", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !53, i64 5128, !53, i64 5132, !41, i64 5136, !41, i64 5138, !52, i64 5140, !37, i64 5144}
!191 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!192 = !{!"object_bake_api.c:write_external_bake_pixels"}
!193 = !{!148, !37, i64 1}
!194 = !{!148, !37, i64 2}
!195 = !{!"object_bake_api.c:refresh_images"}
!196 = !{!107, !41, i64 1244}
!197 = distinct !{!197, !80}
!198 = !{!"object_bake_api.c:bake_set_props"}
!199 = !{!147, !41, i64 1272}
!200 = !{!147, !41, i64 1276}
!201 = !{!147, !41, i64 1278}
!202 = !{!147, !53, i64 1280}
!203 = !{!147, !37, i64 1291}
!204 = !{!147, !37, i64 1292}
!205 = !{!"object_bake_api.c:bake_progress_update"}
!206 = !{!51, !36, i64 1272}
!207 = !{!51, !36, i64 1280}
!208 = !{!41, !41, i64 0}
!209 = !{!"object_bake_api.c:bake_freejob"}
!210 = !{!"object_bake_api.c:bake_startjob"}
!211 = distinct !{!211, !80}
