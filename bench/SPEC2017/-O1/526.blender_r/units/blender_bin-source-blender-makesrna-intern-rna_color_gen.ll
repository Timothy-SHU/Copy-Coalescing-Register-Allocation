; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_color_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_color_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.CurveMapPoint = type { float, float, i16, i16 }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.rctf = type { float, float, float, float }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.LinkData = type { ptr, ptr, ptr }
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
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }

@rna_CurveMapPoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapPoint_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapPoint_rna_properties_begin, ptr @CurveMapPoint_rna_properties_next, ptr @CurveMapPoint_rna_properties_end, ptr @CurveMapPoint_rna_properties_get, ptr null, ptr null, ptr @CurveMapPoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_CurveMap_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMap_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMap_rna_properties_begin, ptr @CurveMap_rna_properties_next, ptr @CurveMap_rna_properties_end, ptr @CurveMap_rna_properties_get, ptr null, ptr null, ptr @CurveMap_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_CurveMap_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveMap_extend, i32 -1, ptr @.str.22, i32 16384, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_CurveMapPoints, ptr null }, ptr @CurveMap_points_begin, ptr @CurveMap_points_next, ptr @CurveMap_points_end, ptr @CurveMap_points_get, ptr @CurveMap_points_length, ptr @CurveMap_points_lookup_int, ptr null, ptr null, ptr @RNA_CurveMapPoint }, align 8
@.str = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.CurveMap_points_lookup_int = private unnamed_addr constant [27 x i8] c"CurveMap_points_lookup_int\00", align 1
@rna_CurveMapPoints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapPoints_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapPoints_rna_properties_begin, ptr @CurveMapPoints_rna_properties_next, ptr @CurveMapPoints_rna_properties_end, ptr @CurveMapPoints_rna_properties_get, ptr null, ptr null, ptr @CurveMapPoints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_CurveMapping_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapping_rna_properties_begin, ptr @CurveMapping_rna_properties_next, ptr @CurveMapping_rna_properties_end, ptr @CurveMapping_rna_properties_get, ptr null, ptr null, ptr @CurveMapping_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_CurveMapping_curves = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_black_level, ptr @rna_CurveMapping_clip_max_y, i32 -1, ptr @.str.58, i32 16384, ptr @.str.59, ptr @.str.24, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapping_curves_begin, ptr @CurveMapping_curves_next, ptr @CurveMapping_curves_end, ptr @CurveMapping_curves_get, ptr @rna_CurveMapping_curves_length, ptr null, ptr null, ptr null, ptr @RNA_CurveMap }, align 8
@rna_ColorRampElement_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRampElement_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRampElement_rna_properties_begin, ptr @ColorRampElement_rna_properties_next, ptr @ColorRampElement_rna_properties_end, ptr @ColorRampElement_rna_properties_get, ptr null, ptr null, ptr @ColorRampElement_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ColorRamp_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRamp_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRamp_rna_properties_begin, ptr @ColorRamp_rna_properties_next, ptr @ColorRamp_rna_properties_end, ptr @ColorRamp_rna_properties_get, ptr null, ptr null, ptr @ColorRamp_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ColorRamp_elements = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRamp_interpolation, ptr @rna_ColorRamp_rna_type, i32 -1, ptr @.str.82, i32 16384, ptr @.str.83, ptr @.str.24, i32 0, ptr @.str.4, i32 6, i32 20, ptr null, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 0, ptr @rna_ColorRamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ColorRampElements, ptr null }, ptr @ColorRamp_elements_begin, ptr @ColorRamp_elements_next, ptr @ColorRamp_elements_end, ptr @ColorRamp_elements_get, ptr @ColorRamp_elements_length, ptr @ColorRamp_elements_lookup_int, ptr null, ptr null, ptr @RNA_ColorRampElement }, align 8
@__func__.ColorRamp_elements_lookup_int = private unnamed_addr constant [30 x i8] c"ColorRamp_elements_lookup_int\00", align 1
@rna_ColorRampElements_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRampElements_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRampElements_rna_properties_begin, ptr @ColorRampElements_rna_properties_next, ptr @ColorRampElements_rna_properties_end, ptr @ColorRampElements_rna_properties_get, ptr null, ptr null, ptr @ColorRampElements_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Histogram_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Histogram_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Histogram_rna_properties_begin, ptr @Histogram_rna_properties_next, ptr @Histogram_rna_properties_end, ptr @Histogram_rna_properties_get, ptr null, ptr null, ptr @Histogram_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Scopes_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Scopes_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Scopes_rna_properties_begin, ptr @Scopes_rna_properties_next, ptr @Scopes_rna_properties_end, ptr @Scopes_rna_properties_get, ptr null, ptr null, ptr @Scopes_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Histogram = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Scopes, ptr @RNA_ColorRampElements, ptr null, %struct.ListBase { ptr @rna_Histogram_rna_properties, ptr @rna_Histogram_show_line } }, ptr @.str.114, ptr null, ptr null, i32 4, ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 17, ptr null, ptr @rna_Histogram_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_ColorManagedDisplaySettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedDisplaySettings_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedDisplaySettings_rna_properties_begin, ptr @ColorManagedDisplaySettings_rna_properties_next, ptr @ColorManagedDisplaySettings_rna_properties_end, ptr @ColorManagedDisplaySettings_rna_properties_get, ptr null, ptr null, ptr @ColorManagedDisplaySettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ColorManagedViewSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedViewSettings_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedViewSettings_rna_properties_begin, ptr @ColorManagedViewSettings_rna_properties_next, ptr @ColorManagedViewSettings_rna_properties_end, ptr @ColorManagedViewSettings_rna_properties_get, ptr null, ptr null, ptr @ColorManagedViewSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_CurveMapping = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorRampElement, ptr @RNA_CurveMapPoints, ptr null, %struct.ListBase { ptr @rna_CurveMapping_rna_properties, ptr @rna_CurveMapping_white_level } }, ptr @.str.70, ptr null, ptr null, i32 4, ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 17, ptr null, ptr @rna_CurveMapping_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_CurveMapping_update_func, ptr @rna_CurveMapping_initialize_func } }, align 8
@rna_ColorManagedInputColorspaceSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedInputColorspaceSettings_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedInputColorspaceSettings_rna_properties_begin, ptr @ColorManagedInputColorspaceSettings_rna_properties_next, ptr @ColorManagedInputColorspaceSettings_rna_properties_end, ptr @ColorManagedInputColorspaceSettings_rna_properties_get, ptr null, ptr null, ptr @ColorManagedInputColorspaceSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ColorManagedSequencerColorspaceSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedSequencerColorspaceSettings_rna_type, ptr null, i32 -1, ptr @.str.1, i32 128, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedSequencerColorspaceSettings_rna_properties_begin, ptr @ColorManagedSequencerColorspaceSettings_rna_properties_next, ptr @ColorManagedSequencerColorspaceSettings_rna_properties_end, ptr @ColorManagedSequencerColorspaceSettings_rna_properties_get, ptr null, ptr null, ptr @ColorManagedSequencerColorspaceSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_CurveMapPoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapPoint_location, ptr @rna_CurveMapPoint_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapPoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_CurveMapPoint_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapPoint_handle_type, ptr @rna_CurveMapPoint_rna_type, i32 -1, ptr @.str.8, i32 8195, ptr @.str.9, ptr @.str.10, i32 0, ptr @.str.4, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @CurveMapPoint_location_get, ptr @CurveMapPoint_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_CurveMapPoint_location_default }, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_CurveMapPoint_handle_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapPoint_select, ptr @rna_CurveMapPoint_location, i32 -1, ptr @.str.11, i32 3, ptr @.str.12, ptr @.str.13, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapPoint_handle_type_get, ptr @CurveMapPoint_handle_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_CurveMapPoint_handle_type_items, i32 2, i32 0 }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"X/Y coordinates of the curve point\00", align 1
@rna_CurveMapPoint_location_default = internal global [2 x float] zeroinitializer, align 4
@rna_CurveMapPoint_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveMapPoint_handle_type, i32 -1, ptr @.str.14, i32 3, ptr @.str.15, ptr @.str.16, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapPoint_select_get, ptr @CurveMapPoint_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"handle_type\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Handle Type\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Curve interpolation at this point: Bezier or vector\00", align 1
@rna_CurveMapPoint_handle_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.24 }, %struct.EnumPropertyItem { i32 2, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.24 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Selection state of the curve point\00", align 1
@RNA_CurveMap = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CurveMapPoints, ptr @RNA_CurveMapPoint, ptr null, %struct.ListBase { ptr @rna_CurveMap_rna_properties, ptr @rna_CurveMap_points } }, ptr @.str.33, ptr null, ptr null, i32 4, ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 17, ptr null, ptr @rna_CurveMap_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_CurveMap_evaluate_func, ptr @rna_CurveMap_evaluate_func } }, align 8
@RNA_ClothCollisionSettings = external global %struct.StructRNA, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"CurveMapPoint\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Point of a curve used for a curve mapping\00", align 1
@RNA_CurveMapPoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CurveMap, ptr @RNA_ClothCollisionSettings, ptr null, %struct.ListBase { ptr @rna_CurveMapPoint_rna_properties, ptr @rna_CurveMapPoint_select } }, ptr @.str.17, ptr null, ptr null, i32 4, ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 17, ptr null, ptr @rna_CurveMapPoint_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_CurveMap_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMap_extend, ptr @rna_CurveMap_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMap_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_CurveMap_extend = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMap_points, ptr @rna_CurveMap_rna_type, i32 -1, ptr @.str.19, i32 3, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMap_extend_get, ptr @CurveMap_extend_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_CurveMap_extend_items, i32 2, i32 0 }, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Extrapolate the curve or extend it horizontally\00", align 1
@rna_CurveMap_extend_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.24 }, %struct.EnumPropertyItem { i32 1, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.24 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RNA_CurveMapPoints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CurveMapping, ptr @RNA_CurveMap, ptr null, %struct.ListBase { ptr @rna_CurveMapPoints_rna_properties, ptr @rna_CurveMapPoints_rna_type } }, ptr @.str.44, ptr null, ptr null, i32 4, ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 17, ptr null, ptr @rna_CurveMapPoints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_CurveMapPoints_new_func, ptr @rna_CurveMapPoints_remove_func } }, align 8
@rna_CurveMap_evaluate_value = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveMap_evaluate_position, i32 -1, ptr @.str.28, i32 11, ptr @.str.29, ptr @.str.30, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Position\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Position to evaluate curve at\00", align 1
@rna_CurveMap_evaluate_position = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMap_evaluate_value, ptr null, i32 -1, ptr @.str.25, i32 7, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Value of curve at given location\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"evaluate\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Evaluate curve at given location\00", align 1
@rna_CurveMap_evaluate_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_CurveMap_evaluate_position, ptr @rna_CurveMap_evaluate_value } }, ptr @.str.31, i32 16, ptr @.str.32, ptr @CurveMap_evaluate_call, ptr @rna_CurveMap_evaluate_value }, align 8
@.str.33 = private unnamed_addr constant [9 x i8] c"CurveMap\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Curve in a curve mapping\00", align 1
@rna_CurveMapPoints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveMapPoints_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapPoints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_CurveMapPoints_new_value = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapPoints_new_point, ptr @rna_CurveMapPoints_new_position, i32 -1, ptr @.str.28, i32 7, ptr @.str.29, ptr @.str.36, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.35 = private unnamed_addr constant [22 x i8] c"Position to add point\00", align 1
@rna_CurveMapPoints_new_position = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapPoints_new_value, ptr null, i32 -1, ptr @.str.25, i32 7, ptr @.str.26, ptr @.str.35, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_CurveMapPoints_new_point = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveMapPoints_new_value, i32 -1, ptr @.str.37, i32 8388616, ptr @.str.24, ptr @.str.38, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_CurveMapPoint }, align 8
@.str.36 = private unnamed_addr constant [15 x i8] c"Value of point\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"New point\00", align 1
@rna_CurveMapPoints_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_CurveMapPoints_new_func, ptr null, %struct.ListBase { ptr @rna_CurveMapPoints_remove_point, ptr @rna_CurveMapPoints_remove_point } }, ptr @.str.42, i32 16, ptr @.str.43, ptr @CurveMapPoints_remove_call, ptr null }, align 8
@.str.39 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Add point to CurveMap\00", align 1
@rna_CurveMapPoints_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_CurveMapPoints_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_CurveMapPoints_new_position, ptr @rna_CurveMapPoints_new_point } }, ptr @.str.39, i32 0, ptr @.str.40, ptr @CurveMapPoints_new_call, ptr @rna_CurveMapPoints_new_point }, align 8
@.str.41 = private unnamed_addr constant [23 x i8] c"PointElement to remove\00", align 1
@rna_CurveMapPoints_remove_point = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.37, i32 264196, ptr @.str.24, ptr @.str.41, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_CurveMapPoint }, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Delete point from CurveMap\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"CurveMapPoints\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"Curve Map Point\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Collection of Curve Map Points\00", align 1
@rna_CurveMapping_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_use_clip, ptr @rna_CurveMapping_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapping_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_CurveMapping_use_clip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_clip_min_x, ptr @rna_CurveMapping_rna_type, i32 -1, ptr @.str.47, i32 3, ptr @.str.48, ptr @.str.49, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveMapping_use_clip_get, ptr @CurveMapping_use_clip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_CurveMapping_clip_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_clip_min_y, ptr @rna_CurveMapping_use_clip, i32 -1, ptr @.str.50, i32 8195, ptr @.str.51, ptr @.str.24, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @CurveMapping_clip_min_x_get, ptr @CurveMapping_clip_min_x_set, ptr null, ptr null, ptr @rna_CurveMapping_clipminx_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float -1.000000e+02, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.47 = private unnamed_addr constant [9 x i8] c"use_clip\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"Force the curve view to fit a defined boundary\00", align 1
@rna_CurveMapping_clip_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_clip_max_x, ptr @rna_CurveMapping_clip_min_x, i32 -1, ptr @.str.52, i32 8195, ptr @.str.53, ptr @.str.24, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @CurveMapping_clip_min_y_get, ptr @CurveMapping_clip_min_y_set, ptr null, ptr null, ptr @rna_CurveMapping_clipminy_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float -1.000000e+02, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.50 = private unnamed_addr constant [11 x i8] c"clip_min_x\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Clip Min X\00", align 1
@rna_CurveMapping_clip_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_clip_max_y, ptr @rna_CurveMapping_clip_min_y, i32 -1, ptr @.str.54, i32 8195, ptr @.str.55, ptr @.str.24, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @CurveMapping_clip_max_x_get, ptr @CurveMapping_clip_max_x_set, ptr null, ptr null, ptr @rna_CurveMapping_clipmaxx_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float -1.000000e+02, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.52 = private unnamed_addr constant [11 x i8] c"clip_min_y\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"Clip Min Y\00", align 1
@rna_CurveMapping_clip_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_curves, ptr @rna_CurveMapping_clip_max_x, i32 -1, ptr @.str.56, i32 8195, ptr @.str.57, ptr @.str.24, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 44, i32 4, ptr null, ptr null }, ptr @CurveMapping_clip_max_y_get, ptr @CurveMapping_clip_max_y_set, ptr null, ptr null, ptr @rna_CurveMapping_clipmaxy_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float -1.000000e+02, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.54 = private unnamed_addr constant [11 x i8] c"clip_max_x\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Clip Max X\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"clip_max_y\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Clip Max Y\00", align 1
@rna_CurveMapping_black_level = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveMapping_white_level, ptr @rna_CurveMapping_curves, i32 -1, ptr @.str.60, i32 3, ptr @.str.61, ptr @.str.62, i32 0, ptr @.str.4, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @CurveMapping_black_level_get, ptr @CurveMapping_black_level_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_CurveMapping_black_level_default }, align 8
@.str.58 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Curves\00", align 1
@rna_CurveMapping_white_level = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveMapping_black_level, i32 -1, ptr @.str.63, i32 3, ptr @.str.64, ptr @.str.65, i32 0, ptr @.str.4, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @CurveMapping_white_level_get, ptr @CurveMapping_white_level_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_CurveMapping_white_level_default }, align 8
@.str.60 = private unnamed_addr constant [12 x i8] c"black_level\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"Black Level\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"For RGB curves, the color that black is mapped to\00", align 1
@rna_CurveMapping_black_level_default = internal global [3 x float] zeroinitializer, align 4
@.str.63 = private unnamed_addr constant [12 x i8] c"white_level\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"White Level\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"For RGB curves, the color that white is mapped to\00", align 1
@rna_CurveMapping_white_level_default = internal global [3 x float] zeroinitializer, align 4
@rna_CurveMapping_initialize_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_CurveMapping_update_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.68, i32 0, ptr @.str.69, ptr @CurveMapping_initialize_call, ptr null }, align 8
@.str.66 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"Update curve mapping after making changes\00", align 1
@rna_CurveMapping_update_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_CurveMapping_initialize_func, ptr null, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.66, i32 0, ptr @.str.67, ptr @CurveMapping_update_call, ptr null }, align 8
@.str.68 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"Initialize curve\00", align 1
@RNA_ColorRampElement = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorRamp, ptr @RNA_CurveMapping, ptr null, %struct.ListBase { ptr @rna_ColorRampElement_rna_properties, ptr @rna_ColorRampElement_position } }, ptr @.str.79, ptr null, ptr null, i32 4, ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 17, ptr null, ptr @rna_ColorRampElement_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ColorRampElement_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.70 = private unnamed_addr constant [13 x i8] c"CurveMapping\00", align 1
@.str.71 = private unnamed_addr constant [96 x i8] c"Curve mapping to map color, vector and scalar values to other values using a user defined curve\00", align 1
@rna_ColorRampElement_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRampElement_color, ptr @rna_ColorRampElement_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRampElement_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ColorRampElement_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRampElement_alpha, ptr @rna_ColorRampElement_rna_type, i32 -1, ptr @.str.72, i32 8195, ptr @.str.73, ptr @.str.74, i32 0, ptr @.str.4, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_ColorRamp_update, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ColorRampElement_color_get, ptr @ColorRampElement_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ColorRampElement_color_default }, align 8
@rna_ColorRampElement_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRampElement_position, ptr @rna_ColorRampElement_color, i32 -1, ptr @.str.75, i32 8195, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.4, i32 2, i32 20, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorRamp_update, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @ColorRampElement_alpha_get, ptr @ColorRampElement_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.72 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"Set color of selected color stop\00", align 1
@rna_ColorRampElement_color_default = internal global [4 x float] zeroinitializer, align 16
@rna_ColorRampElement_position = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorRampElement_alpha, i32 -1, ptr @.str.25, i32 8195, ptr @.str.26, ptr @.str.78, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorRamp_update, i32 0, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @ColorRampElement_position_get, ptr @ColorRampElement_position_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.75 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"Set alpha of selected color stop\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"Set position of selected color stop\00", align 1
@RNA_ColorRamp = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorRampElements, ptr @RNA_ColorRampElement, ptr null, %struct.ListBase { ptr @rna_ColorRamp_rna_properties, ptr @rna_ColorRamp_color_mode } }, ptr @.str.96, ptr null, ptr null, i32 4, ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 17, ptr null, ptr @rna_ColorRamp_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ColorRamp_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ColorRamp_evaluate_func, ptr @rna_ColorRamp_evaluate_func } }, align 8
@.str.79 = private unnamed_addr constant [17 x i8] c"ColorRampElement\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"Color Ramp Element\00", align 1
@.str.81 = private unnamed_addr constant [57 x i8] c"Element defining a color at a position in the color ramp\00", align 1
@rna_ColorRamp_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRamp_elements, ptr @rna_ColorRamp_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRamp_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ColorRamp_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRamp_hue_interpolation, ptr @rna_ColorRamp_elements, i32 -1, ptr @.str.84, i32 3, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorRamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRamp_interpolation_get, ptr @ColorRamp_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ColorRamp_interpolation_items, i32 5, i32 0 }, align 8
@.str.82 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Elements\00", align 1
@RNA_ColorRampElements = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Histogram, ptr @RNA_ColorRamp, ptr null, %struct.ListBase { ptr @rna_ColorRampElements_rna_properties, ptr @rna_ColorRampElements_rna_type } }, ptr @.str.105, ptr null, ptr null, i32 4, ptr @.str.106, ptr @.str.107, ptr @.str.4, i32 17, ptr null, ptr @rna_ColorRampElements_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ColorRampElement_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ColorRampElements_new_func, ptr @rna_ColorRampElements_remove_func } }, align 8
@rna_ColorRamp_hue_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRamp_color_mode, ptr @rna_ColorRamp_interpolation, i32 -1, ptr @.str.87, i32 3, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorRamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRamp_hue_interpolation_get, ptr @ColorRamp_hue_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ColorRamp_hue_interpolation_items, i32 4, i32 0 }, align 8
@.str.84 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"Interpolation\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"Set interpolation between color stops\00", align 1
@rna_ColorRamp_interpolation_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.24 }, %struct.EnumPropertyItem { i32 3, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.24 }, %struct.EnumPropertyItem { i32 0, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.24 }, %struct.EnumPropertyItem { i32 2, ptr @.str.186, i32 0, ptr @.str.187, ptr @.str.24 }, %struct.EnumPropertyItem { i32 4, ptr @.str.188, i32 0, ptr @.str.189, ptr @.str.24 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ColorRamp_color_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorRamp_hue_interpolation, i32 -1, ptr @.str.90, i32 3, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorRamp_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRamp_color_mode_get, ptr @ColorRamp_color_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ColorRamp_color_mode_items, i32 3, i32 0 }, align 8
@.str.87 = private unnamed_addr constant [18 x i8] c"hue_interpolation\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"Color Interpolation\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"Set color interpolation\00", align 1
@rna_ColorRamp_hue_interpolation_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.190, i32 0, ptr @.str.191, ptr @.str.24 }, %struct.EnumPropertyItem { i32 1, ptr @.str.192, i32 0, ptr @.str.193, ptr @.str.24 }, %struct.EnumPropertyItem { i32 2, ptr @.str.194, i32 0, ptr @.str.195, ptr @.str.24 }, %struct.EnumPropertyItem { i32 3, ptr @.str.196, i32 0, ptr @.str.197, ptr @.str.24 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.90 = private unnamed_addr constant [11 x i8] c"color_mode\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"Color Mode\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"Set color mode to use for interpolation\00", align 1
@rna_ColorRamp_color_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.24 }, %struct.EnumPropertyItem { i32 1, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.24 }, %struct.EnumPropertyItem { i32 2, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.24 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ColorRamp_evaluate_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorRamp_evaluate_position, i32 -1, ptr @.str.72, i32 8388619, ptr @.str.73, ptr @.str.94, i32 0, ptr @.str.4, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_ColorRamp_evaluate_color_default }, align 8
@.str.93 = private unnamed_addr constant [31 x i8] c"Evaluate ColorRamp at position\00", align 1
@rna_ColorRamp_evaluate_position = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRamp_evaluate_color, ptr null, i32 -1, ptr @.str.25, i32 7, ptr @.str.26, ptr @.str.93, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.94 = private unnamed_addr constant [24 x i8] c"Color at given position\00", align 1
@rna_ColorRamp_evaluate_color_default = internal global [4 x float] zeroinitializer, align 16
@.str.95 = private unnamed_addr constant [19 x i8] c"Evaluate ColorRamp\00", align 1
@rna_ColorRamp_evaluate_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ColorRamp_evaluate_position, ptr @rna_ColorRamp_evaluate_color } }, ptr @.str.31, i32 0, ptr @.str.95, ptr @ColorRamp_evaluate_call, ptr null }, align 8
@.str.96 = private unnamed_addr constant [10 x i8] c"ColorRamp\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"Color Ramp\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"Color ramp mapping a scalar value to a color\00", align 1
@rna_ColorRampElements_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorRampElements_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorRampElements_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ColorRampElements_new_element = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorRampElements_new_position, i32 -1, ptr @.str.100, i32 8388616, ptr @.str.24, ptr @.str.101, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ColorRampElement }, align 8
@.str.99 = private unnamed_addr constant [24 x i8] c"Position to add element\00", align 1
@rna_ColorRampElements_new_position = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorRampElements_new_element, ptr null, i32 -1, ptr @.str.25, i32 7, ptr @.str.26, ptr @.str.99, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.100 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"New element\00", align 1
@rna_ColorRampElements_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ColorRampElements_new_func, ptr null, %struct.ListBase { ptr @rna_ColorRampElements_remove_element, ptr @rna_ColorRampElements_remove_element } }, ptr @.str.42, i32 16, ptr @.str.104, ptr @ColorRampElements_remove_call, ptr null }, align 8
@.str.102 = private unnamed_addr constant [25 x i8] c"Add element to ColorRamp\00", align 1
@rna_ColorRampElements_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ColorRampElements_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ColorRampElements_new_position, ptr @rna_ColorRampElements_new_element } }, ptr @.str.39, i32 16, ptr @.str.102, ptr @ColorRampElements_new_call, ptr @rna_ColorRampElements_new_element }, align 8
@.str.103 = private unnamed_addr constant [18 x i8] c"Element to remove\00", align 1
@rna_ColorRampElements_remove_element = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.100, i32 264196, ptr @.str.24, ptr @.str.103, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ColorRampElement }, align 8
@.str.104 = private unnamed_addr constant [30 x i8] c"Delete element from ColorRamp\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"ColorRampElements\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"Color Ramp Elements\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"Collection of Color Ramp Elements\00", align 1
@rna_Histogram_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Histogram_mode, ptr @rna_Histogram_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Histogram_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Histogram_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Histogram_show_line, ptr @rna_Histogram_rna_type, i32 -1, ptr @.str.108, i32 3, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Histogram_mode_get, ptr @Histogram_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Histogram_mode_items, i32 6, i32 0 }, align 8
@rna_Histogram_show_line = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Histogram_mode, i32 -1, ptr @.str.111, i32 3, ptr @.str.112, ptr @.str.113, i32 105, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Histogram_show_line_get, ptr @Histogram_show_line_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.108 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.110 = private unnamed_addr constant [47 x i8] c"Channels to display when drawing the histogram\00", align 1
@rna_Histogram_mode_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.204, i32 0, ptr @.str.205, ptr @.str.205 }, %struct.EnumPropertyItem { i32 1, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.206 }, %struct.EnumPropertyItem { i32 2, ptr @.str.207, i32 0, ptr @.str.207, ptr @.str.208 }, %struct.EnumPropertyItem { i32 3, ptr @.str.209, i32 0, ptr @.str.209, ptr @.str.210 }, %struct.EnumPropertyItem { i32 4, ptr @.str.211, i32 0, ptr @.str.211, ptr @.str.212 }, %struct.EnumPropertyItem { i32 5, ptr @.str.213, i32 0, ptr @.str.213, ptr @.str.76 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.111 = private unnamed_addr constant [10 x i8] c"show_line\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"Show Line\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"Display lines rather than filled shapes\00", align 1
@RNA_Scopes = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorManagedDisplaySettings, ptr @RNA_Histogram, ptr null, %struct.ListBase { ptr @rna_Scopes_rna_properties, ptr @rna_Scopes_vectorscope_alpha } }, ptr @.str.131, ptr null, ptr null, i32 4, ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 17, ptr null, ptr @rna_Scopes_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.114 = private unnamed_addr constant [10 x i8] c"Histogram\00", align 1
@.str.115 = private unnamed_addr constant [52 x i8] c"Statistical view of the levels of color in an image\00", align 1
@rna_Scopes_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Scopes_use_full_resolution, ptr @rna_Scopes_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Scopes_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Scopes_use_full_resolution = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Scopes_accuracy, ptr @rna_Scopes_rna_type, i32 -1, ptr @.str.116, i32 3, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Scopes_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Scopes_use_full_resolution_get, ptr @Scopes_use_full_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_Scopes_accuracy = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Scopes_histogram, ptr @rna_Scopes_use_full_resolution, i32 -1, ptr @.str.119, i32 8195, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.4, i32 2, i32 14, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Scopes_update, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @Scopes_accuracy_get, ptr @Scopes_accuracy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 1, float 0.000000e+00, ptr null }, align 8
@.str.116 = private unnamed_addr constant [20 x i8] c"use_full_resolution\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"Full Sample\00", align 1
@.str.118 = private unnamed_addr constant [32 x i8] c"Sample every pixel of the image\00", align 1
@rna_Scopes_histogram = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Scopes_waveform_mode, ptr @rna_Scopes_accuracy, i32 -1, ptr @.str.122, i32 8388608, ptr @.str.114, ptr @.str.123, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Scopes_histogram_get, ptr null, ptr null, ptr null, ptr @RNA_Histogram }, align 8
@.str.119 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"Accuracy\00", align 1
@.str.121 = private unnamed_addr constant [58 x i8] c"Proportion of original image source pixel lines to sample\00", align 1
@rna_Scopes_waveform_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Scopes_waveform_alpha, ptr @rna_Scopes_histogram, i32 -1, ptr @.str.124, i32 3, ptr @.str.125, ptr @.str.24, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Scopes_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Scopes_waveform_mode_get, ptr @Scopes_waveform_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Scopes_waveform_mode_items, i32 5, i32 0 }, align 8
@.str.122 = private unnamed_addr constant [10 x i8] c"histogram\00", align 1
@.str.123 = private unnamed_addr constant [39 x i8] c"Histogram for viewing image statistics\00", align 1
@rna_Scopes_waveform_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Scopes_vectorscope_alpha, ptr @rna_Scopes_waveform_mode, i32 -1, ptr @.str.126, i32 8195, ptr @.str.127, ptr @.str.128, i32 0, ptr @.str.4, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @Scopes_waveform_alpha_get, ptr @Scopes_waveform_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.124 = private unnamed_addr constant [14 x i8] c"waveform_mode\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"Waveform Mode\00", align 1
@rna_Scopes_waveform_mode_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.204, i32 54, ptr @.str.205, ptr @.str.24 }, %struct.EnumPropertyItem { i32 1, ptr @.str.198, i32 54, ptr @.str.206, ptr @.str.24 }, %struct.EnumPropertyItem { i32 2, ptr @.str.214, i32 54, ptr @.str.215, ptr @.str.24 }, %struct.EnumPropertyItem { i32 3, ptr @.str.216, i32 54, ptr @.str.217, ptr @.str.24 }, %struct.EnumPropertyItem { i32 4, ptr @.str.218, i32 54, ptr @.str.219, ptr @.str.24 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Scopes_vectorscope_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Scopes_waveform_alpha, i32 -1, ptr @.str.129, i32 8195, ptr @.str.130, ptr @.str.128, i32 0, ptr @.str.4, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @Scopes_vectorscope_alpha_get, ptr @Scopes_vectorscope_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.126 = private unnamed_addr constant [15 x i8] c"waveform_alpha\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"Waveform Opacity\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"Opacity of the points\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"vectorscope_alpha\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"Vectorscope Opacity\00", align 1
@RNA_ColorManagedDisplaySettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorManagedViewSettings, ptr @RNA_Scopes, ptr null, %struct.ListBase { ptr @rna_ColorManagedDisplaySettings_rna_properties, ptr @rna_ColorManagedDisplaySettings_display_device } }, ptr @.str.136, ptr null, ptr null, i32 4, ptr @.str.136, ptr @.str.137, ptr @.str.4, i32 17, ptr null, ptr @rna_ColorManagedDisplaySettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ColorManagedDisplaySettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.131 = private unnamed_addr constant [7 x i8] c"Scopes\00", align 1
@.str.132 = private unnamed_addr constant [40 x i8] c"Scopes for statistical view of an image\00", align 1
@rna_ColorManagedDisplaySettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedDisplaySettings_display_device, ptr @rna_ColorManagedDisplaySettings_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedDisplaySettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ColorManagedDisplaySettings_display_device = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorManagedDisplaySettings_rna_type, i32 -1, ptr @.str.133, i32 3, ptr @.str.134, ptr @.str.135, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_ColorManagedDisplaySettings_display_device_update, i32 33554432, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedDisplaySettings_display_device_get, ptr @ColorManagedDisplaySettings_display_device_set, ptr @rna_ColorManagedDisplaySettings_display_device_itemf, ptr null, ptr null, ptr null, ptr @rna_ColorManagedDisplaySettings_display_device_items, i32 1, i32 0 }, align 8
@.str.133 = private unnamed_addr constant [15 x i8] c"display_device\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"Display Device\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"Display device name\00", align 1
@rna_ColorManagedDisplaySettings_display_device_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.220, i32 0, ptr @.str.221, ptr @.str.24 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_ColorManagedViewSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorManagedInputColorspaceSettings, ptr @RNA_ColorManagedDisplaySettings, ptr null, %struct.ListBase { ptr @rna_ColorManagedViewSettings_rna_properties, ptr @rna_ColorManagedViewSettings_use_curve_mapping } }, ptr @.str.156, ptr null, ptr null, i32 4, ptr @.str.156, ptr @.str.157, ptr @.str.4, i32 17, ptr null, ptr @rna_ColorManagedViewSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ColorManagedViewSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.136 = private unnamed_addr constant [28 x i8] c"ColorManagedDisplaySettings\00", align 1
@.str.137 = private unnamed_addr constant [44 x i8] c"Color management specific to display device\00", align 1
@rna_ColorManagedViewSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedViewSettings_look, ptr @rna_ColorManagedViewSettings_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedViewSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ColorManagedViewSettings_look = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedViewSettings_view_transform, ptr @rna_ColorManagedViewSettings_rna_type, i32 -1, ptr @.str.138, i32 3, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_ColorManagement_update, i32 33554432, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedViewSettings_look_get, ptr @ColorManagedViewSettings_look_set, ptr @rna_ColorManagedViewSettings_look_itemf, ptr null, ptr null, ptr null, ptr @rna_ColorManagedViewSettings_look_items, i32 1, i32 0 }, align 8
@rna_ColorManagedViewSettings_view_transform = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedViewSettings_exposure, ptr @rna_ColorManagedViewSettings_look, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_ColorManagement_update, i32 33554432, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedViewSettings_view_transform_get, ptr @ColorManagedViewSettings_view_transform_set, ptr @rna_ColorManagedViewSettings_view_transform_itemf, ptr null, ptr null, ptr null, ptr @rna_ColorManagedViewSettings_view_transform_items, i32 1, i32 0 }, align 8
@.str.138 = private unnamed_addr constant [5 x i8] c"look\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"Look\00", align 1
@.str.140 = private unnamed_addr constant [73 x i8] c"Additional transform applied before view transform for an artistic needs\00", align 1
@rna_ColorManagedViewSettings_look_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.225 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ColorManagedViewSettings_exposure = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedViewSettings_gamma, ptr @rna_ColorManagedViewSettings_view_transform, i32 -1, ptr @.str.144, i32 8195, ptr @.str.145, ptr @.str.146, i32 0, ptr @.str.4, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorManagement_update, i32 33554432, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @ColorManagedViewSettings_exposure_get, ptr @ColorManagedViewSettings_exposure_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.141 = private unnamed_addr constant [15 x i8] c"view_transform\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"View Transform\00", align 1
@.str.143 = private unnamed_addr constant [51 x i8] c"View used when converting image to a display space\00", align 1
@rna_ColorManagedViewSettings_view_transform_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.226 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ColorManagedViewSettings_gamma = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedViewSettings_curve_mapping, ptr @rna_ColorManagedViewSettings_exposure, i32 -1, ptr @.str.147, i32 8195, ptr @.str.148, ptr @.str.149, i32 0, ptr @.str.4, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorManagement_update, i32 33554432, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr @ColorManagedViewSettings_gamma_get, ptr @ColorManagedViewSettings_gamma_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.144 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"Exposure\00", align 1
@.str.146 = private unnamed_addr constant [50 x i8] c"Exposure (stops) applied before display transform\00", align 1
@rna_ColorManagedViewSettings_curve_mapping = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedViewSettings_use_curve_mapping, ptr @rna_ColorManagedViewSettings_gamma, i32 -1, ptr @.str.150, i32 8388608, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorManagement_update, i32 33554432, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedViewSettings_curve_mapping_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@.str.147 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.149 = private unnamed_addr constant [61 x i8] c"Amount of gamma modification applied after display transform\00", align 1
@rna_ColorManagedViewSettings_use_curve_mapping = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorManagedViewSettings_curve_mapping, i32 -1, ptr @.str.153, i32 3, ptr @.str.154, ptr @.str.155, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorManagement_update, i32 33554432, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedViewSettings_use_curve_mapping_get, ptr @ColorManagedViewSettings_use_curve_mapping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.150 = private unnamed_addr constant [14 x i8] c"curve_mapping\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.152 = private unnamed_addr constant [53 x i8] c"Color curve mapping applied before display transform\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"use_curve_mapping\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"Use Curves\00", align 1
@.str.155 = private unnamed_addr constant [46 x i8] c"Use RGB curved for pre-display transformation\00", align 1
@RNA_ColorManagedInputColorspaceSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorManagedSequencerColorspaceSettings, ptr @RNA_ColorManagedViewSettings, ptr null, %struct.ListBase { ptr @rna_ColorManagedInputColorspaceSettings_rna_properties, ptr @rna_ColorManagedInputColorspaceSettings_name } }, ptr @.str.161, ptr null, ptr null, i32 4, ptr @.str.161, ptr @.str.162, ptr @.str.4, i32 17, ptr null, ptr @rna_ColorManagedInputColorspaceSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ColorManagedInputColorspaceSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.156 = private unnamed_addr constant [25 x i8] c"ColorManagedViewSettings\00", align 1
@.str.157 = private unnamed_addr constant [68 x i8] c"Color management settings used for displaying images on the display\00", align 1
@rna_ColorManagedInputColorspaceSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedInputColorspaceSettings_name, ptr @rna_ColorManagedInputColorspaceSettings_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedInputColorspaceSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ColorManagedInputColorspaceSettings_name = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorManagedInputColorspaceSettings_rna_type, i32 -1, ptr @.str.158, i32 16777219, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorManagedColorspaceSettings_reload_update, i32 33554432, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedInputColorspaceSettings_name_get, ptr @ColorManagedInputColorspaceSettings_name_set, ptr @rna_ColorManagedColorspaceSettings_colorspace_itemf, ptr null, ptr null, ptr null, ptr @rna_ColorManagedInputColorspaceSettings_name_items, i32 1, i32 0 }, align 8
@.str.158 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"Input Color Space\00", align 1
@.str.160 = private unnamed_addr constant [42 x i8] c"Color space of the image or movie on disk\00", align 1
@rna_ColorManagedInputColorspaceSettings_name_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.228 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_ColorManagedSequencerColorspaceSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Constraint, ptr @RNA_ColorManagedInputColorspaceSettings, ptr null, %struct.ListBase { ptr @rna_ColorManagedSequencerColorspaceSettings_rna_properties, ptr @rna_ColorManagedSequencerColorspaceSettings_name } }, ptr @.str.165, ptr null, ptr null, i32 4, ptr @.str.165, ptr @.str.162, ptr @.str.4, i32 17, ptr null, ptr @rna_ColorManagedSequencerColorspaceSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ColorManagedSequencerColorspaceSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.161 = private unnamed_addr constant [36 x i8] c"ColorManagedInputColorspaceSettings\00", align 1
@.str.162 = private unnamed_addr constant [27 x i8] c"Input color space settings\00", align 1
@rna_ColorManagedSequencerColorspaceSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorManagedSequencerColorspaceSettings_name, ptr @rna_ColorManagedSequencerColorspaceSettings_rna_properties, i32 -1, ptr @.str.5, i32 8912896, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedSequencerColorspaceSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ColorManagedSequencerColorspaceSettings_name = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorManagedSequencerColorspaceSettings_rna_type, i32 -1, ptr @.str.158, i32 16777219, ptr @.str.163, ptr @.str.164, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ColorManagedColorspaceSettings_reload_update, i32 33554432, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorManagedSequencerColorspaceSettings_name_get, ptr @ColorManagedSequencerColorspaceSettings_name_set, ptr @rna_ColorManagedColorspaceSettings_colorspace_itemf, ptr null, ptr null, ptr null, ptr @rna_ColorManagedSequencerColorspaceSettings_name_items, i32 1, i32 0 }, align 8
@.str.163 = private unnamed_addr constant [12 x i8] c"Color Space\00", align 1
@.str.164 = private unnamed_addr constant [43 x i8] c"Color space that the sequencer operates in\00", align 1
@rna_ColorManagedSequencerColorspaceSettings_name_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.228 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_Constraint = external global %struct.StructRNA, align 8
@.str.165 = private unnamed_addr constant [40 x i8] c"ColorManagedSequencerColorspaceSettings\00", align 1
@.str.166 = private unnamed_addr constant [88 x i8] c"CurveMap table not initialized, call initialize() on CurveMapping owner of the CurveMap\00", align 1
@.str.167 = private unnamed_addr constant [29 x i8] c"Unable to remove curve point\00", align 1
@.str.168 = private unnamed_addr constant [46 x i8] c"Unable to add element to colorband (limit %d)\00", align 1
@.str.169 = private unnamed_addr constant [56 x i8] c"Element not found in element collection or last element\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"Auto Handle\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"VECTOR\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"Vector Handle\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"HORIZONTAL\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"EXTRAPOLATED\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"Extrapolated\00", align 1
@.str.178 = private unnamed_addr constant [16 x i8] c"%s.elements[%d]\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.179 = private unnamed_addr constant [11 x i8] c"color_ramp\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"EASE\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"Ease\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"CARDINAL\00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c"Cardinal\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"B_SPLINE\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"B-Spline\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"NEAR\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"Near\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"FAR\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"Far\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"CW\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"Clockwise\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"CCW\00", align 1
@.str.197 = private unnamed_addr constant [18 x i8] c"Counter-Clockwise\00", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.200 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"diffuse_ramp\00", align 1
@.str.202 = private unnamed_addr constant [14 x i8] c"specular_ramp\00", align 1
@RNA_Node = external global %struct.StructRNA, align 8
@.str.203 = private unnamed_addr constant [14 x i8] c"%s.color_ramp\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"LUMA\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"Luma\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c"Red Green Blue\00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"YCBCR601\00", align 1
@.str.215 = private unnamed_addr constant [16 x i8] c"YCbCr (ITU 601)\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"YCBCR709\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"YCbCr (ITU 709)\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"YCBCRJPG\00", align 1
@.str.219 = private unnamed_addr constant [13 x i8] c"YCbCr (Jpeg)\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.222 = private unnamed_addr constant [17 x i8] c"display_settings\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.225 = private unnamed_addr constant [42 x i8] c"Do not modify image in an artistic manner\00", align 1
@.str.226 = private unnamed_addr constant [95 x i8] c"Do not perform any color transform on display, use old non-color managed technique for display\00", align 1
@.str.227 = private unnamed_addr constant [14 x i8] c"view_settings\00", align 1
@.str.228 = private unnamed_addr constant [90 x i8] c"Do not perform any color transform on load, treat colors as in scene linear space already\00", align 1
@.str.229 = private unnamed_addr constant [20 x i8] c"colorspace_settings\00", align 1
@.str.230 = private unnamed_addr constant [30 x i8] c"sequencer_colorspace_settings\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveMapPoint_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @CurveMapPoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoint_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @CurveMapPoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @CurveMapPoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapPoint_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !50
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %5, label %12, !llvm.loop !51

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapPoint_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds float, ptr %4, i64 %6
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %5, label %12, !llvm.loop !54

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMapPoint_handle_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveMapPoint, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !55
  %6 = and i16 %5, 2
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapPoint_handle_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveMapPoint, ptr %4, i64 0, i32 2
  %6 = load i16, ptr %5, align 4, !tbaa !55
  %7 = and i16 %6, -3
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMapPoint_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveMapPoint, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !55
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapPoint_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.CurveMapPoint, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !55
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMap_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveMap_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @CurveMap_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMap_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @CurveMap_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CurveMap_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMap_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMap_extend_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !56
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMap_extend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !56
  %7 = and i16 %6, -2
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 2, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMap_points_length(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr %3, align 8, !tbaa !59
  %9 = sext i16 %8 to i32
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMap_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveMap_points, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.CurveMap, ptr %5, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = load i16, ptr %5, align 8, !tbaa !59
  %10 = sext i16 %9 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 12, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #13
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !60
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_CurveMapPoint, ptr noundef %16) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @CurveMap_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapPoint, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMap_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !63
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_CurveMapPoint, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @CurveMap_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @CurveMap_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
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
  store ptr @rna_CurveMap_points, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.CurveMap, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = load i16, ptr %8, align 8, !tbaa !59
  %14 = sext i16 %13 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 12, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #13
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #13, !noalias !66
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_CurveMapPoint, ptr noundef %20) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
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
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.CurveMap_points_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !69
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
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #13
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !71

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !72
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !73
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !73
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #13, !noalias !74
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_CurveMapPoint, ptr noundef %66) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #13
  ret i32 %68
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveMapPoints_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @CurveMapPoints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoints_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @CurveMapPoints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CurveMapPoints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveMapping_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @CurveMapping_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @CurveMapping_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CurveMapping_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMapping_use_clip_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_use_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = load i32, ptr %4, align 8, !tbaa !77
  %7 = and i32 %6, -2
  %8 = zext i1 %5 to i32
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 8, !tbaa !77
  tail call void @curvemapping_changed(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CurveMapping_clip_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !80
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_clip_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 5, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !81
  %7 = fcmp olt float %1, -1.000000e+02
  %8 = fcmp olt float %6, %1
  %9 = select i1 %8, float %6, float %1
  %10 = select i1 %7, float -1.000000e+02, float %9
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 5
  store float %10, ptr %11, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_CurveMapping_clipminx_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #10 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  store float -1.000000e+02, ptr %1, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !81
  store float %9, ptr %2, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CurveMapping_clip_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 5, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !82
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_clip_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 5, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !83
  %7 = fcmp olt float %1, -1.000000e+02
  %8 = fcmp olt float %6, %1
  %9 = select i1 %8, float %6, float %1
  %10 = select i1 %7, float -1.000000e+02, float %9
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 5, i32 2
  store float %10, ptr %11, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_CurveMapping_clipminy_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #10 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  store float -1.000000e+02, ptr %1, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !83
  store float %9, ptr %2, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CurveMapping_clip_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 5, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !81
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_clip_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !80
  %7 = fcmp ogt float %6, %1
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float %6, float %9
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 5, i32 1
  store float %10, ptr %11, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_CurveMapping_clipmaxx_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #10 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5
  %9 = load float, ptr %8, align 8, !tbaa !80
  store float %9, ptr %1, align 4, !tbaa !50
  store float 1.000000e+02, ptr %2, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CurveMapping_clip_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 5, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_clip_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 5, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !82
  %7 = fcmp ogt float %6, %1
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float %6, float %9
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 5, i32 3
  store float %10, ptr %11, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_CurveMapping_clipmaxy_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #10 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !82
  store float %9, ptr %1, align 4, !tbaa !50
  store float 1.000000e+02, ptr %2, align 4, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_curves_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveMapping_curves, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %2, %12
  %8 = phi i64 [ 0, %2 ], [ %13, %12 ]
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %6, i64 0, i32 6, i64 %8, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %17, label %7, !llvm.loop !84

15:                                               ; preds = %7
  %16 = trunc i64 %8 to i32
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi i32 [ %16, %15 ], [ 4, %12 ]
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %6, i64 0, i32 6
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %19, i32 noundef 72, i32 noundef %18, i8 noundef zeroext 0, ptr noundef null) #13
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !44
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %25 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !85
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_CurveMap, ptr noundef %25) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %26

