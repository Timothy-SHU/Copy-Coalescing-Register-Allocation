; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_mask_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_mask_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MaskSplinePointUW = type { float, float, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
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
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }

@rna_MaskParent_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskParent_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskParent_rna_properties_begin, ptr @MaskParent_rna_properties_next, ptr @MaskParent_rna_properties_end, ptr @MaskParent_rna_properties_get, ptr null, ptr null, ptr @MaskParent_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@rna_MaskSplinePointUW_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePointUW_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePointUW_rna_properties_begin, ptr @MaskSplinePointUW_rna_properties_next, ptr @MaskSplinePointUW_rna_properties_end, ptr @MaskSplinePointUW_rna_properties_get, ptr null, ptr null, ptr @MaskSplinePointUW_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaskSplinePoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoint_rna_properties_begin, ptr @MaskSplinePoint_rna_properties_next, ptr @MaskSplinePoint_rna_properties_end, ptr @MaskSplinePoint_rna_properties_get, ptr null, ptr null, ptr @MaskSplinePoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_MaskParent = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskSplinePointUW, ptr @RNA_MovieTrackingObjects, ptr null, %struct.ListBase { ptr @rna_MaskParent_rna_properties, ptr @rna_MaskParent_sub_parent } }, ptr @.str.23, ptr null, ptr null, i32 4, ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 17, ptr null, ptr @rna_MaskParent_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_MaskSplinePoint_feather_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskSplinePoint_parent, i32 -1, ptr @.str.55, i32 16384, ptr @.str.56, ptr @.str.57, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoint_feather_points_begin, ptr @MaskSplinePoint_feather_points_next, ptr @MaskSplinePoint_feather_points_end, ptr @MaskSplinePoint_feather_points_get, ptr @MaskSplinePoint_feather_points_length, ptr @MaskSplinePoint_feather_points_lookup_int, ptr null, ptr null, ptr @RNA_MaskSplinePointUW }, align 8
@.str = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.MaskSplinePoint_feather_points_lookup_int = private unnamed_addr constant [42 x i8] c"MaskSplinePoint_feather_points_lookup_int\00", align 1
@rna_MaskSpline_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSpline_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSpline_rna_properties_begin, ptr @MaskSpline_rna_properties_next, ptr @MaskSpline_rna_properties_end, ptr @MaskSpline_rna_properties_get, ptr null, ptr null, ptr @MaskSpline_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaskSpline_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskSpline_use_self_intersection_check, i32 -1, ptr @.str.76, i32 16384, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_MaskSplinePoints, ptr null }, ptr @MaskSpline_points_begin, ptr @MaskSpline_points_next, ptr @MaskSpline_points_end, ptr @MaskSpline_points_get, ptr @MaskSpline_points_length, ptr @MaskSpline_points_lookup_int, ptr null, ptr null, ptr @RNA_MaskSplinePoint }, align 8
@__func__.MaskSpline_points_lookup_int = private unnamed_addr constant [29 x i8] c"MaskSpline_points_lookup_int\00", align 1
@rna_MaskSplines_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplines_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplines_rna_properties_begin, ptr @MaskSplines_rna_properties_next, ptr @MaskSplines_rna_properties_end, ptr @MaskSplines_rna_properties_get, ptr null, ptr null, ptr @MaskSplines_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaskSplinePoints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoints_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoints_rna_properties_begin, ptr @MaskSplinePoints_rna_properties_next, ptr @MaskSplinePoints_rna_properties_end, ptr @MaskSplinePoints_rna_properties_get, ptr null, ptr null, ptr @MaskSplinePoints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaskLayer_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_rna_properties_begin, ptr @MaskLayer_rna_properties_next, ptr @MaskLayer_rna_properties_end, ptr @MaskLayer_rna_properties_get, ptr null, ptr null, ptr @MaskLayer_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaskLayer_splines = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_hide, ptr @rna_MaskLayer_name, i32 -1, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.112, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_MaskSplines, ptr null }, ptr @MaskLayer_splines_begin, ptr @MaskLayer_splines_next, ptr @MaskLayer_splines_end, ptr @MaskLayer_splines_get, ptr null, ptr @MaskLayer_splines_lookup_int, ptr null, ptr null, ptr @RNA_MaskSpline }, align 8
@rna_Mask_layers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Mask_active_layer_index, ptr null, i32 -1, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.146, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_MaskLayers, ptr null }, ptr @Mask_layers_begin, ptr @Mask_layers_next, ptr @Mask_layers_end, ptr @Mask_layers_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaskLayer }, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_MaskLayers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayers_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayers_rna_properties_begin, ptr @MaskLayers_rna_properties_next, ptr @MaskLayers_rna_properties_end, ptr @MaskLayers_rna_properties_get, ptr null, ptr null, ptr @MaskLayers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaskParent_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskParent_id, ptr @rna_MaskParent_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskParent_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_MaskParent_id = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskParent_id_type, ptr @rna_MaskParent_rna_type, i32 -1, ptr @.str.8, i32 8388673, ptr @.str.9, ptr @.str.10, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_parent, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskParent_id_get, ptr @MaskParent_id_set, ptr @rna_MaskParent_id_typef, ptr null, ptr @RNA_ID }, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_MaskParent_id_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskParent_type, ptr @rna_MaskParent_id, i32 -1, ptr @.str.11, i32 3, ptr @.str.12, ptr @.str.13, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_parent, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskParent_id_type_get, ptr @MaskParent_id_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskParent_id_type_items, i32 1, i32 17229 }, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"ID-block to which masking element would be parented to or to it's property\00", align 1
@rna_MaskParent_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskParent_parent, ptr @rna_MaskParent_id_type, i32 -1, ptr @.str.14, i32 3, ptr @.str.15, ptr @.str.15, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_parent, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskParent_type_get, ptr @MaskParent_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskParent_type_items, i32 2, i32 0 }, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"id_type\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ID Type\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Type of ID-block that can be used\00", align 1
@rna_MaskParent_id_type_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 17229, ptr @.str.179, i32 111, ptr @.str.180, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskParent_parent = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskParent_sub_parent, ptr @rna_MaskParent_type, i32 -1, ptr @.str.16, i32 262145, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Mask_update_parent, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskParent_parent_get, ptr @MaskParent_parent_length, ptr @MaskParent_parent_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.19 }, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Parent Type\00", align 1
@rna_MaskParent_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.181, i32 0, ptr @.str.182, ptr @.str.19 }, %struct.EnumPropertyItem { i32 1, ptr @.str.183, i32 0, ptr @.str.184, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskParent_sub_parent = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskParent_parent, i32 -1, ptr @.str.20, i32 262145, ptr @.str.21, ptr @.str.22, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Mask_update_parent, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskParent_sub_parent_get, ptr @MaskParent_sub_parent_length, ptr @MaskParent_sub_parent_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.19 }, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.18 = private unnamed_addr constant [73 x i8] c"Name of parent object in specified data block to which parenting happens\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"sub_parent\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Sub Parent\00", align 1
@.str.22 = private unnamed_addr constant [77 x i8] c"Name of parent sub-object in specified data block to which parenting happens\00", align 1
@RNA_MaskSplinePointUW = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskSplinePoint, ptr @RNA_MaskParent, ptr null, %struct.ListBase { ptr @rna_MaskSplinePointUW_rna_properties, ptr @rna_MaskSplinePointUW_select } }, ptr @.str.35, ptr null, ptr null, i32 4, ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 17, ptr null, ptr @rna_MaskSplinePointUW_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_MovieTrackingObjects = external global %struct.StructRNA, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"MaskParent\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Mask Parent\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Parenting settings for masking element\00", align 1
@rna_MaskSplinePointUW_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePointUW_u, ptr @rna_MaskSplinePointUW_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePointUW_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaskSplinePointUW_u = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePointUW_weight, ptr @rna_MaskSplinePointUW_rna_type, i32 -1, ptr @.str.26, i32 8195, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @MaskSplinePointUW_u_get, ptr @MaskSplinePointUW_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MaskSplinePointUW_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePointUW_select, ptr @rna_MaskSplinePointUW_u, i32 -1, ptr @.str.29, i32 8195, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @MaskSplinePointUW_weight_get, ptr @MaskSplinePointUW_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.26 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"U coordinate of point along spline segment\00", align 1
@rna_MaskSplinePointUW_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskSplinePointUW_weight, i32 -1, ptr @.str.32, i32 3, ptr @.str.33, ptr @.str.34, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePointUW_select_get, ptr @MaskSplinePointUW_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"Weight of feather point\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Selection status\00", align 1
@RNA_MaskSplinePoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskSpline, ptr @RNA_MaskSplinePointUW, ptr null, %struct.ListBase { ptr @rna_MaskSplinePoint_rna_properties, ptr @rna_MaskSplinePoint_feather_points } }, ptr @.str.58, ptr null, ptr null, i32 4, ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 17, ptr null, ptr @rna_MaskSplinePoint_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.35 = private unnamed_addr constant [18 x i8] c"MaskSplinePointUW\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"Mask Spline UW Point\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"Single point in spline segment defining feather\00", align 1
@rna_MaskSplinePoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_handle_left, ptr @rna_MaskSplinePoint_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaskSplinePoint_handle_left = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_co, ptr @rna_MaskSplinePoint_rna_type, i32 -1, ptr @.str.38, i32 3, ptr @.str.39, ptr @.str.40, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @MaskSplinePoint_handle_left_get, ptr @MaskSplinePoint_handle_left_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MaskSplinePoint_handle_left_default }, align 8
@rna_MaskSplinePoint_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_handle_right, ptr @rna_MaskSplinePoint_handle_left, i32 -1, ptr @.str.41, i32 3, ptr @.str.42, ptr @.str.43, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @MaskSplinePoint_co_get, ptr @MaskSplinePoint_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MaskSplinePoint_co_default }, align 8
@.str.38 = private unnamed_addr constant [12 x i8] c"handle_left\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Handle 1\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"Coordinates of the first handle\00", align 1
@rna_MaskSplinePoint_handle_left_default = internal global [2 x float] zeroinitializer, align 4
@rna_MaskSplinePoint_handle_right = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_handle_type, ptr @rna_MaskSplinePoint_co, i32 -1, ptr @.str.44, i32 3, ptr @.str.45, ptr @.str.46, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @MaskSplinePoint_handle_right_get, ptr @MaskSplinePoint_handle_right_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_MaskSplinePoint_handle_right_default }, align 8
@.str.41 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Control Point\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"Coordinates of the control point\00", align 1
@rna_MaskSplinePoint_co_default = internal global [2 x float] zeroinitializer, align 4
@rna_MaskSplinePoint_handle_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_handle_left_type, ptr @rna_MaskSplinePoint_handle_right, i32 -1, ptr @.str.47, i32 3, ptr @.str.48, ptr @.str.49, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoint_handle_type_get, ptr @MaskSplinePoint_handle_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskSplinePoint_handle_type_items, i32 5, i32 0 }, align 8
@.str.44 = private unnamed_addr constant [13 x i8] c"handle_right\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Handle 2\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"Coordinates of the second handle\00", align 1
@rna_MaskSplinePoint_handle_right_default = internal global [2 x float] zeroinitializer, align 4
@rna_MaskSplinePoint_handle_left_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_handle_right_type, ptr @rna_MaskSplinePoint_handle_type, i32 -1, ptr @.str.50, i32 3, ptr @.str.51, ptr @.str.49, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoint_handle_left_type_get, ptr @MaskSplinePoint_handle_left_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskSplinePoint_handle_left_type_items, i32 5, i32 0 }, align 8
@.str.47 = private unnamed_addr constant [12 x i8] c"handle_type\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Handle Type\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Handle type\00", align 1
@rna_MaskSplinePoint_handle_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.185, i32 0, ptr @.str.186, ptr @.str.19 }, %struct.EnumPropertyItem { i32 2, ptr @.str.187, i32 0, ptr @.str.188, ptr @.str.19 }, %struct.EnumPropertyItem { i32 3, ptr @.str.189, i32 0, ptr @.str.190, ptr @.str.19 }, %struct.EnumPropertyItem { i32 5, ptr @.str.191, i32 0, ptr @.str.192, ptr @.str.19 }, %struct.EnumPropertyItem { i32 0, ptr @.str.193, i32 0, ptr @.str.194, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskSplinePoint_handle_right_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_weight, ptr @rna_MaskSplinePoint_handle_left_type, i32 -1, ptr @.str.52, i32 3, ptr @.str.53, ptr @.str.49, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoint_handle_right_type_get, ptr @MaskSplinePoint_handle_right_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskSplinePoint_handle_right_type_items, i32 5, i32 0 }, align 8
@.str.50 = private unnamed_addr constant [17 x i8] c"handle_left_type\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"Handle 1 Type\00", align 1
@rna_MaskSplinePoint_handle_left_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.185, i32 0, ptr @.str.186, ptr @.str.19 }, %struct.EnumPropertyItem { i32 2, ptr @.str.187, i32 0, ptr @.str.188, ptr @.str.19 }, %struct.EnumPropertyItem { i32 3, ptr @.str.189, i32 0, ptr @.str.190, ptr @.str.19 }, %struct.EnumPropertyItem { i32 5, ptr @.str.191, i32 0, ptr @.str.192, ptr @.str.19 }, %struct.EnumPropertyItem { i32 0, ptr @.str.193, i32 0, ptr @.str.194, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskSplinePoint_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_select, ptr @rna_MaskSplinePoint_handle_right_type, i32 -1, ptr @.str.29, i32 8195, ptr @.str.30, ptr @.str.54, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @MaskSplinePoint_weight_get, ptr @MaskSplinePoint_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.52 = private unnamed_addr constant [18 x i8] c"handle_right_type\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Handle 2 Type\00", align 1
@rna_MaskSplinePoint_handle_right_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.185, i32 0, ptr @.str.186, ptr @.str.19 }, %struct.EnumPropertyItem { i32 2, ptr @.str.187, i32 0, ptr @.str.188, ptr @.str.19 }, %struct.EnumPropertyItem { i32 3, ptr @.str.189, i32 0, ptr @.str.190, ptr @.str.19 }, %struct.EnumPropertyItem { i32 5, ptr @.str.191, i32 0, ptr @.str.192, ptr @.str.19 }, %struct.EnumPropertyItem { i32 0, ptr @.str.193, i32 0, ptr @.str.194, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskSplinePoint_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_parent, ptr @rna_MaskSplinePoint_weight, i32 -1, ptr @.str.32, i32 3, ptr @.str.33, ptr @.str.34, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoint_select_get, ptr @MaskSplinePoint_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.54 = private unnamed_addr constant [20 x i8] c"Weight of the point\00", align 1
@rna_MaskSplinePoint_parent = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplinePoint_feather_points, ptr @rna_MaskSplinePoint_select, i32 -1, ptr @.str.16, i32 8388608, ptr @.str.16, ptr @.str.19, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoint_parent_get, ptr null, ptr null, ptr null, ptr @RNA_MaskParent }, align 8
@.str.55 = private unnamed_addr constant [15 x i8] c"feather_points\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Feather Points\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Points defining feather\00", align 1
@RNA_MaskSpline = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskSplines, ptr @RNA_MaskSplinePoint, ptr null, %struct.ListBase { ptr @rna_MaskSpline_rna_properties, ptr @rna_MaskSpline_points } }, ptr @.str.79, ptr null, ptr null, i32 4, ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 17, ptr null, ptr @rna_MaskSpline_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.58 = private unnamed_addr constant [16 x i8] c"MaskSplinePoint\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Mask Spline Point\00", align 1
@.str.60 = private unnamed_addr constant [46 x i8] c"Single point in spline used for defining mask\00", align 1
@rna_MaskSpline_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSpline_offset_mode, ptr @rna_MaskSpline_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSpline_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaskSpline_offset_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSpline_weight_interpolation, ptr @rna_MaskSpline_rna_type, i32 -1, ptr @.str.61, i32 3, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSpline_offset_mode_get, ptr @MaskSpline_offset_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskSpline_offset_mode_items, i32 2, i32 0 }, align 8
@rna_MaskSpline_weight_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSpline_use_cyclic, ptr @rna_MaskSpline_offset_mode, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSpline_weight_interpolation_get, ptr @MaskSpline_weight_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskSpline_weight_interpolation_items, i32 2, i32 1 }, align 8
@.str.61 = private unnamed_addr constant [12 x i8] c"offset_mode\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"Feather Offset\00", align 1
@.str.63 = private unnamed_addr constant [51 x i8] c"The method used for calculating the feather offset\00", align 1
@rna_MaskSpline_offset_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.195, i32 0, ptr @.str.196, ptr @.str.197 }, %struct.EnumPropertyItem { i32 1, ptr @.str.198, i32 0, ptr @.str.199, ptr @.str.200 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskSpline_use_cyclic = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSpline_use_fill, ptr @rna_MaskSpline_weight_interpolation, i32 -1, ptr @.str.67, i32 1, ptr @.str.68, ptr @.str.69, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSpline_use_cyclic_get, ptr @MaskSpline_use_cyclic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.64 = private unnamed_addr constant [21 x i8] c"weight_interpolation\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"Weight Interpolation\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"The type of weight interpolation for spline\00", align 1
@rna_MaskSpline_weight_interpolation_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.201, i32 0, ptr @.str.202, ptr @.str.19 }, %struct.EnumPropertyItem { i32 2, ptr @.str.203, i32 0, ptr @.str.204, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskSpline_use_fill = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSpline_use_self_intersection_check, ptr @rna_MaskSpline_use_cyclic, i32 -1, ptr @.str.70, i32 1, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSpline_use_fill_get, ptr @MaskSpline_use_fill_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.67 = private unnamed_addr constant [11 x i8] c"use_cyclic\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"Cyclic\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"Make this spline a closed loop\00", align 1
@rna_MaskSpline_use_self_intersection_check = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSpline_points, ptr @rna_MaskSpline_use_fill, i32 -1, ptr @.str.73, i32 1, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Mask_update_data, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSpline_use_self_intersection_check_get, ptr @MaskSpline_use_self_intersection_check_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.70 = private unnamed_addr constant [9 x i8] c"use_fill\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"Make this spline filled\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"use_self_intersection_check\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"Self Intersection Check\00", align 1
@.str.75 = private unnamed_addr constant [40 x i8] c"Prevent feather from self-intersections\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"Collection of points\00", align 1
@RNA_MaskSplinePoints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskLayer, ptr @RNA_MaskSplines, ptr null, %struct.ListBase { ptr @rna_MaskSplinePoints_rna_properties, ptr @rna_MaskSplinePoints_rna_type } }, ptr @.str.104, ptr null, ptr null, i32 4, ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 17, ptr null, ptr @rna_MaskSplinePoints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_MaskSplinePoints_add_func, ptr @rna_MaskSplinePoints_remove_func } }, align 8
@RNA_MaskSplines = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskSplinePoints, ptr @RNA_MaskSpline, ptr null, %struct.ListBase { ptr @rna_MaskSplines_rna_properties, ptr @rna_MaskSplines_active_point } }, ptr @.str.93, ptr null, ptr null, i32 4, ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 17, ptr null, ptr @rna_MaskSplines_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_MaskSplines_new_func, ptr @rna_MaskSplines_remove_func } }, align 8
@.str.79 = private unnamed_addr constant [11 x i8] c"MaskSpline\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Mask spline\00", align 1
@.str.81 = private unnamed_addr constant [43 x i8] c"Single spline used for defining mask shape\00", align 1
@rna_MaskSplines_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplines_active, ptr @rna_MaskSplines_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplines_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaskSplines_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSplines_active_point, ptr @rna_MaskSplines_rna_type, i32 -1, ptr @.str.82, i32 41943041, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplines_active_get, ptr @MaskSplines_active_set, ptr null, ptr null, ptr @RNA_MaskSpline }, align 8
@rna_MaskSplines_active_point = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskSplines_active, i32 -1, ptr @.str.85, i32 41943041, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplines_active_point_get, ptr @MaskSplines_active_point_set, ptr null, ptr null, ptr @RNA_MaskSplinePoint }, align 8
@.str.82 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"Active Spline\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"Active spline of masking layer\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"active_point\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"spline\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"The newly created spline\00", align 1
@rna_MaskSplines_new_spline = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.86, i32 8388616, ptr @.str.19, ptr @.str.87, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaskSpline }, align 8
@rna_MaskSplines_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_MaskSplines_new_func, ptr null, %struct.ListBase { ptr @rna_MaskSplines_remove_spline, ptr @rna_MaskSplines_remove_spline } }, ptr @.str.91, i32 2064, ptr @.str.92, ptr @MaskSplines_remove_call, ptr null }, align 8
@.str.88 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"Add a new spline to the layer\00", align 1
@rna_MaskSplines_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_MaskSplines_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_MaskSplines_new_spline, ptr @rna_MaskSplines_new_spline } }, ptr @.str.88, i32 2048, ptr @.str.89, ptr @MaskSplines_new_call, ptr @rna_MaskSplines_new_spline }, align 8
@.str.90 = private unnamed_addr constant [21 x i8] c"The spline to remove\00", align 1
@rna_MaskSplines_remove_spline = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.86, i32 264196, ptr @.str.19, ptr @.str.90, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaskSpline }, align 8
@.str.91 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"Remove a spline from a layer\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"MaskSplines\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"Mask Splines\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"Collection of masking splines\00", align 1
@rna_MaskSplinePoints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskSplinePoints_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSplinePoints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.96 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"Number of points to add to the spline\00", align 1
@rna_MaskSplinePoints_add_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.96, i32 3, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 1, ptr null }, align 8
@rna_MaskSplinePoints_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_MaskSplinePoints_add_func, ptr null, %struct.ListBase { ptr @rna_MaskSplinePoints_remove_point, ptr @rna_MaskSplinePoints_remove_point } }, ptr @.str.91, i32 2064, ptr @.str.103, ptr @MaskSplinePoints_remove_call, ptr null }, align 8
@.str.99 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.100 = private unnamed_addr constant [37 x i8] c"Add a number of point to this spline\00", align 1
@rna_MaskSplinePoints_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_MaskSplinePoints_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_MaskSplinePoints_add_count, ptr @rna_MaskSplinePoints_add_count } }, ptr @.str.99, i32 2048, ptr @.str.100, ptr @MaskSplinePoints_add_call, ptr null }, align 8
@.str.101 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"The point to remove\00", align 1
@rna_MaskSplinePoints_remove_point = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.101, i32 264196, ptr @.str.19, ptr @.str.102, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaskSplinePoint }, align 8
@.str.103 = private unnamed_addr constant [29 x i8] c"Remove a point from a spline\00", align 1
@RNA_MaskLayer = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Mask, ptr @RNA_MaskSplinePoints, ptr null, %struct.ListBase { ptr @rna_MaskLayer_rna_properties, ptr @rna_MaskLayer_use_fill_overlap } }, ptr @.str.141, ptr null, ptr null, i32 4, ptr @.str.142, ptr @.str.143, ptr @.str.4, i32 17, ptr @rna_MaskLayer_name, ptr @rna_MaskLayer_rna_properties, ptr null, ptr null, ptr null, ptr @rna_MaskLayer_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.104 = private unnamed_addr constant [17 x i8] c"MaskSplinePoints\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"Mask Spline Points\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"Collection of masking spline points\00", align 1
@rna_MaskLayer_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_name, ptr @rna_MaskLayer_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaskLayer_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_splines, ptr @rna_MaskLayer_rna_type, i32 -1, ptr @.str.107, i32 262145, ptr @.str.108, ptr @.str.109, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Mask_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_name_get, ptr @MaskLayer_name_length, ptr @MaskLayer_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.19 }, align 8
@.str.107 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"Unique name of layer\00", align 1
@rna_MaskLayer_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_hide_select, ptr @rna_MaskLayer_splines, i32 -1, ptr @.str.113, i32 4099, ptr @.str.114, ptr @.str.115, i32 253, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 353828864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_hide_get, ptr @MaskLayer_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.110 = private unnamed_addr constant [8 x i8] c"splines\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"Splines\00", align 1
@.str.112 = private unnamed_addr constant [47 x i8] c"Collection of splines which defines this layer\00", align 1
@rna_MaskLayer_hide_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_hide_render, ptr @rna_MaskLayer_hide, i32 -1, ptr @.str.116, i32 4099, ptr @.str.117, ptr @.str.118, i32 255, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 353828864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_hide_select_get, ptr @MaskLayer_hide_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.113 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"Restrict View\00", align 1
@.str.115 = private unnamed_addr constant [36 x i8] c"Restrict visibility in the viewport\00", align 1
@rna_MaskLayer_hide_render = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_select, ptr @rna_MaskLayer_hide_select, i32 -1, ptr @.str.119, i32 4099, ptr @.str.120, ptr @.str.121, i32 257, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_hide_render_get, ptr @MaskLayer_hide_render_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.116 = private unnamed_addr constant [12 x i8] c"hide_select\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"Restrict Select\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"Restrict selection in the viewport\00", align 1
@rna_MaskLayer_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_alpha, ptr @rna_MaskLayer_hide_render, i32 -1, ptr @.str.32, i32 3, ptr @.str.33, ptr @.str.122, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_select_get, ptr @MaskLayer_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.119 = private unnamed_addr constant [12 x i8] c"hide_render\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"Restrict Render\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"Restrict renderability\00", align 1
@rna_MaskLayer_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_blend, ptr @rna_MaskLayer_select, i32 -1, ptr @.str.123, i32 8195, ptr @.str.124, ptr @.str.125, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 352321537, ptr null, ptr null, i32 128, i32 4, ptr null, ptr null }, ptr @MaskLayer_alpha_get, ptr @MaskLayer_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.122 = private unnamed_addr constant [48 x i8] c"Layer is selected for editing in the Dope Sheet\00", align 1
@rna_MaskLayer_blend = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_invert, ptr @rna_MaskLayer_alpha, i32 -1, ptr @.str.126, i32 3, ptr @.str.127, ptr @.str.128, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_blend_get, ptr @MaskLayer_blend_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskLayer_blend_items, i32 9, i32 0 }, align 8
@.str.123 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"Render Opacity\00", align 1
@rna_MaskLayer_invert = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_falloff, ptr @rna_MaskLayer_blend, i32 -1, ptr @.str.129, i32 3, ptr @.str.114, ptr @.str.130, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_invert_get, ptr @MaskLayer_invert_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.126 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.128 = private unnamed_addr constant [31 x i8] c"Method of blending mask layers\00", align 1
@rna_MaskLayer_blend_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 7, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.19 }, %struct.EnumPropertyItem { i32 8, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.19 }, %struct.EnumPropertyItem { i32 0, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.19 }, %struct.EnumPropertyItem { i32 1, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.19 }, %struct.EnumPropertyItem { i32 2, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.19 }, %struct.EnumPropertyItem { i32 3, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.19 }, %struct.EnumPropertyItem { i32 4, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.19 }, %struct.EnumPropertyItem { i32 5, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.19 }, %struct.EnumPropertyItem { i32 6, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskLayer_falloff = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_use_fill_holes, ptr @rna_MaskLayer_invert, i32 -1, ptr @.str.131, i32 3, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.134, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_falloff_get, ptr @MaskLayer_falloff_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskLayer_falloff_items, i32 5, i32 0 }, align 8
@.str.129 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"Invert the mask black/white\00", align 1
@rna_MaskLayer_use_fill_holes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayer_use_fill_overlap, ptr @rna_MaskLayer_falloff, i32 -1, ptr @.str.135, i32 3, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_use_fill_holes_get, ptr @MaskLayer_use_fill_holes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.131 = private unnamed_addr constant [8 x i8] c"falloff\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"Falloff\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"Falloff type the feather\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@rna_MaskLayer_falloff_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.198, i32 558, ptr @.str.199, ptr @.str.223 }, %struct.EnumPropertyItem { i32 1, ptr @.str.224, i32 559, ptr @.str.225, ptr @.str.226 }, %struct.EnumPropertyItem { i32 2, ptr @.str.227, i32 560, ptr @.str.228, ptr @.str.229 }, %struct.EnumPropertyItem { i32 3, ptr @.str.230, i32 561, ptr @.str.231, ptr @.str.232 }, %struct.EnumPropertyItem { i32 4, ptr @.str.201, i32 562, ptr @.str.202, ptr @.str.233 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskLayer_use_fill_overlap = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskLayer_use_fill_holes, i32 -1, ptr @.str.138, i32 3, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 352321537, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayer_use_fill_overlap_get, ptr @MaskLayer_use_fill_overlap_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.135 = private unnamed_addr constant [15 x i8] c"use_fill_holes\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"Calculate Holes\00", align 1
@.str.137 = private unnamed_addr constant [48 x i8] c"Calculate holes when filling overlapping curves\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"use_fill_overlap\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"Calculate Overlap\00", align 1
@.str.140 = private unnamed_addr constant [56 x i8] c"Calculate self intersections and overlap before filling\00", align 1
@RNA_Mask = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskLayers, ptr @RNA_MaskLayer, ptr null, %struct.ListBase { ptr @rna_Mask_layers, ptr @rna_Mask_animation_data } }, ptr @.str.159, ptr null, ptr null, i32 7, ptr @.str.159, ptr @.str.160, ptr @.str.4, i32 467, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.141 = private unnamed_addr constant [10 x i8] c"MaskLayer\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"Mask Layer\00", align 1
@.str.143 = private unnamed_addr constant [37 x i8] c"Single layer used for masking pixels\00", align 1
@rna_Mask_active_layer_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Mask_frame_start, ptr @rna_Mask_layers, i32 -1, ptr @.str.147, i32 1, ptr @.str.148, ptr @.str.149, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 353828864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Mask_active_layer_index_get, ptr @Mask_active_layer_index_set, ptr null, ptr null, ptr @rna_Mask_layer_active_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.144 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.146 = private unnamed_addr constant [45 x i8] c"Collection of layers which defines this mask\00", align 1
@RNA_MaskLayers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr null, ptr @RNA_Mask, ptr null, %struct.ListBase { ptr @rna_MaskLayers_rna_properties, ptr @rna_MaskLayers_active } }, ptr @.str.171, ptr null, ptr null, i32 4, ptr @.str.172, ptr @.str.173, ptr @.str.4, i32 17, ptr null, ptr @rna_MaskLayers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_MaskLayers_new_func, ptr @rna_MaskLayers_clear_func } }, align 8
@rna_Mask_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Mask_frame_end, ptr @rna_Mask_active_layer_index, i32 -1, ptr @.str.150, i32 1, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.4, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 353828864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Mask_frame_start_get, ptr @Mask_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 300000, i32 0, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.147 = private unnamed_addr constant [19 x i8] c"active_layer_index\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"Active Shape Index\00", align 1
@.str.149 = private unnamed_addr constant [51 x i8] c"Index of active layer in list of all mask's layers\00", align 1
@rna_Mask_frame_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Mask_animation_data, ptr @rna_Mask_frame_start, i32 -1, ptr @.str.153, i32 1, ptr @.str.154, ptr @.str.155, i32 0, ptr @.str.4, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 353828864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Mask_frame_end_get, ptr @Mask_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 300000, i32 0, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.150 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.152 = private unnamed_addr constant [45 x i8] c"First frame of the mask (used for sequencer)\00", align 1
@rna_Mask_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Mask_frame_end, i32 -1, ptr @.str.156, i32 8388608, ptr @.str.157, ptr @.str.158, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Mask_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.153 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.155 = private unnamed_addr constant [45 x i8] c"Final frame of the mask (used for sequencer)\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.158 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.160 = private unnamed_addr constant [45 x i8] c"Mask datablock defining mask for compositing\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@rna_MaskLayers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayers_active, ptr @rna_MaskLayers_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaskLayers_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskLayers_rna_type, i32 -1, ptr @.str.82, i32 41943041, ptr @.str.161, ptr @.str.162, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskLayers_active_get, ptr @MaskLayers_active_set, ptr null, ptr null, ptr @RNA_MaskLayer }, align 8
@.str.161 = private unnamed_addr constant [13 x i8] c"Active Shape\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"Active layer in this mask\00", align 1
@rna_MaskLayers_new_layer = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskLayers_new_name, i32 -1, ptr @.str.164, i32 8388616, ptr @.str.19, ptr @.str.165, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaskLayer }, align 8
@.str.163 = private unnamed_addr constant [18 x i8] c"Name of new layer\00", align 1
@rna_MaskLayers_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskLayers_new_layer, ptr null, i32 -1, ptr @.str.107, i32 262145, ptr @.str.108, ptr @.str.163, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.19 }, align 8
@.str.164 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"New mask layer\00", align 1
@rna_MaskLayers_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_MaskLayers_clear_func, ptr @rna_MaskLayers_new_func, ptr null, %struct.ListBase { ptr @rna_MaskLayers_remove_layer, ptr @rna_MaskLayers_remove_layer } }, ptr @.str.91, i32 16, ptr @.str.168, ptr @MaskLayers_remove_call, ptr null }, align 8
@.str.166 = private unnamed_addr constant [23 x i8] c"Add layer to this mask\00", align 1
@rna_MaskLayers_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_MaskLayers_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_MaskLayers_new_name, ptr @rna_MaskLayers_new_layer } }, ptr @.str.88, i32 0, ptr @.str.166, ptr @MaskLayers_new_call, ptr @rna_MaskLayers_new_layer }, align 8
@.str.167 = private unnamed_addr constant [20 x i8] c"Shape to be removed\00", align 1
@rna_MaskLayers_remove_layer = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.164, i32 264196, ptr @.str.19, ptr @.str.167, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MaskLayer }, align 8
@rna_MaskLayers_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_MaskLayers_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.169, i32 0, ptr @.str.170, ptr @MaskLayers_clear_call, ptr null }, align 8
@.str.168 = private unnamed_addr constant [28 x i8] c"Remove layer from this mask\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.170 = private unnamed_addr constant [23 x i8] c"Remove all mask layers\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"MaskLayers\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"Mask Layers\00", align 1
@.str.173 = private unnamed_addr constant [34 x i8] c"Collection of layers used by mask\00", align 1
@.str.174 = private unnamed_addr constant [46 x i8] c"Mask layer '%s' does not contain spline given\00", align 1
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.rna_MaskSpline_points_add = private unnamed_addr constant [26 x i8] c"rna_MaskSpline_points_add\00", align 1
@.str.175 = private unnamed_addr constant [38 x i8] c"Mask layer not found for given spline\00", align 1
@.str.176 = private unnamed_addr constant [35 x i8] c"Point is not found in given spline\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.177 = private unnamed_addr constant [18 x i8] c"remove mask point\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.178 = private unnamed_addr constant [39 x i8] c"Mask layer '%s' not found in mask '%s'\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"MOVIECLIP\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"Movie Clip\00", align 1
@.str.181 = private unnamed_addr constant [12 x i8] c"POINT_TRACK\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"Point Track\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"PLANE_TRACK\00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"Plane Track\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"VECTOR\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.190 = private unnamed_addr constant [15 x i8] c"Aligned Single\00", align 1
@.str.191 = private unnamed_addr constant [19 x i8] c"ALIGNED_DOUBLESIDE\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"Aligned\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"EVEN\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"Even\00", align 1
@.str.197 = private unnamed_addr constant [30 x i8] c"Calculate even feather offset\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"SMOOTH\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.200 = private unnamed_addr constant [43 x i8] c"Calculate feather offset as a second curve\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"EASE\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"Ease\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"MERGE_ADD\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"Merge Add\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"MERGE_SUBTRACT\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"Merge Subtract\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"LIGHTEN\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"Lighten\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"DARKEN\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"Darken\00", align 1
@.str.217 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.221 = private unnamed_addr constant [11 x i8] c"DIFFERENCE\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"Smooth falloff\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"SPHERE\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.226 = private unnamed_addr constant [18 x i8] c"Spherical falloff\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"ROOT\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"Root\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"Root falloff\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"SHARP\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"Sharp\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"Sharp falloff\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"Linear falloff\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"layers[\22%s\22]\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskParent_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
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

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal void @MaskParent_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskParent_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_id_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskParent, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %6) #14
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskParent_id_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.MaskParent, ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskParent_id_type_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load i32, ptr %3, align 8, !tbaa !48
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskParent_id_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  store i32 %1, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.MaskParent, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !49
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store ptr null, ptr %5, align 8, !tbaa !46
  br label %14

