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

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @CurveMapPoint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
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
define internal void @CurveMapPoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @CurveMapPoint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CurveMapPoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapPoint_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load float, ptr %4, align 4, !tbaa !47
  store float %5, ptr %1, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapPoint_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load float, ptr %1, align 4, !tbaa !51
  store float %5, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMapPoint_handle_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CurveMapPoint, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !52
  %6 = and i16 %5, 2
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapPoint_handle_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.CurveMapPoint, ptr %4, i64 0, i32 2
  %6 = load i16, ptr %5, align 4, !tbaa !52
  %7 = and i16 %6, -3
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMapPoint_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CurveMapPoint, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !52
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapPoint_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.CurveMapPoint, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !52
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @CurveMap_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @CurveMap_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !53 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMap_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @CurveMap_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMap_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CurveMap_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMap_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMap_extend_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !54
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMap_extend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !54
  %7 = and i16 %6, -2
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 2, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMap_points_length(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CurveMap, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr %3, align 8, !tbaa !57
  %9 = sext i16 %8 to i32
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMap_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveMap_points, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.CurveMap, ptr %5, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = load i16, ptr %5, align 8, !tbaa !57
  %10 = sext i16 %9 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 12, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #13
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @CurveMap_points_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %16

16:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @CurveMap_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !58 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapPoint, ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMap_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @CurveMap_points_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMap_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CurveMap_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #14
  call void @CurveMap_points_begin(ptr noundef nonnull %4, ptr noundef %0) #15
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
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.CurveMap_points_lookup_int, i32 noundef %1) #15
  br label %42

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !59
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
  br i1 %30, label %24, label %38, !llvm.loop !61

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !63
  %34 = mul nsw i32 %33, %1
  %35 = load ptr, ptr %10, align 8, !tbaa !64
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  store ptr %37, ptr %10, align 8, !tbaa !64
  br label %41

38:                                               ; preds = %24
  %39 = icmp eq i32 %26, 0
  %40 = select i1 %39, i1 %29, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %22, %31, %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @CurveMap_points_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %42