26:                                               ; preds = %23, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CurveMapping_curves_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMap, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_curves_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !88
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_CurveMap, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_curves_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_black_level_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !50
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !91

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_black_level_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !50
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 7
  store float %5, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 7, i64 1
  store float %8, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 7, i64 2
  store float %11, ptr %12, align 8, !tbaa !50
  tail call void @curvemapping_set_black_white(ptr noundef %4, ptr noundef null, ptr noundef null) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_white_level_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 8
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !50
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !92

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_white_level_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !50
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 8
  store float %5, ptr %6, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 8, i64 1
  store float %8, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 8, i64 2
  store float %11, ptr %12, align 4, !tbaa !50
  tail call void @curvemapping_set_black_white(ptr noundef %4, ptr noundef null, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElement_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorRampElement_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @ColorRampElement_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElement_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @ColorRampElement_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorRampElement_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElement_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRampElement_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !93
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !50
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %5, !llvm.loop !95

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRampElement_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %13
  %6 = phi i64 [ 0, %2 ], [ %16, %13 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = fcmp olt float %8, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = fcmp ogt float %8, 0x47EFFFFFE0000000
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %10, %5
  %14 = phi float [ 0.000000e+00, %5 ], [ %8, %12 ], [ 0x47EFFFFFE0000000, %10 ]
  %15 = getelementptr inbounds float, ptr %4, i64 %6
  store float %14, ptr %15, align 4, !tbaa !93
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %5, !llvm.loop !96

18:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorRampElement_alpha_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CBData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !97
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRampElement_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.CBData, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorRampElement_position_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CBData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRampElement_position_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.CBData, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRamp_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorRamp_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @ColorRamp_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRamp_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @ColorRamp_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorRamp_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRamp_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorRamp_elements_length(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load i16, ptr %3, align 4, !tbaa !99
  %5 = sext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRamp_elements_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorRamp_elements, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.ColorBand, ptr %5, i64 0, i32 6
  %8 = load i16, ptr %5, align 4, !tbaa !99
  %9 = sext i16 %8 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 24, i32 noundef %9, i8 noundef zeroext 0, ptr noundef null) #13
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %15 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !101
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_ColorRampElement, ptr noundef %15) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ColorRamp_elements_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorRampElement, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRamp_elements_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #13, !noalias !104
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_ColorRampElement, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRamp_elements_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorRamp_elements_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
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
  store ptr @rna_ColorRamp_elements, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.ColorBand, ptr %8, i64 0, i32 6
  %12 = load i16, ptr %8, align 4, !tbaa !99
  %13 = sext i16 %12 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, i32 noundef 24, i32 noundef %13, i8 noundef zeroext 0, ptr noundef null) #13
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %19 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #13, !noalias !107
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRampElement, ptr noundef %19) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %20