14:                                               ; preds = %2, %8, %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskParent_type_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskParent, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !51
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskParent_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskParent, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_parent_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskParent, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #14
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskParent_parent_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskParent, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_parent_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskParent, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_sub_parent_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskParent, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskParent_sub_parent_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskParent, ptr %3, i64 0, i32 4
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskParent_sub_parent_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskParent, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePointUW_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskSplinePointUW_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskSplinePointUW_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePointUW_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePointUW_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskSplinePointUW_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePointUW_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaskSplinePointUW_u_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load float, ptr %3, align 4, !tbaa !52
  ret float %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePointUW_u_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  store float %8, ptr %4, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaskSplinePointUW_weight_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePointUW_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSplinePointUW_select_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePointUW_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskSplinePoint_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskSplinePoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskSplinePoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePoint_handle_left_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load float, ptr %4, align 4, !tbaa !57
  store float %5, ptr %1, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePoint_handle_left_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !57
  store float %5, ptr %4, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !57
  store float %6, ptr %1, align 4, !tbaa !57
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %6 = load float, ptr %1, align 4, !tbaa !57
  store float %6, ptr %5, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePoint_handle_right_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !57
  store float %6, ptr %1, align 4, !tbaa !57
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePoint_handle_right_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %6 = load float, ptr %1, align 4, !tbaa !57
  store float %6, ptr %5, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSplinePoint_handle_type_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !58
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_handle_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 2
  br label %7