42:                                               ; preds = %16, %38, %41, %3
  %43 = phi i32 [ 0, %3 ], [ 1, %41 ], [ 0, %38 ], [ 0, %16 ]
  call void @CurveMap_points_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #14
  ret i32 %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @CurveMapPoints_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @CurveMapPoints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !65 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @CurveMapPoints_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CurveMapPoints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @CurveMapping_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @CurveMapping_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !66 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @CurveMapping_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CurveMapping_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveMapping_use_clip_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_use_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_CurveMapping_clip_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CurveMapping_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = load i32, ptr %4, align 8, !tbaa !67
  %7 = and i32 %6, -2
  %8 = zext i1 %5 to i32
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 8, !tbaa !67
  tail call void @curvemapping_changed(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CurveMapping_clip_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !71
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_clip_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !51
  call void @rna_CurveMapping_clipminx_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #15
  %7 = load float, ptr %3, align 4, !tbaa !51
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %4, align 4
  %11 = fcmp olt float %10, %1
  %12 = select i1 %11, float %10, float %1
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi float [ %12, %9 ], [ %7, %2 ]
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %6, i64 0, i32 5
  store float %14, ptr %15, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_CurveMapping_clipminx_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #5 !PGOFuncName !72 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  store float -1.000000e+02, ptr %1, align 4, !tbaa !51
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !73
  store float %9, ptr %2, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CurveMapping_clip_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 5, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !74
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_clip_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !51
  call void @rna_CurveMapping_clipminy_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #15
  %7 = load float, ptr %3, align 4, !tbaa !51
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %4, align 4
  %11 = fcmp olt float %10, %1
  %12 = select i1 %11, float %10, float %1
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi float [ %12, %9 ], [ %7, %2 ]
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %6, i64 0, i32 5, i32 2
  store float %14, ptr %15, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_CurveMapping_clipminy_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #5 !PGOFuncName !75 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  store float -1.000000e+02, ptr %1, align 4, !tbaa !51
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !76
  store float %9, ptr %2, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CurveMapping_clip_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 5, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_clip_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !51
  call void @rna_CurveMapping_clipmaxx_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #15
  %7 = load float, ptr %3, align 4, !tbaa !51
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %4, align 4
  %11 = fcmp olt float %10, %1
  %12 = select i1 %11, float %10, float %1
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi float [ %12, %9 ], [ %7, %2 ]
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %6, i64 0, i32 5, i32 1
  store float %14, ptr %15, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_CurveMapping_clipmaxx_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #5 !PGOFuncName !77 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5
  %9 = load float, ptr %8, align 8, !tbaa !71
  store float %9, ptr %1, align 4, !tbaa !51
  store float 1.000000e+02, ptr %2, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CurveMapping_clip_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 5, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !76
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_clip_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !51
  call void @rna_CurveMapping_clipmaxy_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #15
  %7 = load float, ptr %3, align 4, !tbaa !51
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %4, align 4
  %11 = fcmp olt float %10, %1
  %12 = select i1 %11, float %10, float %1
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi float [ %12, %9 ], [ %7, %2 ]
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %6, i64 0, i32 5, i32 3
  store float %14, ptr %15, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_CurveMapping_clipmaxy_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #5 !PGOFuncName !78 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %7, i64 0, i32 5, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !74
  store float %9, ptr %1, align 4, !tbaa !51
  store float 1.000000e+02, ptr %2, align 4, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_curves_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveMapping_curves, ptr %4, align 8, !tbaa !39
  tail call fastcc void @rna_CurveMapping_curves_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @CurveMapping_curves_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CurveMapping_curves_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 6
  %6 = tail call i32 @rna_CurveMapping_curves_length(ptr noundef %1) #15
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 72, i32 noundef %6, i8 noundef zeroext 0, ptr noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @CurveMapping_curves_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !80 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMap, ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_curves_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @CurveMapping_curves_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_curves_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_black_level_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !51
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !81

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_black_level_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_CurveMapping_black_level_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CurveMapping_black_level_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load float, ptr %1, align 4, !tbaa !51
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 7
  store float %5, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 7, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 7, i64 2
  store float %11, ptr %12, align 8, !tbaa !51
  tail call void @curvemapping_set_black_white(ptr noundef %4, ptr noundef null, ptr noundef null) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveMapping_white_level_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 8
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !51
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !83

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_white_level_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_CurveMapping_white_level_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CurveMapping_white_level_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load float, ptr %1, align 4, !tbaa !51
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 8
  store float %5, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 8, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.CurveMapping, ptr %4, i64 0, i32 8, i64 2
  store float %11, ptr %12, align 4, !tbaa !51
  tail call void @curvemapping_set_black_white(ptr noundef %4, ptr noundef null, ptr noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ColorRampElement_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ColorRampElement_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !85 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElement_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ColorRampElement_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElement_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorRampElement_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElement_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRampElement_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !86
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %5, !llvm.loop !88

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRampElement_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %2, %13
  %6 = phi i64 [ 0, %2 ], [ %16, %13 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !51
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
  store float %14, ptr %15, align 4, !tbaa !86
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %5, !llvm.loop !89

18:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorRampElement_alpha_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CBData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !90
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRampElement_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.CBData, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorRampElement_position_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.CBData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !91
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRampElement_position_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.CBData, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !91
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ColorRamp_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ColorRamp_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !92 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRamp_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ColorRamp_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRamp_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorRamp_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRamp_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorRamp_elements_length(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 4, !tbaa !93
  %5 = sext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRamp_elements_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ColorRamp_elements, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.ColorBand, ptr %5, i64 0, i32 6
  %8 = load i16, ptr %5, align 4, !tbaa !93
  %9 = sext i16 %8 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 24, i32 noundef %9, i8 noundef zeroext 0, ptr noundef null) #13
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ColorRamp_elements_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ColorRamp_elements_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !95 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorRampElement, ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRamp_elements_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ColorRamp_elements_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRamp_elements_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ColorRamp_elements_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #14
  call void @ColorRamp_elements_begin(ptr noundef nonnull %4, ptr noundef %0) #15
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
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.ColorRamp_elements_lookup_int, i32 noundef %1) #15
  br label %42

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !59
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
  br i1 %30, label %24, label %38, !llvm.loop !96

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !63
  %34 = mul nsw i32 %33, %1
  %35 = load ptr, ptr %10, align 8, !tbaa !64
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  store ptr %37, ptr %10, align 8, !tbaa !64
  br label %41

38:                                               ; preds = %24
  %39 = icmp eq i32 %26, 0
  %40 = select i1 %39, i1 %29, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %22, %31, %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @ColorRamp_elements_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %42

42:                                               ; preds = %16, %38, %41, %3
  %43 = phi i32 [ 0, %3 ], [ 1, %41 ], [ 0, %38 ], [ 0, %16 ]
  call void @ColorRamp_elements_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #14
  ret i32 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorRamp_interpolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !97
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRamp_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.ColorBand, ptr %4, i64 0, i32 2
  store i8 %5, ptr %6, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorRamp_hue_interpolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !98
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRamp_hue_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.ColorBand, ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 1, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorRamp_color_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 2, !tbaa !99
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorRamp_color_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.ColorBand, ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 2, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ColorRampElements_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ColorRampElements_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !100 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElements_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ColorRampElements_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElements_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorRampElements_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElements_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @Histogram_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Histogram_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !101 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Histogram_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @Histogram_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Histogram_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Histogram_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Histogram_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Histogram_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Histogram, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 4, !tbaa !102
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Histogram_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Histogram, ptr %4, i64 0, i32 9
  store i16 %5, ptr %6, align 4, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Histogram_show_line_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Histogram, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !104
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Histogram_show_line_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Histogram, ptr %4, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !104
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @Scopes_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Scopes_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !105 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Scopes_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @Scopes_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Scopes_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Scopes_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Scopes_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Scopes_use_full_resolution_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !106
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_use_full_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Scopes_accuracy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !108
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_accuracy_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Scopes_histogram_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 11
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Histogram, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Scopes_waveform_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !109
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_waveform_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 4
  store i32 %1, ptr %5, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Scopes_waveform_alpha_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !110
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_waveform_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Scopes_vectorscope_alpha_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Scopes, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !111
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Scopes_vectorscope_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Scopes, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ColorManagedDisplaySettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ColorManagedDisplaySettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !112 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedDisplaySettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ColorManagedDisplaySettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedDisplaySettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedDisplaySettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedDisplaySettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedDisplaySettings_display_device_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ColorManagedDisplaySettings_display_device_get(ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ColorManagedDisplaySettings_display_device_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call i32 @IMB_colormanagement_display_get_named_index(ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedDisplaySettings_display_device_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_ColorManagedDisplaySettings_display_device_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ColorManagedDisplaySettings_display_device_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !114 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call ptr @IMB_colormanagement_display_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BLI_strncpy(ptr noundef %4, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ColorManagedViewSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ColorManagedViewSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !115 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedViewSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ColorManagedViewSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedViewSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedViewSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedViewSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedViewSettings_look_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ColorManagedViewSettings_look_get(ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ColorManagedViewSettings_look_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 2
  %5 = tail call i32 @IMB_colormanagement_look_get_named_index(ptr noundef nonnull %4) #13
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedViewSettings_look_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_ColorManagedViewSettings_look_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ColorManagedViewSettings_look_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call ptr @IMB_colormanagement_look_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 2
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedViewSettings_view_transform_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ColorManagedViewSettings_view_transform_get(ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ColorManagedViewSettings_view_transform_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 3
  %5 = tail call i32 @IMB_colormanagement_view_get_named_index(ptr noundef nonnull %4) #13
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedViewSettings_view_transform_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_ColorManagedViewSettings_view_transform_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ColorManagedViewSettings_view_transform_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call ptr @IMB_colormanagement_view_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 3
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorManagedViewSettings_exposure_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 8, !tbaa !120
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorManagedViewSettings_exposure_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, -1.000000e+01
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float -1.000000e+01, float %7
  %9 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorManagedViewSettings_gamma_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorManagedViewSettings_gamma_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedViewSettings_curve_mapping_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ColorManagedViewSettings_use_curve_mapping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i32, ptr %3, align 8, !tbaa !124
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedViewSettings_use_curve_mapping_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_ColorManagedViewSettings_use_curves_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ColorManagedViewSettings_use_curves_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr %4, align 8, !tbaa !124
  br i1 %5, label %14, label %7

7:                                                ; preds = %2
  %8 = or i32 %6, 1
  store i32 %8, ptr %4, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %4, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = tail call ptr @curvemapping_add(i32 noundef 4, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  store ptr %13, ptr %9, align 8, !tbaa !123
  br label %16

14:                                               ; preds = %2
  %15 = and i32 %6, -2
  store i32 %15, ptr %4, align 8, !tbaa !124
  br label %16

16:                                               ; preds = %7, %12, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ColorManagedInputColorspaceSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ColorManagedInputColorspaceSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !126 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedInputColorspaceSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ColorManagedInputColorspaceSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedInputColorspaceSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedInputColorspaceSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedInputColorspaceSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedInputColorspaceSettings_name_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ColorManagedColorspaceSettings_colorspace_get(ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ColorManagedColorspaceSettings_colorspace_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !127 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call i32 @IMB_colormanagement_colorspace_get_named_index(ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedInputColorspaceSettings_name_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_ColorManagedColorspaceSettings_colorspace_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ColorManagedColorspaceSettings_colorspace_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !128 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call ptr @IMB_colormanagement_colorspace_get_indexed_name(i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BLI_strncpy(ptr noundef %4, ptr noundef nonnull %5, i64 noundef 64) #13
  br label %12

12:                                               ; preds = %10, %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ColorManagedSequencerColorspaceSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ColorManagedSequencerColorspaceSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !130 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedSequencerColorspaceSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ColorManagedSequencerColorspaceSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedSequencerColorspaceSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedSequencerColorspaceSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedSequencerColorspaceSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorManagedSequencerColorspaceSettings_name_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ColorManagedColorspaceSettings_colorspace_get(ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorManagedSequencerColorspaceSettings_name_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_ColorManagedColorspaceSettings_colorspace_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @CurveMap_evaluate(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc float @rna_CurveMap_evaluateF(ptr noundef %0, ptr noundef %1, float noundef %2) #15
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rna_CurveMap_evaluateF(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !131 {
  %4 = getelementptr inbounds %struct.CurveMap, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.166) #13
  br label %10

8:                                                ; preds = %3
  %9 = tail call float @curvemap_evaluateF(ptr noundef nonnull %0, float noundef %2) #13
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi float [ %9, %8 ], [ 0.000000e+00, %7 ]
  ret float %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMap_evaluate_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call fastcc float @rna_CurveMap_evaluateF(ptr noundef %6, ptr noundef %1, float noundef %8) #15
  store float %10, ptr %9, align 4, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CurveMapPoints_new(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @curvemap_insert(ptr noundef %0, float noundef %1, float noundef %2) #13
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @curvemap_insert(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoints_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = getelementptr inbounds i8, ptr %7, i64 8
  %12 = tail call ptr @curvemap_insert(ptr noundef %6, float noundef %8, float noundef %10) #13
  store ptr %12, ptr %11, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoints_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_CurveMap_remove_point(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CurveMap_remove_point(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !135 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call zeroext i8 @curvemap_remove_point(ptr noundef %0, ptr noundef %5) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.167) #13
  br label %10

9:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapPoints_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_CurveMap_remove_point(ptr noundef %6, ptr noundef %1, ptr noundef %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_update(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @curvemapping_changed_all(ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare void @curvemapping_changed_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_update_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @curvemapping_changed_all(ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_initialize(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @rna_CurveMap_initialize(ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CurveMap_initialize(ptr noundef %0) unnamed_addr #0 !PGOFuncName !136 {
  tail call void @curvemapping_initialize(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CurveMapping_initialize_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call fastcc void @rna_CurveMap_initialize(ptr noundef %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRamp_evaluate(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_ColorRamp_eval(ptr noundef %0, float noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ColorRamp_eval(ptr noundef %0, float noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !137 {
  %4 = tail call zeroext i8 @do_colorband(ptr noundef %0, float noundef %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRamp_evaluate_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  tail call fastcc void @rna_ColorRamp_eval(ptr noundef %6, float noundef %8, ptr noundef nonnull %9) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ColorRampElements_new(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_ColorRampElement_new(ptr noundef %0, ptr noundef %1, float noundef %2) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_ColorRampElement_new(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !138 {
  %4 = tail call ptr @colorband_element_add(ptr noundef %0, float noundef %2) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.168, i32 noundef 32) #13
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElements_new_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call fastcc ptr @rna_ColorRampElement_new(ptr noundef %6, ptr noundef %1, float noundef %8) #15
  store ptr %10, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElements_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_ColorRampElement_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ColorRampElement_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !139 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
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

16:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorRampElements_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !133
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_ColorRampElement_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_CurveMapping_curves_length(ptr nocapture noundef readonly %0) #12 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  br label %4

4:                                                ; preds = %1, %9
  %5 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %3, i64 0, i32 6, i64 %5, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %14, label %4, !llvm.loop !141

12:                                               ; preds = %4
  %13 = trunc i64 %5 to i32
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i32 [ %13, %12 ], [ 4, %9 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ColorRamp_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !142 {
  %4 = load ptr, ptr %2, align 8, !tbaa !143
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !144
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
  %16 = load i16, ptr %15, align 4, !tbaa !145
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
  br i1 %20, label %26, label %13, !llvm.loop !148

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

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorRampElement_path(ptr noundef %0) #0 !PGOFuncName !149 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %100, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !144
  switch i16 %9, label %87 [
    i16 16717, label %10
    i16 21582, label %39
    i16 21324, label %64
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 92
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRamp, ptr noundef nonnull %12, ptr noundef nonnull %2) #13
  %15 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %0) #13
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2) #15
  %22 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %21, i32 noundef %18) #13
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %23(ptr noundef %21) #13
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %100

25:                                               ; preds = %10, %14, %17, %20
  %26 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 93
  %27 = load ptr, ptr %26, align 8, !tbaa !155
  %28 = icmp eq ptr %27, null
  br i1 %28, label %100, label %29

29:                                               ; preds = %25
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRamp, ptr noundef nonnull %27, ptr noundef nonnull %2) #13
  %30 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %100, label %32

32:                                               ; preds = %29
  %33 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %30, ptr noundef nonnull %0) #13
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %100, label %35

35:                                               ; preds = %32
  %36 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2) #15
  %37 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %36, i32 noundef %33) #13
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %38(ptr noundef %36) #13
  br label %100

39:                                               ; preds = %7
  %40 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp eq ptr %41, null
  br i1 %42, label %100, label %43

43:                                               ; preds = %39, %60
  %44 = phi ptr [ %62, %60 ], [ %41, %39 ]
  %45 = phi ptr [ %61, %60 ], [ null, %39 ]
  %46 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 8
  %47 = load i16, ptr %46, align 4, !tbaa !145
  switch i16 %47, label %60 [
    i16 104, label %48
    i16 205, label %48
    i16 408, label %48
  ]

48:                                               ; preds = %43, %43, %43
  %49 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 21
  %50 = load ptr, ptr %49, align 8, !tbaa !156
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %50, ptr noundef nonnull %2) #13
  %51 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %51, ptr noundef nonnull %0) #13
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2) #15
  %58 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %57, i32 noundef %54) #13
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %59(ptr noundef %57) #13
  br label %60

60:                                               ; preds = %43, %53, %56, %48
  %61 = phi ptr [ %58, %56 ], [ %45, %53 ], [ %45, %48 ], [ %45, %43 ]
  %62 = load ptr, ptr %44, align 8, !tbaa !35
  %63 = icmp eq ptr %62, null
  br i1 %63, label %100, label %43, !llvm.loop !157

64:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @BKE_linestyle_modifier_list_color_ramps(ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  %65 = load ptr, ptr %4, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %64, %81
  %68 = phi ptr [ %83, %81 ], [ %65, %64 ]
  %69 = phi ptr [ %82, %81 ], [ null, %64 ]
  %70 = getelementptr inbounds %struct.LinkData, ptr %68, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !158
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %71, ptr noundef nonnull %2) #13
  %72 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %72, ptr noundef nonnull %0) #13
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2) #15
  %79 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %78, i32 noundef %75) #13
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %80(ptr noundef %78) #13
  br label %81

81:                                               ; preds = %67, %77, %74
  %82 = phi ptr [ %79, %77 ], [ %69, %74 ], [ %69, %67 ]
  %83 = load ptr, ptr %68, align 8, !tbaa !35
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %67, !llvm.loop !160

85:                                               ; preds = %81, %64
  %86 = phi ptr [ null, %64 ], [ %82, %81 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %100

87:                                               ; preds = %7
  call void @RNA_id_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull %2) #13
  %88 = call zeroext i8 @RNA_path_resolve(ptr noundef nonnull %2, ptr noundef nonnull @.str.179, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #13
  store ptr %91, ptr %3, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = call i32 @RNA_property_collection_lookup_index(ptr noundef nonnull %2, ptr noundef nonnull %91, ptr noundef nonnull %0) #13
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = call ptr @rna_ColorRamp_path(ptr noundef nonnull %2) #15
  %98 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.178, ptr noundef %97, i32 noundef %94) #13
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %99(ptr noundef %97) #13
  br label %100

100:                                              ; preds = %60, %39, %85, %90, %96, %93, %87, %29, %35, %32, %25, %20, %1
  %101 = phi ptr [ null, %1 ], [ %98, %96 ], [ null, %93 ], [ null, %90 ], [ null, %87 ], [ %86, %85 ], [ %22, %20 ], [ %37, %35 ], [ null, %32 ], [ null, %29 ], [ null, %25 ], [ null, %39 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret ptr %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorRamp_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !161 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !143
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !144
  switch i16 %7, label %48 [
    i16 16717, label %8
    i16 21582, label %22
    i16 21324, label %50
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 92
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.201) #13
  br label %57

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 93
  %18 = load ptr, ptr %17, align 8, !tbaa !155
  %19 = icmp eq ptr %10, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.202) #13
  br label %57

22:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
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
  %32 = load i16, ptr %31, align 4, !tbaa !145
  switch i16 %32, label %42 [
    i16 104, label %33
    i16 205, label %33
    i16 408, label %33
  ]

33:                                               ; preds = %28, %28, %28
  %34 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 21
  %35 = load ptr, ptr %34, align 8, !tbaa !156
  %36 = load ptr, ptr %27, align 8, !tbaa !46
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
  br i1 %45, label %46, label %28, !llvm.loop !162

46:                                               ; preds = %42, %22
  %47 = phi ptr [ null, %22 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %57

48:                                               ; preds = %5
  %49 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.179) #13
  br label %57

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = tail call ptr @BKE_linestyle_path_to_color_ramp(ptr noundef nonnull %3, ptr noundef %52) #13
  %54 = freeze ptr %53
  br label %57

55:                                               ; preds = %1
  %56 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.179) #13
  br label %57

57:                                               ; preds = %50, %46, %48, %16, %20, %14, %55
  %58 = phi ptr [ %56, %55 ], [ null, %16 ], [ %21, %20 ], [ %15, %14 ], [ %47, %46 ], [ %49, %48 ], [ %54, %50 ]
  ret ptr %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_Scopes_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #6 !PGOFuncName !163 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  store i32 0, ptr %5, align 8, !tbaa !164
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ColorManagedDisplaySettings_display_device_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !165 {
  %4 = load ptr, ptr %2, align 8, !tbaa !143
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !144
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

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorManagedDisplaySettings_display_device_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !166 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !tbaa !167
  call void @IMB_colormanagement_display_items_add(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i8 1, ptr %3, align 1, !tbaa !129
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorManagedDisplaySettings_path(ptr nocapture readnone %0) #0 !PGOFuncName !168 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.222) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ColorManagement_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !169 {
  %4 = load ptr, ptr %2, align 8, !tbaa !143
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !144
  %9 = icmp eq i16 %8, 17235
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #13
  br label %11

11:                                               ; preds = %6, %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorManagedViewSettings_look_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !170 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !tbaa !167
  call void @IMB_colormanagement_look_items_add(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i8 1, ptr %3, align 1, !tbaa !129
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorManagedViewSettings_view_transform_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !171 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !tbaa !167
  call void @IMB_colormanagement_view_items_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i8 1, ptr %3, align 1, !tbaa !129
  %9 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorManagedViewSettings_path(ptr nocapture readnone %0) #0 !PGOFuncName !172 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.227) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ColorManagedColorspaceSettings_reload_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !173 {
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.SeqIterator, align 8
  %6 = load ptr, ptr %2, align 8, !tbaa !143
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !144
  switch i16 %8, label %63 [
    i16 19785, label %9
    i16 17229, label %10
    i16 17235, label %11
  ]

9:                                                ; preds = %3
  tail call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 0) #13
  tail call void @BKE_image_signal(ptr noundef nonnull %6, ptr noundef null, i32 noundef 7) #13
  tail call void @WM_main_add_notifier(i32 noundef 171114496, ptr noundef nonnull %6) #13
  tail call void @WM_main_add_notifier(i32 noundef 167772161, ptr noundef nonnull %6) #13
  br label %63

10:                                               ; preds = %3
  tail call void @BKE_movieclip_reload(ptr noundef nonnull %6) #13
  tail call void @BKE_sequencer_cache_cleanup() #13
  tail call void @BKE_sequencer_preprocessed_cache_cleanup() #13
  tail call void @WM_main_add_notifier(i32 noundef 338886656, ptr noundef nonnull %6) #13
  tail call void @WM_main_add_notifier(i32 noundef 335544321, ptr noundef nonnull %6) #13
  br label %63

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !174
  %14 = icmp eq ptr %13, null
  br i1 %14, label %63, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 46
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %13, ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  %21 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %28

26:                                               ; preds = %36, %20
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  %27 = load ptr, ptr %12, align 8, !tbaa !174
  br label %45

28:                                               ; preds = %24, %36
  %29 = load ptr, ptr %25, align 8, !tbaa !194
  %30 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 24
  %31 = load ptr, ptr %30, align 8, !tbaa !195
  %32 = icmp ne ptr %31, null
  %33 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 12
  %34 = icmp eq ptr %33, %17
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #13
  %37 = load i32, ptr %21, align 8, !tbaa !192
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %26, label %28, !llvm.loop !197

39:                                               ; preds = %28
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  %40 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 30
  %41 = load ptr, ptr %40, align 8, !tbaa !198
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @IMB_free_anim(ptr noundef nonnull %41) #13
  store ptr null, ptr %40, align 8, !tbaa !198
  br label %44

44:                                               ; preds = %43, %39
  call void @BKE_sequence_invalidate_cache(ptr noundef %6, ptr noundef nonnull %29) #13
  call void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef nonnull %29) #13
  br label %62

45:                                               ; preds = %15, %26
  %46 = phi ptr [ %13, %15 ], [ %27, %26 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @BKE_sequence_iterator_begin(ptr noundef %46, ptr noundef nonnull %5, i8 noundef zeroext 0) #13
  %47 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !192
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  br label %52

52:                                               ; preds = %50, %58
  %53 = load ptr, ptr %51, align 8, !tbaa !194
  %54 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 30
  %55 = load ptr, ptr %54, align 8, !tbaa !198
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  call void @IMB_free_anim(ptr noundef nonnull %55) #13
  store ptr null, ptr %54, align 8, !tbaa !198
  br label %58

58:                                               ; preds = %52, %57
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #13
  %59 = load i32, ptr %47, align 8, !tbaa !192
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %52, !llvm.loop !199

61:                                               ; preds = %58, %45
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @BKE_sequencer_cache_cleanup() #13
  call void @BKE_sequencer_preprocessed_cache_cleanup() #13
  br label %62

62:                                               ; preds = %61, %44
  call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #13
  br label %63

63:                                               ; preds = %11, %62, %3, %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorManagedColorspaceSettings_colorspace_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !200 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !tbaa !167
  call void @IMB_colormanagement_colorspace_items_add(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i8 1, ptr %3, align 1, !tbaa !129
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorManagedInputColorspaceSettings_path(ptr nocapture readnone %0) #0 !PGOFuncName !201 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.229) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ColorManagedSequencerColorspaceSettings_path(ptr nocapture readnone %0) #0 !PGOFuncName !202 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.230) #13
  ret ptr %2
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_set_black_white(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IMB_colormanagement_display_get_named_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_indexed_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IMB_colormanagement_look_get_named_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_colormanagement_look_get_indexed_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IMB_colormanagement_view_get_named_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_colormanagement_view_get_indexed_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IMB_colormanagement_colorspace_get_named_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_colormanagement_colorspace_get_indexed_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare float @curvemap_evaluateF(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @curvemap_remove_point(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @colorband_element_add(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @colorband_element_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_collection_lookup_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_linestyle_modifier_list_color_ramps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_linestyle_path_to_color_ramp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_validate_settings(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_display_items_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_look_items_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_view_items_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_movieclip_reload(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_cache_cleanup() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_preprocessed_cache_cleanup() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_invalidate_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_items_add(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!45 = !{!"rna_color_gen.c:CurveMapPoint_rna_properties_get"}
!46 = !{!41, !36, i64 16}
!47 = !{!48, !49, i64 0}
!48 = !{!"CurveMapPoint", !49, i64 0, !49, i64 4, !50, i64 8, !50, i64 10}
!49 = !{!"float", !37, i64 0}
!50 = !{!"short", !37, i64 0}
!51 = !{!49, !49, i64 0}
!52 = !{!48, !50, i64 8}
!53 = !{!"rna_color_gen.c:CurveMap_rna_properties_get"}
!54 = !{!55, !50, i64 2}
!55 = !{!"CurveMap", !50, i64 0, !50, i64 2, !49, i64 4, !49, i64 8, !49, i64 12, !37, i64 16, !37, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !37, i64 64}
!56 = !{!55, !36, i64 32}
!57 = !{!55, !50, i64 0}
!58 = !{!"rna_color_gen.c:CurveMap_points_get"}
!59 = !{!60, !36, i64 32}
!60 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!60, !43, i64 24}
!64 = !{!60, !36, i64 0}
!65 = !{!"rna_color_gen.c:CurveMapPoints_rna_properties_get"}
!66 = !{!"rna_color_gen.c:CurveMapping_rna_properties_get"}
!67 = !{!68, !43, i64 0}
!68 = !{!"CurveMapping", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !69, i64 16, !69, i64 32, !37, i64 48, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372}
!69 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!70 = !{!"rna_color_gen.c:rna_CurveMapping_clip_set"}
!71 = !{!68, !49, i64 32}
!72 = !{!"rna_color_gen.c:rna_CurveMapping_clipminx_range"}
!73 = !{!68, !49, i64 36}
!74 = !{!68, !49, i64 40}
!75 = !{!"rna_color_gen.c:rna_CurveMapping_clipminy_range"}
!76 = !{!68, !49, i64 44}
!77 = !{!"rna_color_gen.c:rna_CurveMapping_clipmaxx_range"}
!78 = !{!"rna_color_gen.c:rna_CurveMapping_clipmaxy_range"}
!79 = !{!"rna_color_gen.c:rna_CurveMapping_curves_begin"}
!80 = !{!"rna_color_gen.c:CurveMapping_curves_get"}
!81 = distinct !{!81, !62}
!82 = !{!"rna_color_gen.c:rna_CurveMapping_black_level_set"}
!83 = distinct !{!83, !62}
!84 = !{!"rna_color_gen.c:rna_CurveMapping_white_level_set"}
!85 = !{!"rna_color_gen.c:ColorRampElement_rna_properties_get"}
!86 = !{!87, !49, i64 0}
!87 = !{!"CBData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !43, i64 20}
!88 = distinct !{!88, !62}
!89 = distinct !{!89, !62}
!90 = !{!87, !49, i64 12}
!91 = !{!87, !49, i64 16}
!92 = !{!"rna_color_gen.c:ColorRamp_rna_properties_get"}
!93 = !{!94, !50, i64 0}
!94 = !{!"ColorBand", !50, i64 0, !50, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!95 = !{!"rna_color_gen.c:ColorRamp_elements_get"}
!96 = distinct !{!96, !62}
!97 = !{!94, !37, i64 4}
!98 = !{!94, !37, i64 5}
!99 = !{!94, !37, i64 6}
!100 = !{!"rna_color_gen.c:ColorRampElements_rna_properties_get"}
!101 = !{!"rna_color_gen.c:Histogram_rna_properties_get"}
!102 = !{!103, !50, i64 5136}
!103 = !{!"Histogram", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !49, i64 5128, !49, i64 5132, !50, i64 5136, !50, i64 5138, !43, i64 5140, !37, i64 5144}
!104 = !{!103, !50, i64 5138}
!105 = !{!"rna_color_gen.c:Scopes_rna_properties_get"}
!106 = !{!107, !43, i64 4}
!107 = !{!"Scopes", !43, i64 0, !43, i64 4, !43, i64 8, !49, i64 12, !43, i64 16, !49, i64 20, !49, i64 24, !43, i64 28, !49, i64 32, !43, i64 36, !37, i64 40, !103, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !43, i64 5256, !43, i64 5260}
!108 = !{!107, !49, i64 12}
!109 = !{!107, !43, i64 16}
!110 = !{!107, !49, i64 20}
!111 = !{!107, !49, i64 32}
!112 = !{!"rna_color_gen.c:ColorManagedDisplaySettings_rna_properties_get"}
!113 = !{!"rna_color_gen.c:rna_ColorManagedDisplaySettings_display_device_get"}
!114 = !{!"rna_color_gen.c:rna_ColorManagedDisplaySettings_display_device_set"}
!115 = !{!"rna_color_gen.c:ColorManagedViewSettings_rna_properties_get"}
!116 = !{!"rna_color_gen.c:rna_ColorManagedViewSettings_look_get"}
!117 = !{!"rna_color_gen.c:rna_ColorManagedViewSettings_look_set"}
!118 = !{!"rna_color_gen.c:rna_ColorManagedViewSettings_view_transform_get"}
!119 = !{!"rna_color_gen.c:rna_ColorManagedViewSettings_view_transform_set"}
!120 = !{!121, !49, i64 136}
!121 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!122 = !{!121, !49, i64 140}
!123 = !{!121, !36, i64 144}
!124 = !{!121, !43, i64 0}
!125 = !{!"rna_color_gen.c:rna_ColorManagedViewSettings_use_curves_set"}
!126 = !{!"rna_color_gen.c:ColorManagedInputColorspaceSettings_rna_properties_get"}
!127 = !{!"rna_color_gen.c:rna_ColorManagedColorspaceSettings_colorspace_get"}
!128 = !{!"rna_color_gen.c:rna_ColorManagedColorspaceSettings_colorspace_set"}
!129 = !{!37, !37, i64 0}
!130 = !{!"rna_color_gen.c:ColorManagedSequencerColorspaceSettings_rna_properties_get"}
!131 = !{!"rna_color_gen.c:rna_CurveMap_evaluateF"}
!132 = !{!55, !36, i64 40}
!133 = !{!134, !36, i64 0}
!134 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!135 = !{!"rna_color_gen.c:rna_CurveMap_remove_point"}
!136 = !{!"rna_color_gen.c:rna_CurveMap_initialize"}
!137 = !{!"rna_color_gen.c:rna_ColorRamp_eval"}
!138 = !{!"rna_color_gen.c:rna_ColorRampElement_new"}
!139 = !{!"rna_color_gen.c:rna_ColorRampElement_remove"}
!140 = !{!"rna_color_gen.c:rna_CurveMapping_curves_length"}
!141 = distinct !{!141, !62}
!142 = !{!"rna_color_gen.c:rna_ColorRamp_update"}
!143 = !{!41, !36, i64 0}
!144 = !{!50, !50, i64 0}
!145 = !{!146, !50, i64 172}
!146 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !43, i64 168, !50, i64 172, !50, i64 174, !50, i64 176, !50, i64 178, !50, i64 180, !50, i64 182, !50, i64 184, !50, i64 186, !37, i64 188, !147, i64 200, !147, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !147, i64 264, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !43, i64 308, !37, i64 312, !50, i64 376, !50, i64 378, !49, i64 380, !49, i64 384, !50, i64 388, !50, i64 390, !36, i64 392, !69, i64 400, !69, i64 416, !69, i64 432, !50, i64 448, !50, i64 450, !43, i64 452, !36, i64 456}
!147 = !{!"ListBase", !36, i64 0, !36, i64 8}
!148 = distinct !{!148, !62}
!149 = !{!"rna_color_gen.c:rna_ColorRampElement_path"}
!150 = !{!151, !36, i64 592}
!151 = !{!"Material", !152, i64 0, !36, i64 120, !50, i64 128, !50, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !153, i64 224, !154, i64 312, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !49, i64 348, !49, i64 352, !50, i64 356, !50, i64 358, !50, i64 360, !37, i64 362, !37, i64 363, !49, i64 364, !49, i64 368, !50, i64 372, !50, i64 374, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !50, i64 392, !50, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !50, i64 412, !50, i64 414, !50, i64 416, !50, i64 418, !49, i64 420, !49, i64 424, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !49, i64 456, !37, i64 460, !49, i64 524, !49, i64 528, !49, i64 532, !43, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !50, i64 544, !50, i64 546, !50, i64 548, !37, i64 550, !37, i64 551, !50, i64 552, !50, i64 554, !49, i64 556, !49, i64 560, !37, i64 564, !49, i64 580, !49, i64 584, !50, i64 588, !50, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !50, i64 612, !50, i64 614, !49, i64 616, !49, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !49, i64 800, !49, i64 804, !49, i64 808, !49, i64 812, !49, i64 816, !50, i64 820, !50, i64 822, !37, i64 824, !37, i64 836, !49, i64 848, !49, i64 852, !49, i64 856, !49, i64 860, !49, i64 864, !49, i64 868, !49, i64 872, !50, i64 876, !50, i64 878, !43, i64 880, !50, i64 884, !50, i64 886, !37, i64 888, !50, i64 904, !50, i64 906, !50, i64 908, !50, i64 910, !50, i64 912, !37, i64 914, !36, i64 920, !147, i64 928}
!152 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !50, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!153 = !{!"VolumeSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !49, i64 52, !49, i64 56, !49, i64 60, !50, i64 64, !50, i64 66, !50, i64 68, !50, i64 70, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84}
!154 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!155 = !{!151, !36, i64 600}
!156 = !{!146, !36, i64 248}
!157 = distinct !{!157, !62}
!158 = !{!159, !36, i64 16}
!159 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!160 = distinct !{!160, !62}
!161 = !{!"rna_color_gen.c:rna_ColorRamp_path"}
!162 = distinct !{!162, !62}
!163 = !{!"rna_color_gen.c:rna_Scopes_update"}
!164 = !{!107, !43, i64 0}
!165 = !{!"rna_color_gen.c:rna_ColorManagedDisplaySettings_display_device_update"}
!166 = !{!"rna_color_gen.c:rna_ColorManagedDisplaySettings_display_device_itemf"}
!167 = !{!43, !43, i64 0}
!168 = !{!"rna_color_gen.c:rna_ColorManagedDisplaySettings_path"}
!169 = !{!"rna_color_gen.c:rna_ColorManagement_update"}
!170 = !{!"rna_color_gen.c:rna_ColorManagedViewSettings_look_itemf"}
!171 = !{!"rna_color_gen.c:rna_ColorManagedViewSettings_view_transform_itemf"}
!172 = !{!"rna_color_gen.c:rna_ColorManagedViewSettings_path"}
!173 = !{!"rna_color_gen.c:rna_ColorManagedColorspaceSettings_reload_update"}
!174 = !{!175, !36, i64 256}
!175 = !{!"Scene", !152, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !147, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !50, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !176, i64 280, !183, i64 4264, !147, i64 4296, !147, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !50, i64 4376, !50, i64 4378, !43, i64 4380, !147, i64 4384, !184, i64 4400, !185, i64 4416, !188, i64 4600, !36, i64 4608, !189, i64 4616, !36, i64 4640, !190, i64 4648, !190, i64 4656, !121, i64 4664, !178, i64 4824, !191, i64 4888, !36, i64 4952}
!176 = !{!"RenderData", !177, i64 0, !36, i64 248, !36, i64 256, !179, i64 264, !180, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !49, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !50, i64 432, !50, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !50, i64 456, !50, i64 458, !50, i64 460, !50, i64 462, !50, i64 464, !50, i64 466, !43, i64 468, !50, i64 472, !50, i64 474, !50, i64 476, !50, i64 478, !50, i64 480, !50, i64 482, !43, i64 484, !43, i64 488, !50, i64 492, !50, i64 494, !43, i64 496, !43, i64 500, !50, i64 504, !50, i64 506, !50, i64 508, !50, i64 510, !50, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !50, i64 528, !50, i64 530, !50, i64 532, !50, i64 534, !50, i64 536, !50, i64 538, !50, i64 540, !50, i64 542, !69, i64 544, !69, i64 560, !181, i64 576, !147, i64 592, !50, i64 608, !50, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !43, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !50, i64 648, !50, i64 650, !50, i64 652, !50, i64 654, !50, i64 656, !50, i64 658, !49, i64 660, !49, i64 664, !50, i64 668, !50, i64 670, !49, i64 672, !49, i64 676, !37, i64 680, !43, i64 1704, !50, i64 1708, !50, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !50, i64 2524, !50, i64 2526, !49, i64 2528, !49, i64 2532, !50, i64 2536, !50, i64 2538, !49, i64 2540, !50, i64 2544, !50, i64 2546, !43, i64 2548, !50, i64 2552, !50, i64 2554, !50, i64 2556, !50, i64 2558, !49, i64 2560, !49, i64 2564, !36, i64 2568, !43, i64 2576, !49, i64 2580, !37, i64 2584, !182, i64 2616, !43, i64 3976, !43, i64 3980}
!177 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !50, i64 8, !50, i64 10, !49, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !121, i64 24, !178, i64 184}
!178 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!179 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !50, i64 48, !50, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!180 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !49, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!181 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!182 = !{!"BakeData", !177, i64 0, !37, i64 248, !50, i64 1272, !50, i64 1274, !50, i64 1276, !50, i64 1278, !49, i64 1280, !49, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!183 = !{!"AudioData", !43, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !43, i64 16, !50, i64 20, !50, i64 22, !49, i64 24, !49, i64 28}
!184 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!185 = !{!"GameData", !184, i64 0, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !50, i64 32, !37, i64 34, !186, i64 40, !50, i64 64, !50, i64 66, !49, i64 68, !187, i64 72, !49, i64 128, !49, i64 132, !43, i64 136, !50, i64 140, !50, i64 142, !50, i64 144, !50, i64 146, !50, i64 148, !50, i64 150, !50, i64 152, !50, i64 154, !50, i64 156, !50, i64 158, !50, i64 160, !50, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!186 = !{!"GameDome", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !49, i64 8, !49, i64 12, !36, i64 16}
!187 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !43, i64 40, !49, i64 44, !49, i64 48, !50, i64 52, !50, i64 54}
!188 = !{!"UnitSettings", !49, i64 0, !37, i64 4, !37, i64 5, !50, i64 6}
!189 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!190 = !{!"long", !37, i64 0}
!191 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!192 = !{!193, !43, i64 24}
!193 = !{!"SeqIterator", !36, i64 0, !43, i64 8, !43, i64 12, !36, i64 16, !43, i64 24}
!194 = !{!193, !36, i64 16}
!195 = !{!196, !36, i64 168}
!196 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !50, i64 156, !50, i64 158, !43, i64 160, !43, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !49, i64 224, !49, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !147, i64 256, !36, i64 272, !36, i64 280, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !36, i64 304, !43, i64 312, !43, i64 316, !43, i64 320, !49, i64 324, !43, i64 328, !37, i64 332, !37, i64 333, !147, i64 336}
!197 = distinct !{!197, !62}
!198 = !{!196, !36, i64 216}
!199 = distinct !{!199, !62}
!200 = !{!"rna_color_gen.c:rna_ColorManagedColorspaceSettings_colorspace_itemf"}
!201 = !{!"rna_color_gen.c:rna_ColorManagedInputColorspaceSettings_path"}
!202 = !{!"rna_color_gen.c:rna_ColorManagedSequencerColorspaceSettings_path"}