20:                                               ; preds = %3, %17
  %21 = load i32, ptr %14, align 8, !tbaa !44
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %25 = icmp sgt i32 %1, -1
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, %1
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.ColorRamp_elements_lookup_int, i32 noundef %1)
  br label %61

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %32
  %37 = icmp sgt i32 %1, 0
  %38 = load i32, ptr %14, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %48

41:                                               ; preds = %36, %41
  %42 = phi i32 [ %43, %41 ], [ %1, %36 ]
  %43 = add nsw i32 %42, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #13
  %44 = icmp sgt i32 %42, 1
  %45 = load i32, ptr %14, align 8
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %41, label %48, !llvm.loop !110

48:                                               ; preds = %41, %36
  %49 = phi i32 [ %1, %36 ], [ %43, %41 ]
  %50 = phi i1 [ %39, %36 ], [ %46, %41 ]
  %51 = icmp eq i32 %49, 0
  %52 = select i1 %51, i1 %50, i1 false
  %53 = zext i1 %52 to i32
  br label %61

54:                                               ; preds = %32
  %55 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !72
  %57 = mul nsw i32 %56, %1
  %58 = load ptr, ptr %24, align 8, !tbaa !73
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  store ptr %60, ptr %24, align 8, !tbaa !73
  br label %61