7:                                                ; preds = %31, %2
  %8 = phi ptr [ undef, %2 ], [ %33, %31 ]
  %9 = phi ptr [ %6, %2 ], [ %10, %31 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12, %28
  %17 = phi i1 [ %30, %28 ], [ %15, %12 ]
  %18 = phi ptr [ %29, %28 ], [ %14, %12 ]
  %19 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = icmp ugt ptr %20, %4
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !63
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MaskSplinePoint, ptr %20, i64 %25
  %27 = icmp ugt ptr %26, %4
  br i1 %27, label %31, label %28

28:                                               ; preds = %22, %16
  %29 = load ptr, ptr %18, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !64

31:                                               ; preds = %28, %22, %12
  %32 = phi i1 [ %15, %12 ], [ %30, %28 ], [ %17, %22 ]
  %33 = phi ptr [ %8, %12 ], [ %8, %28 ], [ %18, %22 ]
  br i1 %32, label %7, label %34, !llvm.loop !67

34:                                               ; preds = %7, %31
  %35 = phi ptr [ %33, %31 ], [ null, %7 ]
  %36 = trunc i32 %1 to i8
  %37 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 6
  store i8 %36, ptr %37, align 2, !tbaa !68
  %38 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 5
  store i8 %36, ptr %38, align 1, !tbaa !58
  %39 = icmp eq i8 %36, 3
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %42 = load float, ptr %4, align 4, !tbaa !57
  %43 = load float, ptr %41, align 4, !tbaa !57
  %44 = fsub float %42, %43
  %45 = getelementptr inbounds float, ptr %4, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !57
  %49 = fsub float %46, %48
  %50 = getelementptr inbounds float, ptr %4, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !57
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !57
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %56 = fadd float %43, %44
  store float %56, ptr %55, align 4, !tbaa !57
  %57 = fadd float %48, %49
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %57, ptr %58, align 4, !tbaa !57
  %59 = fadd float %53, %54
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  store float %59, ptr %60, align 4, !tbaa !57
  br label %61

61:                                               ; preds = %34, %40
  tail call void @BKE_mask_calc_handle_point(ptr noundef %35, ptr noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSplinePoint_handle_left_type_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !58
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_handle_left_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 2
  br label %7

7:                                                ; preds = %31, %2
  %8 = phi ptr [ undef, %2 ], [ %33, %31 ]
  %9 = phi ptr [ %6, %2 ], [ %10, %31 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12, %28
  %17 = phi i1 [ %30, %28 ], [ %15, %12 ]
  %18 = phi ptr [ %29, %28 ], [ %14, %12 ]
  %19 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = icmp ugt ptr %20, %4
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !63
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MaskSplinePoint, ptr %20, i64 %25
  %27 = icmp ugt ptr %26, %4
  br i1 %27, label %31, label %28

28:                                               ; preds = %22, %16
  %29 = load ptr, ptr %18, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !64

31:                                               ; preds = %28, %22, %12
  %32 = phi i1 [ %15, %12 ], [ %30, %28 ], [ %17, %22 ]
  %33 = phi ptr [ %8, %12 ], [ %8, %28 ], [ %18, %22 ]
  br i1 %32, label %7, label %34, !llvm.loop !67

34:                                               ; preds = %7, %31
  %35 = phi ptr [ %33, %31 ], [ null, %7 ]
  %36 = trunc i32 %1 to i8
  %37 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 5
  store i8 %36, ptr %37, align 1, !tbaa !58
  %38 = icmp eq i8 %36, 3
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 6
  %41 = load i8, ptr %40, align 2, !tbaa !68
  %42 = icmp eq i8 %41, 3
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %45 = load float, ptr %4, align 4, !tbaa !57
  %46 = load float, ptr %44, align 4, !tbaa !57
  %47 = fsub float %45, %46
  %48 = getelementptr inbounds float, ptr %4, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !57
  %52 = fsub float %49, %51
  %53 = getelementptr inbounds float, ptr %4, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !57
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !57
  %57 = fsub float %54, %56
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %59 = fadd float %46, %47
  store float %59, ptr %58, align 4, !tbaa !57
  %60 = fadd float %51, %52
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %60, ptr %61, align 4, !tbaa !57
  %62 = fadd float %56, %57
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  store float %62, ptr %63, align 4, !tbaa !57
  br label %64

64:                                               ; preds = %34, %39, %43
  tail call void @BKE_mask_calc_handle_point(ptr noundef %35, ptr noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSplinePoint_handle_right_type_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !68
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_handle_right_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 2
  br label %7

7:                                                ; preds = %31, %2
  %8 = phi ptr [ undef, %2 ], [ %33, %31 ]
  %9 = phi ptr [ %6, %2 ], [ %10, %31 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12, %28
  %17 = phi i1 [ %30, %28 ], [ %15, %12 ]
  %18 = phi ptr [ %29, %28 ], [ %14, %12 ]
  %19 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = icmp ugt ptr %20, %4
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !63
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MaskSplinePoint, ptr %20, i64 %25
  %27 = icmp ugt ptr %26, %4
  br i1 %27, label %31, label %28

28:                                               ; preds = %22, %16
  %29 = load ptr, ptr %18, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !64

31:                                               ; preds = %28, %22, %12
  %32 = phi i1 [ %15, %12 ], [ %30, %28 ], [ %17, %22 ]
  %33 = phi ptr [ %8, %12 ], [ %8, %28 ], [ %18, %22 ]
  br i1 %32, label %7, label %34, !llvm.loop !67

34:                                               ; preds = %7, %31
  %35 = phi ptr [ %33, %31 ], [ null, %7 ]
  %36 = trunc i32 %1 to i8
  %37 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 6
  store i8 %36, ptr %37, align 2, !tbaa !68
  %38 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 5
  %39 = load i8, ptr %38, align 1, !tbaa !58
  %40 = icmp eq i8 %39, 3
  %41 = icmp eq i8 %36, 3
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %64

43:                                               ; preds = %34
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %45 = load float, ptr %4, align 4, !tbaa !57
  %46 = load float, ptr %44, align 4, !tbaa !57
  %47 = fsub float %45, %46
  %48 = getelementptr inbounds float, ptr %4, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !57
  %52 = fsub float %49, %51
  %53 = getelementptr inbounds float, ptr %4, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !57
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !57
  %57 = fsub float %54, %56
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %59 = fadd float %46, %47
  store float %59, ptr %58, align 4, !tbaa !57
  %60 = fadd float %51, %52
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %60, ptr %61, align 4, !tbaa !57
  %62 = fadd float %56, %57
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  store float %62, ptr %63, align 4, !tbaa !57
  br label %64

64:                                               ; preds = %34, %43
  tail call void @BKE_mask_calc_handle_point(ptr noundef %35, ptr noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaskSplinePoint_weight_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !69
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePoint_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSplinePoint_select_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !71
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplinePoint_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 7
  %7 = load i8, ptr %6, align 1, !tbaa !71
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_parent_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskSplinePoint, ptr %4, i64 0, i32 4
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaskParent, ptr noundef nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSplinePoint_feather_points_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSplinePoint, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MaskSplinePoint, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !73
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_feather_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskSplinePoint_feather_points, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !73
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 12, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #14
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #14, !noalias !74
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_MaskSplinePointUW, ptr noundef %16) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @MaskSplinePoint_feather_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaskSplinePointUW, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_feather_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #14, !noalias !77
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_MaskSplinePointUW, ptr noundef %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoint_feather_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #14
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskSplinePoint_feather_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_MaskSplinePoint_feather_points, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.MaskSplinePoint, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.MaskSplinePoint, ptr %8, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !73
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 12, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #14
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #14, !noalias !80
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_MaskSplinePointUW, ptr noundef %20) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = icmp sgt i32 %1, -1
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.MaskSplinePoint_feather_points_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !83
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %1, 0
  %39 = load i32, ptr %15, align 8
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %44, %42 ], [ %1, %37 ]
  %44 = add nsw i32 %43, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #14
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !85

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !86
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !87
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !87
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #14, !noalias !88
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_MaskSplinePointUW, ptr noundef %66) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  ret i32 %68
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @MaskSpline_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskSpline_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskSpline_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSpline_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSpline_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskSpline_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSpline_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSpline_offset_mode_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 2, !tbaa !91
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSpline_offset_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 2, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSpline_weight_interpolation_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 1, !tbaa !92
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSpline_weight_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 1, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSpline_use_cyclic_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !93
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSpline_use_cyclic_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !93
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSpline_use_fill_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !93
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSpline_use_fill_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !93
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 4, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSpline_use_self_intersection_check_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !93
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSpline_use_self_intersection_check_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !93
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSpline_points_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !63
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSpline_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskSpline_points, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %5, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !63
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 272, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #14
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #14, !noalias !94
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_MaskSplinePoint, ptr noundef %16) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskSpline_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaskSplinePoint, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSpline_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #14, !noalias !97
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_MaskSplinePoint, ptr noundef %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSpline_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskSpline_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_MaskSpline_points, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %8, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !63
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 272, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #14
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #14, !noalias !100
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_MaskSplinePoint, ptr noundef %20) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = icmp sgt i32 %1, -1
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.MaskSpline_points_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !83
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %1, 0
  %39 = load i32, ptr %15, align 8
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %44, %42 ], [ %1, %37 ]
  %44 = add nsw i32 %43, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #14
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !103

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !86
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !87
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !87
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #14, !noalias !104
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_MaskSplinePoint, ptr noundef %66) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskSplines_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskSplines_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskSplines_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !107
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !110, !noalias !107
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaskSpline, ptr noundef %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %6, i64 0, i32 3
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %4) #14
  %9 = icmp eq i32 %8, -1
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %6, i64 0, i32 5
  %11 = select i1 %9, ptr null, ptr %4
  store ptr %11, ptr %10, align 8, !tbaa !110
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_active_point_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !113
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116, !noalias !113
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaskSplinePoint, ptr noundef %6) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSplines_active_point_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #12 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %6, i64 0, i32 6
  store ptr null, ptr %7, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.MaskLayer, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %2, %23
  %12 = phi ptr [ %24, %23 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = icmp ult ptr %4, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MaskSpline, ptr %12, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MaskSplinePoint, ptr %14, i64 %19
  %21 = icmp ult ptr %4, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store ptr %4, ptr %7, align 8, !tbaa !116
  br label %26

23:                                               ; preds = %16, %11
  %24 = load ptr, ptr %12, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !llvm.loop !117

26:                                               ; preds = %23, %2, %22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskSplinePoints_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskSplinePoints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskSplinePoints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskLayer_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskLayer_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskLayer_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_name_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %5, i64 0, i32 2
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #14
  tail call void @BKE_mask_layer_unique_name(ptr noundef %3, ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_splines_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskLayer_splines, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %6, i64 0, i32 3
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #14
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !118
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_MaskSpline, ptr noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskLayer_splines_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaskSpline, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_splines_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !121
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_MaskSpline, ptr noundef %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayer_splines_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MaskLayer_splines_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_MaskLayer_splines, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 3
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #14
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #14, !noalias !124
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_MaskSpline, ptr noundef %17) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !127
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
  %33 = load ptr, ptr %22, align 8, !tbaa !129
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #14
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !130

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
  %52 = load ptr, ptr %48, align 8, !tbaa !131
  store ptr %52, ptr %22, align 8, !tbaa !129
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !133

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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #14, !noalias !134
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_MaskSpline, ptr noundef %63) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_hide_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !137
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 13
  %7 = load i8, ptr %6, align 1, !tbaa !137
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_hide_select_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !137
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_hide_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 13
  %7 = load i8, ptr %6, align 1, !tbaa !137
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_hide_render_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !137
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_hide_render_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 13
  %7 = load i8, ptr %6, align 1, !tbaa !137
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_select_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !138
  %6 = lshr i8 %5, 5
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 12
  %7 = load i8, ptr %6, align 2, !tbaa !138
  %8 = and i8 %7, -33
  %9 = select i1 %5, i8 0, i8 32
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaskLayer_alpha_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !139
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 7
  store float %1, ptr %5, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_blend_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 4, !tbaa !140
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 8
  store i8 %5, ptr %6, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_invert_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 1, !tbaa !141
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_invert_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 9
  %7 = load i8, ptr %6, align 1, !tbaa !141
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_falloff_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 10
  %5 = load i8, ptr %4, align 2, !tbaa !142
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_falloff_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 2, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_use_fill_holes_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !138
  %6 = and i8 %5, 64
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_use_fill_holes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 12
  %7 = load i8, ptr %6, align 2, !tbaa !138
  %8 = and i8 %7, -65
  %9 = select i1 %5, i8 64, i8 0
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskLayer_use_fill_overlap_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !138
  %6 = lshr i8 %5, 7
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskLayer_use_fill_overlap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 12
  %7 = load i8, ptr %6, align 2, !tbaa !138
  %8 = and i8 %7, 127
  %9 = select i1 %5, i8 0, i8 -128
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !138
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Mask_layers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Mask_layers, ptr %4, align 8, !tbaa !39
  %5 = load ptr, ptr %1, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #14
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %12 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !143
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_MaskLayer, ptr noundef %12) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Mask_layers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaskLayer, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Mask_layers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !146
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_MaskLayer, ptr noundef %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Mask_layers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Mask_active_layer_index_get(ptr nocapture noundef readonly %0) #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.Mask, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !149
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Mask_active_layer_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 3
  store i32 %1, ptr %4, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Mask_frame_start_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !152
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Mask_frame_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !153
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @llvm.umin.i32(i32 %6, i32 300000)
  store i32 %12, ptr %8, align 4, !tbaa !153
  br label %13

13:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Mask_frame_end_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !153
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Mask_frame_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 6
  store i32 %6, ptr %7, align 4, !tbaa !153
  %8 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !152
  %10 = icmp slt i32 %9, %6
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 %6, ptr %8, align 8, !tbaa !152
  br label %12

12:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Mask_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaskLayers_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MaskLayers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MaskLayers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !60, !noalias !155
  %4 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #14, !noalias !155
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_MaskLayer, ptr noundef %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @BKE_mask_layer_active_set(ptr noundef %5, ptr noundef %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MaskSplines_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_mask_spline_add(ptr noundef %1) #14
  tail call void @WM_main_add_notifier(i32 noundef 352321537, ptr noundef %0) #14
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !158
  %9 = tail call ptr @BKE_mask_spline_add(ptr noundef %7) #14
  tail call void @WM_main_add_notifier(i32 noundef 352321537, ptr noundef %5) #14
  store ptr %9, ptr %8, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call zeroext i8 @BKE_mask_spline_remove(ptr noundef %1, ptr noundef %6) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.174, ptr noundef nonnull %10) #14
  br label %12

11:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #14
  br label %12

12:                                               ; preds = %9, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplines_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !158
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call zeroext i8 @BKE_mask_spline_remove(ptr noundef %7, ptr noundef %11) #14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %7, i64 0, i32 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.174, ptr noundef nonnull %15) #14
  br label %17

16:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #14
  br label %17

17:                                               ; preds = %14, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoints_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_MaskSpline_points_add(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rna_MaskSpline_points_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %65, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 3
  %13 = tail call i32 @BLI_findindex(ptr noundef nonnull %12, ptr noundef %1) #14
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %7, label %15, !llvm.loop !160

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = ptrtoint ptr %21 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 272
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %19, %15
  %30 = phi i32 [ %28, %19 ], [ -1, %15 ]
  %31 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  %34 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !63
  %36 = add nsw i32 %35, %2
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 272
  %39 = tail call ptr %31(ptr noundef %33, i64 noundef %38, ptr noundef nonnull @__func__.rna_MaskSpline_points_add) #14
  store ptr %39, ptr %32, align 8, !tbaa !61
  %40 = load i32, ptr %34, align 4, !tbaa !63
  %41 = add nsw i32 %40, %2
  store i32 %41, ptr %34, align 4, !tbaa !63
  %42 = icmp sgt i32 %30, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = zext nneg i32 %30 to i64
  %45 = getelementptr inbounds %struct.MaskSplinePoint, ptr %39, i64 %44
  %46 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 6
  store ptr %45, ptr %46, align 8, !tbaa !116
  br label %47

47:                                               ; preds = %43, %29
  %48 = tail call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef nonnull %9, ptr noundef %1) #14
  %49 = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i32 [ %62, %50 ], [ 0, %47 ]
  %52 = load i32, ptr %34, align 4, !tbaa !63
  %53 = sub nsw i32 %52, %2
  %54 = add nsw i32 %53, %51
  %55 = load ptr, ptr %32, align 8, !tbaa !61
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %struct.MaskSplinePoint, ptr %55, i64 %56
  %58 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 6
  store i8 3, ptr %58, align 2, !tbaa !161
  %59 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 5
  store i8 3, ptr %59, align 1, !tbaa !162
  tail call void @BKE_mask_calc_handle_point_auto(ptr noundef %1, ptr noundef %57, i8 noundef zeroext 1) #14
  %60 = getelementptr inbounds %struct.MaskSplinePoint, ptr %55, i64 %56, i32 4
  tail call void @BKE_mask_parent_init(ptr noundef nonnull %60) #14
  %61 = add nsw i32 %54, %48
  tail call void @BKE_mask_layer_shape_changed_add(ptr noundef nonnull %9, i32 noundef %61, i8 noundef zeroext 1, i8 noundef zeroext 1) #14
  %62 = add nuw nsw i32 %51, 1
  %63 = icmp eq i32 %62, %49
  br i1 %63, label %64, label %50, !llvm.loop !163

