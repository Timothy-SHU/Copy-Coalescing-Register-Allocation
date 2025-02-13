; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_sculpt_paint_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_sculpt_paint_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PaletteColor = type { ptr, ptr, [3 x float], float }
%struct.Palette = type { %struct.ID, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.Sculpt = type { %struct.Paint, i32, [3 x i32], float, i32, float, float, ptr, ptr }
%struct.VPaint = type { %struct.Paint, i16, i16, i32, ptr, ptr, ptr }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PTCacheEdit = type { %struct.ListBase, ptr, ptr, %struct.PTCacheID, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }

@.str = private unnamed_addr constant [11 x i8] c"NEGATIVE_X\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-X to +X\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"POSITIVE_X\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"+X to -X\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"NEGATIVE_Y\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"-Y to +Y\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"POSITIVE_Y\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"+Y to -Y\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"NEGATIVE_Z\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"-Z to +Z\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"POSITIVE_Z\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"+Z to -Z\00", align 1
@symmetrize_direction_items = dso_local local_unnamed_addr global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PaletteColor_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_PaletteColor_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PaletteColor_rna_properties_begin, ptr @PaletteColor_rna_properties_next, ptr @PaletteColor_rna_properties_end, ptr @PaletteColor_rna_properties_get, ptr null, ptr null, ptr @PaletteColor_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Palette_colors = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.28, i32 0, ptr @.str.27, ptr @.str.29, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Palette_colors_begin, ptr @Palette_colors_next, ptr @Palette_colors_end, ptr @Palette_colors_get, ptr null, ptr @Palette_colors_lookup_int, ptr null, ptr null, ptr @RNA_PaletteColor }, align 8
@rna_Paint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_rna_properties_begin, ptr @Paint_rna_properties_next, ptr @Paint_rna_properties_end, ptr @Paint_rna_properties_get, ptr null, ptr null, ptr @Paint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Brush = external global %struct.StructRNA, align 8
@RNA_Palette = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PaintCurve, ptr @RNA_PaletteColor, ptr null, %struct.ListBase { ptr @rna_Palette_colors, ptr @rna_Palette_colors } }, ptr @.str.30, ptr null, ptr null, i32 7, ptr @.str.30, ptr @.str.2, ptr @.str.16, i32 54, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@RNA_Image = external global %struct.StructRNA, align 8
@rna_ParticleEdit_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_rna_properties_begin, ptr @ParticleEdit_rna_properties_next, ptr @ParticleEdit_rna_properties_end, ptr @ParticleEdit_rna_properties_get, ptr null, ptr null, ptr @ParticleEdit_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ParticleBrush_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleBrush_rna_properties_begin, ptr @ParticleBrush_rna_properties_next, ptr @ParticleBrush_rna_properties_end, ptr @ParticleBrush_rna_properties_get, ptr null, ptr null, ptr @ParticleBrush_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_PaletteColor_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PaletteColor_color, ptr @rna_PaletteColor_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PaletteColor_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_PaletteColor_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PaletteColor_strength, ptr @rna_PaletteColor_rna_type, i32 -1, ptr @.str.20, i32 8193, ptr @.str.21, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 68091904, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PaletteColor_color_get, ptr @PaletteColor_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PaletteColor_color_default }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_PaletteColor_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PaletteColor_weight, ptr @rna_PaletteColor_color, i32 -1, ptr @.str.22, i32 8193, ptr @.str.23, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @PaletteColor_strength_get, ptr @PaletteColor_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@rna_PaletteColor_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_PaletteColor_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PaletteColor_strength, i32 -1, ptr @.str.24, i32 8193, ptr @.str.25, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @PaletteColor_weight_get, ptr @PaletteColor_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@RNA_View2D = external global %struct.StructRNA, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"PaletteColor\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Palette Color\00", align 1
@RNA_PaletteColor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Palette, ptr @RNA_View2D, ptr null, %struct.ListBase { ptr @rna_PaletteColor_rna_properties, ptr @rna_PaletteColor_weight } }, ptr @.str.26, ptr null, ptr null, i32 4, ptr @.str.27, ptr @.str.2, ptr @.str.16, i32 17, ptr null, ptr @rna_PaletteColor_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"Colors that are part of this palette\00", align 1
@RNA_PaintCurve = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Paint, ptr @RNA_Palette, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.31, ptr null, ptr null, i32 7, ptr @.str.32, ptr @.str.2, ptr @.str.16, i32 321, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Paint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Sculpt, ptr @RNA_PaintCurve, ptr null, %struct.ListBase { ptr @rna_Paint_rna_properties, ptr @rna_Paint_use_symmetry_feather } }, ptr @.str.60, ptr null, ptr null, i32 4, ptr @.str.60, ptr @.str.2, ptr @.str.16, i32 17, ptr null, ptr @rna_Paint_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.31 = private unnamed_addr constant [11 x i8] c"PaintCurve\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@rna_Paint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_brush, ptr @rna_Paint_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Paint_brush = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_palette, ptr @rna_Paint_rna_type, i32 -1, ptr @.str.33, i32 8388673, ptr @.str.34, ptr @.str.35, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Paint_brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_brush_get, ptr @Paint_brush_set, ptr null, ptr @rna_Brush_mode_poll, ptr @RNA_Brush }, align 8
@rna_Paint_palette = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_show_brush, ptr @rna_Paint_brush, i32 -1, ptr @.str.36, i32 8388673, ptr @.str.30, ptr @.str.37, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_palette_get, ptr @Paint_palette_set, ptr null, ptr null, ptr @RNA_Palette }, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"brush\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Active Brush\00", align 1
@rna_Paint_show_brush = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_show_brush_on_surface, ptr @rna_Paint_palette, i32 -1, ptr @.str.38, i32 1, ptr @.str.39, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_show_brush_get, ptr @Paint_show_brush_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Active Palette\00", align 1
@rna_Paint_show_brush_on_surface = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_show_low_resolution, ptr @rna_Paint_show_brush, i32 -1, ptr @.str.40, i32 1, ptr @.str.41, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_show_brush_on_surface_get, ptr @Paint_show_brush_on_surface_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.38 = private unnamed_addr constant [11 x i8] c"show_brush\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Show Brush\00", align 1
@rna_Paint_show_low_resolution = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_input_samples, ptr @rna_Paint_show_brush_on_surface, i32 -1, ptr @.str.42, i32 1, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_show_low_resolution_get, ptr @Paint_show_low_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.40 = private unnamed_addr constant [22 x i8] c"show_brush_on_surface\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Show Brush On Surface\00", align 1
@rna_Paint_input_samples = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_use_symmetry_x, ptr @rna_Paint_show_low_resolution, i32 -1, ptr @.str.45, i32 8193, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 32, i32 0, ptr null, ptr null }, ptr @Paint_input_samples_get, ptr @Paint_input_samples_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 0, i32 2147483647, i32 0, i32 0, ptr null }, align 8
@.str.42 = private unnamed_addr constant [20 x i8] c"show_low_resolution\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Fast Navigate\00", align 1
@.str.44 = private unnamed_addr constant [60 x i8] c"For multires, show low resolution while navigating the view\00", align 1
@rna_Paint_use_symmetry_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_use_symmetry_y, ptr @rna_Paint_input_samples, i32 -1, ptr @.str.48, i32 1, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_use_symmetry_x_get, ptr @Paint_use_symmetry_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.45 = private unnamed_addr constant [14 x i8] c"input_samples\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Input Samples\00", align 1
@.str.47 = private unnamed_addr constant [67 x i8] c"Average multiple input samples together to smooth the brush stroke\00", align 1
@rna_Paint_use_symmetry_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_use_symmetry_z, ptr @rna_Paint_use_symmetry_x, i32 -1, ptr @.str.51, i32 1, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_use_symmetry_y_get, ptr @Paint_use_symmetry_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.48 = private unnamed_addr constant [15 x i8] c"use_symmetry_x\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Symmetry X\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"Mirror brush across the X axis\00", align 1
@rna_Paint_use_symmetry_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Paint_use_symmetry_feather, ptr @rna_Paint_use_symmetry_y, i32 -1, ptr @.str.54, i32 1, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_use_symmetry_z_get, ptr @Paint_use_symmetry_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.51 = private unnamed_addr constant [15 x i8] c"use_symmetry_y\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Symmetry Y\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"Mirror brush across the Y axis\00", align 1
@rna_Paint_use_symmetry_feather = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Paint_use_symmetry_z, i32 -1, ptr @.str.57, i32 1, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Paint_use_symmetry_feather_get, ptr @Paint_use_symmetry_feather_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.54 = private unnamed_addr constant [15 x i8] c"use_symmetry_z\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Symmetry Z\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"Mirror brush across the Z axis\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"use_symmetry_feather\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"Symmetry Feathering\00", align 1
@.str.59 = private unnamed_addr constant [69 x i8] c"Reduce the strength of the brush where it overlaps symmetrical daubs\00", align 1
@RNA_Sculpt = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_UvSculpt, ptr @RNA_Paint, ptr null, %struct.ListBase { ptr @rna_Sculpt_radial_symmetry, ptr @rna_Sculpt_gravity_object } }, ptr @.str.105, ptr null, ptr null, i32 4, ptr @.str.105, ptr @.str.2, ptr @.str.16, i32 17, ptr null, ptr @rna_Paint_rna_properties, ptr @RNA_Paint, ptr null, ptr null, ptr @rna_Sculpt_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.60 = private unnamed_addr constant [6 x i8] c"Paint\00", align 1
@rna_Sculpt_lock_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_lock_y, ptr @rna_Sculpt_radial_symmetry, i32 -1, ptr @.str.64, i32 1, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_lock_x_get, ptr @Sculpt_lock_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.61 = private unnamed_addr constant [16 x i8] c"radial_symmetry\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"Radial Symmetry Count X Axis\00", align 1
@.str.63 = private unnamed_addr constant [51 x i8] c"Number of times to copy strokes across the surface\00", align 1
@rna_Sculpt_radial_symmetry_default = internal global [3 x i32] [i32 1, i32 1, i32 1], align 4
@rna_Sculpt_radial_symmetry = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_lock_x, ptr null, i32 -1, ptr @.str.61, i32 8193, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.16, i32 1, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 44, i32 0, ptr null, ptr null }, ptr null, ptr null, ptr @Sculpt_radial_symmetry_get, ptr @Sculpt_radial_symmetry_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32, i32 1, i32 64, i32 1, i32 1, ptr @rna_Sculpt_radial_symmetry_default }, align 8
@rna_Sculpt_lock_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_lock_z, ptr @rna_Sculpt_lock_x, i32 -1, ptr @.str.67, i32 1, ptr @.str.68, ptr @.str.69, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_lock_y_get, ptr @Sculpt_lock_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.64 = private unnamed_addr constant [7 x i8] c"lock_x\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Lock X\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"Disallow changes to the X axis of vertices\00", align 1
@rna_Sculpt_lock_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_use_threaded, ptr @rna_Sculpt_lock_y, i32 -1, ptr @.str.70, i32 1, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_lock_z_get, ptr @Sculpt_lock_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.67 = private unnamed_addr constant [7 x i8] c"lock_y\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"Lock Y\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c"Disallow changes to the Y axis of vertices\00", align 1
@rna_Sculpt_use_threaded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_use_deform_only, ptr @rna_Sculpt_lock_z, i32 -1, ptr @.str.73, i32 1, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_use_threaded_get, ptr @Sculpt_use_threaded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.70 = private unnamed_addr constant [7 x i8] c"lock_z\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"Lock Z\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"Disallow changes to the Z axis of vertices\00", align 1
@rna_Sculpt_use_deform_only = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_show_diffuse_color, ptr @rna_Sculpt_use_threaded, i32 -1, ptr @.str.76, i32 1, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sculpt_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_use_deform_only_get, ptr @Sculpt_use_deform_only_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.73 = private unnamed_addr constant [13 x i8] c"use_threaded\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"Use OpenMP\00", align 1
@.str.75 = private unnamed_addr constant [70 x i8] c"Take advantage of multiple CPU cores to improve sculpting performance\00", align 1
@rna_Sculpt_show_diffuse_color = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_detail_size, ptr @rna_Sculpt_use_deform_only, i32 -1, ptr @.str.79, i32 1, ptr @.str.80, ptr @.str.81, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sculpt_ShowDiffuseColor_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_show_diffuse_color_get, ptr @Sculpt_show_diffuse_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.76 = private unnamed_addr constant [16 x i8] c"use_deform_only\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"Use Deform Only\00", align 1
@.str.78 = private unnamed_addr constant [102 x i8] c"Use only deformation modifiers (temporary disable all constructive modifiers except multi-resolution)\00", align 1
@rna_Sculpt_detail_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_constant_detail, ptr @rna_Sculpt_show_diffuse_color, i32 -1, ptr @.str.82, i32 8193, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.16, i32 2, i32 12, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @Sculpt_detail_size_get, ptr @Sculpt_detail_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 5.000000e-01, float 4.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.79 = private unnamed_addr constant [19 x i8] c"show_diffuse_color\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"Show Diffuse Color\00", align 1
@.str.81 = private unnamed_addr constant [66 x i8] c"Show diffuse color of object and overlay sculpt mask on top of it\00", align 1
@rna_Sculpt_constant_detail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_use_smooth_shading, ptr @rna_Sculpt_detail_size, i32 -1, ptr @.str.85, i32 8193, ptr @.str.83, ptr @.str.86, i32 0, ptr @.str.16, i32 2, i32 14, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr @Sculpt_constant_detail_get, ptr @Sculpt_constant_detail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 1.000000e+02, float 0x3F50624DE0000000, float 1.000000e+04, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.82 = private unnamed_addr constant [12 x i8] c"detail_size\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"Detail Size\00", align 1
@.str.84 = private unnamed_addr constant [63 x i8] c"Maximum edge length for dynamic topology sculpting (in pixels)\00", align 1
@rna_Sculpt_use_smooth_shading = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_symmetrize_direction, ptr @rna_Sculpt_constant_detail, i32 -1, ptr @.str.87, i32 1, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sculpt_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_use_smooth_shading_get, ptr @Sculpt_use_smooth_shading_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.85 = private unnamed_addr constant [16 x i8] c"constant_detail\00", align 1
@.str.86 = private unnamed_addr constant [83 x i8] c"Maximum edge length for dynamic topology sculpting (as percentage of blender unit)\00", align 1
@rna_Sculpt_symmetrize_direction = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_detail_refine_method, ptr @rna_Sculpt_use_smooth_shading, i32 -1, ptr @.str.90, i32 1, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_symmetrize_direction_get, ptr @Sculpt_symmetrize_direction_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Sculpt_symmetrize_direction_items, i32 6, i32 0 }, align 8
@.str.87 = private unnamed_addr constant [19 x i8] c"use_smooth_shading\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"Smooth Shading\00", align 1
@.str.89 = private unnamed_addr constant [80 x i8] c"Show faces in dynamic-topology mode with smooth shading rather than flat shaded\00", align 1
@rna_Sculpt_detail_refine_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_detail_type_method, ptr @rna_Sculpt_symmetrize_direction, i32 -1, ptr @.str.93, i32 1, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_detail_refine_method_get, ptr @Sculpt_detail_refine_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Sculpt_detail_refine_method_items, i32 3, i32 4096 }, align 8
@.str.90 = private unnamed_addr constant [21 x i8] c"symmetrize_direction\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"Source and destination for symmetrize operator\00", align 1
@rna_Sculpt_symmetrize_direction_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Sculpt_detail_type_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_gravity, ptr @rna_Sculpt_detail_refine_method, i32 -1, ptr @.str.96, i32 1, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_detail_type_method_get, ptr @Sculpt_detail_type_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Sculpt_detail_type_method_items, i32 2, i32 0 }, align 8
@.str.93 = private unnamed_addr constant [21 x i8] c"detail_refine_method\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"Detail Refine Method\00", align 1
@.str.95 = private unnamed_addr constant [59 x i8] c"In dynamic-topology mode, how to add or remove mesh detail\00", align 1
@rna_Sculpt_detail_refine_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 4096, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.255 }, %struct.EnumPropertyItem { i32 2048, ptr @.str.256, i32 0, ptr @.str.257, ptr @.str.258 }, %struct.EnumPropertyItem { i32 6144, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.261 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Sculpt_gravity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Sculpt_gravity_object, ptr @rna_Sculpt_detail_type_method, i32 -1, ptr @.str.99, i32 8193, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @Sculpt_gravity_get, ptr @Sculpt_gravity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.96 = private unnamed_addr constant [19 x i8] c"detail_type_method\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"Detail Type Method\00", align 1
@.str.98 = private unnamed_addr constant [61 x i8] c"In dynamic-topology mode, how mesh detail size is calculated\00", align 1
@rna_Sculpt_detail_type_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.262, i32 0, ptr @.str.263, ptr @.str.264 }, %struct.EnumPropertyItem { i32 8192, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.267 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Sculpt_gravity_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sculpt_gravity, i32 -1, ptr @.str.102, i32 8388609, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sculpt_gravity_object_get, ptr @Sculpt_gravity_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.99 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"Gravity\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"Amount of gravity after each dab\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"gravity_object\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.104 = private unnamed_addr constant [51 x i8] c"Object whose Z axis defines orientation of gravity\00", align 1
@RNA_UvSculpt = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_VertexPaint, ptr @RNA_Sculpt, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.106, ptr null, ptr null, i32 4, ptr @.str.107, ptr @.str.2, ptr @.str.16, i32 17, ptr null, ptr @rna_Paint_rna_properties, ptr @RNA_Paint, ptr null, ptr null, ptr @rna_UvSculpt_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.105 = private unnamed_addr constant [7 x i8] c"Sculpt\00", align 1
@RNA_VertexPaint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ImagePaint, ptr @RNA_UvSculpt, ptr null, %struct.ListBase { ptr @rna_VertexPaint_use_normal, ptr @rna_VertexPaint_use_group_restrict } }, ptr @.str.117, ptr null, ptr null, i32 4, ptr @.str.118, ptr @.str.119, ptr @.str.16, i32 17, ptr null, ptr @rna_Paint_rna_properties, ptr @RNA_Paint, ptr null, ptr null, ptr @rna_VertexPaint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.106 = private unnamed_addr constant [9 x i8] c"UvSculpt\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"UV Sculpting\00", align 1
@rna_VertexPaint_use_spray = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexPaint_use_group_restrict, ptr @rna_VertexPaint_use_normal, i32 -1, ptr @.str.111, i32 1, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexPaint_use_spray_get, ptr @VertexPaint_use_spray_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.108 = private unnamed_addr constant [11 x i8] c"use_normal\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"Normals\00", align 1
@.str.110 = private unnamed_addr constant [40 x i8] c"Apply the vertex normal before painting\00", align 1
@rna_VertexPaint_use_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexPaint_use_spray, ptr null, i32 -1, ptr @.str.108, i32 1, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexPaint_use_normal_get, ptr @VertexPaint_use_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_VertexPaint_use_group_restrict = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexPaint_use_spray, i32 -1, ptr @.str.114, i32 1, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexPaint_use_group_restrict_get, ptr @VertexPaint_use_group_restrict_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.111 = private unnamed_addr constant [10 x i8] c"use_spray\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"Spray\00", align 1
@.str.113 = private unnamed_addr constant [47 x i8] c"Keep applying paint effect while holding mouse\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"use_group_restrict\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"Restrict\00", align 1
@.str.116 = private unnamed_addr constant [43 x i8] c"Restrict painting to vertices in the group\00", align 1
@RNA_ImagePaint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ParticleEdit, ptr @RNA_VertexPaint, ptr null, %struct.ListBase { ptr @rna_ImagePaint_use_occlude, ptr @rna_ImagePaint_missing_texture } }, ptr @.str.176, ptr null, ptr null, i32 4, ptr @.str.177, ptr @.str.178, ptr @.str.16, i32 17, ptr null, ptr @rna_Paint_rna_properties, ptr @RNA_Paint, ptr null, ptr null, ptr @rna_ImagePaintSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ImagePaint_detect_data_func, ptr @rna_ImagePaint_detect_data_func } }, align 8
@.str.117 = private unnamed_addr constant [12 x i8] c"VertexPaint\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"Vertex Paint\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Properties of vertex and weight paint mode\00", align 1
@rna_ImagePaint_use_backface_culling = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_use_normal_falloff, ptr @rna_ImagePaint_use_occlude, i32 -1, ptr @.str.123, i32 1, ptr @.str.124, ptr @.str.125, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_use_backface_culling_get, ptr @ImagePaint_use_backface_culling_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.120 = private unnamed_addr constant [12 x i8] c"use_occlude\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"Occlude\00", align 1
@.str.122 = private unnamed_addr constant [60 x i8] c"Only paint onto the faces directly under the brush (slower)\00", align 1
@rna_ImagePaint_use_occlude = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_use_backface_culling, ptr null, i32 -1, ptr @.str.120, i32 1, ptr @.str.121, ptr @.str.122, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_use_occlude_get, ptr @ImagePaint_use_occlude_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ImagePaint_use_normal_falloff = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_use_stencil_layer, ptr @rna_ImagePaint_use_backface_culling, i32 -1, ptr @.str.126, i32 1, ptr @.str.127, ptr @.str.128, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_use_normal_falloff_get, ptr @ImagePaint_use_normal_falloff_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.123 = private unnamed_addr constant [21 x i8] c"use_backface_culling\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"Cull\00", align 1
@.str.125 = private unnamed_addr constant [50 x i8] c"Ignore faces pointing away from the view (faster)\00", align 1
@rna_ImagePaint_use_stencil_layer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_invert_stencil, ptr @rna_ImagePaint_use_normal_falloff, i32 -1, ptr @.str.129, i32 1, ptr @.str.130, ptr @.str.131, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ImaPaint_viewport_update, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_use_stencil_layer_get, ptr @ImagePaint_use_stencil_layer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.126 = private unnamed_addr constant [19 x i8] c"use_normal_falloff\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.128 = private unnamed_addr constant [46 x i8] c"Paint most on faces pointing towards the view\00", align 1
@rna_ImagePaint_invert_stencil = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_stencil_image, ptr @rna_ImagePaint_use_stencil_layer, i32 -1, ptr @.str.132, i32 1, ptr @.str.133, ptr @.str.134, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ImaPaint_viewport_update, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_invert_stencil_get, ptr @ImagePaint_invert_stencil_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.129 = private unnamed_addr constant [18 x i8] c"use_stencil_layer\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"Stencil Layer\00", align 1
@.str.131 = private unnamed_addr constant [43 x i8] c"Set the mask layer from the UV map buttons\00", align 1
@rna_ImagePaint_stencil_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_canvas, ptr @rna_ImagePaint_invert_stencil, i32 -1, ptr @.str.135, i32 8388673, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ImaPaint_stencil_update, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_stencil_image_get, ptr @ImagePaint_stencil_image_set, ptr null, ptr null, ptr @RNA_Image }, align 8
@.str.132 = private unnamed_addr constant [15 x i8] c"invert_stencil\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"Invert the stencil layer\00", align 1
@rna_ImagePaint_canvas = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_clone_image, ptr @rna_ImagePaint_stencil_image, i32 -1, ptr @.str.138, i32 8388673, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ImaPaint_canvas_update, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_canvas_get, ptr @ImagePaint_canvas_set, ptr null, ptr null, ptr @RNA_Image }, align 8
@.str.135 = private unnamed_addr constant [14 x i8] c"stencil_image\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"Stencil Image\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c"Image used as stencil\00", align 1
@rna_ImagePaint_clone_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_stencil_color, ptr @rna_ImagePaint_canvas, i32 -1, ptr @.str.141, i32 8388673, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_clone_image_get, ptr @ImagePaint_clone_image_set, ptr null, ptr null, ptr @RNA_Image }, align 8
@.str.138 = private unnamed_addr constant [7 x i8] c"canvas\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"Canvas\00", align 1
@.str.140 = private unnamed_addr constant [21 x i8] c"Image used as canvas\00", align 1
@rna_ImagePaint_stencil_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_use_clone_layer, ptr @rna_ImagePaint_clone_image, i32 -1, ptr @.str.144, i32 8193, ptr @.str.145, ptr @.str.146, i32 0, ptr @.str.16, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_ImaPaint_viewport_update, i32 68091904, ptr null, ptr null, i32 88, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ImagePaint_stencil_color_get, ptr @ImagePaint_stencil_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ImagePaint_stencil_color_default }, align 8
@.str.141 = private unnamed_addr constant [12 x i8] c"clone_image\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"Clone Image\00", align 1
@.str.143 = private unnamed_addr constant [27 x i8] c"Image used as clone source\00", align 1
@rna_ImagePaint_use_clone_layer = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_seam_bleed, ptr @rna_ImagePaint_stencil_color, i32 -1, ptr @.str.147, i32 1, ptr @.str.148, ptr @.str.149, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_use_clone_layer_get, ptr @ImagePaint_use_clone_layer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.144 = private unnamed_addr constant [14 x i8] c"stencil_color\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"Stencil Color\00", align 1
@.str.146 = private unnamed_addr constant [30 x i8] c"Stencil color in the viewport\00", align 1
@rna_ImagePaint_stencil_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_ImagePaint_seam_bleed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_normal_angle, ptr @rna_ImagePaint_use_clone_layer, i32 -1, ptr @.str.150, i32 8193, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.16, i32 1, i32 12, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 44, i32 1, ptr null, ptr null }, ptr @ImagePaint_seam_bleed_get, ptr @ImagePaint_seam_bleed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 8, i32 -32768, i32 32767, i32 0, i32 0, ptr null }, align 8
@.str.147 = private unnamed_addr constant [16 x i8] c"use_clone_layer\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"Clone Map\00", align 1
@.str.149 = private unnamed_addr constant [78 x i8] c"Use another UV map as clone source, otherwise use the 3D cursor as the source\00", align 1
@rna_ImagePaint_normal_angle = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_screen_grab_size, ptr @rna_ImagePaint_seam_bleed, i32 -1, ptr @.str.153, i32 8193, ptr @.str.154, ptr @.str.155, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 46, i32 1, ptr null, ptr null }, ptr @ImagePaint_normal_angle_get, ptr @ImagePaint_normal_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 90, i32 0, i32 90, i32 1, i32 0, ptr null }, align 8
@.str.150 = private unnamed_addr constant [11 x i8] c"seam_bleed\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"Bleed\00", align 1
@.str.152 = private unnamed_addr constant [70 x i8] c"Extend paint beyond the faces UVs to reduce seams (in pixels, slower)\00", align 1
@rna_ImagePaint_screen_grab_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_mode, ptr @rna_ImagePaint_normal_angle, i32 -1, ptr @.str.156, i32 8193, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 48, i32 1, ptr null, ptr null }, ptr null, ptr null, ptr @ImagePaint_screen_grab_size_get, ptr @ImagePaint_screen_grab_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 512, i32 16384, i32 512, i32 16384, i32 1, i32 0, ptr @rna_ImagePaint_screen_grab_size_default }, align 8
@.str.153 = private unnamed_addr constant [13 x i8] c"normal_angle\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.155 = private unnamed_addr constant [70 x i8] c"Paint most on faces pointing towards the view according to this angle\00", align 1
@rna_ImagePaint_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_missing_uvs, ptr @rna_ImagePaint_screen_grab_size, i32 -1, ptr @.str.158, i32 1, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ImaPaint_mode_update, i32 68091904, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_mode_get, ptr @ImagePaint_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ImagePaint_mode_items, i32 2, i32 0 }, align 8
@.str.156 = private unnamed_addr constant [17 x i8] c"screen_grab_size\00", align 1
@.str.157 = private unnamed_addr constant [44 x i8] c"Size to capture the image for re-projecting\00", align 1
@rna_ImagePaint_screen_grab_size_default = internal global [2 x i32] zeroinitializer, align 4
@rna_ImagePaint_missing_uvs = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_missing_materials, ptr @rna_ImagePaint_mode, i32 -1, ptr @.str.161, i32 0, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_missing_uvs_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.158 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.160 = private unnamed_addr constant [42 x i8] c"Mode of operation for projection painting\00", align 1
@rna_ImagePaint_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.272, i32 0, ptr @.str.273, ptr @.str.274 }, %struct.EnumPropertyItem { i32 1, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.277 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ImagePaint_missing_materials = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_missing_stencil, ptr @rna_ImagePaint_missing_uvs, i32 -1, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_missing_materials_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.161 = private unnamed_addr constant [12 x i8] c"missing_uvs\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"Missing UVs\00", align 1
@.str.163 = private unnamed_addr constant [34 x i8] c"A UV layer is missing on the mesh\00", align 1
@rna_ImagePaint_missing_stencil = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImagePaint_missing_texture, ptr @rna_ImagePaint_missing_materials, i32 -1, ptr @.str.167, i32 0, ptr @.str.168, ptr @.str.169, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_missing_stencil_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.164 = private unnamed_addr constant [18 x i8] c"missing_materials\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"Missing Materials\00", align 1
@.str.166 = private unnamed_addr constant [30 x i8] c"The mesh is missing materials\00", align 1
@rna_ImagePaint_missing_texture = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ImagePaint_missing_stencil, i32 -1, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.172, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImagePaint_missing_texture_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.167 = private unnamed_addr constant [16 x i8] c"missing_stencil\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"Missing Stencil\00", align 1
@.str.169 = private unnamed_addr constant [39 x i8] c"Image Painting does not have a stencil\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"missing_texture\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"Missing Texture\00", align 1
@.str.172 = private unnamed_addr constant [51 x i8] c"Image Painting does not have a texture to paint on\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@rna_ImagePaint_detect_data_ok = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.173, i32 9, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@.str.174 = private unnamed_addr constant [12 x i8] c"detect_data\00", align 1
@.str.175 = private unnamed_addr constant [38 x i8] c"Check if required texpaint data exist\00", align 1
@rna_ImagePaint_detect_data_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ImagePaint_detect_data_ok, ptr @rna_ImagePaint_detect_data_ok } }, ptr @.str.174, i32 0, ptr @.str.175, ptr @ImagePaint_detect_data_call, ptr @rna_ImagePaint_detect_data_ok }, align 8
@RNA_ParticleEdit = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ParticleBrush, ptr @RNA_ImagePaint, ptr null, %struct.ListBase { ptr @rna_ParticleEdit_rna_properties, ptr @rna_ParticleEdit_object } }, ptr @.str.228, ptr null, ptr null, i32 4, ptr @.str.229, ptr @.str.230, ptr @.str.16, i32 17, ptr null, ptr @rna_ParticleEdit_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ParticleEdit_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.176 = private unnamed_addr constant [11 x i8] c"ImagePaint\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"Image Paint\00", align 1
@.str.178 = private unnamed_addr constant [46 x i8] c"Properties of image and texture painting mode\00", align 1
@rna_ParticleEdit_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_tool, ptr @rna_ParticleEdit_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ParticleEdit_tool = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_select_mode, ptr @rna_ParticleEdit_rna_type, i32 -1, ptr @.str.179, i32 1, ptr @.str.180, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_tool_get, ptr @ParticleEdit_tool_set, ptr @rna_ParticleEdit_tool_itemf, ptr null, ptr null, ptr null, ptr @rna_ParticleEdit_tool_items, i32 8, i32 0 }, align 8
@rna_ParticleEdit_select_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_use_preserve_length, ptr @rna_ParticleEdit_tool, i32 -1, ptr @.str.181, i32 1, ptr @.str.182, ptr @.str.183, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ParticleEdit_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_select_mode_get, ptr @ParticleEdit_select_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ParticleEdit_select_mode_items, i32 3, i32 1 }, align 8
@.str.179 = private unnamed_addr constant [5 x i8] c"tool\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"Tool\00", align 1
@rna_ParticleEdit_tool_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.281 }, %struct.EnumPropertyItem { i32 0, ptr @.str.282, i32 0, ptr @.str.283, ptr @.str.284 }, %struct.EnumPropertyItem { i32 5, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.287 }, %struct.EnumPropertyItem { i32 4, ptr @.str.296, i32 0, ptr @.str.297, ptr @.str.298 }, %struct.EnumPropertyItem { i32 2, ptr @.str.288, i32 0, ptr @.str.289, ptr @.str.290 }, %struct.EnumPropertyItem { i32 3, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.301 }, %struct.EnumPropertyItem { i32 1, ptr @.str.291, i32 0, ptr @.str.292, ptr @.str.293 }, %struct.EnumPropertyItem { i32 6, ptr @.str.294, i32 0, ptr @.str.25, ptr @.str.295 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ParticleEdit_use_preserve_length = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_use_preserve_root, ptr @rna_ParticleEdit_select_mode, i32 -1, ptr @.str.184, i32 1, ptr @.str.185, ptr @.str.186, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_use_preserve_length_get, ptr @ParticleEdit_use_preserve_length_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.181 = private unnamed_addr constant [12 x i8] c"select_mode\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"Selection Mode\00", align 1
@.str.183 = private unnamed_addr constant [33 x i8] c"Particle select and display mode\00", align 1
@rna_ParticleEdit_select_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.305, i32 571, ptr @.str.306, ptr @.str.307 }, %struct.EnumPropertyItem { i32 2, ptr @.str.308, i32 569, ptr @.str.309, ptr @.str.310 }, %struct.EnumPropertyItem { i32 4, ptr @.str.311, i32 570, ptr @.str.312, ptr @.str.313 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ParticleEdit_use_preserve_root = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_use_emitter_deflect, ptr @rna_ParticleEdit_use_preserve_length, i32 -1, ptr @.str.187, i32 1, ptr @.str.188, ptr @.str.189, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_use_preserve_root_get, ptr @ParticleEdit_use_preserve_root_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.184 = private unnamed_addr constant [20 x i8] c"use_preserve_length\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"Keep Lengths\00", align 1
@.str.186 = private unnamed_addr constant [27 x i8] c"Keep path lengths constant\00", align 1
@rna_ParticleEdit_use_emitter_deflect = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_emitter_distance, ptr @rna_ParticleEdit_use_preserve_root, i32 -1, ptr @.str.190, i32 1, ptr @.str.191, ptr @.str.192, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_use_emitter_deflect_get, ptr @ParticleEdit_use_emitter_deflect_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.187 = private unnamed_addr constant [18 x i8] c"use_preserve_root\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"Keep Root\00", align 1
@.str.189 = private unnamed_addr constant [26 x i8] c"Keep root keys unmodified\00", align 1
@rna_ParticleEdit_emitter_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_use_fade_time, ptr @rna_ParticleEdit_use_emitter_deflect, i32 -1, ptr @.str.193, i32 8193, ptr @.str.194, ptr @.str.195, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 128, i32 4, ptr null, ptr null }, ptr @ParticleEdit_emitter_distance_get, ptr @ParticleEdit_emitter_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.190 = private unnamed_addr constant [20 x i8] c"use_emitter_deflect\00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"Deflect Emitter\00", align 1
@.str.192 = private unnamed_addr constant [41 x i8] c"Keep paths from intersecting the emitter\00", align 1
@rna_ParticleEdit_use_fade_time = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_use_auto_velocity, ptr @rna_ParticleEdit_emitter_distance, i32 -1, ptr @.str.196, i32 1, ptr @.str.197, ptr @.str.198, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ParticleEdit_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_use_fade_time_get, ptr @ParticleEdit_use_fade_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.193 = private unnamed_addr constant [17 x i8] c"emitter_distance\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"Emitter Distance\00", align 1
@.str.195 = private unnamed_addr constant [49 x i8] c"Distance to keep particles away from the emitter\00", align 1
@rna_ParticleEdit_use_auto_velocity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_show_particles, ptr @rna_ParticleEdit_use_fade_time, i32 -1, ptr @.str.199, i32 1, ptr @.str.200, ptr @.str.201, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_use_auto_velocity_get, ptr @ParticleEdit_use_auto_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.196 = private unnamed_addr constant [14 x i8] c"use_fade_time\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"Fade Time\00", align 1
@.str.198 = private unnamed_addr constant [52 x i8] c"Fade paths and keys further away from current frame\00", align 1
@rna_ParticleEdit_show_particles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_use_default_interpolate, ptr @rna_ParticleEdit_use_auto_velocity, i32 -1, ptr @.str.202, i32 1, ptr @.str.203, ptr @.str.204, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ParticleEdit_redo, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_show_particles_get, ptr @ParticleEdit_show_particles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.199 = private unnamed_addr constant [18 x i8] c"use_auto_velocity\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"Auto Velocity\00", align 1
@.str.201 = private unnamed_addr constant [41 x i8] c"Calculate point velocities automatically\00", align 1
@rna_ParticleEdit_use_default_interpolate = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_default_key_count, ptr @rna_ParticleEdit_show_particles, i32 -1, ptr @.str.205, i32 1, ptr @.str.206, ptr @.str.207, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_use_default_interpolate_get, ptr @ParticleEdit_use_default_interpolate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.202 = private unnamed_addr constant [15 x i8] c"show_particles\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"Draw Particles\00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c"Draw actual particles\00", align 1
@rna_ParticleEdit_default_key_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_brush, ptr @rna_ParticleEdit_use_default_interpolate, i32 -1, ptr @.str.208, i32 8193, ptr @.str.209, ptr @.str.210, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 4, i32 1, ptr null, ptr null }, ptr @ParticleEdit_default_key_count_get, ptr @ParticleEdit_default_key_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 20, i32 2, i32 32767, i32 10, i32 0, ptr null }, align 8
@.str.205 = private unnamed_addr constant [24 x i8] c"use_default_interpolate\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"Interpolate\00", align 1
@.str.207 = private unnamed_addr constant [49 x i8] c"Interpolate new particles from the existing ones\00", align 1
@rna_ParticleEdit_brush = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_draw_step, ptr @rna_ParticleEdit_default_key_count, i32 -1, ptr @.str.33, i32 8388608, ptr @.str.34, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] [i32 7, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_brush_get, ptr null, ptr null, ptr null, ptr @RNA_ParticleBrush }, align 8
@.str.208 = private unnamed_addr constant [18 x i8] c"default_key_count\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"Keys\00", align 1
@.str.210 = private unnamed_addr constant [41 x i8] c"How many keys to make new particles with\00", align 1
@rna_ParticleEdit_draw_step = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_fade_frames, ptr @rna_ParticleEdit_brush, i32 -1, ptr @.str.211, i32 8193, ptr @.str.212, ptr @.str.213, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ParticleEdit_redo, i32 85393408, ptr null, ptr null, i32 144, i32 0, ptr null, ptr null }, ptr @ParticleEdit_draw_step_get, ptr @ParticleEdit_draw_step_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10, i32 1, i32 10, i32 1, i32 0, ptr null }, align 8
@RNA_ParticleBrush = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Sensor, ptr @RNA_ParticleEdit, ptr null, %struct.ListBase { ptr @rna_ParticleBrush_rna_properties, ptr @rna_ParticleBrush_curve } }, ptr @.str.250, ptr null, ptr null, i32 4, ptr @.str.251, ptr @.str.252, ptr @.str.16, i32 17, ptr null, ptr @rna_ParticleBrush_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ParticleBrush_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_ParticleEdit_fade_frames = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_type, ptr @rna_ParticleEdit_draw_step, i32 -1, ptr @.str.214, i32 8193, ptr @.str.215, ptr @.str.216, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ParticleEdit_update, i32 85393408, ptr null, ptr null, i32 148, i32 0, ptr null, ptr null }, ptr @ParticleEdit_fade_frames_get, ptr @ParticleEdit_fade_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.211 = private unnamed_addr constant [10 x i8] c"draw_step\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"Steps\00", align 1
@.str.213 = private unnamed_addr constant [37 x i8] c"How many steps to draw the path with\00", align 1
@rna_ParticleEdit_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_is_editable, ptr @rna_ParticleEdit_fade_frames, i32 -1, ptr @.str.217, i32 1, ptr @.str.218, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ParticleEdit_redo, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_type_get, ptr @ParticleEdit_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ParticleEdit_type_items, i32 3, i32 0 }, align 8
@.str.214 = private unnamed_addr constant [12 x i8] c"fade_frames\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.216 = private unnamed_addr constant [24 x i8] c"How many frames to fade\00", align 1
@rna_ParticleEdit_is_editable = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_is_hair, ptr @rna_ParticleEdit_type, i32 -1, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.221, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_is_editable_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.217 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@rna_ParticleEdit_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.314, i32 0, ptr @.str.315, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.316, i32 0, ptr @.str.317, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.318, i32 0, ptr @.str.319, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ParticleEdit_is_hair = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleEdit_object, ptr @rna_ParticleEdit_is_editable, i32 -1, ptr @.str.222, i32 0, ptr @.str.223, ptr @.str.224, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_is_hair_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.219 = private unnamed_addr constant [12 x i8] c"is_editable\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"Editable\00", align 1
@.str.221 = private unnamed_addr constant [25 x i8] c"A valid edit mode exists\00", align 1
@rna_ParticleEdit_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ParticleEdit_is_hair, i32 -1, ptr @.str.225, i32 8388608, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleEdit_object_get, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.222 = private unnamed_addr constant [8 x i8] c"is_hair\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"Hair\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"Editing hair\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.227 = private unnamed_addr constant [18 x i8] c"The edited object\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"ParticleEdit\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"Particle Edit\00", align 1
@.str.230 = private unnamed_addr constant [36 x i8] c"Properties of particle editing mode\00", align 1
@rna_ParticleBrush_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_size, ptr @rna_ParticleBrush_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleBrush_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ParticleBrush_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_strength, ptr @rna_ParticleBrush_rna_type, i32 -1, ptr @.str.231, i32 8193, ptr @.str.232, ptr @.str.233, i32 0, ptr @.str.16, i32 1, i32 12, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 1, ptr null, ptr null }, ptr @ParticleBrush_size_get, ptr @ParticleBrush_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 32767, i32 10, i32 0, ptr null }, align 8
@rna_ParticleBrush_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_count, ptr @rna_ParticleBrush_size, i32 -1, ptr @.str.22, i32 8193, ptr @.str.234, ptr @.str.235, i32 0, ptr @.str.16, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @ParticleBrush_strength_get, ptr @ParticleBrush_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+00, float 0x3F50624DE0000000, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.231 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.233 = private unnamed_addr constant [30 x i8] c"Radius of the brush in pixels\00", align 1
@rna_ParticleBrush_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_steps, ptr @rna_ParticleBrush_strength, i32 -1, ptr @.str.236, i32 8193, ptr @.str.237, ptr @.str.238, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 6, i32 1, ptr null, ptr null }, ptr @ParticleBrush_count_get, ptr @ParticleBrush_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 1000, i32 10, i32 0, ptr null }, align 8
@.str.234 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.235 = private unnamed_addr constant [15 x i8] c"Brush strength\00", align 1
@rna_ParticleBrush_steps = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_puff_mode, ptr @rna_ParticleBrush_count, i32 -1, ptr @.str.239, i32 8193, ptr @.str.212, ptr @.str.240, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 2, i32 1, ptr null, ptr null }, ptr @ParticleBrush_steps_get, ptr @ParticleBrush_steps_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 50, i32 1, i32 32767, i32 10, i32 0, ptr null }, align 8
@.str.236 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@.str.238 = private unnamed_addr constant [15 x i8] c"Particle count\00", align 1
@rna_ParticleBrush_puff_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_use_puff_volume, ptr @rna_ParticleBrush_steps, i32 -1, ptr @.str.241, i32 1, ptr @.str.242, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleBrush_puff_mode_get, ptr @ParticleBrush_puff_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ParticleBrush_puff_mode_items, i32 2, i32 0 }, align 8
@.str.239 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.240 = private unnamed_addr constant [12 x i8] c"Brush steps\00", align 1
@rna_ParticleBrush_use_puff_volume = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_length_mode, ptr @rna_ParticleBrush_puff_mode, i32 -1, ptr @.str.243, i32 1, ptr @.str.244, ptr @.str.245, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleBrush_use_puff_volume_get, ptr @ParticleBrush_use_puff_volume_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.241 = private unnamed_addr constant [10 x i8] c"puff_mode\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"Puff Mode\00", align 1
@rna_ParticleBrush_puff_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.296, i32 0, ptr @.str.297, ptr @.str.321 }, %struct.EnumPropertyItem { i32 1, ptr @.str.322, i32 0, ptr @.str.323, ptr @.str.324 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ParticleBrush_length_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleBrush_curve, ptr @rna_ParticleBrush_use_puff_volume, i32 -1, ptr @.str.246, i32 1, ptr @.str.247, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleBrush_length_mode_get, ptr @ParticleBrush_length_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ParticleBrush_length_mode_items, i32 2, i32 0 }, align 8
@.str.243 = private unnamed_addr constant [16 x i8] c"use_puff_volume\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"Puff Volume\00", align 1
@.str.245 = private unnamed_addr constant [83 x i8] c"Apply puff to unselected end-points (helps maintain hair volume when puffing root)\00", align 1
@rna_ParticleBrush_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ParticleBrush_length_mode, i32 -1, ptr @.str.248, i32 8388608, ptr @.str.249, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleBrush_curve_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@.str.246 = private unnamed_addr constant [12 x i8] c"length_mode\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"Length Mode\00", align 1
@rna_ParticleBrush_length_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.327 }, %struct.EnumPropertyItem { i32 1, ptr @.str.328, i32 0, ptr @.str.329, ptr @.str.330 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.248 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@RNA_CurveMapping = external global %struct.StructRNA, align 8
@RNA_Sensor = external global %struct.StructRNA, align 8
@.str.250 = private unnamed_addr constant [14 x i8] c"ParticleBrush\00", align 1
@.str.251 = private unnamed_addr constant [15 x i8] c"Particle Brush\00", align 1
@.str.252 = private unnamed_addr constant [23 x i8] c"Particle editing brush\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"SUBDIVIDE\00", align 1
@.str.254 = private unnamed_addr constant [16 x i8] c"Subdivide Edges\00", align 1
@.str.255 = private unnamed_addr constant [53 x i8] c"Subdivide long edges to add mesh detail where needed\00", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"COLLAPSE\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"Collapse Edges\00", align 1
@.str.258 = private unnamed_addr constant [58 x i8] c"Collapse short edges to remove mesh detail where possible\00", align 1
@.str.259 = private unnamed_addr constant [19 x i8] c"SUBDIVIDE_COLLAPSE\00", align 1
@.str.260 = private unnamed_addr constant [19 x i8] c"Subdivide Collapse\00", align 1
@.str.261 = private unnamed_addr constant [73 x i8] c"Both subdivide long edges and collapse short edges to refine mesh detail\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"RELATIVE\00", align 1
@.str.263 = private unnamed_addr constant [16 x i8] c"Relative Detail\00", align 1
@.str.264 = private unnamed_addr constant [58 x i8] c"Mesh detail is relative to the brush size and detail size\00", align 1
@.str.265 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.266 = private unnamed_addr constant [16 x i8] c"Constant Detail\00", align 1
@.str.267 = private unnamed_addr constant [65 x i8] c"Mesh detail is constant in object space according to detail size\00", align 1
@.str.268 = private unnamed_addr constant [21 x i8] c"tool_settings.sculpt\00", align 1
@.str.269 = private unnamed_addr constant [24 x i8] c"tool_settings.uv_sculpt\00", align 1
@.str.270 = private unnamed_addr constant [27 x i8] c"tool_settings.vertex_paint\00", align 1
@.str.271 = private unnamed_addr constant [27 x i8] c"tool_settings.weight_paint\00", align 1
@.str.272 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.274 = private unnamed_addr constant [37 x i8] c"Detect image slots from the material\00", align 1
@.str.275 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.277 = private unnamed_addr constant [40 x i8] c"Set image for texture painting directly\00", align 1
@.str.278 = private unnamed_addr constant [26 x i8] c"tool_settings.image_paint\00", align 1
@particle_edit_disconnected_hair_brush_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.281 }, %struct.EnumPropertyItem { i32 0, ptr @.str.282, i32 0, ptr @.str.283, ptr @.str.284 }, %struct.EnumPropertyItem { i32 5, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.287 }, %struct.EnumPropertyItem { i32 2, ptr @.str.288, i32 0, ptr @.str.289, ptr @.str.290 }, %struct.EnumPropertyItem { i32 1, ptr @.str.291, i32 0, ptr @.str.292, ptr @.str.293 }, %struct.EnumPropertyItem { i32 6, ptr @.str.294, i32 0, ptr @.str.25, ptr @.str.295 }, %struct.EnumPropertyItem zeroinitializer], align 16
@particle_edit_hair_brush_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.281 }, %struct.EnumPropertyItem { i32 0, ptr @.str.282, i32 0, ptr @.str.283, ptr @.str.284 }, %struct.EnumPropertyItem { i32 5, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.287 }, %struct.EnumPropertyItem { i32 4, ptr @.str.296, i32 0, ptr @.str.297, ptr @.str.298 }, %struct.EnumPropertyItem { i32 2, ptr @.str.288, i32 0, ptr @.str.289, ptr @.str.290 }, %struct.EnumPropertyItem { i32 3, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.301 }, %struct.EnumPropertyItem { i32 1, ptr @.str.291, i32 0, ptr @.str.292, ptr @.str.293 }, %struct.EnumPropertyItem { i32 6, ptr @.str.294, i32 0, ptr @.str.25, ptr @.str.295 }, %struct.EnumPropertyItem zeroinitializer], align 16
@particle_edit_cache_brush_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.281 }, %struct.EnumPropertyItem { i32 0, ptr @.str.282, i32 0, ptr @.str.283, ptr @.str.302 }, %struct.EnumPropertyItem { i32 5, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.303 }, %struct.EnumPropertyItem { i32 2, ptr @.str.288, i32 0, ptr @.str.289, ptr @.str.304 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.279 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.281 = private unnamed_addr constant [20 x i8] c"Don't use any brush\00", align 1
@.str.282 = private unnamed_addr constant [5 x i8] c"COMB\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"Comb\00", align 1
@.str.284 = private unnamed_addr constant [11 x i8] c"Comb hairs\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"SMOOTH\00", align 1
@.str.286 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.287 = private unnamed_addr constant [13 x i8] c"Smooth hairs\00", align 1
@.str.288 = private unnamed_addr constant [7 x i8] c"LENGTH\00", align 1
@.str.289 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.290 = private unnamed_addr constant [29 x i8] c"Make hairs longer or shorter\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"CUT\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"Cut\00", align 1
@.str.293 = private unnamed_addr constant [10 x i8] c"Cut hairs\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"WEIGHT\00", align 1
@.str.295 = private unnamed_addr constant [22 x i8] c"Weight hair particles\00", align 1
@.str.296 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.297 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.298 = private unnamed_addr constant [10 x i8] c"Add hairs\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"PUFF\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"Puff\00", align 1
@.str.301 = private unnamed_addr constant [20 x i8] c"Make hairs stand up\00", align 1
@.str.302 = private unnamed_addr constant [11 x i8] c"Comb paths\00", align 1
@.str.303 = private unnamed_addr constant [13 x i8] c"Smooth paths\00", align 1
@.str.304 = private unnamed_addr constant [29 x i8] c"Make paths longer or shorter\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"Path edit mode\00", align 1
@.str.308 = private unnamed_addr constant [6 x i8] c"POINT\00", align 1
@.str.309 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.310 = private unnamed_addr constant [18 x i8] c"Point select mode\00", align 1
@.str.311 = private unnamed_addr constant [4 x i8] c"TIP\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"Tip\00", align 1
@.str.313 = private unnamed_addr constant [16 x i8] c"Tip select mode\00", align 1
@.str.314 = private unnamed_addr constant [10 x i8] c"PARTICLES\00", align 1
@.str.315 = private unnamed_addr constant [10 x i8] c"Particles\00", align 1
@.str.316 = private unnamed_addr constant [10 x i8] c"SOFT_BODY\00", align 1
@.str.317 = private unnamed_addr constant [10 x i8] c"Soft body\00", align 1
@.str.318 = private unnamed_addr constant [6 x i8] c"CLOTH\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"Cloth\00", align 1
@.str.320 = private unnamed_addr constant [28 x i8] c"tool_settings.particle_edit\00", align 1
@.str.321 = private unnamed_addr constant [22 x i8] c"Make hairs more puffy\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.323 = private unnamed_addr constant [4 x i8] c"Sub\00", align 1
@.str.324 = private unnamed_addr constant [22 x i8] c"Make hairs less puffy\00", align 1
@.str.325 = private unnamed_addr constant [5 x i8] c"GROW\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"Grow\00", align 1
@.str.327 = private unnamed_addr constant [18 x i8] c"Make hairs longer\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"SHRINK\00", align 1
@.str.329 = private unnamed_addr constant [7 x i8] c"Shrink\00", align 1
@.str.330 = private unnamed_addr constant [19 x i8] c"Make hairs shorter\00", align 1
@.str.331 = private unnamed_addr constant [34 x i8] c"tool_settings.particle_edit.brush\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PaletteColor_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PaletteColor_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @PaletteColor_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
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
define internal void @PaletteColor_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PaletteColor_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @PaletteColor_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PaletteColor_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PaletteColor_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PaletteColor_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PaletteColor_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PaletteColor, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !47
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !49

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PaletteColor_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PaletteColor, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 1.000000e+00
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 1.000000e+00, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !47
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !51

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PaletteColor_strength_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.PaletteColor, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !52
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PaletteColor_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.PaletteColor, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PaletteColor_weight_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.PaletteColor, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !52
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PaletteColor_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.PaletteColor, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Palette_colors_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Palette_colors, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.Palette, ptr %5, i64 0, i32 1
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @Palette_colors_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Palette_colors_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !54 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PaletteColor, ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Palette_colors_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @Palette_colors_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Palette_colors_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Palette_colors_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #14
  call void @Palette_colors_begin(ptr noundef nonnull %4, ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !55
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
  br i1 %25, label %19, label %26, !llvm.loop !57

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
  %37 = load ptr, ptr %33, align 8, !tbaa !58
  store ptr %37, ptr %10, align 8, !tbaa !60
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !61

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
  call void @Palette_colors_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Palette_colors_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #14
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Paint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Paint_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @Paint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Paint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !62 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Paint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @Paint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Paint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Paint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Paint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Paint_brush_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Brush, ptr noundef %5) #13
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Paint_brush_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @id_us_plus(ptr noundef nonnull %10) #13
  br label %13

13:                                               ; preds = %12, %8
  store ptr %10, ptr %4, align 8, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Paint_palette_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Palette, ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Paint_palette_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Paint_show_brush_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Paint_show_brush_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Paint_show_brush_on_surface_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Paint_show_brush_on_surface_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Paint_show_low_resolution_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Paint_show_low_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Paint_input_samples_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !67
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Paint_input_samples_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 5
  store i32 %5, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Paint_use_symmetry_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Paint_use_symmetry_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !68
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Paint_use_symmetry_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Paint_use_symmetry_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !68
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Paint_use_symmetry_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Paint_use_symmetry_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !68
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Paint_use_symmetry_feather_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Paint_use_symmetry_feather_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !68
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !68
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_radial_symmetry_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %9, ptr %10, align 4, !tbaa !69
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !70

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_radial_symmetry_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 64)
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  %12 = getelementptr inbounds i32, ptr %5, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !69
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %6, !llvm.loop !71

15:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_lock_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_lock_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_lock_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_lock_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_lock_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_lock_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_use_threaded_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_use_threaded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_use_deform_only_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_use_deform_only_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_show_diffuse_color_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_show_diffuse_color_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Sculpt_detail_size_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !74
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_detail_size_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 3
  store float %1, ptr %5, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Sculpt_constant_detail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !75
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_constant_detail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_use_smooth_shading_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_use_smooth_shading_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_symmetrize_direction_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !76
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_symmetrize_direction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 4
  store i32 %1, ptr %5, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_detail_refine_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = and i32 %5, 6144
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_detail_refine_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = and i32 %6, -6145
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sculpt_detail_type_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = and i32 %5, 8192
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_detail_type_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = and i32 %6, -8193
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Sculpt_gravity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Sculpt, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !77
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sculpt_gravity_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 8, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Sculpt_gravity_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Sculpt_gravity_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.Sculpt, ptr %4, i64 0, i32 7
  store ptr %6, ptr %10, align 8, !tbaa !78
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexPaint_use_normal_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.VPaint, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !79
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexPaint_use_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.VPaint, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !79
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexPaint_use_spray_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.VPaint, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !79
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexPaint_use_spray_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.VPaint, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !79
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexPaint_use_group_restrict_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.VPaint, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !79
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexPaint_use_group_restrict_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.VPaint, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !79
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_use_occlude_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !82
  %6 = and i16 %5, 16
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_use_occlude_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 16, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_use_backface_culling_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !82
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_use_backface_culling_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 32, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_use_normal_falloff_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !82
  %6 = and i16 %5, 64
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_use_normal_falloff_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 64, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_use_stencil_layer_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !82
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_use_stencil_layer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_invert_stencil_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !82
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_invert_stencil_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = and i16 %7, -513
  %9 = select i1 %5, i16 0, i16 512
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImagePaint_stencil_image_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImagePaint_stencil_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImagePaint_canvas_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImagePaint_canvas_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImagePaint_clone_image_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImagePaint_clone_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !86
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_stencil_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !47
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !87

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_stencil_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 1.000000e+00
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 1.000000e+00, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !47
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !88

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_use_clone_layer_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !82
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_use_clone_layer_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_seam_bleed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !89
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_seam_bleed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -32768)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 3
  store i16 %7, ptr %8, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_normal_angle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !90
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_normal_angle_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 90)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 4
  store i16 %7, ptr %8, align 2, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_screen_grab_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !91
  %7 = sext i16 %6 to i32
  store i32 %7, ptr %1, align 4, !tbaa !69
  %8 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 5, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !91
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %10, ptr %11, align 4, !tbaa !69
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_screen_grab_size_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 5
  %6 = load <2 x i32>, ptr %1, align 4, !tbaa !69
  %7 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %6, <2 x i32> <i32 16384, i32 16384>)
  %8 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %7, <2 x i32> <i32 512, i32 512>)
  %9 = trunc <2 x i32> %8 to <2 x i16>
  store <2 x i16> %9, ptr %5, align 2, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !92
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ImagePaintSettings, ptr %4, i64 0, i32 6
  store i32 %1, ptr %5, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_missing_uvs_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_missing_materials_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_missing_stencil_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImagePaint_missing_texture_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ImagePaintSettings, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleEdit_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ParticleEdit_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ParticleEdit_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ParticleEdit_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !94 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleEdit_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ParticleEdit_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleEdit_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParticleEdit_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleEdit_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_tool_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !95
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleEdit_tool_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_ParticleEdit_tool_set(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ParticleEdit_tool_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !97 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !95
  %7 = icmp eq i16 %6, 6
  %8 = icmp eq i32 %1, 6
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @DAG_id_tag_update(ptr noundef nonnull %20, i16 noundef signext 2) #13
  tail call void @WM_main_add_notifier(i32 noundef 85655553, ptr noundef null) #13
  br label %23

23:                                               ; preds = %14, %18, %22, %2, %10
  %24 = trunc i32 %1 to i16
  store i16 %24, ptr %5, align 2, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_select_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !123
  %6 = and i32 %5, 7
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_select_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !123
  %7 = and i32 %6, -8
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_use_preserve_length_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 8, !tbaa !124
  %5 = and i16 %4, 1
  %6 = zext nneg i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_use_preserve_length_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = load i16, ptr %4, align 8, !tbaa !124
  %7 = and i16 %6, -2
  %8 = zext i1 %5 to i16
  %9 = or disjoint i16 %7, %8
  store i16 %9, ptr %4, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_use_preserve_root_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 8, !tbaa !124
  %5 = lshr i16 %4, 1
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_use_preserve_root_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i16, ptr %4, align 8, !tbaa !124
  %7 = and i16 %6, -3
  %8 = select i1 %5, i16 0, i16 2
  %9 = or disjoint i16 %7, %8
  store i16 %9, ptr %4, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_use_emitter_deflect_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 8, !tbaa !124
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_use_emitter_deflect_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i16, ptr %4, align 8, !tbaa !124
  %7 = and i16 %6, -5
  %8 = select i1 %5, i16 0, i16 4
  %9 = or disjoint i16 %7, %8
  store i16 %9, ptr %4, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ParticleEdit_emitter_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 8, !tbaa !125
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_emitter_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_use_fade_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 8, !tbaa !124
  %5 = lshr i16 %4, 7
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_use_fade_time_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i16, ptr %4, align 8, !tbaa !124
  %7 = and i16 %6, -129
  %8 = select i1 %5, i16 0, i16 128
  %9 = or disjoint i16 %7, %8
  store i16 %9, ptr %4, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_use_auto_velocity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 8, !tbaa !124
  %5 = lshr i16 %4, 8
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_use_auto_velocity_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i16, ptr %4, align 8, !tbaa !124
  %7 = and i16 %6, -257
  %8 = select i1 %5, i16 0, i16 256
  %9 = or disjoint i16 %7, %8
  store i16 %9, ptr %4, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_show_particles_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 8, !tbaa !124
  %5 = lshr i16 %4, 4
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_show_particles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i16, ptr %4, align 8, !tbaa !124
  %7 = and i16 %6, -17
  %8 = select i1 %5, i16 0, i16 16
  %9 = or disjoint i16 %7, %8
  store i16 %9, ptr %4, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_use_default_interpolate_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 8, !tbaa !124
  %5 = lshr i16 %4, 3
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_use_default_interpolate_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i16, ptr %4, align 8, !tbaa !124
  %7 = and i16 %6, -9
  %8 = select i1 %5, i16 0, i16 8
  %9 = or disjoint i16 %7, %8
  store i16 %9, ptr %4, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_default_key_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !126
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_default_key_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 2)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 2
  store i16 %7, ptr %8, align 4, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleEdit_brush_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ParticleEdit_brush_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ParticleEdit_brush_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !127 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !95
  %7 = icmp eq i16 %6, -1
  %8 = sext i16 %6 to i64
  %9 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 4, i64 %8
  %10 = select i1 %7, ptr null, ptr %9
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ParticleBrush, ptr noundef %10) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_draw_step_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !128
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_draw_step_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 10
  store i32 %6, ptr %7, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_fade_frames_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !129
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_fade_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 11
  store i32 %6, ptr %7, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleEdit_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !130
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleEdit_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 9
  store i32 %1, ptr %5, align 4, !tbaa !130
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParticleEdit_is_editable_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ParticleEdit_editable_get(ptr noundef %0) #15, !range !131
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ParticleEdit_editable_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !132 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @PE_get_current(ptr noundef nonnull %9, ptr noundef nonnull %5) #13
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %11, %7, %1
  %16 = phi i32 [ 0, %7 ], [ 0, %1 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParticleEdit_is_hair_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ParticleEdit_hair_get(ptr noundef %0) #15, !range !131
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ParticleEdit_hair_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ParticleEditSettings, ptr %3, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = tail call ptr @PE_get_current(ptr noundef nonnull %5, ptr noundef %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %1, %7, %12
  %18 = phi i32 [ 0, %7 ], [ %16, %12 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleEdit_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ParticleEditSettings, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleBrush_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ParticleBrush_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @ParticleBrush_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ParticleBrush_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !138 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleBrush_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @ParticleBrush_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleBrush_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParticleBrush_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleBrush_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleBrush_size_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i16, ptr %3, align 4, !tbaa !139
  %5 = sext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleBrush_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  store i16 %7, ptr %4, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ParticleBrush_strength_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleBrushData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !141
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleBrush_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.ParticleBrushData, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleBrush_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleBrushData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !142
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleBrush_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.ParticleBrushData, ptr %4, i64 0, i32 3
  store i16 %7, ptr %8, align 2, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleBrush_steps_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleBrushData, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !143
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleBrush_steps_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.ParticleBrushData, ptr %4, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleBrush_puff_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleBrushData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !144
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleBrush_puff_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.ParticleBrushData, ptr %4, i64 0, i32 2
  store i16 %5, ptr %6, align 4, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleBrush_use_puff_volume_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleBrushData, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !145
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleBrush_use_puff_volume_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleBrushData, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !145
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleBrush_length_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ParticleBrushData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !144
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleBrush_length_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.ParticleBrushData, ptr %4, i64 0, i32 2
  store i16 %5, ptr %6, align 4, !tbaa !144
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleBrush_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ParticleBrush_curve_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ParticleBrush_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !146 {
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ImagePaint_detect_data(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = tail call fastcc i32 @rna_ImaPaint_detect_data(ptr noundef %0) #15, !range !131
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rna_ImaPaint_detect_data(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.ImagePaintSettings, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !93
  %4 = icmp eq i16 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImagePaint_detect_data_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #9 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !148
  %8 = tail call fastcc i32 @rna_ImaPaint_detect_data(ptr noundef %6) #15, !range !131
  store i32 %8, ptr %7, align 4, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #3

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Paint_brush_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !150 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_paint_invalidate_overlay_all() #13
  tail call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Brush_mode_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #7 !PGOFuncName !151 {
  %3 = load ptr, ptr %0, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = load ptr, ptr %1, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !154
  %14 = icmp eq ptr %8, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !tbaa !158
  %17 = icmp eq ptr %8, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = icmp eq ptr %8, %20
  %22 = select i1 %21, i32 8, i32 0
  br label %23

23:                                               ; preds = %18, %15, %11, %2
  %24 = phi i32 [ 16, %2 ], [ 2, %11 ], [ 4, %15 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 13
  %26 = load i16, ptr %25, align 2, !tbaa !160
  %27 = zext i16 %26 to i32
  %28 = and i32 %24, %27
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Sculpt_update(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !164 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  tail call void @DAG_id_tag_update(ptr noundef nonnull %9, i16 noundef signext 2) #13
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef nonnull %9) #13
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !165
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !154
  %20 = getelementptr inbounds %struct.Sculpt, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !72
  %22 = lshr i32 %21, 10
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 13
  store i8 %24, ptr %25, align 8, !tbaa !168
  br label %26

26:                                               ; preds = %3, %11, %15, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Sculpt_ShowDiffuseColor_update(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !170 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !165
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !154
  %20 = getelementptr inbounds %struct.Sculpt, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !72
  %22 = lshr i32 %21, 9
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 16
  store i8 %24, ptr %25, align 8, !tbaa !171
  %26 = getelementptr inbounds %struct.SculptSession, ptr %13, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  tail call void @pbvh_show_diffuse_color_set(ptr noundef nonnull %27, i8 noundef zeroext %24) #13
  br label %30

30:                                               ; preds = %29, %15
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef nonnull %9) #13
  br label %31

31:                                               ; preds = %3, %30, %11, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_Sculpt_path(ptr nocapture readnone %0) #0 !PGOFuncName !173 {
  %2 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.268) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_UvSculpt_path(ptr nocapture readnone %0) #0 !PGOFuncName !174 {
  %2 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.269) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_VertexPaint_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !152
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %4, align 8, !tbaa !158
  %8 = icmp eq ptr %6, %7
  %9 = select i1 %8, ptr @.str.270, ptr @.str.271
  %10 = tail call ptr @BLI_strdup(ptr noundef nonnull %9) #13
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ImaPaint_viewport_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !176 {
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ImaPaint_stencil_update(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !177 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !99, !nonnull !178, !noundef !178
  %6 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 120
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  tail call void @GPU_drawobject_free(ptr noundef %9) #13
  %10 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %1, ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #13
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ImaPaint_canvas_update(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !180 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 17, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  br label %24

21:                                               ; preds = %29, %24
  %22 = load ptr, ptr %25, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24, !llvm.loop !182

24:                                               ; preds = %19, %21
  %25 = phi ptr [ %17, %19 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.bScreen, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %21, label %32

29:                                               ; preds = %48, %32
  %30 = load ptr, ptr %33, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %21, label %32, !llvm.loop !183

32:                                               ; preds = %24, %29
  %33 = phi ptr [ %30, %29 ], [ %27, %24 ]
  %34 = getelementptr inbounds %struct.ScrArea, ptr %33, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %29, label %37

37:                                               ; preds = %32, %48
  %38 = phi ptr [ %49, %48 ], [ %35, %32 ]
  %39 = getelementptr inbounds %struct.SpaceLink, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !184
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.SpaceImage, ptr %38, i64 0, i32 18
  %44 = load i8, ptr %43, align 1, !tbaa !186
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %20, align 8, !tbaa !192
  tail call void @ED_space_image_set(ptr noundef nonnull %38, ptr noundef %1, ptr noundef %47, ptr noundef %15) #13
  br label %48

48:                                               ; preds = %42, %46, %37
  %49 = load ptr, ptr %38, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %29, label %37, !llvm.loop !193

51:                                               ; preds = %21, %10
  %52 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 120
  %53 = load ptr, ptr %52, align 8, !tbaa !179
  tail call void @GPU_drawobject_free(ptr noundef %53) #13
  %54 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %1, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #13
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ImaPaint_mode_update(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !194 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  tail call void @BKE_texpaint_slots_refresh_object(ptr noundef nonnull %1, ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 120
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  tail call void @GPU_drawobject_free(ptr noundef %13) #13
  %14 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef nonnull %1, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #13
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ImagePaintSettings_path(ptr nocapture readnone %0) #0 !PGOFuncName !195 {
  %2 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.278) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal nonnull ptr @rna_ParticleEdit_tool_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 !PGOFuncName !196 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi ptr [ %11, %9 ], [ null, %4 ]
  %14 = tail call ptr @psys_get_current(ptr noundef %13) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 25
  %18 = load i32, ptr %17, align 4, !tbaa !197
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @particle_edit_hair_brush_items, ptr @particle_edit_disconnected_hair_brush_items
  br label %22

22:                                               ; preds = %12, %16
  %23 = phi ptr [ %21, %16 ], [ @particle_edit_cache_brush_items, %12 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ParticleEdit_update(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !199 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @DAG_id_tag_update(ptr noundef nonnull %9, i16 noundef signext 2) #13
  br label %12

12:                                               ; preds = %3, %11, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_ParticleEdit_redo(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !200 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = tail call ptr @PE_get_current(ptr noundef nonnull %1, ptr noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PTCacheEdit, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  tail call void @psys_free_path_cache(ptr noundef %16, ptr noundef nonnull %12) #13
  br label %17

17:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ParticleEdit_path(ptr nocapture readnone %0) #0 !PGOFuncName !201 {
  %2 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.320) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ParticleBrush_path(ptr nocapture readnone %0) #0 !PGOFuncName !202 {
  %2 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.331) #13
  ret ptr %2
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @PE_get_current(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_paint_invalidate_overlay_all() local_unnamed_addr #3

; Function Attrs: optsize
declare void @pbvh_show_diffuse_color_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_texpaint_slots_refresh_object(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @psys_free_path_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!45 = !{!"rna_sculpt_paint_gen.c:PaletteColor_rna_properties_get"}
!46 = !{!41, !36, i64 16}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !37, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!53, !48, i64 28}
!53 = !{!"PaletteColor", !36, i64 0, !36, i64 8, !37, i64 16, !48, i64 28}
!54 = !{!"rna_sculpt_paint_gen.c:Palette_colors_get"}
!55 = !{!56, !36, i64 16}
!56 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!57 = distinct !{!57, !50}
!58 = !{!59, !36, i64 0}
!59 = !{!"Link", !36, i64 0, !36, i64 8}
!60 = !{!56, !36, i64 0}
!61 = distinct !{!61, !50}
!62 = !{!"rna_sculpt_paint_gen.c:Paint_rna_properties_get"}
!63 = !{!64, !36, i64 0}
!64 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!65 = !{!64, !36, i64 8}
!66 = !{!64, !43, i64 28}
!67 = !{!64, !43, i64 32}
!68 = !{!64, !43, i64 36}
!69 = !{!43, !43, i64 0}
!70 = distinct !{!70, !50}
!71 = distinct !{!71, !50}
!72 = !{!73, !43, i64 40}
!73 = !{!"Sculpt", !64, i64 0, !43, i64 40, !37, i64 44, !48, i64 56, !43, i64 60, !48, i64 64, !48, i64 68, !36, i64 72, !36, i64 80}
!74 = !{!73, !48, i64 56}
!75 = !{!73, !48, i64 68}
!76 = !{!73, !43, i64 60}
!77 = !{!73, !48, i64 64}
!78 = !{!73, !36, i64 72}
!79 = !{!80, !81, i64 40}
!80 = !{!"VPaint", !64, i64 0, !81, i64 40, !81, i64 42, !43, i64 44, !36, i64 48, !36, i64 56, !36, i64 64}
!81 = !{!"short", !37, i64 0}
!82 = !{!83, !81, i64 40}
!83 = !{!"ImagePaintSettings", !64, i64 0, !81, i64 40, !81, i64 42, !81, i64 44, !81, i64 46, !37, i64 48, !43, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !48, i64 100}
!84 = !{!83, !36, i64 64}
!85 = !{!83, !36, i64 80}
!86 = !{!83, !36, i64 72}
!87 = distinct !{!87, !50}
!88 = distinct !{!88, !50}
!89 = !{!83, !81, i64 44}
!90 = !{!83, !81, i64 46}
!91 = !{!81, !81, i64 0}
!92 = !{!83, !43, i64 52}
!93 = !{!83, !81, i64 42}
!94 = !{!"rna_sculpt_paint_gen.c:ParticleEdit_rna_properties_get"}
!95 = !{!96, !81, i64 6}
!96 = !{!"ParticleEditSettings", !81, i64 0, !81, i64 2, !81, i64 4, !81, i64 6, !37, i64 8, !36, i64 120, !48, i64 128, !48, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !36, i64 160}
!97 = !{!"rna_sculpt_paint_gen.c:rna_ParticleEdit_tool_set"}
!98 = !{!96, !36, i64 152}
!99 = !{!100, !36, i64 168}
!100 = !{!"Scene", !101, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !102, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !81, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !103, i64 280, !112, i64 4264, !102, i64 4296, !102, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !81, i64 4376, !81, i64 4378, !43, i64 4380, !102, i64 4384, !113, i64 4400, !114, i64 4416, !117, i64 4600, !36, i64 4608, !118, i64 4616, !36, i64 4640, !119, i64 4648, !119, i64 4656, !105, i64 4664, !106, i64 4824, !120, i64 4888, !36, i64 4952}
!101 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !81, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!102 = !{!"ListBase", !36, i64 0, !36, i64 8}
!103 = !{!"RenderData", !104, i64 0, !36, i64 248, !36, i64 256, !107, i64 264, !108, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !48, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !81, i64 432, !81, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !81, i64 456, !81, i64 458, !81, i64 460, !81, i64 462, !81, i64 464, !81, i64 466, !43, i64 468, !81, i64 472, !81, i64 474, !81, i64 476, !81, i64 478, !81, i64 480, !81, i64 482, !43, i64 484, !43, i64 488, !81, i64 492, !81, i64 494, !43, i64 496, !43, i64 500, !81, i64 504, !81, i64 506, !81, i64 508, !81, i64 510, !81, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !81, i64 528, !81, i64 530, !81, i64 532, !81, i64 534, !81, i64 536, !81, i64 538, !81, i64 540, !81, i64 542, !109, i64 544, !109, i64 560, !110, i64 576, !102, i64 592, !81, i64 608, !81, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !43, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !81, i64 648, !81, i64 650, !81, i64 652, !81, i64 654, !81, i64 656, !81, i64 658, !48, i64 660, !48, i64 664, !81, i64 668, !81, i64 670, !48, i64 672, !48, i64 676, !37, i64 680, !43, i64 1704, !81, i64 1708, !81, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !81, i64 2524, !81, i64 2526, !48, i64 2528, !48, i64 2532, !81, i64 2536, !81, i64 2538, !48, i64 2540, !81, i64 2544, !81, i64 2546, !43, i64 2548, !81, i64 2552, !81, i64 2554, !81, i64 2556, !81, i64 2558, !48, i64 2560, !48, i64 2564, !36, i64 2568, !43, i64 2576, !48, i64 2580, !37, i64 2584, !111, i64 2616, !43, i64 3976, !43, i64 3980}
!104 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !81, i64 8, !81, i64 10, !48, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !105, i64 24, !106, i64 184}
!105 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !48, i64 136, !48, i64 140, !36, i64 144, !36, i64 152}
!106 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!107 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !81, i64 48, !81, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!108 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !48, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!109 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!110 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!111 = !{!"BakeData", !104, i64 0, !37, i64 248, !81, i64 1272, !81, i64 1274, !81, i64 1276, !81, i64 1278, !48, i64 1280, !48, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!112 = !{!"AudioData", !43, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !43, i64 16, !81, i64 20, !81, i64 22, !48, i64 24, !48, i64 28}
!113 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!114 = !{!"GameData", !113, i64 0, !81, i64 16, !81, i64 18, !81, i64 20, !81, i64 22, !81, i64 24, !81, i64 26, !81, i64 28, !81, i64 30, !81, i64 32, !37, i64 34, !115, i64 40, !81, i64 64, !81, i64 66, !48, i64 68, !116, i64 72, !48, i64 128, !48, i64 132, !43, i64 136, !81, i64 140, !81, i64 142, !81, i64 144, !81, i64 146, !81, i64 148, !81, i64 150, !81, i64 152, !81, i64 154, !81, i64 156, !81, i64 158, !81, i64 160, !81, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!115 = !{!"GameDome", !81, i64 0, !81, i64 2, !81, i64 4, !81, i64 6, !48, i64 8, !48, i64 12, !36, i64 16}
!116 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !43, i64 40, !48, i64 44, !48, i64 48, !81, i64 52, !81, i64 54}
!117 = !{!"UnitSettings", !48, i64 0, !37, i64 4, !37, i64 5, !81, i64 6}
!118 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!119 = !{!"long", !37, i64 0}
!120 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!121 = !{!122, !36, i64 32}
!122 = !{!"Base", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !81, i64 28, !81, i64 30, !36, i64 32}
!123 = !{!96, !43, i64 136}
!124 = !{!96, !81, i64 0}
!125 = !{!96, !48, i64 128}
!126 = !{!96, !81, i64 4}
!127 = !{!"rna_sculpt_paint_gen.c:rna_ParticleEdit_brush_get"}
!128 = !{!96, !43, i64 144}
!129 = !{!96, !43, i64 148}
!130 = !{!96, !43, i64 140}
!131 = !{i32 0, i32 2}
!132 = !{!"rna_sculpt_paint_gen.c:rna_ParticleEdit_editable_get"}
!133 = !{!96, !36, i64 160}
!134 = !{!"rna_sculpt_paint_gen.c:rna_ParticleEdit_hair_get"}
!135 = !{!136, !36, i64 232}
!136 = !{!"PTCacheEdit", !102, i64 0, !36, i64 16, !36, i64 24, !137, i64 32, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !102, i64 280, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !37, i64 312, !37, i64 315}
!137 = !{!"PTCacheID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
!138 = !{!"rna_sculpt_paint_gen.c:ParticleBrush_rna_properties_get"}
!139 = !{!140, !81, i64 0}
!140 = !{!"ParticleBrushData", !81, i64 0, !81, i64 2, !81, i64 4, !81, i64 6, !43, i64 8, !48, i64 12}
!141 = !{!140, !48, i64 12}
!142 = !{!140, !81, i64 6}
!143 = !{!140, !81, i64 2}
!144 = !{!140, !81, i64 4}
!145 = !{!140, !43, i64 8}
!146 = !{!"rna_sculpt_paint_gen.c:rna_ParticleBrush_curve_get"}
!147 = !{!"rna_sculpt_paint_gen.c:rna_ImaPaint_detect_data"}
!148 = !{!149, !36, i64 0}
!149 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!150 = !{!"rna_sculpt_paint_gen.c:rna_Paint_brush_update"}
!151 = !{!"rna_sculpt_paint_gen.c:rna_Brush_mode_poll"}
!152 = !{!41, !36, i64 0}
!153 = !{!100, !36, i64 264}
!154 = !{!155, !36, i64 16}
!155 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !48, i64 32, !48, i64 36, !48, i64 40, !81, i64 44, !81, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !48, i64 52, !81, i64 56, !37, i64 58, !37, i64 59, !83, i64 64, !96, i64 168, !48, i64 336, !48, i64 340, !81, i64 344, !81, i64 346, !37, i64 348, !37, i64 349, !81, i64 350, !48, i64 352, !48, i64 356, !48, i64 360, !48, i64 364, !48, i64 368, !48, i64 372, !48, i64 376, !48, i64 380, !48, i64 384, !48, i64 388, !81, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !81, i64 434, !81, i64 436, !81, i64 438, !81, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !43, i64 448, !43, i64 452, !43, i64 456, !43, i64 460, !81, i64 464, !81, i64 466, !43, i64 468, !48, i64 472, !48, i64 476, !156, i64 480, !157, i64 608}
!156 = !{!"UnifiedPaintSettings", !43, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !37, i64 16, !37, i64 28, !43, i64 40, !37, i64 44, !48, i64 52, !43, i64 56, !43, i64 60, !37, i64 64, !37, i64 65, !48, i64 72, !37, i64 76, !43, i64 84, !48, i64 88, !37, i64 92, !37, i64 100, !43, i64 108, !36, i64 112, !48, i64 120, !43, i64 124}
!157 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !37, i64 20, !37, i64 21, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36}
!158 = !{!155, !36, i64 0}
!159 = !{!155, !36, i64 8}
!160 = !{!161, !81, i64 1846}
!161 = !{!"Brush", !101, i64 0, !162, i64 120, !36, i64 144, !163, i64 152, !163, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !48, i64 1840, !81, i64 1844, !81, i64 1846, !48, i64 1848, !43, i64 1852, !43, i64 1856, !43, i64 1860, !48, i64 1864, !43, i64 1868, !43, i64 1872, !43, i64 1876, !43, i64 1880, !48, i64 1884, !48, i64 1888, !37, i64 1892, !48, i64 1904, !37, i64 1908, !43, i64 1920, !48, i64 1924, !48, i64 1928, !43, i64 1932, !43, i64 1936, !43, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !48, i64 1948, !48, i64 1952, !48, i64 1956, !48, i64 1960, !48, i64 1964, !43, i64 1968, !43, i64 1972, !43, i64 1976, !48, i64 1980, !48, i64 1984, !43, i64 1988, !43, i64 1992, !48, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!162 = !{!"BrushClone", !36, i64 0, !37, i64 8, !48, i64 16, !48, i64 20}
!163 = !{!"MTex", !81, i64 0, !81, i64 2, !81, i64 4, !81, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !48, i64 116, !81, i64 120, !81, i64 122, !81, i64 124, !81, i64 126, !81, i64 128, !81, i64 130, !37, i64 132, !37, i64 133, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !48, i64 200, !48, i64 204, !48, i64 208, !48, i64 212, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !48, i64 252, !48, i64 256, !48, i64 260, !48, i64 264, !48, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !48, i64 308}
!164 = !{!"rna_sculpt_paint_gen.c:rna_Sculpt_update"}
!165 = !{!166, !36, i64 128}
!166 = !{!"Object", !101, i64 0, !36, i64 120, !36, i64 128, !81, i64 136, !81, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !167, i64 312, !36, i64 360, !102, i64 368, !102, i64 384, !102, i64 400, !102, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !48, i64 616, !48, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !81, i64 948, !81, i64 950, !81, i64 952, !81, i64 954, !81, i64 956, !81, i64 958, !81, i64 960, !81, i64 962, !81, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !81, i64 1036, !81, i64 1038, !81, i64 1040, !37, i64 1042, !37, i64 1043, !81, i64 1044, !37, i64 1046, !37, i64 1047, !48, i64 1048, !48, i64 1052, !102, i64 1056, !102, i64 1072, !102, i64 1088, !102, i64 1104, !48, i64 1120, !81, i64 1124, !81, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !81, i64 1162, !37, i64 1164, !102, i64 1176, !102, i64 1192, !102, i64 1208, !102, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !81, i64 1266, !48, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !119, i64 1304, !119, i64 1312, !43, i64 1320, !43, i64 1324, !102, i64 1328, !102, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !102, i64 1400, !36, i64 1416}
!167 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !81, i64 16, !81, i64 18, !81, i64 20, !81, i64 22, !81, i64 24, !81, i64 26, !81, i64 28, !81, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!168 = !{!169, !37, i64 88}
!169 = !{!"SculptSession", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !43, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !43, i64 80, !43, i64 84, !37, i64 88, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 113, !36, i64 120, !36, i64 128, !36, i64 136, !37, i64 144, !43, i64 148, !36, i64 152, !43, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 204, !37, i64 216, !43, i64 228}
!170 = !{!"rna_sculpt_paint_gen.c:rna_Sculpt_ShowDiffuseColor_update"}
!171 = !{!169, !37, i64 112}
!172 = !{!169, !36, i64 104}
!173 = !{!"rna_sculpt_paint_gen.c:rna_Sculpt_path"}
!174 = !{!"rna_sculpt_paint_gen.c:rna_UvSculpt_path"}
!175 = !{!"rna_sculpt_paint_gen.c:rna_VertexPaint_path"}
!176 = !{!"rna_sculpt_paint_gen.c:rna_ImaPaint_viewport_update"}
!177 = !{!"rna_sculpt_paint_gen.c:rna_ImaPaint_stencil_update"}
!178 = !{}
!179 = !{!166, !36, i64 1296}
!180 = !{!"rna_sculpt_paint_gen.c:rna_ImaPaint_canvas_update"}
!181 = !{!155, !36, i64 144}
!182 = distinct !{!182, !50}
!183 = distinct !{!183, !50}
!184 = !{!185, !43, i64 32}
!185 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !102, i64 16, !43, i64 32, !48, i64 36, !37, i64 40}
!186 = !{!187, !37, i64 10557}
!187 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !102, i64 16, !43, i64 32, !43, i64 36, !36, i64 40, !188, i64 48, !36, i64 88, !189, i64 96, !190, i64 5360, !36, i64 10520, !37, i64 10528, !48, i64 10536, !48, i64 10540, !48, i64 10544, !48, i64 10548, !48, i64 10552, !37, i64 10556, !37, i64 10557, !81, i64 10558, !81, i64 10560, !81, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !191, i64 10568}
!188 = !{!"ImageUser", !36, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !81, i64 28, !81, i64 30, !81, i64 32, !81, i64 34, !43, i64 36}
!189 = !{!"Scopes", !43, i64 0, !43, i64 4, !43, i64 8, !48, i64 12, !43, i64 16, !48, i64 20, !48, i64 24, !43, i64 28, !48, i64 32, !43, i64 36, !37, i64 40, !190, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !43, i64 5256, !43, i64 5260}
!190 = !{!"Histogram", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !48, i64 5128, !48, i64 5132, !81, i64 5136, !81, i64 5138, !43, i64 5140, !37, i64 5144}
!191 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!192 = !{!100, !36, i64 176}
!193 = distinct !{!193, !50}
!194 = !{!"rna_sculpt_paint_gen.c:rna_ImaPaint_mode_update"}
!195 = !{!"rna_sculpt_paint_gen.c:rna_ImagePaintSettings_path"}
!196 = !{!"rna_sculpt_paint_gen.c:rna_ParticleEdit_tool_itemf"}
!197 = !{!198, !43, i64 316}
!198 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !102, i64 72, !102, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !102, i64 152, !37, i64 168, !37, i64 232, !48, i64 296, !48, i64 300, !48, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !81, i64 340, !81, i64 342, !81, i64 344, !81, i64 346, !37, i64 348, !37, i64 540, !81, i64 564, !81, i64 566, !36, i64 568, !36, i64 576, !102, i64 584, !36, i64 600, !36, i64 608, !43, i64 616, !43, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !48, i64 648, !48, i64 652}
!199 = !{!"rna_sculpt_paint_gen.c:rna_ParticleEdit_update"}
!200 = !{!"rna_sculpt_paint_gen.c:rna_ParticleEdit_redo"}
!201 = !{!"rna_sculpt_paint_gen.c:rna_ParticleEdit_path"}
!202 = !{!"rna_sculpt_paint_gen.c:rna_ParticleBrush_path"}