61:                                               ; preds = %48, %54, %30
  %62 = phi i32 [ 0, %30 ], [ %53, %48 ], [ 1, %54 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %65 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #13, !noalias !111
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRampElement, ptr noundef %65) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %66

66:                                               ; preds = %61, %64, %20
  %67 = phi i32 [ 0, %20 ], [ %62, %64 ], [ %62, %61 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #13
  ret i32 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorRamp_interpolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !114
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRamp_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.ColorBand, ptr %4, i64 0, i32 2
  store i8 %5, ptr %6, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorRamp_hue_interpolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !115
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRamp_hue_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.ColorBand, ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 1, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorRamp_color_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 2, !tbaa !116
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRamp_color_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.ColorBand, ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 2, !tbaa !116
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElements_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorRampElements_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @ColorRampElements_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElements_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @ColorRampElements_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorRampElements_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElements_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Histogram_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Histogram_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @Histogram_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Histogram_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @Histogram_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Histogram_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @Histogram_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Histogram_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Histogram, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 4, !tbaa !117
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Histogram_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Histogram, ptr %4, i64 0, i32 9
  store i16 %5, ptr %6, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Histogram_show_line_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Histogram, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !119
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Histogram_show_line_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Histogram, ptr %4, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !119
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !119
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Scopes_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Scopes_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @Scopes_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Scopes_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @Scopes_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Scopes_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @Scopes_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Scopes_use_full_resolution_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !120
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_use_full_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !120
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Scopes_accuracy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_accuracy_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !122
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Scopes_histogram_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Histogram, ptr noundef nonnull %5) #13
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Scopes_waveform_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !123
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_waveform_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 4
  store i32 %1, ptr %5, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Scopes_waveform_alpha_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !124
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_waveform_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Scopes_vectorscope_alpha_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !125
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_vectorscope_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 8, !tbaa !125
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedDisplaySettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorManagedDisplaySettings_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @ColorManagedDisplaySettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedDisplaySettings_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @ColorManagedDisplaySettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedDisplaySettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedDisplaySettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedDisplaySettings_display_device_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call i32 @IMB_colormanagement_display_get_named_index(ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedDisplaySettings_display_device_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @IMB_colormanagement_display_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BLI_strncpy(ptr noundef %4, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %9

9:                                                ; preds = %2, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedViewSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorManagedViewSettings_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @ColorManagedViewSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedViewSettings_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @ColorManagedViewSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedViewSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedViewSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedViewSettings_look_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 2
  %5 = tail call i32 @IMB_colormanagement_look_get_named_index(ptr noundef nonnull %4) #13
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedViewSettings_look_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @IMB_colormanagement_look_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 2
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %10

10:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedViewSettings_view_transform_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 3
  %5 = tail call i32 @IMB_colormanagement_view_get_named_index(ptr noundef nonnull %4) #13
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedViewSettings_view_transform_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @IMB_colormanagement_view_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 3
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %10

10:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorManagedViewSettings_exposure_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 8, !tbaa !126
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorManagedViewSettings_exposure_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -1.000000e+01
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float -1.000000e+01, float %7
  %9 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorManagedViewSettings_gamma_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !128
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorManagedViewSettings_gamma_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !128
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedViewSettings_curve_mapping_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorManagedViewSettings_use_curve_mapping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load i32, ptr %3, align 8, !tbaa !130
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedViewSettings_use_curve_mapping_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr %4, align 8, !tbaa !130
  br i1 %5, label %14, label %7

7:                                                ; preds = %2
  %8 = or i32 %6, 1
  store i32 %8, ptr %4, align 8, !tbaa !130
  %9 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = tail call ptr @curvemapping_add(i32 noundef 4, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  store ptr %13, ptr %9, align 8, !tbaa !129
  br label %16

14:                                               ; preds = %2
  %15 = and i32 %6, -2
  store i32 %15, ptr %4, align 8, !tbaa !130
  br label %16

16:                                               ; preds = %7, %12, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedInputColorspaceSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorManagedInputColorspaceSettings_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @ColorManagedInputColorspaceSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedInputColorspaceSettings_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @ColorManagedInputColorspaceSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedInputColorspaceSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedInputColorspaceSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedInputColorspaceSettings_name_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call i32 @IMB_colormanagement_colorspace_get_named_index(ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedInputColorspaceSettings_name_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @IMB_colormanagement_colorspace_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !131
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BLI_strncpy(ptr noundef %4, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %12

12:                                               ; preds = %2, %7, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedSequencerColorspaceSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorManagedSequencerColorspaceSettings_rna_properties, ptr %4, align 8, !tbaa !39
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
define internal void @ColorManagedSequencerColorspaceSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedSequencerColorspaceSettings_rna_properties_next(ptr noundef %0) #0 {
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
define dso_local void @ColorManagedSequencerColorspaceSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedSequencerColorspaceSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedSequencerColorspaceSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorManagedSequencerColorspaceSettings_name_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call i32 @IMB_colormanagement_colorspace_get_named_index(ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorManagedSequencerColorspaceSettings_name_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @IMB_colormanagement_colorspace_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !131
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BLI_strncpy(ptr noundef %4, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %12

12:                                               ; preds = %2, %7, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @CurveMap_evaluate(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.166) #13
  br label %10

8:                                                ; preds = %3
  %9 = tail call float @curvemap_evaluateF(ptr noundef %0, float noundef %2) #13
  br label %10

10:                                               ; preds = %7, %8
  %11 = phi float [ %9, %8 ], [ 0.000000e+00, %7 ]
  ret float %11
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMap_evaluate_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.CurveMap, ptr %6, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.166) #13
  br label %15

12:                                               ; preds = %4
  %13 = load float, ptr %7, align 4, !tbaa !50
  %14 = tail call float @curvemap_evaluateF(ptr noundef %6, float noundef %13) #13
  br label %15

15:                                               ; preds = %11, %12
  %16 = phi float [ %14, %12 ], [ 0.000000e+00, %11 ]
  %17 = getelementptr inbounds i8, ptr %7, i64 4
  store float %16, ptr %17, align 4, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CurveMapPoints_new(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @curvemap_insert(ptr noundef %0, float noundef %1, float noundef %2) #13
  ret ptr %4
}

declare ptr @curvemap_insert(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoints_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = getelementptr inbounds i8, ptr %7, i64 8
  %12 = tail call ptr @curvemap_insert(ptr noundef %6, float noundef %8, float noundef %10) #13
  store ptr %12, ptr %11, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoints_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call zeroext i8 @curvemap_remove_point(ptr noundef %0, ptr noundef %5) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.167) #13
  br label %10

9:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %10

10:                                               ; preds = %8, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapPoints_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = tail call zeroext i8 @curvemap_remove_point(ptr noundef %6, ptr noundef %10) #13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.167) #13
  br label %15

14:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %15

15:                                               ; preds = %13, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_update(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @curvemapping_changed_all(ptr noundef %0) #13
  ret void
}

declare void @curvemapping_changed_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_update_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  tail call void @curvemapping_changed_all(ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_initialize(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @curvemapping_initialize(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveMapping_initialize_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  tail call void @curvemapping_initialize(ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRamp_evaluate(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i8 @do_colorband(ptr noundef %0, float noundef %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRamp_evaluate_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call zeroext i8 @do_colorband(ptr noundef %6, float noundef %8, ptr noundef nonnull %9) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ColorRampElements_new(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @colorband_element_add(ptr noundef %0, float noundef %2) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.168, i32 noundef 32) #13
  br label %7

7:                                                ; preds = %3, %6
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElements_new_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = tail call ptr @colorband_element_add(ptr noundef %6, float noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.168, i32 noundef 32) #13
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds i8, ptr %7, i64 4
  store ptr %9, ptr %13, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElements_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = trunc i64 %10 to i32
  %12 = tail call i32 @colorband_element_remove(ptr noundef %0, i32 noundef %11) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.169) #13
  br label %16

15:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %16

16:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorRampElements_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.ColorBand, ptr %6, i64 0, i32 6
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 24
  %16 = trunc i64 %15 to i32
  %17 = tail call i32 @colorband_element_remove(ptr noundef %6, i32 noundef %16) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.169) #13
  br label %21

20:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %21

21:                                               ; preds = %19, %20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_CurveMapping_curves_length(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  br label %4

4:                                                ; preds = %1, %9
  %5 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 6, i64 %5, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %14, label %4, !llvm.loop !84

12:                                               ; preds = %4
  %13 = trunc i64 %5 to i32
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i32 [ %13, %12 ], [ 4, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @rna_ColorRamp_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !136
  switch i16 %8, label %26 [
    i16 16717, label %22
    i16 21582, label %9
    i16 17748, label %21
    i16 21324, label %24
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9, %18
  %14 = phi ptr [ %19, %18 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 4, !tbaa !137
  switch i16 %16, label %18 [
    i16 104, label %17
    i16 205, label %17
    i16 408, label %17
  ]

17:                                               ; preds = %13, %13, %13
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef nonnull %4) #13
  br label %18

18:                                               ; preds = %13, %17
  %19 = load ptr, ptr %14, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %13, !llvm.loop !140

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %6, %21
  %23 = phi i32 [ 117440512, %21 ], [ 102694912, %6 ]
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 0) #13
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i32 [ 385875968, %6 ], [ %23, %22 ]
  tail call void @WM_main_add_notifier(i32 noundef %25, ptr noundef nonnull %4) #13
  br label %26

26:                                               ; preds = %18, %24, %9, %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorRampElement_path(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !135
  %6 = icmp eq ptr %5, null
  br i1 %6, label %102, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !136
  switch i16 %9, label %89 [
    i16 16717, label %10
    i16 21582, label %41
    i16 21324, label %66
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 92
  %12 = load ptr, ptr %11, align 8, !tbaa !141
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRamp, ptr noundef nonnull %12, ptr noundef nonnull %2) #13
  %15 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  store ptr %15, ptr %3, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %0) #13
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2)
  %22 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %21, i32 noundef %18) #13
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %23(ptr noundef %21) #13
  br label %24

24:                                               ; preds = %14, %20, %17, %10
  %25 = phi ptr [ %22, %20 ], [ null, %17 ], [ null, %14 ], [ null, %10 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %102

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 93
  %29 = load ptr, ptr %28, align 8, !tbaa !146
  %30 = icmp eq ptr %29, null
  br i1 %30, label %102, label %31

31:                                               ; preds = %27
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRamp, ptr noundef nonnull %29, ptr noundef nonnull %2) #13
  %32 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  store ptr %32, ptr %3, align 8, !tbaa !35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %102, label %34

34:                                               ; preds = %31
  %35 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %32, ptr noundef nonnull %0) #13
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %102, label %37

37:                                               ; preds = %34
  %38 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2)
  %39 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %38, i32 noundef %35) #13
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %40(ptr noundef %38) #13
  br label %102

41:                                               ; preds = %7
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = icmp eq ptr %43, null
  br i1 %44, label %102, label %45

45:                                               ; preds = %41, %62
  %46 = phi ptr [ %64, %62 ], [ %43, %41 ]
  %47 = phi ptr [ %63, %62 ], [ null, %41 ]
  %48 = getelementptr inbounds %struct.bNode, ptr %46, i64 0, i32 8
  %49 = load i16, ptr %48, align 4, !tbaa !137
  switch i16 %49, label %62 [
    i16 104, label %50
    i16 205, label %50
    i16 408, label %50
  ]

50:                                               ; preds = %45, %45, %45
  %51 = getelementptr inbounds %struct.bNode, ptr %46, i64 0, i32 21
  %52 = load ptr, ptr %51, align 8, !tbaa !147
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %52, ptr noundef nonnull %2) #13
  %53 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  store ptr %53, ptr %3, align 8, !tbaa !35
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %53, ptr noundef nonnull %0) #13
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2)
  %60 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %59, i32 noundef %56) #13
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %61(ptr noundef %59) #13
  br label %62

62:                                               ; preds = %45, %55, %58, %50
  %63 = phi ptr [ %60, %58 ], [ %47, %55 ], [ %47, %50 ], [ %47, %45 ]
  %64 = load ptr, ptr %46, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %102, label %45, !llvm.loop !148

66:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @BKE_linestyle_modifier_list_color_ramps(ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  %67 = load ptr, ptr %4, align 8, !tbaa !35
  %68 = icmp eq ptr %67, null
  br i1 %68, label %87, label %69

69:                                               ; preds = %66, %83
  %70 = phi ptr [ %85, %83 ], [ %67, %66 ]
  %71 = phi ptr [ %84, %83 ], [ null, %66 ]
  %72 = getelementptr inbounds %struct.LinkData, ptr %70, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !149
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %73, ptr noundef nonnull %2) #13
  %74 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  store ptr %74, ptr %3, align 8, !tbaa !35
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %74, ptr noundef nonnull %0) #13
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2)
  %81 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %80, i32 noundef %77) #13
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %82(ptr noundef %80) #13
  br label %83