64:                                               ; preds = %50
  tail call void @WM_main_add_notifier(i32 noundef 358285312, ptr noundef %0) #14
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #14
  br label %65

65:                                               ; preds = %7, %3, %64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoints_add_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !158
  %9 = load i32, ptr %8, align 4, !tbaa !164
  tail call fastcc void @rna_MaskSpline_points_add(ptr noundef %5, ptr noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoints_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_MaskSpline_point_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rna_MaskSpline_point_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %12, %4
  %9 = phi ptr [ %7, %4 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 3
  %14 = tail call i32 @BLI_findindex(ptr noundef nonnull %13, ptr noundef %1) #14
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %8, label %17, !llvm.loop !165

16:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.175) #14
  br label %82

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = icmp ult ptr %6, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !63
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.MaskSplinePoint, ptr %19, i64 %24
  %26 = icmp ult ptr %6, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %17
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.176) #14
  br label %82

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !116
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %19 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 272
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %32, %28
  %41 = phi i32 [ %39, %32 ], [ -1, %28 ]
  %42 = ptrtoint ptr %6 to i64
  %43 = ptrtoint ptr %19 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 272
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %48 = add nsw i32 %23, -1
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, 272
  %51 = tail call ptr %47(i64 noundef %50, ptr noundef nonnull @.str.177) #14
  %52 = load ptr, ptr %18, align 8, !tbaa !61
  %53 = shl i64 %45, 32
  %54 = ashr exact i64 %53, 32
  %55 = mul nsw i64 %54, 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %51, ptr align 8 %52, i64 %55, i1 false)
  %56 = getelementptr inbounds %struct.MaskSplinePoint, ptr %51, i64 %54
  %57 = load ptr, ptr %18, align 8, !tbaa !61
  %58 = getelementptr inbounds %struct.MaskSplinePoint, ptr %57, i64 %54
  %59 = getelementptr inbounds %struct.MaskSplinePoint, ptr %58, i64 1
  %60 = load i32, ptr %22, align 4, !tbaa !63
  %61 = xor i32 %46, -1
  %62 = add i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %56, ptr nonnull align 8 %59, i64 %64, i1 false)
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %66 = load ptr, ptr %18, align 8, !tbaa !61
  tail call void %65(ptr noundef %66) #14
  store ptr %51, ptr %18, align 8, !tbaa !61
  %67 = load i32, ptr %22, align 4, !tbaa !63
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr %22, align 4, !tbaa !63
  %69 = icmp sgt i32 %41, -1
  br i1 %69, label %70, label %79