83:                                               ; preds = %69, %79, %76
  %84 = phi ptr [ %81, %79 ], [ %71, %76 ], [ %71, %69 ]
  %85 = load ptr, ptr %70, align 8, !tbaa !35
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %69, !llvm.loop !151

87:                                               ; preds = %83, %66
  %88 = phi ptr [ null, %66 ], [ %84, %83 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %102

89:                                               ; preds = %7
  call void @RNA_id_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull %2) #13
  %90 = call zeroext i8 @RNA_path_resolve(ptr noundef nonnull %2, ptr noundef nonnull @.str.179, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  store ptr %93, ptr %3, align 8, !tbaa !35
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %93, ptr noundef nonnull %0) #13
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2)
  %100 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %99, i32 noundef %96) #13
  %101 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %101(ptr noundef %99) #13
  br label %102

102:                                              ; preds = %62, %41, %87, %92, %98, %95, %89, %31, %37, %34, %27, %24, %1
  %103 = phi ptr [ null, %1 ], [ %100, %98 ], [ null, %95 ], [ null, %92 ], [ null, %89 ], [ %88, %87 ], [ %25, %24 ], [ %39, %37 ], [ null, %34 ], [ null, %31 ], [ null, %27 ], [ null, %41 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  ret ptr %103
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorRamp_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !135
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !136
  switch i16 %7, label %52 [
    i16 16717, label %8
    i16 21582, label %22
    i16 21324, label %48
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 92
  %12 = load ptr, ptr %11, align 8, !tbaa !141
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.201) #13
  br label %56

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 93
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = icmp eq ptr %10, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.202) #13
  br label %56

22:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  br label %28

28:                                               ; preds = %26, %42
  %29 = phi ptr [ %24, %26 ], [ %44, %42 ]
  %30 = phi ptr [ null, %26 ], [ %43, %42 ]
  %31 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 8
  %32 = load i16, ptr %31, align 4, !tbaa !137
  switch i16 %32, label %42 [
    i16 104, label %33
    i16 205, label %33
    i16 408, label %33
  ]

33:                                               ; preds = %28, %28, %28
  %34 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 21
  %35 = load ptr, ptr %34, align 8, !tbaa !147
  %36 = load ptr, ptr %27, align 8, !tbaa !45
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  call void @RNA_pointer_create(ptr noundef nonnull %3, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %29, ptr noundef nonnull %2) #13
  %39 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %2) #13
  %40 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.203, ptr noundef %39) #13
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %41(ptr noundef %39) #13
  br label %42

42:                                               ; preds = %28, %38, %33
  %43 = phi ptr [ %40, %38 ], [ %30, %33 ], [ %30, %28 ]
  %44 = load ptr, ptr %29, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %28, !llvm.loop !152

46:                                               ; preds = %42, %22
  %47 = phi ptr [ null, %22 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %56

48:                                               ; preds = %5
  %49 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = tail call ptr @BKE_linestyle_path_to_color_ramp(ptr noundef nonnull %3, ptr noundef %50) #13
  br label %56

52:                                               ; preds = %5
  %53 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.179) #13
  br label %56