70:                                               ; preds = %40
  %71 = icmp eq i32 %41, %46
  %72 = icmp sge i32 %41, %46
  %73 = zext nneg i32 %41 to i64
  %74 = getelementptr inbounds %struct.MaskSplinePoint, ptr %51, i64 %73
  %75 = sext i1 %72 to i64
  %76 = getelementptr inbounds %struct.MaskSplinePoint, ptr %74, i64 %75
  %77 = select i1 %71, ptr null, ptr %76
  %78 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 6
  store ptr %77, ptr %78, align 8, !tbaa !116
  br label %79

79:                                               ; preds = %70, %40
  %80 = tail call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef nonnull %10, ptr noundef %1) #14
  %81 = add nsw i32 %80, %46
  tail call void @BKE_mask_layer_shape_changed_remove(ptr noundef nonnull %10, i32 noundef %81, i32 noundef 1) #14
  tail call void @WM_main_add_notifier(i32 noundef 358285312, ptr noundef %0) #14
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %82

82:                                               ; preds = %79, %27, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSplinePoints_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !158
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  tail call fastcc void @rna_MaskSpline_point_remove(ptr noundef %5, ptr noundef %7, ptr noundef %1, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MaskLayers_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_mask_layer_new(ptr noundef %0, ptr noundef %1) #14
  tail call void @WM_main_add_notifier(i32 noundef 352321537, ptr noundef %0) #14
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !158
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call ptr @BKE_mask_layer_new(ptr noundef %6, ptr noundef %8) #14
  tail call void @WM_main_add_notifier(i32 noundef 352321537, ptr noundef %6) #14
  store ptr %10, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %5) #14
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.178, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  br label %13

12:                                               ; preds = %3
  tail call void @BKE_mask_layer_remove(ptr noundef %0, ptr noundef %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 352321537, ptr noundef %0) #14
  br label %13

13:                                               ; preds = %9, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !158
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %10) #14
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %10, i64 0, i32 2
  %16 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.178, ptr noundef nonnull %15, ptr noundef nonnull %16) #14
  br label %18

17:                                               ; preds = %4
  tail call void @BKE_mask_layer_remove(ptr noundef %6, ptr noundef %10) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 352321537, ptr noundef %6) #14
  br label %18

18:                                               ; preds = %14, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BKE_mask_layer_free_list(ptr noundef nonnull %2) #14
  tail call void @WM_main_add_notifier(i32 noundef 352321537, ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskLayers_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  tail call void @BKE_mask_layer_free_list(ptr noundef nonnull %7) #14
  tail call void @WM_main_add_notifier(i32 noundef 352321537, ptr noundef %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Mask_update_parent(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.MovieClipUser, align 8
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !49
  %15 = icmp eq i16 %14, 17229
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11
  %18 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 3
  %19 = tail call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %17, ptr noundef nonnull %18) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !166
  %24 = sitofp i32 %23 to float
  %25 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %10, float noundef %24) #14
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !51
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 4
  br i1 %29, label %31, label %52

31:                                               ; preds = %21
  %32 = tail call ptr @BKE_tracking_track_get_named(ptr noundef nonnull %17, ptr noundef nonnull %19, ptr noundef nonnull %30) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %32, i32 noundef %26) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store i64 0, ptr %6, align 8
  %36 = load i32, ptr %22, align 8, !tbaa !166
  call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %6, i32 noundef %36) #14
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 7
  %38 = load float, ptr %35, align 4, !tbaa !57
  %39 = load float, ptr %37, align 4, !tbaa !57
  %40 = fadd float %38, %39
  store float %40, ptr %4, align 4, !tbaa !57
  %41 = getelementptr inbounds float, ptr %35, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !57
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 7, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !57
  %45 = fadd float %42, %44
  %46 = getelementptr inbounds float, ptr %4, i64 1
  store float %45, ptr %46, align 4, !tbaa !57
  call void @BKE_mask_coord_from_movieclip(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #14
  %47 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 5
  %48 = load float, ptr %5, align 4, !tbaa !57
  store float %48, ptr %47, align 4, !tbaa !57
  %49 = getelementptr inbounds float, ptr %5, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !57
  %51 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 5, i64 1
  store float %50, ptr %51, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %60

52:                                               ; preds = %21
  %53 = tail call ptr @BKE_tracking_plane_track_get_named(ptr noundef nonnull %17, ptr noundef nonnull %19, ptr noundef nonnull %30) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %53, i32 noundef %26) #14
  %57 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 4 dereferenceable(32) %56, i64 32, i1 false)
  %58 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 5
  store float 0.000000e+00, ptr %58, align 4, !tbaa !57
  %59 = getelementptr inbounds %struct.MaskParent, ptr %8, i64 0, i32 5, i64 1
  store float 0.000000e+00, ptr %59, align 4, !tbaa !57
  br label %60

60:                                               ; preds = %16, %52, %55, %31, %34, %12, %3
  %61 = load ptr, ptr %2, align 8, !tbaa !60
  call void @WM_main_add_notifier(i32 noundef 358285312, ptr noundef %61) #14
  call void @DAG_id_tag_update(ptr noundef %61, i16 noundef signext 0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_MaskParent_id_typef(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = trunc i32 %4 to i16
  %6 = tail call ptr @ID_code_to_RNA_type(i16 noundef signext %5) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @rna_Mask_update_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void @WM_main_add_notifier(i32 noundef 358285312, ptr noundef %4) #14
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_MaskLayer_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #14
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 2
  %6 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %5, i64 noundef 128) #14
  %7 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.234, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #14
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_Mask_layer_active_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = load ptr, ptr %0, align 8, !tbaa !60
  store i32 0, ptr %1, align 4, !tbaa !164
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !186
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %2, align 4, !tbaa !164
  %11 = load i32, ptr %1, align 4, !tbaa !164
  store i32 %11, ptr %3, align 4, !tbaa !164
  %12 = load i32, ptr %2, align 4, !tbaa !164
  store i32 %12, ptr %4, align 4, !tbaa !164
  ret void
}

declare ptr @rna_ID_refine(ptr noundef) #3

declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #3

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_calc_handle_point(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #3

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BKE_mask_layer_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_layer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_mask_spline_add(ptr noundef) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_mask_spline_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_calc_handle_point_auto(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_mask_parent_init(ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_layer_shape_changed_add(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_layer_shape_changed_remove(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_mask_layer_new(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_layer_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_layer_free_list(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_plane_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ID_code_to_RNA_type(i16 noundef signext) local_unnamed_addr #3

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!46 = !{!47, !36, i64 8}
!47 = !{!"MaskParent", !43, i64 0, !43, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!48 = !{!47, !43, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !37, i64 0}
!51 = !{!47, !43, i64 4}
!52 = !{!53, !54, i64 0}
!53 = !{!"MaskSplinePointUW", !54, i64 0, !54, i64 4, !43, i64 8}
!54 = !{!"float", !37, i64 0}
!55 = !{!53, !54, i64 4}
!56 = !{!53, !43, i64 8}
!57 = !{!54, !54, i64 0}
!58 = !{!59, !37, i64 49}
!59 = !{!"BezTriple", !37, i64 0, !54, i64 36, !54, i64 40, !54, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !54, i64 56, !54, i64 60, !54, i64 64, !37, i64 68}
!60 = !{!41, !36, i64 0}
!61 = !{!62, !36, i64 24}
!62 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !50, i64 16, !37, i64 18, !37, i64 19, !43, i64 20, !36, i64 24, !47, i64 32, !36, i64 216}
!63 = !{!62, !43, i64 20}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !65, !66}
!68 = !{!59, !37, i64 50}
!69 = !{!70, !54, i64 40}
!70 = !{!"MaskSplinePoint", !59, i64 0, !43, i64 72, !43, i64 76, !36, i64 80, !47, i64 88}
!71 = !{!70, !37, i64 51}
!72 = !{!70, !36, i64 80}
!73 = !{!70, !43, i64 76}
!74 = !{!75}
!75 = distinct !{!75, !76, !"MaskSplinePoint_feather_points_get: argument 0"}
!76 = distinct !{!76, !"MaskSplinePoint_feather_points_get"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"MaskSplinePoint_feather_points_get: argument 0"}
!79 = distinct !{!79, !"MaskSplinePoint_feather_points_get"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"MaskSplinePoint_feather_points_get: argument 0"}
!82 = distinct !{!82, !"MaskSplinePoint_feather_points_get"}
!83 = !{!84, !36, i64 32}
!84 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!85 = distinct !{!85, !65, !66}
!86 = !{!84, !43, i64 24}
!87 = !{!84, !36, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"MaskSplinePoint_feather_points_get: argument 0"}
!90 = distinct !{!90, !"MaskSplinePoint_feather_points_get"}
!91 = !{!62, !37, i64 18}
!92 = !{!62, !37, i64 19}
!93 = !{!62, !50, i64 16}
!94 = !{!95}
!95 = distinct !{!95, !96, !"MaskSpline_points_get: argument 0"}
!96 = distinct !{!96, !"MaskSpline_points_get"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"MaskSpline_points_get: argument 0"}
!99 = distinct !{!99, !"MaskSpline_points_get"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"MaskSpline_points_get: argument 0"}
!102 = distinct !{!102, !"MaskSpline_points_get"}
!103 = distinct !{!103, !65, !66}
!104 = !{!105}
!105 = distinct !{!105, !106, !"MaskSpline_points_get: argument 0"}
!106 = distinct !{!106, !"MaskSpline_points_get"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"rna_MaskLayer_active_spline_get: argument 0"}
!109 = distinct !{!109, !"rna_MaskLayer_active_spline_get"}
!110 = !{!111, !36, i64 112}
!111 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !112, i64 80, !112, i64 96, !36, i64 112, !36, i64 120, !54, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!112 = !{!"ListBase", !36, i64 0, !36, i64 8}
!113 = !{!114}
!114 = distinct !{!114, !115, !"rna_MaskLayer_active_spline_point_get: argument 0"}
!115 = distinct !{!115, !"rna_MaskLayer_active_spline_point_get"}
!116 = !{!111, !36, i64 120}
!117 = distinct !{!117, !65, !66}
!118 = !{!119}
!119 = distinct !{!119, !120, !"MaskLayer_splines_get: argument 0"}
!120 = distinct !{!120, !"MaskLayer_splines_get"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"MaskLayer_splines_get: argument 0"}
!123 = distinct !{!123, !"MaskLayer_splines_get"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"MaskLayer_splines_get: argument 0"}
!126 = distinct !{!126, !"MaskLayer_splines_get"}
!127 = !{!128, !36, i64 16}
!128 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!129 = !{!128, !36, i64 0}
!130 = distinct !{!130, !65, !66}
!131 = !{!132, !36, i64 0}
!132 = !{!"Link", !36, i64 0, !36, i64 8}
!133 = distinct !{!133, !65, !66}
!134 = !{!135}
!135 = distinct !{!135, !136, !"MaskLayer_splines_get: argument 0"}
!136 = distinct !{!136, !"MaskLayer_splines_get"}
!137 = !{!111, !37, i64 143}
!138 = !{!111, !37, i64 142}
!139 = !{!111, !54, i64 128}
!140 = !{!111, !37, i64 132}
!141 = !{!111, !37, i64 133}
!142 = !{!111, !37, i64 134}
!143 = !{!144}
!144 = distinct !{!144, !145, !"Mask_layers_get: argument 0"}
!145 = distinct !{!145, !"Mask_layers_get"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"Mask_layers_get: argument 0"}
!148 = distinct !{!148, !"Mask_layers_get"}
!149 = !{!150, !43, i64 144}
!150 = !{!"Mask", !151, i64 0, !36, i64 120, !112, i64 128, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164}
!151 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !50, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!152 = !{!150, !43, i64 152}
!153 = !{!150, !43, i64 156}
!154 = !{!150, !36, i64 120}
!155 = !{!156}
!156 = distinct !{!156, !157, !"rna_Mask_layer_active_get: argument 0"}
!157 = distinct !{!157, !"rna_Mask_layer_active_get"}
!158 = !{!159, !36, i64 0}
!159 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!160 = distinct !{!160, !65, !66}
!161 = !{!70, !37, i64 50}
!162 = !{!70, !37, i64 49}
!163 = distinct !{!163, !65, !66}
!164 = !{!43, !43, i64 0}
!165 = distinct !{!165, !65, !66}
!166 = !{!167, !43, i64 680}
!167 = !{!"Scene", !151, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !112, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !50, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !168, i64 280, !177, i64 4264, !112, i64 4296, !112, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !50, i64 4376, !50, i64 4378, !43, i64 4380, !112, i64 4384, !178, i64 4400, !179, i64 4416, !182, i64 4600, !36, i64 4608, !183, i64 4616, !36, i64 4640, !184, i64 4648, !184, i64 4656, !170, i64 4664, !171, i64 4824, !185, i64 4888, !36, i64 4952}
!168 = !{!"RenderData", !169, i64 0, !36, i64 248, !36, i64 256, !172, i64 264, !173, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !54, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !50, i64 432, !50, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !50, i64 456, !50, i64 458, !50, i64 460, !50, i64 462, !50, i64 464, !50, i64 466, !43, i64 468, !50, i64 472, !50, i64 474, !50, i64 476, !50, i64 478, !50, i64 480, !50, i64 482, !43, i64 484, !43, i64 488, !50, i64 492, !50, i64 494, !43, i64 496, !43, i64 500, !50, i64 504, !50, i64 506, !50, i64 508, !50, i64 510, !50, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !50, i64 528, !50, i64 530, !50, i64 532, !50, i64 534, !50, i64 536, !50, i64 538, !50, i64 540, !50, i64 542, !174, i64 544, !174, i64 560, !175, i64 576, !112, i64 592, !50, i64 608, !50, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !43, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !50, i64 648, !50, i64 650, !50, i64 652, !50, i64 654, !50, i64 656, !50, i64 658, !54, i64 660, !54, i64 664, !50, i64 668, !50, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !43, i64 1704, !50, i64 1708, !50, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !50, i64 2524, !50, i64 2526, !54, i64 2528, !54, i64 2532, !50, i64 2536, !50, i64 2538, !54, i64 2540, !50, i64 2544, !50, i64 2546, !43, i64 2548, !50, i64 2552, !50, i64 2554, !50, i64 2556, !50, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !43, i64 2576, !54, i64 2580, !37, i64 2584, !176, i64 2616, !43, i64 3976, !43, i64 3980}
!169 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !50, i64 8, !50, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !170, i64 24, !171, i64 184}
!170 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!171 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!172 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !50, i64 48, !50, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!173 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !54, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!174 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!175 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!176 = !{!"BakeData", !169, i64 0, !37, i64 248, !50, i64 1272, !50, i64 1274, !50, i64 1276, !50, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!177 = !{!"AudioData", !43, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !43, i64 16, !50, i64 20, !50, i64 22, !54, i64 24, !54, i64 28}
!178 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!179 = !{!"GameData", !178, i64 0, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !50, i64 32, !37, i64 34, !180, i64 40, !50, i64 64, !50, i64 66, !54, i64 68, !181, i64 72, !54, i64 128, !54, i64 132, !43, i64 136, !50, i64 140, !50, i64 142, !50, i64 144, !50, i64 146, !50, i64 148, !50, i64 150, !50, i64 152, !50, i64 154, !50, i64 156, !50, i64 158, !50, i64 160, !50, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!180 = !{!"GameDome", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!181 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !43, i64 40, !54, i64 44, !54, i64 48, !50, i64 52, !50, i64 54}
!182 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !50, i64 6}
!183 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!184 = !{!"long", !37, i64 0}
!185 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!186 = !{!150, !43, i64 148}