54:                                               ; preds = %1
  %55 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.179) #13
  br label %56

56:                                               ; preds = %14, %20, %16, %52, %46, %48, %54
  %57 = phi ptr [ %55, %54 ], [ %53, %52 ], [ %47, %46 ], [ %15, %14 ], [ %21, %20 ], [ null, %16 ], [ %51, %48 ]
  ret ptr %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_Scopes_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #11 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  store i32 0, ptr %5, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_ColorManagedDisplaySettings_display_device_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !136
  %9 = icmp eq i16 %8, 17235
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 45
  %12 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 44
  tail call void @IMB_colormanagement_validate_settings(ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #13
  br label %13

13:                                               ; preds = %6, %10, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorManagedDisplaySettings_display_device_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !154
  call void @IMB_colormanagement_display_items_add(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i8 1, ptr %3, align 1, !tbaa !131
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorManagedDisplaySettings_path(ptr nocapture readnone %0) #0 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.222) #13
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal void @rna_ColorManagement_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !136
  %9 = icmp eq i16 %8, 17235
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #13
  br label %11

11:                                               ; preds = %6, %10, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorManagedViewSettings_look_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !154
  call void @IMB_colormanagement_look_items_add(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i8 1, ptr %3, align 1, !tbaa !131
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorManagedViewSettings_view_transform_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !154
  call void @IMB_colormanagement_view_items_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i8 1, ptr %3, align 1, !tbaa !131
  %9 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorManagedViewSettings_path(ptr nocapture readnone %0) #0 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.227) #13
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal void @rna_ColorManagedColorspaceSettings_reload_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.SeqIterator, align 8
  %6 = load ptr, ptr %2, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !136
  switch i16 %8, label %75 [
    i16 19785, label %9
    i16 17229, label %10
    i16 17235, label %11
  ]

9:                                                ; preds = %3
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #13
  tail call void @BKE_image_signal(ptr noundef %6, ptr noundef null, i32 noundef 7) #13
  tail call void @WM_main_add_notifier(i32 noundef 171114496, ptr noundef %6) #13
  tail call void @WM_main_add_notifier(i32 noundef 167772161, ptr noundef %6) #13
  br label %75

10:                                               ; preds = %3
  tail call void @BKE_movieclip_reload(ptr noundef %6) #13
  tail call void @BKE_sequencer_cache_cleanup() #13
  tail call void @BKE_sequencer_preprocessed_cache_cleanup() #13
  tail call void @WM_main_add_notifier(i32 noundef 338886656, ptr noundef %6) #13
  tail call void @WM_main_add_notifier(i32 noundef 335544321, ptr noundef %6) #13
  br label %75

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !155
  %14 = icmp eq ptr %13, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 46
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %13, ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  %21 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !173
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !175
  %27 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 24
  %28 = load ptr, ptr %27, align 8, !tbaa !176
  %29 = icmp ne ptr %28, null
  %30 = getelementptr inbounds %struct.Strip, ptr %28, i64 0, i32 12
  %31 = icmp eq ptr %30, %17
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %45, label %41

33:                                               ; preds = %41
  %34 = load ptr, ptr %25, align 8, !tbaa !175
  %35 = getelementptr inbounds %struct.Sequence, ptr %34, i64 0, i32 24
  %36 = load ptr, ptr %35, align 8, !tbaa !176
  %37 = icmp ne ptr %36, null
  %38 = getelementptr inbounds %struct.Strip, ptr %36, i64 0, i32 12
  %39 = icmp eq ptr %38, %17
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %45, label %41, !llvm.loop !178

41:                                               ; preds = %24, %33
  %42 = phi ptr [ %34, %33 ], [ %26, %24 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #13
  %43 = load i32, ptr %21, align 8, !tbaa !173
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %33, !llvm.loop !178

45:                                               ; preds = %33, %41, %24, %20
  %46 = phi i1 [ %23, %20 ], [ %23, %24 ], [ %44, %41 ], [ %44, %33 ]
  %47 = phi ptr [ undef, %20 ], [ %26, %24 ], [ %42, %41 ], [ %34, %33 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %48

48:                                               ; preds = %45, %15
  %49 = phi ptr [ %47, %45 ], [ undef, %15 ]
  %50 = phi i1 [ %46, %45 ], [ true, %15 ]
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Sequence, ptr %49, i64 0, i32 30
  %53 = load ptr, ptr %52, align 8, !tbaa !179
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  call void @IMB_free_anim(ptr noundef nonnull %53) #13
  store ptr null, ptr %52, align 8, !tbaa !179
  br label %56

56:                                               ; preds = %55, %51
  call void @BKE_sequence_invalidate_cache(ptr noundef %6, ptr noundef %49) #13
  call void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef %49) #13
  br label %74

57:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %58 = load ptr, ptr %12, align 8, !tbaa !155
  call void @BKE_sequence_iterator_begin(ptr noundef %58, ptr noundef nonnull %5, i8 noundef zeroext 0) #13
  %59 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !173
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  br label %64

64:                                               ; preds = %62, %70
  %65 = load ptr, ptr %63, align 8, !tbaa !175
  %66 = getelementptr inbounds %struct.Sequence, ptr %65, i64 0, i32 30
  %67 = load ptr, ptr %66, align 8, !tbaa !179
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call void @IMB_free_anim(ptr noundef nonnull %67) #13
  store ptr null, ptr %66, align 8, !tbaa !179
  br label %70

70:                                               ; preds = %64, %69
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #13
  %71 = load i32, ptr %59, align 8, !tbaa !173
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %64, !llvm.loop !180

73:                                               ; preds = %70, %57
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  call void @BKE_sequencer_cache_cleanup() #13
  call void @BKE_sequencer_preprocessed_cache_cleanup() #13
  br label %74

74:                                               ; preds = %73, %56
  call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #13
  br label %75

75:                                               ; preds = %11, %74, %3, %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorManagedColorspaceSettings_colorspace_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !154
  call void @IMB_colormanagement_colorspace_items_add(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i8 1, ptr %3, align 1, !tbaa !131
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorManagedInputColorspaceSettings_path(ptr nocapture readnone %0) #0 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.229) #13
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ColorManagedSequencerColorspaceSettings_path(ptr nocapture readnone %0) #0 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.230) #13
  ret ptr %2
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #3

declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @curvemapping_set_black_white(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IMB_colormanagement_display_get_named_index(ptr noundef) local_unnamed_addr #3

declare ptr @IMB_colormanagement_display_get_indexed_name(i32 noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @IMB_colormanagement_look_get_named_index(ptr noundef) local_unnamed_addr #3

declare ptr @IMB_colormanagement_look_get_indexed_name(i32 noundef) local_unnamed_addr #3

declare i32 @IMB_colormanagement_view_get_named_index(ptr noundef) local_unnamed_addr #3

declare ptr @IMB_colormanagement_view_get_indexed_name(i32 noundef) local_unnamed_addr #3

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare i32 @IMB_colormanagement_colorspace_get_named_index(ptr noundef) local_unnamed_addr #3

declare ptr @IMB_colormanagement_colorspace_get_indexed_name(i32 noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare float @curvemap_evaluateF(ptr noundef, float noundef) local_unnamed_addr #3

declare zeroext i8 @curvemap_remove_point(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare ptr @colorband_element_add(ptr noundef, float noundef) local_unnamed_addr #3

declare i32 @colorband_element_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_collection_lookup_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

declare void @BKE_linestyle_modifier_list_color_ramps(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_path_resolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

declare ptr @RNA_path_from_ID_to_struct(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_linestyle_path_to_color_ramp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_colormanagement_validate_settings(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_colormanagement_display_items_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_colormanagement_look_items_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare void @IMB_colormanagement_view_items_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_movieclip_reload(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_cache_cleanup() local_unnamed_addr #3

declare void @BKE_sequencer_preprocessed_cache_cleanup() local_unnamed_addr #3

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_invalidate_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef) local_unnamed_addr #3

declare void @IMB_colormanagement_colorspace_items_add(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }

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
!46 = !{!47, !48, i64 0}
!47 = !{!"CurveMapPoint", !48, i64 0, !48, i64 4, !49, i64 8, !49, i64 10}
!48 = !{!"float", !37, i64 0}
!49 = !{!"short", !37, i64 0}
!50 = !{!48, !48, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !52, !53}
!55 = !{!47, !49, i64 8}
!56 = !{!57, !49, i64 2}
!57 = !{!"CurveMap", !49, i64 0, !49, i64 2, !48, i64 4, !48, i64 8, !48, i64 12, !37, i64 16, !37, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !37, i64 64}
!58 = !{!57, !36, i64 32}
!59 = !{!57, !49, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !62, !"CurveMap_points_get: argument 0"}
!62 = distinct !{!62, !"CurveMap_points_get"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"CurveMap_points_get: argument 0"}
!65 = distinct !{!65, !"CurveMap_points_get"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"CurveMap_points_get: argument 0"}
!68 = distinct !{!68, !"CurveMap_points_get"}
!69 = !{!70, !36, i64 32}
!70 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!71 = distinct !{!71, !52, !53}
!72 = !{!70, !43, i64 24}
!73 = !{!70, !36, i64 0}
!74 = !{!75}
!75 = distinct !{!75, !76, !"CurveMap_points_get: argument 0"}
!76 = distinct !{!76, !"CurveMap_points_get"}
!77 = !{!78, !43, i64 0}
!78 = !{!"CurveMapping", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !79, i64 16, !79, i64 32, !37, i64 48, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372}
!79 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!80 = !{!78, !48, i64 32}
!81 = !{!78, !48, i64 36}
!82 = !{!78, !48, i64 40}
!83 = !{!78, !48, i64 44}
!84 = distinct !{!84, !52, !53}
!85 = !{!86}
!86 = distinct !{!86, !87, !"CurveMapping_curves_get: argument 0"}
!87 = distinct !{!87, !"CurveMapping_curves_get"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"CurveMapping_curves_get: argument 0"}
!90 = distinct !{!90, !"CurveMapping_curves_get"}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = !{!94, !48, i64 0}
!94 = !{!"CBData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !43, i64 20}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = !{!94, !48, i64 12}
!98 = !{!94, !48, i64 16}
!99 = !{!100, !49, i64 0}
!100 = !{!"ColorBand", !49, i64 0, !49, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!101 = !{!102}
!102 = distinct !{!102, !103, !"ColorRamp_elements_get: argument 0"}
!103 = distinct !{!103, !"ColorRamp_elements_get"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"ColorRamp_elements_get: argument 0"}
!106 = distinct !{!106, !"ColorRamp_elements_get"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"ColorRamp_elements_get: argument 0"}
!109 = distinct !{!109, !"ColorRamp_elements_get"}
!110 = distinct !{!110, !52, !53}
!111 = !{!112}
!112 = distinct !{!112, !113, !"ColorRamp_elements_get: argument 0"}
!113 = distinct !{!113, !"ColorRamp_elements_get"}
!114 = !{!100, !37, i64 4}
!115 = !{!100, !37, i64 5}
!116 = !{!100, !37, i64 6}
!117 = !{!118, !49, i64 5136}
!118 = !{!"Histogram", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !48, i64 5128, !48, i64 5132, !49, i64 5136, !49, i64 5138, !43, i64 5140, !37, i64 5144}
!119 = !{!118, !49, i64 5138}
!120 = !{!121, !43, i64 4}
!121 = !{!"Scopes", !43, i64 0, !43, i64 4, !43, i64 8, !48, i64 12, !43, i64 16, !48, i64 20, !48, i64 24, !43, i64 28, !48, i64 32, !43, i64 36, !37, i64 40, !118, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !43, i64 5256, !43, i64 5260}
!122 = !{!121, !48, i64 12}
!123 = !{!121, !43, i64 16}
!124 = !{!121, !48, i64 20}
!125 = !{!121, !48, i64 32}
!126 = !{!127, !48, i64 136}
!127 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !48, i64 136, !48, i64 140, !36, i64 144, !36, i64 152}
!128 = !{!127, !48, i64 140}
!129 = !{!127, !36, i64 144}
!130 = !{!127, !43, i64 0}
!131 = !{!37, !37, i64 0}
!132 = !{!57, !36, i64 40}
!133 = !{!134, !36, i64 0}
!134 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!135 = !{!41, !36, i64 0}
!136 = !{!49, !49, i64 0}
!137 = !{!138, !49, i64 172}
!138 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !43, i64 168, !49, i64 172, !49, i64 174, !49, i64 176, !49, i64 178, !49, i64 180, !49, i64 182, !49, i64 184, !49, i64 186, !37, i64 188, !139, i64 200, !139, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !139, i64 264, !48, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !43, i64 308, !37, i64 312, !49, i64 376, !49, i64 378, !48, i64 380, !48, i64 384, !49, i64 388, !49, i64 390, !36, i64 392, !79, i64 400, !79, i64 416, !79, i64 432, !49, i64 448, !49, i64 450, !43, i64 452, !36, i64 456}
!139 = !{!"ListBase", !36, i64 0, !36, i64 8}
!140 = distinct !{!140, !52, !53}
!141 = !{!142, !36, i64 592}
!142 = !{!"Material", !143, i64 0, !36, i64 120, !49, i64 128, !49, i64 130, !48, i64 132, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !48, i64 200, !48, i64 204, !48, i64 208, !48, i64 212, !48, i64 216, !48, i64 220, !144, i64 224, !145, i64 312, !48, i64 328, !48, i64 332, !48, i64 336, !48, i64 340, !48, i64 344, !48, i64 348, !48, i64 352, !49, i64 356, !49, i64 358, !49, i64 360, !37, i64 362, !37, i64 363, !48, i64 364, !48, i64 368, !49, i64 372, !49, i64 374, !48, i64 376, !48, i64 380, !48, i64 384, !48, i64 388, !49, i64 392, !49, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !49, i64 412, !49, i64 414, !49, i64 416, !49, i64 418, !48, i64 420, !48, i64 424, !48, i64 428, !48, i64 432, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !48, i64 456, !37, i64 460, !48, i64 524, !48, i64 528, !48, i64 532, !43, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !49, i64 544, !49, i64 546, !49, i64 548, !37, i64 550, !37, i64 551, !49, i64 552, !49, i64 554, !48, i64 556, !48, i64 560, !37, i64 564, !48, i64 580, !48, i64 584, !49, i64 588, !49, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !49, i64 612, !49, i64 614, !48, i64 616, !48, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !48, i64 800, !48, i64 804, !48, i64 808, !48, i64 812, !48, i64 816, !49, i64 820, !49, i64 822, !37, i64 824, !37, i64 836, !48, i64 848, !48, i64 852, !48, i64 856, !48, i64 860, !48, i64 864, !48, i64 868, !48, i64 872, !49, i64 876, !49, i64 878, !43, i64 880, !49, i64 884, !49, i64 886, !37, i64 888, !49, i64 904, !49, i64 906, !49, i64 908, !49, i64 910, !49, i64 912, !37, i64 914, !36, i64 920, !139, i64 928}
!143 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !49, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!144 = !{!"VolumeSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !48, i64 52, !48, i64 56, !48, i64 60, !49, i64 64, !49, i64 66, !49, i64 68, !49, i64 70, !48, i64 72, !48, i64 76, !48, i64 80, !48, i64 84}
!145 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!146 = !{!142, !36, i64 600}
!147 = !{!138, !36, i64 248}
!148 = distinct !{!148, !52, !53}
!149 = !{!150, !36, i64 16}
!150 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = !{!121, !43, i64 0}
!154 = !{!43, !43, i64 0}
!155 = !{!156, !36, i64 256}
!156 = !{!"Scene", !143, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !139, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !49, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !157, i64 280, !164, i64 4264, !139, i64 4296, !139, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !49, i64 4376, !49, i64 4378, !43, i64 4380, !139, i64 4384, !165, i64 4400, !166, i64 4416, !169, i64 4600, !36, i64 4608, !170, i64 4616, !36, i64 4640, !171, i64 4648, !171, i64 4656, !127, i64 4664, !159, i64 4824, !172, i64 4888, !36, i64 4952}
!157 = !{!"RenderData", !158, i64 0, !36, i64 248, !36, i64 256, !160, i64 264, !161, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !48, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !49, i64 432, !49, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !49, i64 456, !49, i64 458, !49, i64 460, !49, i64 462, !49, i64 464, !49, i64 466, !43, i64 468, !49, i64 472, !49, i64 474, !49, i64 476, !49, i64 478, !49, i64 480, !49, i64 482, !43, i64 484, !43, i64 488, !49, i64 492, !49, i64 494, !43, i64 496, !43, i64 500, !49, i64 504, !49, i64 506, !49, i64 508, !49, i64 510, !49, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !49, i64 528, !49, i64 530, !49, i64 532, !49, i64 534, !49, i64 536, !49, i64 538, !49, i64 540, !49, i64 542, !79, i64 544, !79, i64 560, !162, i64 576, !139, i64 592, !49, i64 608, !49, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !43, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !49, i64 648, !49, i64 650, !49, i64 652, !49, i64 654, !49, i64 656, !49, i64 658, !48, i64 660, !48, i64 664, !49, i64 668, !49, i64 670, !48, i64 672, !48, i64 676, !37, i64 680, !43, i64 1704, !49, i64 1708, !49, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !49, i64 2524, !49, i64 2526, !48, i64 2528, !48, i64 2532, !49, i64 2536, !49, i64 2538, !48, i64 2540, !49, i64 2544, !49, i64 2546, !43, i64 2548, !49, i64 2552, !49, i64 2554, !49, i64 2556, !49, i64 2558, !48, i64 2560, !48, i64 2564, !36, i64 2568, !43, i64 2576, !48, i64 2580, !37, i64 2584, !163, i64 2616, !43, i64 3976, !43, i64 3980}
!158 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !49, i64 8, !49, i64 10, !48, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !127, i64 24, !159, i64 184}
!159 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!160 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !49, i64 48, !49, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!161 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !48, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!162 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!163 = !{!"BakeData", !158, i64 0, !37, i64 248, !49, i64 1272, !49, i64 1274, !49, i64 1276, !49, i64 1278, !48, i64 1280, !48, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!164 = !{!"AudioData", !43, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !43, i64 16, !49, i64 20, !49, i64 22, !48, i64 24, !48, i64 28}
!165 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!166 = !{!"GameData", !165, i64 0, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !49, i64 32, !37, i64 34, !167, i64 40, !49, i64 64, !49, i64 66, !48, i64 68, !168, i64 72, !48, i64 128, !48, i64 132, !43, i64 136, !49, i64 140, !49, i64 142, !49, i64 144, !49, i64 146, !49, i64 148, !49, i64 150, !49, i64 152, !49, i64 154, !49, i64 156, !49, i64 158, !49, i64 160, !49, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!167 = !{!"GameDome", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !48, i64 8, !48, i64 12, !36, i64 16}
!168 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !43, i64 40, !48, i64 44, !48, i64 48, !49, i64 52, !49, i64 54}
!169 = !{!"UnitSettings", !48, i64 0, !37, i64 4, !37, i64 5, !49, i64 6}
!170 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!171 = !{!"long", !37, i64 0}
!172 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!173 = !{!174, !43, i64 24}
!174 = !{!"SeqIterator", !36, i64 0, !43, i64 8, !43, i64 12, !36, i64 16, !43, i64 24}
!175 = !{!174, !36, i64 16}
!176 = !{!177, !36, i64 168}
!177 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !49, i64 156, !49, i64 158, !43, i64 160, !43, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !48, i64 224, !48, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !139, i64 256, !36, i64 272, !36, i64 280, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !36, i64 304, !43, i64 312, !43, i64 316, !43, i64 320, !48, i64 324, !43, i64 328, !37, i64 332, !37, i64 333, !139, i64 336}
!178 = distinct !{!178, !52, !53}
!179 = !{!177, !36, i64 216}
!180 = distinct !{!180, !52, !53}
