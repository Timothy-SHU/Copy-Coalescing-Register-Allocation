; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_brush_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_brush_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }

@.str = private unnamed_addr constant [5 x i8] c"BLOB\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Blob\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CLAY\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Clay\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"CLAY_STRIPS\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Clay Strips\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CREASE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Crease\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DRAW\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"FILL\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"FLATTEN\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Flatten\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"GRAB\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Grab\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"INFLATE\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Inflate\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"LAYER\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"NUDGE\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Nudge\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"PINCH\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Pinch\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ROTATE\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"SCRAPE\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Scrape\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"SIMPLIFY\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Simplify\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"SMOOTH\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"SNAKE_HOOK\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Snake Hook\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"THUMB\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Thumb\00", align 1
@brush_sculpt_tool_items = dso_local local_unnamed_addr global [20 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 17, ptr @.str, i32 781, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.3, i32 783, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18, ptr @.str.5, i32 784, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.7, i32 786, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.9, i32 800, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.11, i32 788, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.13, i32 789, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.15, i32 790, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.17, i32 791, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.19, i32 792, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19, ptr @.str.21, i32 794, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.23, i32 797, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.25, i32 798, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.27, i32 810, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.29, i32 799, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.31, i32 805, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.33, i32 802, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.35, i32 803, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.37, i32 809, ptr @.str.38, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.39 = private unnamed_addr constant [4 x i8] c"MIX\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"Use mix blending mode while painting\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Use add blending mode while painting\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"Use subtract blending mode while painting\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Use multiply blending mode while painting\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"BLUR\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Blur\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"Blur the color with surrounding values\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"LIGHTEN\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Lighten\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"Use lighten blending mode while painting\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"DARKEN\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"Darken\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"Use darken blending mode while painting\00", align 1
@brush_vertex_tool_items = dso_local local_unnamed_addr global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.39, i32 795, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 1, ptr @.str.42, i32 780, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 2, ptr @.str.45, i32 805, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 3, ptr @.str.48, i32 796, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 4, ptr @.str.51, i32 782, ptr @.str.52, ptr @.str.53 }, %struct.EnumPropertyItem { i32 5, ptr @.str.54, i32 793, ptr @.str.55, ptr @.str.56 }, %struct.EnumPropertyItem { i32 6, ptr @.str.57, i32 787, ptr @.str.58, ptr @.str.59 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.60 = private unnamed_addr constant [7 x i8] c"SOFTEN\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Soften\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"SMEAR\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"Smear\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"CLONE\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"Clone\00", align 1
@brush_image_tool_items = dso_local local_unnamed_addr global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.9, i32 806, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.60, i32 804, ptr @.str.61, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.62, i32 801, ptr @.str.63, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.64, i32 785, ptr @.str.65, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.11, i32 807, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.21, i32 808, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_CurveMapping = external global %struct.StructRNA, align 8
@RNA_PaintCurve = external global %struct.StructRNA, align 8
@RNA_ColorRamp = external global %struct.StructRNA, align 8
@RNA_BrushTextureSlot = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OperatorStrokeElement, ptr @RNA_ImapaintToolCapabilities, ptr null, %struct.ListBase { ptr @rna_BrushTextureSlot_angle, ptr @rna_BrushTextureSlot_mask_map_mode } }, ptr @.str.392, ptr null, ptr null, i32 4, ptr @.str.393, ptr @.str.394, ptr @.str.69, i32 166, ptr @rna_TextureSlot_name, ptr @rna_TextureSlot_rna_properties, ptr @RNA_TextureSlot, ptr null, ptr null, ptr @rna_TextureSlot_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_Texture = external global %struct.StructRNA, align 8
@RNA_Image = external global %struct.StructRNA, align 8
@rna_BrushCapabilities_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushCapabilities_rna_type, ptr null, i32 -1, ptr @.str.332, i32 128, ptr @.str.333, ptr @.str.334, i32 0, ptr @.str.69, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushCapabilities_rna_properties_begin, ptr @BrushCapabilities_rna_properties_next, ptr @BrushCapabilities_rna_properties_end, ptr @BrushCapabilities_rna_properties_get, ptr null, ptr null, ptr @BrushCapabilities_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SculptToolCapabilities_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_rna_type, ptr null, i32 -1, ptr @.str.332, i32 128, ptr @.str.333, ptr @.str.334, i32 0, ptr @.str.69, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_rna_properties_begin, ptr @SculptToolCapabilities_rna_properties_next, ptr @SculptToolCapabilities_rna_properties_end, ptr @SculptToolCapabilities_rna_properties_get, ptr null, ptr null, ptr @SculptToolCapabilities_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ImapaintToolCapabilities_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ImapaintToolCapabilities_rna_type, ptr null, i32 -1, ptr @.str.332, i32 128, ptr @.str.333, ptr @.str.334, i32 0, ptr @.str.69, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImapaintToolCapabilities_rna_properties_begin, ptr @ImapaintToolCapabilities_rna_properties_next, ptr @ImapaintToolCapabilities_rna_properties_end, ptr @ImapaintToolCapabilities_rna_properties_get, ptr null, ptr null, ptr @ImapaintToolCapabilities_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Brush_sculpt_tool = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_vertex_tool, ptr @rna_Brush_blend, i32 -1, ptr @.str.70, i32 3, ptr @.str.71, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_sculpt_tool_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_sculpt_tool_get, ptr @Brush_sculpt_tool_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_sculpt_tool_items, i32 19, i32 17 }, align 8
@.str.66 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"Blending mode\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"Brush blending mode\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Brush_blend_items = internal global [25 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 1, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 2, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 3, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 4, ptr @.str.54, i32 0, ptr @.str.55, ptr @.str.56 }, %struct.EnumPropertyItem { i32 5, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.59 }, %struct.EnumPropertyItem { i32 6, ptr @.str.412, i32 0, ptr @.str.413, ptr @.str.414 }, %struct.EnumPropertyItem { i32 7, ptr @.str.415, i32 0, ptr @.str.416, ptr @.str.417 }, %struct.EnumPropertyItem { i32 8, ptr @.str.418, i32 0, ptr @.str.419, ptr @.str.420 }, %struct.EnumPropertyItem { i32 9, ptr @.str.421, i32 0, ptr @.str.422, ptr @.str.423 }, %struct.EnumPropertyItem { i32 10, ptr @.str.424, i32 0, ptr @.str.425, ptr @.str.426 }, %struct.EnumPropertyItem { i32 11, ptr @.str.427, i32 0, ptr @.str.428, ptr @.str.429 }, %struct.EnumPropertyItem { i32 12, ptr @.str.430, i32 0, ptr @.str.431, ptr @.str.432 }, %struct.EnumPropertyItem { i32 13, ptr @.str.433, i32 0, ptr @.str.434, ptr @.str.435 }, %struct.EnumPropertyItem { i32 14, ptr @.str.436, i32 0, ptr @.str.437, ptr @.str.438 }, %struct.EnumPropertyItem { i32 15, ptr @.str.439, i32 0, ptr @.str.440, ptr @.str.441 }, %struct.EnumPropertyItem { i32 16, ptr @.str.442, i32 0, ptr @.str.443, ptr @.str.444 }, %struct.EnumPropertyItem { i32 17, ptr @.str.445, i32 0, ptr @.str.446, ptr @.str.447 }, %struct.EnumPropertyItem { i32 18, ptr @.str.448, i32 0, ptr @.str.449, ptr @.str.450 }, %struct.EnumPropertyItem { i32 19, ptr @.str.451, i32 0, ptr @.str.452, ptr @.str.453 }, %struct.EnumPropertyItem { i32 20, ptr @.str.454, i32 0, ptr @.str.455, ptr @.str.456 }, %struct.EnumPropertyItem { i32 21, ptr @.str.457, i32 0, ptr @.str.458, ptr @.str.459 }, %struct.EnumPropertyItem { i32 22, ptr @.str.460, i32 0, ptr @.str.461, ptr @.str.462 }, %struct.EnumPropertyItem { i32 23, ptr @.str.463, i32 0, ptr @.str.113, ptr @.str.464 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_blend = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_sculpt_tool, ptr null, i32 -1, ptr @.str.66, i32 3, ptr @.str.67, ptr @.str.68, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_blend_get, ptr @Brush_blend_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_blend_items, i32 24, i32 0 }, align 8
@rna_Brush_vertex_tool = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_image_tool, ptr @rna_Brush_sculpt_tool, i32 -1, ptr @.str.72, i32 3, ptr @.str.67, ptr @.str.68, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_vertex_tool_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_vertex_tool_get, ptr @Brush_vertex_tool_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_vertex_tool_items, i32 7, i32 0 }, align 8
@.str.70 = private unnamed_addr constant [12 x i8] c"sculpt_tool\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"Sculpt Tool\00", align 1
@rna_Brush_sculpt_tool_items = internal global [20 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 17, ptr @.str, i32 781, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.3, i32 783, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18, ptr @.str.5, i32 784, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.7, i32 786, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.9, i32 800, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.11, i32 788, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.13, i32 789, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.15, i32 790, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.17, i32 791, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.19, i32 792, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19, ptr @.str.21, i32 794, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.23, i32 797, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.25, i32 798, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.27, i32 810, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.29, i32 799, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.31, i32 805, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.33, i32 802, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.35, i32 803, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.37, i32 809, ptr @.str.38, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_image_tool = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_direction, ptr @rna_Brush_vertex_tool, i32 -1, ptr @.str.73, i32 3, ptr @.str.74, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_imagepaint_tool_update, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_image_tool_get, ptr @Brush_image_tool_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_image_tool_items, i32 6, i32 0 }, align 8
@.str.72 = private unnamed_addr constant [12 x i8] c"vertex_tool\00", align 1
@rna_Brush_vertex_tool_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.39, i32 795, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 1, ptr @.str.42, i32 780, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 2, ptr @.str.45, i32 805, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 3, ptr @.str.48, i32 796, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 4, ptr @.str.51, i32 782, ptr @.str.52, ptr @.str.53 }, %struct.EnumPropertyItem { i32 5, ptr @.str.54, i32 793, ptr @.str.55, ptr @.str.56 }, %struct.EnumPropertyItem { i32 6, ptr @.str.57, i32 787, ptr @.str.58, ptr @.str.59 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_direction = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_stroke_method, ptr @rna_Brush_image_tool, i32 -1, ptr @.str.75, i32 3, ptr @.str.76, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_direction_get, ptr @Brush_direction_set, ptr @rna_Brush_direction_itemf, ptr null, ptr null, ptr null, ptr @rna_Brush_direction_items, i32 2, i32 0 }, align 8
@.str.73 = private unnamed_addr constant [11 x i8] c"image_tool\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Image Paint Tool\00", align 1
@rna_Brush_image_tool_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.9, i32 806, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.60, i32 804, ptr @.str.61, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.62, i32 801, ptr @.str.63, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.64, i32 785, ptr @.str.65, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.11, i32 807, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.21, i32 808, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_stroke_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_texture_angle_source_random, ptr @rna_Brush_direction, i32 -1, ptr @.str.77, i32 3, ptr @.str.78, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_stroke_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_stroke_method_get, ptr @Brush_stroke_method_set, ptr @rna_Brush_stroke_itemf, ptr null, ptr null, ptr null, ptr @rna_Brush_stroke_method_items, i32 7, i32 0 }, align 8
@.str.75 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@rna_Brush_direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.468 }, %struct.EnumPropertyItem { i32 512, ptr @.str.484, i32 0, ptr @.str.46, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_texture_angle_source_random = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_texture_angle_source_no_random, ptr @rna_Brush_stroke_method, i32 -1, ptr @.str.79, i32 3, ptr @.str.80, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_texture_angle_source_random_get, ptr @Brush_texture_angle_source_random_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_texture_angle_source_random_items, i32 3, i32 0 }, align 8
@.str.77 = private unnamed_addr constant [14 x i8] c"stroke_method\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"Stroke Method\00", align 1
@rna_Brush_stroke_method_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.485, i32 0, ptr @.str.486, ptr @.str.487 }, %struct.EnumPropertyItem { i32 8388608, ptr @.str.493, i32 0, ptr @.str.494, ptr @.str.495 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.488, i32 0, ptr @.str.218, ptr @.str.219 }, %struct.EnumPropertyItem { i32 1, ptr @.str.489, i32 0, ptr @.str.167, ptr @.str.168 }, %struct.EnumPropertyItem { i32 256, ptr @.str.496, i32 0, ptr @.str.215, ptr @.str.216 }, %struct.EnumPropertyItem { i32 536870912, ptr @.str.490, i32 0, ptr @.str.221, ptr @.str.222 }, %struct.EnumPropertyItem { i32 -2147483648, ptr @.str.492, i32 0, ptr @.str.224, ptr @.str.497 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_texture_angle_source_no_random = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_sculpt_plane, ptr @rna_Brush_texture_angle_source_random, i32 -1, ptr @.str.81, i32 3, ptr @.str.80, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_texture_angle_source_no_random_get, ptr @Brush_texture_angle_source_no_random_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_texture_angle_source_no_random_items, i32 2, i32 0 }, align 8
@.str.79 = private unnamed_addr constant [28 x i8] c"texture_angle_source_random\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"Texture Angle Source\00", align 1
@rna_Brush_texture_angle_source_random_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.498, i32 0, ptr @.str.499, ptr @.str.500 }, %struct.EnumPropertyItem { i32 128, ptr @.str.501, i32 0, ptr @.str.200, ptr @.str.201 }, %struct.EnumPropertyItem { i32 33554432, ptr @.str.502, i32 0, ptr @.str.503, ptr @.str.207 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_sculpt_plane = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_mask_tool, ptr @rna_Brush_texture_angle_source_no_random, i32 -1, ptr @.str.82, i32 3, ptr @.str.83, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_sculpt_plane_get, ptr @Brush_sculpt_plane_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_sculpt_plane_items, i32 5, i32 0 }, align 8
@.str.81 = private unnamed_addr constant [31 x i8] c"texture_angle_source_no_random\00", align 1
@rna_Brush_texture_angle_source_no_random_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.498, i32 0, ptr @.str.499, ptr @.str.500 }, %struct.EnumPropertyItem { i32 128, ptr @.str.501, i32 0, ptr @.str.200, ptr @.str.201 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_mask_tool = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_size, ptr @rna_Brush_sculpt_plane, i32 -1, ptr @.str.84, i32 3, ptr @.str.85, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_mask_tool_get, ptr @Brush_mask_tool_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_mask_tool_items, i32 2, i32 0 }, align 8
@.str.82 = private unnamed_addr constant [13 x i8] c"sculpt_plane\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"Sculpt Plane\00", align 1
@rna_Brush_sculpt_plane_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.504, i32 0, ptr @.str.505, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.506, i32 0, ptr @.str.507, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.508, i32 0, ptr @.str.509, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.510, i32 0, ptr @.str.511, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.512, i32 0, ptr @.str.513, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_unprojected_radius, ptr @rna_Brush_mask_tool, i32 -1, ptr @.str.86, i32 3, ptr @.str.87, ptr @.str.88, i32 0, ptr @.str.69, i32 1, i32 12, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_size_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_size_get, ptr @Brush_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 200, i32 1, i32 2000, i32 1, i32 0, ptr null }, align 8
@.str.84 = private unnamed_addr constant [10 x i8] c"mask_tool\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Mask Tool\00", align 1
@rna_Brush_mask_tool_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_unprojected_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_jitter, ptr @rna_Brush_size, i32 -1, ptr @.str.89, i32 3, ptr @.str.90, ptr @.str.91, i32 0, ptr @.str.69, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_size_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_unprojected_radius_get, ptr @Brush_unprojected_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+00, float 0x3F50624DE0000000, float 0x47EFFFFFE0000000, float 0.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.86 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"Radius of the brush in pixels\00", align 1
@rna_Brush_jitter = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_jitter_absolute, ptr @rna_Brush_unprojected_radius, i32 -1, ptr @.str.92, i32 8195, ptr @.str.93, ptr @.str.94, i32 0, ptr @.str.69, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1864, i32 4, ptr null, ptr null }, ptr @Brush_jitter_get, ptr @Brush_jitter_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 1.000000e+03, float 0x3FB99999A0000000, i32 4, float 0.000000e+00, ptr null }, align 8
@.str.89 = private unnamed_addr constant [19 x i8] c"unprojected_radius\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"Unprojected Radius\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"Radius of brush in Blender units\00", align 1
@rna_Brush_jitter_absolute = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_spacing, ptr @rna_Brush_jitter, i32 -1, ptr @.str.95, i32 8195, ptr @.str.93, ptr @.str.96, i32 0, ptr @.str.69, i32 1, i32 12, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1868, i32 0, ptr null, ptr null }, ptr @Brush_jitter_absolute_get, ptr @Brush_jitter_absolute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1000000, i32 0, i32 1000000, i32 1, i32 0, ptr null }, align 8
@.str.92 = private unnamed_addr constant [7 x i8] c"jitter\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"Jitter\00", align 1
@.str.94 = private unnamed_addr constant [48 x i8] c"Jitter the position of the brush while painting\00", align 1
@rna_Brush_spacing = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_grad_spacing, ptr @rna_Brush_jitter_absolute, i32 -1, ptr @.str.97, i32 8195, ptr @.str.98, ptr @.str.99, i32 0, ptr @.str.69, i32 1, i32 14, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1876, i32 0, ptr null, ptr null }, ptr @Brush_spacing_get, ptr @Brush_spacing_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 500, i32 1, i32 1000, i32 5, i32 0, ptr null }, align 8
@.str.95 = private unnamed_addr constant [16 x i8] c"jitter_absolute\00", align 1
@.str.96 = private unnamed_addr constant [58 x i8] c"Jitter the position of the brush in pixels while painting\00", align 1
@rna_Brush_grad_spacing = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_smooth_stroke_radius, ptr @rna_Brush_spacing, i32 -1, ptr @.str.100, i32 8195, ptr @.str.101, ptr @.str.102, i32 0, ptr @.str.69, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1932, i32 0, ptr null, ptr null }, ptr @Brush_grad_spacing_get, ptr @Brush_grad_spacing_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10000, i32 1, i32 10000, i32 5, i32 0, ptr null }, align 8
@.str.97 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"Spacing\00", align 1
@.str.99 = private unnamed_addr constant [62 x i8] c"Spacing between brush daubs as a percentage of brush diameter\00", align 1
@rna_Brush_smooth_stroke_radius = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_smooth_stroke_factor, ptr @rna_Brush_grad_spacing, i32 -1, ptr @.str.103, i32 8195, ptr @.str.104, ptr @.str.105, i32 0, ptr @.str.69, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1880, i32 0, ptr null, ptr null }, ptr @Brush_smooth_stroke_radius_get, ptr @Brush_smooth_stroke_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 10, i32 200, i32 10, i32 200, i32 1, i32 0, ptr null }, align 8
@.str.100 = private unnamed_addr constant [13 x i8] c"grad_spacing\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"Gradient Spacing\00", align 1
@.str.102 = private unnamed_addr constant [47 x i8] c"Spacing before brush gradient goes full circle\00", align 1
@rna_Brush_smooth_stroke_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_rate, ptr @rna_Brush_smooth_stroke_radius, i32 -1, ptr @.str.106, i32 8195, ptr @.str.107, ptr @.str.108, i32 0, ptr @.str.69, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1884, i32 4, ptr null, ptr null }, ptr @Brush_smooth_stroke_factor_get, ptr @Brush_smooth_stroke_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 5.000000e-01, float 0x3FEFAE1480000000, float 5.000000e-01, float 0x3FEFAE1480000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.103 = private unnamed_addr constant [21 x i8] c"smooth_stroke_radius\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"Smooth Stroke Radius\00", align 1
@.str.105 = private unnamed_addr constant [57 x i8] c"Minimum distance from last point before stroke continues\00", align 1
@rna_Brush_rate = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_color, ptr @rna_Brush_smooth_stroke_factor, i32 -1, ptr @.str.109, i32 8195, ptr @.str.110, ptr @.str.111, i32 0, ptr @.str.69, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1888, i32 4, ptr null, ptr null }, ptr @Brush_rate_get, ptr @Brush_rate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+00, float 0x3F1A36E2E0000000, float 1.000000e+04, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.106 = private unnamed_addr constant [21 x i8] c"smooth_stroke_factor\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"Smooth Stroke Factor\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"Higher values give a smoother stroke\00", align 1
@rna_Brush_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_secondary_color, ptr @rna_Brush_rate, i32 -1, ptr @.str.112, i32 8195, ptr @.str.113, ptr @.str.2, i32 0, ptr @.str.69, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1892, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_color_get, ptr @Brush_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_color_default }, align 8
@.str.109 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"Rate\00", align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"Interval between paints for Airbrush\00", align 1
@rna_Brush_secondary_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_weight, ptr @rna_Brush_color, i32 -1, ptr @.str.114, i32 8195, ptr @.str.115, ptr @.str.2, i32 0, ptr @.str.69, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1908, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_secondary_color_get, ptr @Brush_secondary_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_secondary_color_default }, align 8
@.str.112 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@rna_Brush_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_Brush_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_strength, ptr @rna_Brush_secondary_color, i32 -1, ptr @.str.116, i32 8195, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.69, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1848, i32 4, ptr null, ptr null }, ptr @Brush_weight_get, ptr @Brush_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3F50624DE0000000, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.114 = private unnamed_addr constant [16 x i8] c"secondary_color\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"Secondary Color\00", align 1
@rna_Brush_secondary_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_Brush_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_plane_offset, ptr @rna_Brush_weight, i32 -1, ptr @.str.119, i32 8195, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.69, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1904, i32 4, ptr null, ptr null }, ptr @Brush_strength_get, ptr @Brush_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+01, float 0x3F50624DE0000000, i32 3, float 5.000000e-01, ptr null }, align 8
@.str.116 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.118 = private unnamed_addr constant [36 x i8] c"Vertex weight when brush is applied\00", align 1
@rna_Brush_plane_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_plane_trim, ptr @rna_Brush_strength, i32 -1, ptr @.str.122, i32 8195, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.69, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1924, i32 4, ptr null, ptr null }, ptr @Brush_plane_offset_get, ptr @Brush_plane_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e-01, float 5.000000e-01, float -2.000000e+00, float 2.000000e+00, float 0x3F50624DE0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.119 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.121 = private unnamed_addr constant [53 x i8] c"How powerful the effect of the brush is when applied\00", align 1
@rna_Brush_plane_trim = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_height, ptr @rna_Brush_plane_offset, i32 -1, ptr @.str.125, i32 8195, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.69, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1956, i32 4, ptr null, ptr null }, ptr @Brush_plane_trim_get, ptr @Brush_plane_trim_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 5.000000e-01, ptr null }, align 8
@.str.122 = private unnamed_addr constant [13 x i8] c"plane_offset\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"Plane Offset\00", align 1
@.str.124 = private unnamed_addr constant [77 x i8] c"Adjust plane on which the brush acts towards or away from the object surface\00", align 1
@rna_Brush_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_texture_sample_bias, ptr @rna_Brush_plane_trim, i32 -1, ptr @.str.128, i32 8195, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.69, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1960, i32 4, ptr null, ptr null }, ptr @Brush_height_get, ptr @Brush_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 5.000000e-01, ptr null }, align 8
@.str.125 = private unnamed_addr constant [11 x i8] c"plane_trim\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"Plane Trim\00", align 1
@.str.127 = private unnamed_addr constant [81 x i8] c"If a vertex is further away from offset plane than this, then it is not affected\00", align 1
@rna_Brush_texture_sample_bias = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_normal_weight, ptr @rna_Brush_height, i32 -1, ptr @.str.131, i32 8195, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.69, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1964, i32 4, ptr null, ptr null }, ptr @Brush_texture_sample_bias_get, ptr @Brush_texture_sample_bias_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.128 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"Brush Height\00", align 1
@.str.130 = private unnamed_addr constant [63 x i8] c"Affectable height of brush (layer height for layer tool, i.e.)\00", align 1
@rna_Brush_normal_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_crease_pinch_factor, ptr @rna_Brush_texture_sample_bias, i32 -1, ptr @.str.134, i32 8195, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.69, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1840, i32 4, ptr null, ptr null }, ptr @Brush_normal_weight_get, ptr @Brush_normal_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.131 = private unnamed_addr constant [20 x i8] c"texture_sample_bias\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"Texture Sample Bias\00", align 1
@.str.133 = private unnamed_addr constant [31 x i8] c"Value added to texture samples\00", align 1
@rna_Brush_crease_pinch_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_auto_smooth_factor, ptr @rna_Brush_normal_weight, i32 -1, ptr @.str.137, i32 8195, ptr @.str.138, ptr @.str.139, i32 0, ptr @.str.69, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1952, i32 4, ptr null, ptr null }, ptr @Brush_crease_pinch_factor_get, ptr @Brush_crease_pinch_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0x3FE5555560000000, ptr null }, align 8
@.str.134 = private unnamed_addr constant [14 x i8] c"normal_weight\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"Normal Weight\00", align 1
@.str.136 = private unnamed_addr constant [62 x i8] c"How much grab will pull vertexes out of surface during a grab\00", align 1
@rna_Brush_auto_smooth_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_stencil_pos, ptr @rna_Brush_crease_pinch_factor, i32 -1, ptr @.str.140, i32 8195, ptr @.str.141, ptr @.str.142, i32 0, ptr @.str.69, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1948, i32 4, ptr null, ptr null }, ptr @Brush_auto_smooth_factor_get, ptr @Brush_auto_smooth_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3F50624DE0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.137 = private unnamed_addr constant [20 x i8] c"crease_pinch_factor\00", align 1
@.str.138 = private unnamed_addr constant [26 x i8] c"Crease Brush Pinch Factor\00", align 1
@.str.139 = private unnamed_addr constant [34 x i8] c"How much the crease brush pinches\00", align 1
@rna_Brush_stencil_pos = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_stencil_dimension, ptr @rna_Brush_auto_smooth_factor, i32 -1, ptr @.str.143, i32 8195, ptr @.str.144, ptr @.str.145, i32 0, ptr @.str.69, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 2024, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_stencil_pos_get, ptr @Brush_stencil_pos_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_stencil_pos_default }, align 8
@.str.140 = private unnamed_addr constant [19 x i8] c"auto_smooth_factor\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"Autosmooth\00", align 1
@.str.142 = private unnamed_addr constant [58 x i8] c"Amount of smoothing to automatically apply to each stroke\00", align 1
@rna_Brush_stencil_dimension = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_mask_stencil_pos, ptr @rna_Brush_stencil_pos, i32 -1, ptr @.str.146, i32 8195, ptr @.str.147, ptr @.str.148, i32 0, ptr @.str.69, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 2032, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_stencil_dimension_get, ptr @Brush_stencil_dimension_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_stencil_dimension_default }, align 8
@.str.143 = private unnamed_addr constant [12 x i8] c"stencil_pos\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"Stencil Position\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"Position of stencil in viewport\00", align 1
@rna_Brush_stencil_pos_default = internal global [2 x float] zeroinitializer, align 4
@rna_Brush_mask_stencil_pos = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_mask_stencil_dimension, ptr @rna_Brush_stencil_dimension, i32 -1, ptr @.str.149, i32 8195, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.69, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 2040, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_mask_stencil_pos_get, ptr @Brush_mask_stencil_pos_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_mask_stencil_pos_default }, align 8
@.str.146 = private unnamed_addr constant [18 x i8] c"stencil_dimension\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"Stencil Dimensions\00", align 1
@.str.148 = private unnamed_addr constant [34 x i8] c"Dimensions of stencil in viewport\00", align 1
@rna_Brush_stencil_dimension_default = internal global [2 x float] zeroinitializer, align 4
@rna_Brush_mask_stencil_dimension = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_sharp_threshold, ptr @rna_Brush_mask_stencil_pos, i32 -1, ptr @.str.152, i32 8195, ptr @.str.153, ptr @.str.154, i32 0, ptr @.str.69, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 2048, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_mask_stencil_dimension_get, ptr @Brush_mask_stencil_dimension_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_mask_stencil_dimension_default }, align 8
@.str.149 = private unnamed_addr constant [17 x i8] c"mask_stencil_pos\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"Mask Stencil Position\00", align 1
@.str.151 = private unnamed_addr constant [37 x i8] c"Position of mask stencil in viewport\00", align 1
@rna_Brush_mask_stencil_pos_default = internal global [2 x float] zeroinitializer, align 4
@rna_Brush_sharp_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_fill_threshold, ptr @rna_Brush_mask_stencil_dimension, i32 -1, ptr @.str.155, i32 8195, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.69, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1984, i32 4, ptr null, ptr null }, ptr @Brush_sharp_threshold_get, ptr @Brush_sharp_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+02, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.152 = private unnamed_addr constant [23 x i8] c"mask_stencil_dimension\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"Mask Stencil Dimensions\00", align 1
@.str.154 = private unnamed_addr constant [39 x i8] c"Dimensions of mask stencil in viewport\00", align 1
@rna_Brush_mask_stencil_dimension_default = internal global [2 x float] zeroinitializer, align 4
@rna_Brush_fill_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_blur_kernel_radius, ptr @rna_Brush_sharp_threshold, i32 -1, ptr @.str.158, i32 8195, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.69, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1996, i32 4, ptr null, ptr null }, ptr @Brush_fill_threshold_get, ptr @Brush_fill_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+02, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.155 = private unnamed_addr constant [16 x i8] c"sharp_threshold\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"Sharp Threshold\00", align 1
@.str.157 = private unnamed_addr constant [45 x i8] c"Threshold below which, no sharpening is done\00", align 1
@rna_Brush_blur_kernel_radius = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_blur_mode, ptr @rna_Brush_fill_threshold, i32 -1, ptr @.str.161, i32 8195, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.69, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1988, i32 0, ptr null, ptr null }, ptr @Brush_blur_kernel_radius_get, ptr @Brush_blur_kernel_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 50, i32 1, i32 10000, i32 1, i32 0, ptr null }, align 8
@.str.158 = private unnamed_addr constant [15 x i8] c"fill_threshold\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"Fill Threshold\00", align 1
@.str.160 = private unnamed_addr constant [48 x i8] c"Threshold above which filling is not propagated\00", align 1
@rna_Brush_blur_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_airbrush, ptr @rna_Brush_blur_kernel_radius, i32 -1, ptr @.str.164, i32 3, ptr @.str.165, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_blur_mode_get, ptr @Brush_blur_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_blur_mode_items, i32 2, i32 0 }, align 8
@.str.161 = private unnamed_addr constant [19 x i8] c"blur_kernel_radius\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"Kernel Radius\00", align 1
@.str.163 = private unnamed_addr constant [55 x i8] c"Radius of kernel used for soften and sharpen in pixels\00", align 1
@rna_Brush_use_airbrush = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_original_normal, ptr @rna_Brush_blur_mode, i32 -1, ptr @.str.166, i32 3, ptr @.str.167, ptr @.str.168, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_airbrush_get, ptr @Brush_use_airbrush_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.164 = private unnamed_addr constant [10 x i8] c"blur_mode\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"Blur Mode\00", align 1
@rna_Brush_blur_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.514, i32 0, ptr @.str.515, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.516, i32 0, ptr @.str.517, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_use_original_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_wrap, ptr @rna_Brush_use_airbrush, i32 -1, ptr @.str.169, i32 4099, ptr @.str.170, ptr @.str.171, i32 40, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_original_normal_get, ptr @Brush_use_original_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.166 = private unnamed_addr constant [13 x i8] c"use_airbrush\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"Airbrush\00", align 1
@.str.168 = private unnamed_addr constant [55 x i8] c"Keep applying paint effect while holding mouse (spray)\00", align 1
@rna_Brush_use_wrap = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_pressure_strength, ptr @rna_Brush_use_original_normal, i32 -1, ptr @.str.172, i32 3, ptr @.str.173, ptr @.str.174, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_wrap_get, ptr @Brush_use_wrap_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.169 = private unnamed_addr constant [20 x i8] c"use_original_normal\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"Original Normal\00", align 1
@.str.171 = private unnamed_addr constant [68 x i8] c"When locked keep using normal of surface where stroke was initiated\00", align 1
@rna_Brush_use_pressure_strength = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_offset_pressure, ptr @rna_Brush_use_wrap, i32 -1, ptr @.str.175, i32 3, ptr @.str.176, ptr @.str.177, i32 67, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_pressure_strength_get, ptr @Brush_use_pressure_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.172 = private unnamed_addr constant [9 x i8] c"use_wrap\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"Wrap\00", align 1
@.str.174 = private unnamed_addr constant [37 x i8] c"Enable torus wrapping while painting\00", align 1
@rna_Brush_use_offset_pressure = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_pressure_size, ptr @rna_Brush_use_pressure_strength, i32 -1, ptr @.str.178, i32 3, ptr @.str.179, ptr @.str.180, i32 67, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_offset_pressure_get, ptr @Brush_use_offset_pressure_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.175 = private unnamed_addr constant [22 x i8] c"use_pressure_strength\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"Strength Pressure\00", align 1
@.str.177 = private unnamed_addr constant [48 x i8] c"Enable tablet pressure sensitivity for strength\00", align 1
@rna_Brush_use_pressure_size = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_gradient, ptr @rna_Brush_use_offset_pressure, i32 -1, ptr @.str.181, i32 3, ptr @.str.182, ptr @.str.183, i32 67, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_pressure_size_get, ptr @Brush_use_pressure_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.178 = private unnamed_addr constant [20 x i8] c"use_offset_pressure\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"Plane Offset Pressure\00", align 1
@.str.180 = private unnamed_addr constant [46 x i8] c"Enable tablet pressure sensitivity for offset\00", align 1
@rna_Brush_use_gradient = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_pressure_jitter, ptr @rna_Brush_use_pressure_size, i32 -1, ptr @.str.184, i32 3, ptr @.str.185, ptr @.str.186, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_gradient_get, ptr @Brush_use_gradient_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.181 = private unnamed_addr constant [18 x i8] c"use_pressure_size\00", align 1
@.str.182 = private unnamed_addr constant [14 x i8] c"Size Pressure\00", align 1
@.str.183 = private unnamed_addr constant [44 x i8] c"Enable tablet pressure sensitivity for size\00", align 1
@rna_Brush_use_pressure_jitter = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_pressure_spacing, ptr @rna_Brush_use_gradient, i32 -1, ptr @.str.187, i32 3, ptr @.str.188, ptr @.str.189, i32 67, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_pressure_jitter_get, ptr @Brush_use_pressure_jitter_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.184 = private unnamed_addr constant [13 x i8] c"use_gradient\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"Use Gradient\00", align 1
@.str.186 = private unnamed_addr constant [44 x i8] c"Use Gradient by utilizing a sampling method\00", align 1
@rna_Brush_use_pressure_spacing = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_pressure_masking, ptr @rna_Brush_use_pressure_jitter, i32 -1, ptr @.str.190, i32 3, ptr @.str.191, ptr @.str.192, i32 67, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_pressure_spacing_get, ptr @Brush_use_pressure_spacing_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.187 = private unnamed_addr constant [20 x i8] c"use_pressure_jitter\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"Jitter Pressure\00", align 1
@.str.189 = private unnamed_addr constant [46 x i8] c"Enable tablet pressure sensitivity for jitter\00", align 1
@rna_Brush_use_pressure_masking = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_inverse_smooth_pressure, ptr @rna_Brush_use_pressure_spacing, i32 -1, ptr @.str.193, i32 3, ptr @.str.194, ptr @.str.195, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_pressure_masking_get, ptr @Brush_use_pressure_masking_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_use_pressure_masking_items, i32 3, i32 0 }, align 8
@.str.190 = private unnamed_addr constant [21 x i8] c"use_pressure_spacing\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"Spacing Pressure\00", align 1
@.str.192 = private unnamed_addr constant [47 x i8] c"Enable tablet pressure sensitivity for spacing\00", align 1
@rna_Brush_use_inverse_smooth_pressure = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_rake, ptr @rna_Brush_use_pressure_masking, i32 -1, ptr @.str.196, i32 3, ptr @.str.197, ptr @.str.198, i32 67, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_inverse_smooth_pressure_get, ptr @Brush_use_inverse_smooth_pressure_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.193 = private unnamed_addr constant [21 x i8] c"use_pressure_masking\00", align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"Mask Pressure Mode\00", align 1
@.str.195 = private unnamed_addr constant [45 x i8] c"Pen pressure makes texture influence smaller\00", align 1
@rna_Brush_use_pressure_masking_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.518, i32 0, ptr @.str.519, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.520, i32 67, ptr @.str.521, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.522, i32 67, ptr @.str.523, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_use_rake = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_relative_jitter, ptr @rna_Brush_use_inverse_smooth_pressure, i32 -1, ptr @.str.199, i32 3, ptr @.str.200, ptr @.str.201, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_rake_get, ptr @Brush_use_rake_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.196 = private unnamed_addr constant [28 x i8] c"use_inverse_smooth_pressure\00", align 1
@.str.197 = private unnamed_addr constant [24 x i8] c"Inverse Smooth Pressure\00", align 1
@.str.198 = private unnamed_addr constant [53 x i8] c"Lighter pressure causes more smoothing to be applied\00", align 1
@rna_Brush_use_relative_jitter = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_random_rotation, ptr @rna_Brush_use_rake, i32 -1, ptr @.str.202, i32 4099, ptr @.str.203, ptr @.str.204, i32 40, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_relative_jitter_get, ptr @Brush_use_relative_jitter_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.199 = private unnamed_addr constant [9 x i8] c"use_rake\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"Rake\00", align 1
@.str.201 = private unnamed_addr constant [55 x i8] c"Rotate the brush texture to match the stroke direction\00", align 1
@rna_Brush_use_random_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_plane_trim, ptr @rna_Brush_use_relative_jitter, i32 -1, ptr @.str.205, i32 3, ptr @.str.206, ptr @.str.207, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_random_rotation_get, ptr @Brush_use_random_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.202 = private unnamed_addr constant [20 x i8] c"use_relative_jitter\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"Absolute Jitter\00", align 1
@.str.204 = private unnamed_addr constant [62 x i8] c"Jittering happens in screen space, not relative to brush size\00", align 1
@rna_Brush_use_plane_trim = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_frontface, ptr @rna_Brush_use_random_rotation, i32 -1, ptr @.str.208, i32 3, ptr @.str.209, ptr @.str.210, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_plane_trim_get, ptr @Brush_use_plane_trim_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.205 = private unnamed_addr constant [20 x i8] c"use_random_rotation\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"Random Rotation\00", align 1
@.str.207 = private unnamed_addr constant [35 x i8] c"Rotate the brush texture at random\00", align 1
@rna_Brush_use_frontface = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_anchor, ptr @rna_Brush_use_plane_trim, i32 -1, ptr @.str.211, i32 3, ptr @.str.212, ptr @.str.213, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_frontface_get, ptr @Brush_use_frontface_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.208 = private unnamed_addr constant [15 x i8] c"use_plane_trim\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"Use Plane Trim\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"Enable Plane Trim\00", align 1
@rna_Brush_use_anchor = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_space, ptr @rna_Brush_use_frontface, i32 -1, ptr @.str.214, i32 3, ptr @.str.215, ptr @.str.216, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_anchor_get, ptr @Brush_use_anchor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.211 = private unnamed_addr constant [14 x i8] c"use_frontface\00", align 1
@.str.212 = private unnamed_addr constant [15 x i8] c"Use Front-Face\00", align 1
@.str.213 = private unnamed_addr constant [49 x i8] c"Brush only affects vertexes that face the viewer\00", align 1
@rna_Brush_use_space = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_line, ptr @rna_Brush_use_anchor, i32 -1, ptr @.str.217, i32 3, ptr @.str.218, ptr @.str.219, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_space_get, ptr @Brush_use_space_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.214 = private unnamed_addr constant [11 x i8] c"use_anchor\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"Anchored\00", align 1
@.str.216 = private unnamed_addr constant [48 x i8] c"Keep the brush anchored to the initial location\00", align 1
@rna_Brush_use_line = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_curve, ptr @rna_Brush_use_space, i32 -1, ptr @.str.220, i32 3, ptr @.str.221, ptr @.str.222, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_line_get, ptr @Brush_use_line_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.217 = private unnamed_addr constant [10 x i8] c"use_space\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.219 = private unnamed_addr constant [61 x i8] c"Limit brush application to the distance specified by spacing\00", align 1
@rna_Brush_use_curve = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_smooth_stroke, ptr @rna_Brush_use_line, i32 -1, ptr @.str.223, i32 3, ptr @.str.224, ptr @.str.225, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_curve_get, ptr @Brush_use_curve_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.220 = private unnamed_addr constant [9 x i8] c"use_line\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.222 = private unnamed_addr constant [53 x i8] c"Draw a line with dabs separated according to spacing\00", align 1
@rna_Brush_use_smooth_stroke = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_persistent, ptr @rna_Brush_use_curve, i32 -1, ptr @.str.226, i32 3, ptr @.str.227, ptr @.str.228, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_smooth_stroke_get, ptr @Brush_use_smooth_stroke_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.223 = private unnamed_addr constant [10 x i8] c"use_curve\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.225 = private unnamed_addr constant [85 x i8] c"Define the stroke curve with a bezier curve. Dabs are separated according to spacing\00", align 1
@rna_Brush_use_persistent = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_accumulate, ptr @rna_Brush_use_smooth_stroke, i32 -1, ptr @.str.229, i32 3, ptr @.str.230, ptr @.str.231, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_persistent_get, ptr @Brush_use_persistent_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.226 = private unnamed_addr constant [18 x i8] c"use_smooth_stroke\00", align 1
@.str.227 = private unnamed_addr constant [14 x i8] c"Smooth Stroke\00", align 1
@.str.228 = private unnamed_addr constant [52 x i8] c"Brush lags behind mouse and follows a smoother path\00", align 1
@rna_Brush_use_accumulate = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_space_attenuation, ptr @rna_Brush_use_persistent, i32 -1, ptr @.str.232, i32 3, ptr @.str.233, ptr @.str.234, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_accumulate_get, ptr @Brush_use_accumulate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.229 = private unnamed_addr constant [15 x i8] c"use_persistent\00", align 1
@.str.230 = private unnamed_addr constant [11 x i8] c"Persistent\00", align 1
@.str.231 = private unnamed_addr constant [41 x i8] c"Sculpt on a persistent layer of the mesh\00", align 1
@rna_Brush_use_space_attenuation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_adaptive_space, ptr @rna_Brush_use_accumulate, i32 -1, ptr @.str.235, i32 4099, ptr @.str.236, ptr @.str.237, i32 40, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_space_attenuation_get, ptr @Brush_use_space_attenuation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.232 = private unnamed_addr constant [15 x i8] c"use_accumulate\00", align 1
@.str.233 = private unnamed_addr constant [11 x i8] c"Accumulate\00", align 1
@.str.234 = private unnamed_addr constant [45 x i8] c"Accumulate stroke daubs on top of each other\00", align 1
@rna_Brush_use_adaptive_space = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_locked_size, ptr @rna_Brush_use_space_attenuation, i32 -1, ptr @.str.238, i32 3, ptr @.str.239, ptr @.str.240, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_adaptive_space_get, ptr @Brush_use_adaptive_space_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.235 = private unnamed_addr constant [22 x i8] c"use_space_attenuation\00", align 1
@.str.236 = private unnamed_addr constant [34 x i8] c"Use Automatic Strength Adjustment\00", align 1
@.str.237 = private unnamed_addr constant [80 x i8] c"Automatically adjust strength to give consistent results for different spacings\00", align 1
@rna_Brush_use_locked_size = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_edge_to_edge, ptr @rna_Brush_use_adaptive_space, i32 -1, ptr @.str.241, i32 3, ptr @.str.242, ptr @.str.243, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_locked_size_get, ptr @Brush_use_locked_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.238 = private unnamed_addr constant [19 x i8] c"use_adaptive_space\00", align 1
@.str.239 = private unnamed_addr constant [17 x i8] c"Adaptive Spacing\00", align 1
@.str.240 = private unnamed_addr constant [69 x i8] c"Space daubs according to surface orientation instead of screen space\00", align 1
@rna_Brush_use_edge_to_edge = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_restore_mesh, ptr @rna_Brush_use_locked_size, i32 -1, ptr @.str.244, i32 3, ptr @.str.245, ptr @.str.246, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_edge_to_edge_get, ptr @Brush_use_edge_to_edge_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.241 = private unnamed_addr constant [16 x i8] c"use_locked_size\00", align 1
@.str.242 = private unnamed_addr constant [18 x i8] c"Use Blender Units\00", align 1
@.str.243 = private unnamed_addr constant [98 x i8] c"When locked brush stays same size relative to object; when unlocked brush size is given in pixels\00", align 1
@rna_Brush_use_restore_mesh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_alpha, ptr @rna_Brush_use_edge_to_edge, i32 -1, ptr @.str.247, i32 3, ptr @.str.248, ptr @.str.249, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_restore_mesh_get, ptr @Brush_use_restore_mesh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.244 = private unnamed_addr constant [17 x i8] c"use_edge_to_edge\00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"Edge-to-edge\00", align 1
@.str.246 = private unnamed_addr constant [36 x i8] c"Drag anchor brush from edge-to-edge\00", align 1
@rna_Brush_use_alpha = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_curve, ptr @rna_Brush_use_restore_mesh, i32 -1, ptr @.str.250, i32 3, ptr @.str.251, ptr @.str.252, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_alpha_get, ptr @Brush_use_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.247 = private unnamed_addr constant [17 x i8] c"use_restore_mesh\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"Restore Mesh\00", align 1
@.str.249 = private unnamed_addr constant [46 x i8] c"Allow a single dot to be carefully positioned\00", align 1
@rna_Brush_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_paint_curve, ptr @rna_Brush_use_alpha, i32 -1, ptr @.str.253, i32 8650752, ptr @.str.224, ptr @.str.254, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_curve_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@.str.250 = private unnamed_addr constant [10 x i8] c"use_alpha\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.252 = private unnamed_addr constant [49 x i8] c"When this is disabled, lock alpha while painting\00", align 1
@rna_Brush_paint_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_gradient, ptr @rna_Brush_curve, i32 -1, ptr @.str.255, i32 8388673, ptr @.str.256, ptr @.str.257, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_paint_curve_get, ptr @Brush_paint_curve_set, ptr null, ptr null, ptr @RNA_PaintCurve }, align 8
@.str.253 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.254 = private unnamed_addr constant [23 x i8] c"Editable falloff curve\00", align 1
@rna_Brush_gradient = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_gradient_stroke_mode, ptr @rna_Brush_paint_curve, i32 -1, ptr @.str.258, i32 8388608, ptr @.str.259, ptr @.str.2, i32 0, ptr @.str.69, i32 5, i32 262144, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_gradient_get, ptr null, ptr null, ptr null, ptr @RNA_ColorRamp }, align 8
@.str.255 = private unnamed_addr constant [12 x i8] c"paint_curve\00", align 1
@.str.256 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.257 = private unnamed_addr constant [19 x i8] c"Active Paint Curve\00", align 1
@rna_Brush_gradient_stroke_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_gradient_fill_mode, ptr @rna_Brush_gradient, i32 -1, ptr @.str.260, i32 3, ptr @.str.261, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_gradient_stroke_mode_get, ptr @Brush_gradient_stroke_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_gradient_stroke_mode_items, i32 3, i32 0 }, align 8
@.str.258 = private unnamed_addr constant [9 x i8] c"gradient\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@rna_Brush_gradient_fill_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_primary_overlay, ptr @rna_Brush_gradient_stroke_mode, i32 -1, ptr @.str.262, i32 3, ptr @.str.263, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_gradient_fill_mode_get, ptr @Brush_gradient_fill_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Brush_gradient_fill_mode_items, i32 2, i32 0 }, align 8
@.str.260 = private unnamed_addr constant [21 x i8] c"gradient_stroke_mode\00", align 1
@.str.261 = private unnamed_addr constant [21 x i8] c"Gradient Stroke Mode\00", align 1
@rna_Brush_gradient_stroke_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.524, i32 0, ptr @.str.400, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.525, i32 0, ptr @.str.526, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.527, i32 0, ptr @.str.528, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_use_primary_overlay = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_secondary_overlay, ptr @rna_Brush_gradient_fill_mode, i32 -1, ptr @.str.264, i32 3, ptr @.str.265, ptr @.str.266, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_primary_overlay_get, ptr @Brush_use_primary_overlay_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.262 = private unnamed_addr constant [19 x i8] c"gradient_fill_mode\00", align 1
@.str.263 = private unnamed_addr constant [19 x i8] c"Gradient Fill Mode\00", align 1
@rna_Brush_gradient_fill_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.529, i32 0, ptr @.str.530, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.531, i32 0, ptr @.str.532, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Brush_use_secondary_overlay = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_cursor_overlay, ptr @rna_Brush_use_primary_overlay, i32 -1, ptr @.str.267, i32 3, ptr @.str.265, ptr @.str.266, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_secondary_overlay_get, ptr @Brush_use_secondary_overlay_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.264 = private unnamed_addr constant [20 x i8] c"use_primary_overlay\00", align 1
@.str.265 = private unnamed_addr constant [20 x i8] c"Use Texture Overlay\00", align 1
@.str.266 = private unnamed_addr constant [25 x i8] c"Show texture in viewport\00", align 1
@rna_Brush_use_cursor_overlay = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_cursor_overlay_override, ptr @rna_Brush_use_secondary_overlay, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_cursor_overlay_get, ptr @Brush_use_cursor_overlay_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.267 = private unnamed_addr constant [22 x i8] c"use_secondary_overlay\00", align 1
@rna_Brush_use_cursor_overlay_override = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_primary_overlay_override, ptr @rna_Brush_use_cursor_overlay, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_cursor_overlay_override_get, ptr @Brush_use_cursor_overlay_override_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.268 = private unnamed_addr constant [19 x i8] c"use_cursor_overlay\00", align 1
@.str.269 = private unnamed_addr constant [19 x i8] c"Use Cursor Overlay\00", align 1
@.str.270 = private unnamed_addr constant [24 x i8] c"Show cursor in viewport\00", align 1
@rna_Brush_use_primary_overlay_override = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_secondary_overlay_override, ptr @rna_Brush_use_cursor_overlay_override, i32 -1, ptr @.str.274, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_primary_overlay_override_get, ptr @Brush_use_primary_overlay_override_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.271 = private unnamed_addr constant [28 x i8] c"use_cursor_overlay_override\00", align 1
@.str.272 = private unnamed_addr constant [17 x i8] c"Override Overlay\00", align 1
@.str.273 = private unnamed_addr constant [35 x i8] c"Don't show overlay during a stroke\00", align 1
@rna_Brush_use_secondary_overlay_override = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_paint_sculpt, ptr @rna_Brush_use_primary_overlay_override, i32 -1, ptr @.str.275, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_secondary_overlay_override_get, ptr @Brush_use_secondary_overlay_override_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.274 = private unnamed_addr constant [29 x i8] c"use_primary_overlay_override\00", align 1
@rna_Brush_use_paint_sculpt = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_paint_vertex, ptr @rna_Brush_use_secondary_overlay_override, i32 -1, ptr @.str.276, i32 3, ptr @.str.277, ptr @.str.278, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_paint_sculpt_get, ptr @Brush_use_paint_sculpt_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.275 = private unnamed_addr constant [31 x i8] c"use_secondary_overlay_override\00", align 1
@rna_Brush_use_paint_vertex = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_paint_weight, ptr @rna_Brush_use_paint_sculpt, i32 -1, ptr @.str.279, i32 3, ptr @.str.280, ptr @.str.281, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_paint_vertex_get, ptr @Brush_use_paint_vertex_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.276 = private unnamed_addr constant [17 x i8] c"use_paint_sculpt\00", align 1
@.str.277 = private unnamed_addr constant [11 x i8] c"Use Sculpt\00", align 1
@.str.278 = private unnamed_addr constant [30 x i8] c"Use this brush in sculpt mode\00", align 1
@rna_Brush_use_paint_weight = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_paint_image, ptr @rna_Brush_use_paint_vertex, i32 -1, ptr @.str.282, i32 3, ptr @.str.283, ptr @.str.284, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_paint_weight_get, ptr @Brush_use_paint_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.279 = private unnamed_addr constant [17 x i8] c"use_paint_vertex\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"Use Vertex\00", align 1
@.str.281 = private unnamed_addr constant [36 x i8] c"Use this brush in vertex paint mode\00", align 1
@rna_Brush_use_paint_image = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_texture_slot, ptr @rna_Brush_use_paint_weight, i32 -1, ptr @.str.285, i32 3, ptr @.str.286, ptr @.str.287, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_paint_image_get, ptr @Brush_use_paint_image_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.282 = private unnamed_addr constant [17 x i8] c"use_paint_weight\00", align 1
@.str.283 = private unnamed_addr constant [11 x i8] c"Use Weight\00", align 1
@.str.284 = private unnamed_addr constant [36 x i8] c"Use this brush in weight paint mode\00", align 1
@rna_Brush_texture_slot = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_texture, ptr @rna_Brush_use_paint_image, i32 -1, ptr @.str.288, i32 8388608, ptr @.str.289, ptr @.str.2, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_texture_slot_get, ptr null, ptr null, ptr null, ptr @RNA_BrushTextureSlot }, align 8
@.str.285 = private unnamed_addr constant [16 x i8] c"use_paint_image\00", align 1
@.str.286 = private unnamed_addr constant [12 x i8] c"Use Texture\00", align 1
@.str.287 = private unnamed_addr constant [37 x i8] c"Use this brush in texture paint mode\00", align 1
@rna_Brush_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_mask_texture_slot, ptr @rna_Brush_texture_slot, i32 -1, ptr @.str.290, i32 8388673, ptr @.str.291, ptr @.str.2, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_main_tex_update, i32 117440512, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_texture_get, ptr @Brush_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.288 = private unnamed_addr constant [13 x i8] c"texture_slot\00", align 1
@.str.289 = private unnamed_addr constant [13 x i8] c"Texture Slot\00", align 1
@rna_Brush_mask_texture_slot = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_mask_texture, ptr @rna_Brush_texture, i32 -1, ptr @.str.292, i32 8388608, ptr @.str.293, ptr @.str.2, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_mask_texture_slot_get, ptr null, ptr null, ptr null, ptr @RNA_BrushTextureSlot }, align 8
@.str.290 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@rna_Brush_mask_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_texture_overlay_alpha, ptr @rna_Brush_mask_texture_slot, i32 -1, ptr @.str.294, i32 8388673, ptr @.str.295, ptr @.str.2, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_secondary_tex_update, i32 117440512, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_mask_texture_get, ptr @Brush_mask_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.292 = private unnamed_addr constant [18 x i8] c"mask_texture_slot\00", align 1
@.str.293 = private unnamed_addr constant [18 x i8] c"Mask Texture Slot\00", align 1
@rna_Brush_texture_overlay_alpha = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_mask_overlay_alpha, ptr @rna_Brush_mask_texture, i32 -1, ptr @.str.296, i32 8195, ptr @.str.297, ptr @.str.2, i32 0, ptr @.str.69, i32 1, i32 14, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1968, i32 0, ptr null, ptr null }, ptr @Brush_texture_overlay_alpha_get, ptr @Brush_texture_overlay_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 0, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.294 = private unnamed_addr constant [13 x i8] c"mask_texture\00", align 1
@.str.295 = private unnamed_addr constant [13 x i8] c"Mask Texture\00", align 1
@rna_Brush_mask_overlay_alpha = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_cursor_overlay_alpha, ptr @rna_Brush_texture_overlay_alpha, i32 -1, ptr @.str.298, i32 8195, ptr @.str.299, ptr @.str.2, i32 0, ptr @.str.69, i32 1, i32 14, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1972, i32 0, ptr null, ptr null }, ptr @Brush_mask_overlay_alpha_get, ptr @Brush_mask_overlay_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 0, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.296 = private unnamed_addr constant [22 x i8] c"texture_overlay_alpha\00", align 1
@.str.297 = private unnamed_addr constant [22 x i8] c"Texture Overlay Alpha\00", align 1
@rna_Brush_cursor_overlay_alpha = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_cursor_color_add, ptr @rna_Brush_mask_overlay_alpha, i32 -1, ptr @.str.300, i32 8195, ptr @.str.299, ptr @.str.2, i32 0, ptr @.str.69, i32 1, i32 14, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 1976, i32 0, ptr null, ptr null }, ptr @Brush_cursor_overlay_alpha_get, ptr @Brush_cursor_overlay_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 0, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.298 = private unnamed_addr constant [19 x i8] c"mask_overlay_alpha\00", align 1
@.str.299 = private unnamed_addr constant [27 x i8] c"Mask Texture Overlay Alpha\00", align 1
@rna_Brush_cursor_color_add = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_cursor_color_subtract, ptr @rna_Brush_cursor_overlay_alpha, i32 -1, ptr @.str.301, i32 8195, ptr @.str.302, ptr @.str.303, i32 0, ptr @.str.69, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 2000, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_cursor_color_add_get, ptr @Brush_cursor_color_add_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_cursor_color_add_default }, align 8
@.str.300 = private unnamed_addr constant [21 x i8] c"cursor_overlay_alpha\00", align 1
@rna_Brush_cursor_color_subtract = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_use_custom_icon, ptr @rna_Brush_cursor_color_add, i32 -1, ptr @.str.304, i32 8195, ptr @.str.305, ptr @.str.306, i32 0, ptr @.str.69, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Brush_update, i32 0, ptr null, ptr null, i32 2012, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_cursor_color_subtract_get, ptr @Brush_cursor_color_subtract_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_cursor_color_subtract_default }, align 8
@.str.301 = private unnamed_addr constant [17 x i8] c"cursor_color_add\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"Add Color\00", align 1
@.str.303 = private unnamed_addr constant [28 x i8] c"Color of cursor when adding\00", align 1
@rna_Brush_cursor_color_add_default = internal global [3 x float] zeroinitializer, align 4
@rna_Brush_use_custom_icon = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_icon_filepath, ptr @rna_Brush_cursor_color_subtract, i32 -1, ptr @.str.307, i32 3, ptr @.str.308, ptr @.str.309, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_icon_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_use_custom_icon_get, ptr @Brush_use_custom_icon_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.304 = private unnamed_addr constant [22 x i8] c"cursor_color_subtract\00", align 1
@.str.305 = private unnamed_addr constant [15 x i8] c"Subtract Color\00", align 1
@.str.306 = private unnamed_addr constant [33 x i8] c"Color of cursor when subtracting\00", align 1
@rna_Brush_cursor_color_subtract_default = internal global [3 x float] zeroinitializer, align 4
@rna_Brush_icon_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_clone_image, ptr @rna_Brush_use_custom_icon, i32 -1, ptr @.str.310, i32 262145, ptr @.str.311, ptr @.str.312, i32 0, ptr @.str.69, i32 3, i32 1, ptr null, i32 0, [3 x i32] [i32 1024, i32 0, i32 0], i32 0, ptr @rna_Brush_icon_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_icon_filepath_get, ptr @Brush_icon_filepath_length, ptr @Brush_icon_filepath_set, ptr null, ptr null, ptr null, i32 1024, ptr @.str.2 }, align 8
@.str.307 = private unnamed_addr constant [16 x i8] c"use_custom_icon\00", align 1
@.str.308 = private unnamed_addr constant [12 x i8] c"Custom Icon\00", align 1
@.str.309 = private unnamed_addr constant [38 x i8] c"Set the brush icon from an image file\00", align 1
@rna_Brush_clone_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_clone_alpha, ptr @rna_Brush_icon_filepath, i32 -1, ptr @.str.313, i32 8388673, ptr @.str.314, ptr @.str.315, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 251920384, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_clone_image_get, ptr @Brush_clone_image_set, ptr null, ptr null, ptr @RNA_Image }, align 8
@.str.310 = private unnamed_addr constant [14 x i8] c"icon_filepath\00", align 1
@.str.311 = private unnamed_addr constant [20 x i8] c"Brush Icon Filepath\00", align 1
@.str.312 = private unnamed_addr constant [24 x i8] c"File path to brush icon\00", align 1
@rna_Brush_clone_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_clone_offset, ptr @rna_Brush_clone_image, i32 -1, ptr @.str.316, i32 8195, ptr @.str.317, ptr @.str.318, i32 0, ptr @.str.69, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Brush_update, i32 251920384, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @Brush_clone_alpha_get, ptr @Brush_clone_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.313 = private unnamed_addr constant [12 x i8] c"clone_image\00", align 1
@.str.314 = private unnamed_addr constant [12 x i8] c"Clone Image\00", align 1
@.str.315 = private unnamed_addr constant [21 x i8] c"Image for clone tool\00", align 1
@rna_Brush_clone_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_brush_capabilities, ptr @rna_Brush_clone_alpha, i32 -1, ptr @.str.319, i32 8195, ptr @.str.320, ptr @.str.2, i32 0, ptr @.str.69, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Brush_update, i32 251920384, ptr null, ptr null, i32 128, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Brush_clone_offset_get, ptr @Brush_clone_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Brush_clone_offset_default }, align 8
@.str.316 = private unnamed_addr constant [12 x i8] c"clone_alpha\00", align 1
@.str.317 = private unnamed_addr constant [12 x i8] c"Clone Alpha\00", align 1
@.str.318 = private unnamed_addr constant [31 x i8] c"Opacity of clone image display\00", align 1
@rna_Brush_brush_capabilities = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_sculpt_capabilities, ptr @rna_Brush_clone_offset, i32 -1, ptr @.str.321, i32 8650752, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_brush_capabilities_get, ptr null, ptr null, ptr null, ptr @RNA_BrushCapabilities }, align 8
@.str.319 = private unnamed_addr constant [13 x i8] c"clone_offset\00", align 1
@.str.320 = private unnamed_addr constant [13 x i8] c"Clone Offset\00", align 1
@rna_Brush_clone_offset_default = internal global [2 x float] zeroinitializer, align 4
@rna_Brush_sculpt_capabilities = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Brush_image_paint_capabilities, ptr @rna_Brush_brush_capabilities, i32 -1, ptr @.str.324, i32 8650752, ptr @.str.325, ptr @.str.326, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_sculpt_capabilities_get, ptr null, ptr null, ptr null, ptr @RNA_SculptToolCapabilities }, align 8
@.str.321 = private unnamed_addr constant [19 x i8] c"brush_capabilities\00", align 1
@.str.322 = private unnamed_addr constant [19 x i8] c"Brush Capabilities\00", align 1
@.str.323 = private unnamed_addr constant [21 x i8] c"Brush's capabilities\00", align 1
@RNA_BrushCapabilities = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SculptToolCapabilities, ptr @RNA_Brush, ptr null, %struct.ListBase { ptr @rna_BrushCapabilities_rna_properties, ptr @rna_BrushCapabilities_has_smooth_stroke } }, ptr @.str.350, ptr null, ptr null, i32 4, ptr @.str.322, ptr @.str.351, ptr @.str.69, i32 17, ptr null, ptr @rna_BrushCapabilities_rna_properties, ptr null, ptr @RNA_Brush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Brush_image_paint_capabilities = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Brush_sculpt_capabilities, i32 -1, ptr @.str.327, i32 8650752, ptr @.str.328, ptr @.str.329, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Brush_image_paint_capabilities_get, ptr null, ptr null, ptr null, ptr @RNA_ImapaintToolCapabilities }, align 8
@.str.324 = private unnamed_addr constant [20 x i8] c"sculpt_capabilities\00", align 1
@.str.325 = private unnamed_addr constant [20 x i8] c"Sculpt Capabilities\00", align 1
@.str.326 = private unnamed_addr constant [36 x i8] c"Brush's capabilities in sculpt mode\00", align 1
@RNA_SculptToolCapabilities = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ImapaintToolCapabilities, ptr @RNA_BrushCapabilities, ptr null, %struct.ListBase { ptr @rna_SculptToolCapabilities_rna_properties, ptr @rna_SculptToolCapabilities_has_gravity } }, ptr @.str.378, ptr null, ptr null, i32 4, ptr @.str.325, ptr @.str.379, ptr @.str.69, i32 17, ptr null, ptr @rna_SculptToolCapabilities_rna_properties, ptr null, ptr @RNA_Brush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.327 = private unnamed_addr constant [25 x i8] c"image_paint_capabilities\00", align 1
@.str.328 = private unnamed_addr constant [28 x i8] c"Image Painting Capabilities\00", align 1
@.str.329 = private unnamed_addr constant [41 x i8] c"Brush's capabilities in image paint mode\00", align 1
@RNA_ImapaintToolCapabilities = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BrushTextureSlot, ptr @RNA_SculptToolCapabilities, ptr null, %struct.ListBase { ptr @rna_ImapaintToolCapabilities_rna_properties, ptr @rna_ImapaintToolCapabilities_has_radius } }, ptr @.str.382, ptr null, ptr null, i32 4, ptr @.str.383, ptr @.str.384, ptr @.str.69, i32 17, ptr null, ptr @rna_ImapaintToolCapabilities_rna_properties, ptr null, ptr @RNA_Brush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_BoidSettings = external global %struct.StructRNA, align 8
@.str.330 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.331 = private unnamed_addr constant [70 x i8] c"Brush datablock for storing brush settings for painting and sculpting\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Brush = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BrushCapabilities, ptr @RNA_BoidSettings, ptr null, %struct.ListBase { ptr @rna_Brush_blend, ptr @rna_Brush_image_paint_capabilities } }, ptr @.str.330, ptr null, ptr null, i32 7, ptr @.str.330, ptr @.str.331, ptr @.str.69, i32 182, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@rna_BrushCapabilities_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushCapabilities_has_overlay, ptr @rna_BrushCapabilities_rna_properties, i32 -1, ptr @.str.335, i32 8912896, ptr @.str.336, ptr @.str.337, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushCapabilities_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.332 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.333 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.334 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_BrushCapabilities_has_overlay = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushCapabilities_has_random_texture_angle, ptr @rna_BrushCapabilities_rna_type, i32 -1, ptr @.str.338, i32 2, ptr @.str.339, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushCapabilities_has_overlay_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.335 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.336 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.337 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_BrushCapabilities_has_random_texture_angle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushCapabilities_has_texture_angle, ptr @rna_BrushCapabilities_has_overlay, i32 -1, ptr @.str.340, i32 2, ptr @.str.341, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushCapabilities_has_random_texture_angle_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.338 = private unnamed_addr constant [12 x i8] c"has_overlay\00", align 1
@.str.339 = private unnamed_addr constant [12 x i8] c"Has Overlay\00", align 1
@rna_BrushCapabilities_has_texture_angle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushCapabilities_has_texture_angle_source, ptr @rna_BrushCapabilities_has_random_texture_angle, i32 -1, ptr @.str.342, i32 2, ptr @.str.343, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushCapabilities_has_texture_angle_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.340 = private unnamed_addr constant [25 x i8] c"has_random_texture_angle\00", align 1
@.str.341 = private unnamed_addr constant [25 x i8] c"Has Random Texture Angle\00", align 1
@rna_BrushCapabilities_has_texture_angle_source = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushCapabilities_has_spacing, ptr @rna_BrushCapabilities_has_texture_angle, i32 -1, ptr @.str.344, i32 2, ptr @.str.345, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushCapabilities_has_texture_angle_source_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.342 = private unnamed_addr constant [18 x i8] c"has_texture_angle\00", align 1
@.str.343 = private unnamed_addr constant [18 x i8] c"Has Texture Angle\00", align 1
@rna_BrushCapabilities_has_spacing = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushCapabilities_has_smooth_stroke, ptr @rna_BrushCapabilities_has_texture_angle_source, i32 -1, ptr @.str.346, i32 2, ptr @.str.347, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushCapabilities_has_spacing_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.344 = private unnamed_addr constant [25 x i8] c"has_texture_angle_source\00", align 1
@.str.345 = private unnamed_addr constant [25 x i8] c"Has Texture Angle Source\00", align 1
@rna_BrushCapabilities_has_smooth_stroke = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BrushCapabilities_has_spacing, i32 -1, ptr @.str.348, i32 2, ptr @.str.349, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushCapabilities_has_smooth_stroke_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.346 = private unnamed_addr constant [12 x i8] c"has_spacing\00", align 1
@.str.347 = private unnamed_addr constant [12 x i8] c"Has Spacing\00", align 1
@.str.348 = private unnamed_addr constant [18 x i8] c"has_smooth_stroke\00", align 1
@.str.349 = private unnamed_addr constant [18 x i8] c"Has Smooth Stroke\00", align 1
@.str.350 = private unnamed_addr constant [18 x i8] c"BrushCapabilities\00", align 1
@.str.351 = private unnamed_addr constant [83 x i8] c"Read-only indications of which brush operations are supported by the current brush\00", align 1
@rna_SculptToolCapabilities_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_accumulate, ptr @rna_SculptToolCapabilities_rna_properties, i32 -1, ptr @.str.335, i32 8912896, ptr @.str.336, ptr @.str.337, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SculptToolCapabilities_has_accumulate = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_auto_smooth, ptr @rna_SculptToolCapabilities_rna_type, i32 -1, ptr @.str.352, i32 2, ptr @.str.353, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_accumulate_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SculptToolCapabilities_has_auto_smooth = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_height, ptr @rna_SculptToolCapabilities_has_accumulate, i32 -1, ptr @.str.354, i32 2, ptr @.str.355, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_auto_smooth_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.352 = private unnamed_addr constant [15 x i8] c"has_accumulate\00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"Has Accumulate\00", align 1
@rna_SculptToolCapabilities_has_height = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_jitter, ptr @rna_SculptToolCapabilities_has_auto_smooth, i32 -1, ptr @.str.356, i32 2, ptr @.str.357, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_height_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.354 = private unnamed_addr constant [16 x i8] c"has_auto_smooth\00", align 1
@.str.355 = private unnamed_addr constant [16 x i8] c"Has Auto Smooth\00", align 1
@rna_SculptToolCapabilities_has_jitter = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_normal_weight, ptr @rna_SculptToolCapabilities_has_height, i32 -1, ptr @.str.358, i32 2, ptr @.str.359, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_jitter_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.356 = private unnamed_addr constant [11 x i8] c"has_height\00", align 1
@.str.357 = private unnamed_addr constant [11 x i8] c"Has Height\00", align 1
@rna_SculptToolCapabilities_has_normal_weight = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_persistence, ptr @rna_SculptToolCapabilities_has_jitter, i32 -1, ptr @.str.360, i32 2, ptr @.str.361, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_normal_weight_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.358 = private unnamed_addr constant [11 x i8] c"has_jitter\00", align 1
@.str.359 = private unnamed_addr constant [11 x i8] c"Has Jitter\00", align 1
@rna_SculptToolCapabilities_has_persistence = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_pinch_factor, ptr @rna_SculptToolCapabilities_has_normal_weight, i32 -1, ptr @.str.362, i32 2, ptr @.str.363, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_persistence_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.360 = private unnamed_addr constant [18 x i8] c"has_normal_weight\00", align 1
@.str.361 = private unnamed_addr constant [24 x i8] c"Has Crease/Pinch Factor\00", align 1
@rna_SculptToolCapabilities_has_pinch_factor = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_plane_offset, ptr @rna_SculptToolCapabilities_has_persistence, i32 -1, ptr @.str.364, i32 2, ptr @.str.365, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_pinch_factor_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.362 = private unnamed_addr constant [16 x i8] c"has_persistence\00", align 1
@.str.363 = private unnamed_addr constant [16 x i8] c"Has Persistence\00", align 1
@rna_SculptToolCapabilities_has_plane_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_random_texture_angle, ptr @rna_SculptToolCapabilities_has_pinch_factor, i32 -1, ptr @.str.366, i32 2, ptr @.str.367, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_plane_offset_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.364 = private unnamed_addr constant [17 x i8] c"has_pinch_factor\00", align 1
@.str.365 = private unnamed_addr constant [17 x i8] c"Has Pinch Factor\00", align 1
@rna_SculptToolCapabilities_has_random_texture_angle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_sculpt_plane, ptr @rna_SculptToolCapabilities_has_plane_offset, i32 -1, ptr @.str.340, i32 2, ptr @.str.341, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_random_texture_angle_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.366 = private unnamed_addr constant [17 x i8] c"has_plane_offset\00", align 1
@.str.367 = private unnamed_addr constant [17 x i8] c"Has Plane Offset\00", align 1
@rna_SculptToolCapabilities_has_sculpt_plane = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_secondary_color, ptr @rna_SculptToolCapabilities_has_random_texture_angle, i32 -1, ptr @.str.368, i32 2, ptr @.str.369, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_sculpt_plane_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SculptToolCapabilities_has_secondary_color = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_smooth_stroke, ptr @rna_SculptToolCapabilities_has_sculpt_plane, i32 -1, ptr @.str.370, i32 2, ptr @.str.371, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_secondary_color_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.368 = private unnamed_addr constant [17 x i8] c"has_sculpt_plane\00", align 1
@.str.369 = private unnamed_addr constant [17 x i8] c"Has Sculpt Plane\00", align 1
@rna_SculptToolCapabilities_has_smooth_stroke = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_space_attenuation, ptr @rna_SculptToolCapabilities_has_secondary_color, i32 -1, ptr @.str.348, i32 2, ptr @.str.349, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_smooth_stroke_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.370 = private unnamed_addr constant [20 x i8] c"has_secondary_color\00", align 1
@.str.371 = private unnamed_addr constant [20 x i8] c"Has Secondary Color\00", align 1
@rna_SculptToolCapabilities_has_space_attenuation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_strength_pressure, ptr @rna_SculptToolCapabilities_has_smooth_stroke, i32 -1, ptr @.str.372, i32 2, ptr @.str.373, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_space_attenuation_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SculptToolCapabilities_has_strength_pressure = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SculptToolCapabilities_has_gravity, ptr @rna_SculptToolCapabilities_has_space_attenuation, i32 -1, ptr @.str.374, i32 2, ptr @.str.375, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_strength_pressure_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.372 = private unnamed_addr constant [22 x i8] c"has_space_attenuation\00", align 1
@.str.373 = private unnamed_addr constant [22 x i8] c"Has Space Attenuation\00", align 1
@rna_SculptToolCapabilities_has_gravity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SculptToolCapabilities_has_strength_pressure, i32 -1, ptr @.str.376, i32 2, ptr @.str.377, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SculptToolCapabilities_has_gravity_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.374 = private unnamed_addr constant [22 x i8] c"has_strength_pressure\00", align 1
@.str.375 = private unnamed_addr constant [22 x i8] c"Has Strength Pressure\00", align 1
@.str.376 = private unnamed_addr constant [12 x i8] c"has_gravity\00", align 1
@.str.377 = private unnamed_addr constant [12 x i8] c"Has Gravity\00", align 1
@.str.378 = private unnamed_addr constant [23 x i8] c"SculptToolCapabilities\00", align 1
@.str.379 = private unnamed_addr constant [89 x i8] c"Read-only indications of which brush operations are supported by the current sculpt tool\00", align 1
@rna_ImapaintToolCapabilities_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ImapaintToolCapabilities_has_accumulate, ptr @rna_ImapaintToolCapabilities_rna_properties, i32 -1, ptr @.str.335, i32 8912896, ptr @.str.336, ptr @.str.337, i32 0, ptr @.str.69, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImapaintToolCapabilities_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ImapaintToolCapabilities_has_accumulate = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImapaintToolCapabilities_has_space_attenuation, ptr @rna_ImapaintToolCapabilities_rna_type, i32 -1, ptr @.str.352, i32 2, ptr @.str.353, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImapaintToolCapabilities_has_accumulate_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ImapaintToolCapabilities_has_space_attenuation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImapaintToolCapabilities_has_radius, ptr @rna_ImapaintToolCapabilities_has_accumulate, i32 -1, ptr @.str.372, i32 2, ptr @.str.373, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImapaintToolCapabilities_has_space_attenuation_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ImapaintToolCapabilities_has_radius = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ImapaintToolCapabilities_has_space_attenuation, i32 -1, ptr @.str.380, i32 2, ptr @.str.381, ptr null, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImapaintToolCapabilities_has_radius_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.380 = private unnamed_addr constant [11 x i8] c"has_radius\00", align 1
@.str.381 = private unnamed_addr constant [11 x i8] c"Has Radius\00", align 1
@.str.382 = private unnamed_addr constant [25 x i8] c"ImapaintToolCapabilities\00", align 1
@.str.383 = private unnamed_addr constant [25 x i8] c"Image Paint Capabilities\00", align 1
@.str.384 = private unnamed_addr constant [95 x i8] c"Read-only indications of which brush operations are supported by the current image paint brush\00", align 1
@rna_BrushTextureSlot_map_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushTextureSlot_tex_paint_map_mode, ptr @rna_BrushTextureSlot_angle, i32 -1, ptr @.str.388, i32 3, ptr @.str.389, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_TextureSlot_brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushTextureSlot_map_mode_get, ptr @BrushTextureSlot_map_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BrushTextureSlot_map_mode_items, i32 6, i32 0 }, align 8
@.str.385 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.386 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.387 = private unnamed_addr constant [23 x i8] c"Brush texture rotation\00", align 1
@rna_BrushTextureSlot_angle = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushTextureSlot_map_mode, ptr null, i32 -1, ptr @.str.385, i32 8195, ptr @.str.386, ptr @.str.387, i32 0, ptr @.str.69, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_TextureSlot_brush_angle_update, i32 0, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @BrushTextureSlot_angle_get, ptr @BrushTextureSlot_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x401921FB60000000, float 0.000000e+00, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_BrushTextureSlot_tex_paint_map_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BrushTextureSlot_mask_map_mode, ptr @rna_BrushTextureSlot_map_mode, i32 -1, ptr @.str.390, i32 3, ptr @.str.389, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_TextureSlot_brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushTextureSlot_tex_paint_map_mode_get, ptr @BrushTextureSlot_tex_paint_map_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BrushTextureSlot_tex_paint_map_mode_items, i32 5, i32 0 }, align 8
@.str.388 = private unnamed_addr constant [9 x i8] c"map_mode\00", align 1
@.str.389 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@rna_BrushTextureSlot_map_mode_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.533, i32 0, ptr @.str.507, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.534, i32 0, ptr @.str.505, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.535, i32 0, ptr @.str.536, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.537, i32 0, ptr @.str.537, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.502, i32 0, ptr @.str.503, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.538, i32 0, ptr @.str.539, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BrushTextureSlot_mask_map_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BrushTextureSlot_tex_paint_map_mode, i32 -1, ptr @.str.391, i32 3, ptr @.str.389, ptr @.str.2, i32 0, ptr @.str.69, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_TextureSlot_brush_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BrushTextureSlot_mask_map_mode_get, ptr @BrushTextureSlot_mask_map_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BrushTextureSlot_mask_map_mode_items, i32 4, i32 0 }, align 8
@.str.390 = private unnamed_addr constant [19 x i8] c"tex_paint_map_mode\00", align 1
@rna_BrushTextureSlot_tex_paint_map_mode_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.533, i32 0, ptr @.str.507, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.535, i32 0, ptr @.str.536, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.537, i32 0, ptr @.str.537, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.502, i32 0, ptr @.str.503, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.538, i32 0, ptr @.str.539, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.391 = private unnamed_addr constant [14 x i8] c"mask_map_mode\00", align 1
@rna_BrushTextureSlot_mask_map_mode_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.533, i32 0, ptr @.str.507, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.535, i32 0, ptr @.str.536, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.502, i32 0, ptr @.str.503, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.538, i32 0, ptr @.str.539, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_OperatorStrokeElement = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Camera, ptr @RNA_BrushTextureSlot, ptr null, %struct.ListBase { ptr @rna_OperatorStrokeElement_location, ptr @rna_OperatorStrokeElement_is_start } }, ptr @.str.410, ptr null, ptr null, i32 4, ptr @.str.411, ptr @.str.2, ptr @.str.69, i32 17, ptr @rna_PropertyGroup_name, ptr @rna_PropertyGroup_rna_properties, ptr @RNA_PropertyGroup, ptr null, ptr @rna_PropertyGroup_refine, ptr null, ptr @rna_PropertyGroup_register, ptr @rna_PropertyGroup_unregister, ptr null, ptr @rna_PropertyGroup_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.392 = private unnamed_addr constant [17 x i8] c"BrushTextureSlot\00", align 1
@.str.393 = private unnamed_addr constant [19 x i8] c"Brush Texture Slot\00", align 1
@.str.394 = private unnamed_addr constant [47 x i8] c"Texture slot for textures in a Brush datablock\00", align 1
@rna_TextureSlot_name = external global %struct.StringPropertyRNA, align 8
@rna_TextureSlot_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_TextureSlot = external global %struct.StructRNA, align 8
@rna_OperatorStrokeElement_mouse = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorStrokeElement_pressure, ptr @rna_OperatorStrokeElement_location, i32 -1, ptr @.str.397, i32 1027, ptr @.str.398, ptr @.str.2, i32 0, ptr @.str.69, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_OperatorStrokeElement_mouse_default }, align 8
@.str.395 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.396 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@rna_OperatorStrokeElement_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_OperatorStrokeElement_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorStrokeElement_mouse, ptr null, i32 -1, ptr @.str.395, i32 1027, ptr @.str.396, ptr @.str.2, i32 0, ptr @.str.69, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_OperatorStrokeElement_location_default }, align 8
@rna_OperatorStrokeElement_pressure = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorStrokeElement_size, ptr @rna_OperatorStrokeElement_mouse, i32 -1, ptr @.str.399, i32 1027, ptr @.str.400, ptr @.str.401, i32 0, ptr @.str.69, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.397 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.398 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@rna_OperatorStrokeElement_mouse_default = internal global [2 x float] zeroinitializer, align 4
@rna_OperatorStrokeElement_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorStrokeElement_pen_flip, ptr @rna_OperatorStrokeElement_pressure, i32 -1, ptr @.str.86, i32 1027, ptr @.str.402, ptr @.str.403, i32 0, ptr @.str.69, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.399 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.400 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1
@.str.401 = private unnamed_addr constant [16 x i8] c"Tablet pressure\00", align 1
@rna_OperatorStrokeElement_pen_flip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorStrokeElement_time, ptr @rna_OperatorStrokeElement_size, i32 -1, ptr @.str.404, i32 1027, ptr @.str.405, ptr @.str.2, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.402 = private unnamed_addr constant [11 x i8] c"Brush Size\00", align 1
@.str.403 = private unnamed_addr constant [27 x i8] c"Brush Size in screen space\00", align 1
@rna_OperatorStrokeElement_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorStrokeElement_is_start, ptr @rna_OperatorStrokeElement_pen_flip, i32 -1, ptr @.str.406, i32 1027, ptr @.str.407, ptr @.str.2, i32 0, ptr @.str.69, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.404 = private unnamed_addr constant [9 x i8] c"pen_flip\00", align 1
@.str.405 = private unnamed_addr constant [5 x i8] c"Flip\00", align 1
@rna_OperatorStrokeElement_is_start = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_OperatorStrokeElement_time, i32 -1, ptr @.str.408, i32 1027, ptr @.str.409, ptr @.str.2, i32 0, ptr @.str.69, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.406 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.407 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.408 = private unnamed_addr constant [9 x i8] c"is_start\00", align 1
@.str.409 = private unnamed_addr constant [16 x i8] c"Is Stroke Start\00", align 1
@RNA_Camera = external global %struct.StructRNA, align 8
@.str.410 = private unnamed_addr constant [22 x i8] c"OperatorStrokeElement\00", align 1
@.str.411 = private unnamed_addr constant [24 x i8] c"Operator Stroke Element\00", align 1
@rna_PropertyGroup_name = external global %struct.StringPropertyRNA, align 8
@rna_PropertyGroup_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_PropertyGroup = external global %struct.StructRNA, align 8
@.str.412 = private unnamed_addr constant [12 x i8] c"ERASE_ALPHA\00", align 1
@.str.413 = private unnamed_addr constant [12 x i8] c"Erase Alpha\00", align 1
@.str.414 = private unnamed_addr constant [27 x i8] c"Erase alpha while painting\00", align 1
@.str.415 = private unnamed_addr constant [10 x i8] c"ADD_ALPHA\00", align 1
@.str.416 = private unnamed_addr constant [10 x i8] c"Add Alpha\00", align 1
@.str.417 = private unnamed_addr constant [25 x i8] c"Add alpha while painting\00", align 1
@.str.418 = private unnamed_addr constant [8 x i8] c"OVERLAY\00", align 1
@.str.419 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.420 = private unnamed_addr constant [41 x i8] c"Use overlay blending mode while painting\00", align 1
@.str.421 = private unnamed_addr constant [10 x i8] c"HARDLIGHT\00", align 1
@.str.422 = private unnamed_addr constant [11 x i8] c"Hard light\00", align 1
@.str.423 = private unnamed_addr constant [44 x i8] c"Use hard light blending mode while painting\00", align 1
@.str.424 = private unnamed_addr constant [10 x i8] c"COLORBURN\00", align 1
@.str.425 = private unnamed_addr constant [11 x i8] c"Color burn\00", align 1
@.str.426 = private unnamed_addr constant [44 x i8] c"Use color burn blending mode while painting\00", align 1
@.str.427 = private unnamed_addr constant [11 x i8] c"LINEARBURN\00", align 1
@.str.428 = private unnamed_addr constant [12 x i8] c"Linear burn\00", align 1
@.str.429 = private unnamed_addr constant [45 x i8] c"Use linear burn blending mode while painting\00", align 1
@.str.430 = private unnamed_addr constant [11 x i8] c"COLORDODGE\00", align 1
@.str.431 = private unnamed_addr constant [12 x i8] c"Color dodge\00", align 1
@.str.432 = private unnamed_addr constant [45 x i8] c"Use color dodge blending mode while painting\00", align 1
@.str.433 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.434 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.435 = private unnamed_addr constant [40 x i8] c"Use screen blending mode while painting\00", align 1
@.str.436 = private unnamed_addr constant [10 x i8] c"SOFTLIGHT\00", align 1
@.str.437 = private unnamed_addr constant [11 x i8] c"Soft light\00", align 1
@.str.438 = private unnamed_addr constant [43 x i8] c"Use softlight blending mode while painting\00", align 1
@.str.439 = private unnamed_addr constant [9 x i8] c"PINLIGHT\00", align 1
@.str.440 = private unnamed_addr constant [10 x i8] c"Pin light\00", align 1
@.str.441 = private unnamed_addr constant [42 x i8] c"Use pinlight blending mode while painting\00", align 1
@.str.442 = private unnamed_addr constant [11 x i8] c"VIVIDLIGHT\00", align 1
@.str.443 = private unnamed_addr constant [12 x i8] c"Vivid light\00", align 1
@.str.444 = private unnamed_addr constant [44 x i8] c"Use vividlight blending mode while painting\00", align 1
@.str.445 = private unnamed_addr constant [12 x i8] c"LINEARLIGHT\00", align 1
@.str.446 = private unnamed_addr constant [13 x i8] c"Linear light\00", align 1
@.str.447 = private unnamed_addr constant [45 x i8] c"Use linearlight blending mode while painting\00", align 1
@.str.448 = private unnamed_addr constant [11 x i8] c"DIFFERENCE\00", align 1
@.str.449 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.450 = private unnamed_addr constant [44 x i8] c"Use difference blending mode while painting\00", align 1
@.str.451 = private unnamed_addr constant [10 x i8] c"EXCLUSION\00", align 1
@.str.452 = private unnamed_addr constant [10 x i8] c"Exclusion\00", align 1
@.str.453 = private unnamed_addr constant [43 x i8] c"Use exclusion blending mode while painting\00", align 1
@.str.454 = private unnamed_addr constant [4 x i8] c"HUE\00", align 1
@.str.455 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.456 = private unnamed_addr constant [37 x i8] c"Use hue blending mode while painting\00", align 1
@.str.457 = private unnamed_addr constant [11 x i8] c"SATURATION\00", align 1
@.str.458 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.459 = private unnamed_addr constant [44 x i8] c"Use saturation blending mode while painting\00", align 1
@.str.460 = private unnamed_addr constant [11 x i8] c"LUMINOSITY\00", align 1
@.str.461 = private unnamed_addr constant [11 x i8] c"Luminosity\00", align 1
@.str.462 = private unnamed_addr constant [44 x i8] c"Use luminosity blending mode while painting\00", align 1
@.str.463 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.464 = private unnamed_addr constant [39 x i8] c"Use color blending mode while painting\00", align 1
@rna_Brush_direction_itemf.prop_default_items = internal global [1 x %struct.EnumPropertyItem] zeroinitializer, align 16
@rna_Brush_direction_itemf.prop_flatten_contrast_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.468 }, %struct.EnumPropertyItem { i32 512, ptr @.str.469, i32 0, ptr @.str.470, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.468 = private unnamed_addr constant [20 x i8] c"Add effect of brush\00", align 1
@.str.469 = private unnamed_addr constant [9 x i8] c"CONTRAST\00", align 1
@.str.470 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.471 = private unnamed_addr constant [25 x i8] c"Subtract effect of brush\00", align 1
@rna_Brush_direction_itemf.prop_fill_deepen_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.468 }, %struct.EnumPropertyItem { i32 512, ptr @.str.472, i32 0, ptr @.str.473, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.472 = private unnamed_addr constant [7 x i8] c"DEEPEN\00", align 1
@.str.473 = private unnamed_addr constant [7 x i8] c"Deepen\00", align 1
@rna_Brush_direction_itemf.prop_scrape_peaks_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.468 }, %struct.EnumPropertyItem { i32 512, ptr @.str.474, i32 0, ptr @.str.475, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.474 = private unnamed_addr constant [6 x i8] c"PEAKS\00", align 1
@.str.475 = private unnamed_addr constant [6 x i8] c"Peaks\00", align 1
@rna_Brush_direction_itemf.prop_pinch_magnify_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.468 }, %struct.EnumPropertyItem { i32 512, ptr @.str.476, i32 0, ptr @.str.477, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.476 = private unnamed_addr constant [8 x i8] c"MAGNIFY\00", align 1
@.str.477 = private unnamed_addr constant [8 x i8] c"Magnify\00", align 1
@rna_Brush_direction_itemf.prop_inflate_deflate_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.468 }, %struct.EnumPropertyItem { i32 512, ptr @.str.478, i32 0, ptr @.str.479, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.478 = private unnamed_addr constant [8 x i8] c"DEFLATE\00", align 1
@.str.479 = private unnamed_addr constant [8 x i8] c"Deflate\00", align 1
@rna_Brush_direction_itemf.prop_soften_sharpen_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.60, i32 0, ptr @.str.61, ptr @.str.480 }, %struct.EnumPropertyItem { i32 512, ptr @.str.481, i32 0, ptr @.str.482, ptr @.str.483 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.480 = private unnamed_addr constant [21 x i8] c"Blur effect of brush\00", align 1
@.str.481 = private unnamed_addr constant [8 x i8] c"SHARPEN\00", align 1
@.str.482 = private unnamed_addr constant [8 x i8] c"Sharpen\00", align 1
@.str.483 = private unnamed_addr constant [24 x i8] c"Sharpen effect of brush\00", align 1
@prop_direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.468 }, %struct.EnumPropertyItem { i32 512, ptr @.str.484, i32 0, ptr @.str.46, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.484 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@rna_Brush_stroke_itemf.brush_stroke_method_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.485, i32 0, ptr @.str.486, ptr @.str.487 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.488, i32 0, ptr @.str.218, ptr @.str.219 }, %struct.EnumPropertyItem { i32 1, ptr @.str.489, i32 0, ptr @.str.167, ptr @.str.168 }, %struct.EnumPropertyItem { i32 536870912, ptr @.str.490, i32 0, ptr @.str.221, ptr @.str.491 }, %struct.EnumPropertyItem { i32 -2147483648, ptr @.str.492, i32 0, ptr @.str.224, ptr @.str.225 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.485 = private unnamed_addr constant [5 x i8] c"DOTS\00", align 1
@.str.486 = private unnamed_addr constant [5 x i8] c"Dots\00", align 1
@.str.487 = private unnamed_addr constant [36 x i8] c"Apply paint on each mouse move step\00", align 1
@.str.488 = private unnamed_addr constant [6 x i8] c"SPACE\00", align 1
@.str.489 = private unnamed_addr constant [9 x i8] c"AIRBRUSH\00", align 1
@.str.490 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@.str.491 = private unnamed_addr constant [53 x i8] c"Drag a line with dabs separated according to spacing\00", align 1
@.str.492 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@sculpt_stroke_method_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.485, i32 0, ptr @.str.486, ptr @.str.487 }, %struct.EnumPropertyItem { i32 8388608, ptr @.str.493, i32 0, ptr @.str.494, ptr @.str.495 }, %struct.EnumPropertyItem { i32 1024, ptr @.str.488, i32 0, ptr @.str.218, ptr @.str.219 }, %struct.EnumPropertyItem { i32 1, ptr @.str.489, i32 0, ptr @.str.167, ptr @.str.168 }, %struct.EnumPropertyItem { i32 256, ptr @.str.496, i32 0, ptr @.str.215, ptr @.str.216 }, %struct.EnumPropertyItem { i32 536870912, ptr @.str.490, i32 0, ptr @.str.221, ptr @.str.222 }, %struct.EnumPropertyItem { i32 -2147483648, ptr @.str.492, i32 0, ptr @.str.224, ptr @.str.497 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.493 = private unnamed_addr constant [9 x i8] c"DRAG_DOT\00", align 1
@.str.494 = private unnamed_addr constant [9 x i8] c"Drag Dot\00", align 1
@.str.495 = private unnamed_addr constant [47 x i8] c"Allows a single dot to be carefully positioned\00", align 1
@.str.496 = private unnamed_addr constant [9 x i8] c"ANCHORED\00", align 1
@.str.497 = private unnamed_addr constant [86 x i8] c"Define the stroke curve with a bezier curve (dabs are separated according to spacing)\00", align 1
@.str.498 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.499 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.500 = private unnamed_addr constant [40 x i8] c"Rotate the brush texture by given angle\00", align 1
@.str.501 = private unnamed_addr constant [5 x i8] c"RAKE\00", align 1
@.str.502 = private unnamed_addr constant [7 x i8] c"RANDOM\00", align 1
@.str.503 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.504 = private unnamed_addr constant [5 x i8] c"AREA\00", align 1
@.str.505 = private unnamed_addr constant [11 x i8] c"Area Plane\00", align 1
@.str.506 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.507 = private unnamed_addr constant [11 x i8] c"View Plane\00", align 1
@.str.508 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.509 = private unnamed_addr constant [8 x i8] c"X Plane\00", align 1
@.str.510 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.511 = private unnamed_addr constant [8 x i8] c"Y Plane\00", align 1
@.str.512 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.513 = private unnamed_addr constant [8 x i8] c"Z Plane\00", align 1
@.str.514 = private unnamed_addr constant [4 x i8] c"BOX\00", align 1
@.str.515 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.516 = private unnamed_addr constant [9 x i8] c"GAUSSIAN\00", align 1
@.str.517 = private unnamed_addr constant [9 x i8] c"Gaussian\00", align 1
@.str.518 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.519 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.520 = private unnamed_addr constant [5 x i8] c"RAMP\00", align 1
@.str.521 = private unnamed_addr constant [5 x i8] c"Ramp\00", align 1
@.str.522 = private unnamed_addr constant [7 x i8] c"CUTOFF\00", align 1
@.str.523 = private unnamed_addr constant [7 x i8] c"Cutoff\00", align 1
@.str.524 = private unnamed_addr constant [9 x i8] c"PRESSURE\00", align 1
@.str.525 = private unnamed_addr constant [15 x i8] c"SPACING_REPEAT\00", align 1
@.str.526 = private unnamed_addr constant [7 x i8] c"Repeat\00", align 1
@.str.527 = private unnamed_addr constant [14 x i8] c"SPACING_CLAMP\00", align 1
@.str.528 = private unnamed_addr constant [6 x i8] c"Clamp\00", align 1
@.str.529 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.530 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.531 = private unnamed_addr constant [7 x i8] c"RADIAL\00", align 1
@.str.532 = private unnamed_addr constant [7 x i8] c"Radial\00", align 1
@.str.533 = private unnamed_addr constant [11 x i8] c"VIEW_PLANE\00", align 1
@.str.534 = private unnamed_addr constant [11 x i8] c"AREA_PLANE\00", align 1
@.str.535 = private unnamed_addr constant [6 x i8] c"TILED\00", align 1
@.str.536 = private unnamed_addr constant [6 x i8] c"Tiled\00", align 1
@.str.537 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@.str.538 = private unnamed_addr constant [8 x i8] c"STENCIL\00", align 1
@.str.539 = private unnamed_addr constant [8 x i8] c"Stencil\00", align 1
@switch.table.rna_Brush_stroke_itemf = private unnamed_addr constant [5 x ptr] [ptr @sculpt_stroke_method_items, ptr @rna_Brush_stroke_itemf.brush_stroke_method_items, ptr @rna_Brush_stroke_itemf.brush_stroke_method_items, ptr @sculpt_stroke_method_items, ptr @sculpt_stroke_method_items], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_blend_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 4, !tbaa !40
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_blend_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 12
  store i16 %5, ptr %6, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_sculpt_tool_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_sculpt_tool_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 34
  store i8 %5, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_vertex_tool_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 35
  %5 = load i8, ptr %4, align 1, !tbaa !49
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_vertex_tool_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 35
  store i8 %5, ptr %6, align 1, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_image_tool_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 2, !tbaa !50
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_image_tool_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 36
  store i8 %5, ptr %6, align 2, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_direction_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, 512
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_direction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = and i32 %6, -513
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_stroke_method_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, -1602222847
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_stroke_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = and i32 %6, 1602222846
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_texture_angle_source_random_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, 33554560
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_texture_angle_source_random_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = and i32 %6, -33554561
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_texture_angle_source_no_random_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, 128
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_texture_angle_source_no_random_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = and i32 %6, -129
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_sculpt_plane_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 28
  %5 = load i32, ptr %4, align 8, !tbaa !52
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_sculpt_plane_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 28
  store i32 %1, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_mask_tool_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 37
  %5 = load i8, ptr %4, align 1, !tbaa !53
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_mask_tool_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 37
  store i8 %5, ptr %6, align 1, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !54
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  tail call fastcc void @rna_Brush_set_size(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Brush_set_size(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !55 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 46
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 15
  %7 = load i32, ptr %6, align 4, !tbaa !54
  tail call void @BKE_brush_scale_unprojected_radius(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %7) #15
  store i32 %1, ptr %6, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_unprojected_radius_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 46
  %5 = load float, ptr %4, align 4, !tbaa !56
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_unprojected_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  tail call fastcc void @rna_Brush_set_unprojected_radius(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Brush_set_unprojected_radius(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #4 !PGOFuncName !57 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 15
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 46
  %7 = load float, ptr %6, align 4, !tbaa !56
  tail call void @BKE_brush_scale_size(ptr noundef nonnull %5, float noundef %1, float noundef %7) #15
  store float %1, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_jitter_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 8, !tbaa !58
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_jitter_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_jitter_absolute_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 19
  %5 = load i32, ptr %4, align 4, !tbaa !59
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_jitter_absolute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1000000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 19
  store i32 %6, ptr %7, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_spacing_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 21
  %5 = load i32, ptr %4, align 4, !tbaa !60
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_spacing_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 21
  store i32 %6, ptr %7, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_grad_spacing_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 31
  %5 = load i32, ptr %4, align 4, !tbaa !61
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_grad_spacing_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 31
  store i32 %6, ptr %7, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_smooth_stroke_radius_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !62
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_smooth_stroke_radius_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 200)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 10)
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 22
  store i32 %6, ptr %7, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_smooth_stroke_factor_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 23
  %5 = load float, ptr %4, align 4, !tbaa !63
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_smooth_stroke_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 5.000000e-01
  %6 = fcmp ogt float %1, 0x3FEFAE1480000000
  %7 = select i1 %6, float 0x3FEFAE1480000000, float %1
  %8 = select i1 %5, float 5.000000e-01, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 23
  store float %8, ptr %9, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_rate_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 24
  %5 = load float, ptr %4, align 8, !tbaa !64
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_rate_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F1A36E2E0000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F1A36E2E0000000, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 24
  store float %8, ptr %9, align 8, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 25
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !65
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !66

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 25
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
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
  store float %15, ptr %16, align 4, !tbaa !65
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !68

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_secondary_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 27
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !65
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !69

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_secondary_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 27
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
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
  store float %15, ptr %16, align 4, !tbaa !65
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !70

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_weight_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !71
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_strength_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 8, !tbaa !72
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 26
  store float %8, ptr %9, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_plane_offset_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 29
  %5 = load float, ptr %4, align 4, !tbaa !73
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_plane_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, -2.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float -2.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 29
  store float %8, ptr %9, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_plane_trim_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 40
  %5 = load float, ptr %4, align 4, !tbaa !74
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_plane_trim_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 40
  store float %8, ptr %9, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_height_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 41
  %5 = load float, ptr %4, align 8, !tbaa !75
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_height_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 41
  store float %8, ptr %9, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_texture_sample_bias_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !76
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_texture_sample_bias_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, -1.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float -1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_normal_weight_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 8, !tbaa !77
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_normal_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_crease_pinch_factor_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 39
  %5 = load float, ptr %4, align 8, !tbaa !78
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_crease_pinch_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 39
  store float %8, ptr %9, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_auto_smooth_factor_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 38
  %5 = load float, ptr %4, align 4, !tbaa !79
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_auto_smooth_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 38
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_stencil_pos_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 53
  %6 = load float, ptr %5, align 4, !tbaa !65
  store float %6, ptr %1, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 53, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_stencil_pos_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 53
  %6 = load float, ptr %1, align 4, !tbaa !65
  store float %6, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 53, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_stencil_dimension_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 54
  %6 = load float, ptr %5, align 4, !tbaa !65
  store float %6, ptr %1, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 54, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_stencil_dimension_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 54
  %6 = load float, ptr %1, align 4, !tbaa !65
  store float %6, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 54, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_mask_stencil_pos_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 55
  %6 = load float, ptr %5, align 4, !tbaa !65
  store float %6, ptr %1, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 55, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_mask_stencil_pos_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 55
  %6 = load float, ptr %1, align 4, !tbaa !65
  store float %6, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 55, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_mask_stencil_dimension_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 56
  %6 = load float, ptr %5, align 4, !tbaa !65
  store float %6, ptr %1, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 56, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_mask_stencil_dimension_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 56
  %6 = load float, ptr %1, align 4, !tbaa !65
  store float %6, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 56, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_sharp_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 47
  %5 = load float, ptr %4, align 8, !tbaa !80
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_sharp_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 47
  store float %8, ptr %9, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_fill_threshold_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 50
  %5 = load float, ptr %4, align 4, !tbaa !81
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_fill_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 50
  store float %8, ptr %9, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_blur_kernel_radius_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 48
  %5 = load i32, ptr %4, align 4, !tbaa !82
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_blur_kernel_radius_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 48
  store i32 %6, ptr %7, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_blur_mode_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 49
  %5 = load i32, ptr %4, align 8, !tbaa !83
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_blur_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 49
  store i32 %1, ptr %5, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_airbrush_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_airbrush_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_original_normal_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_original_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_wrap_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_wrap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_pressure_strength_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_pressure_strength_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_offset_pressure_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_offset_pressure_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -65537
  %9 = select i1 %5, i32 0, i32 65536
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_pressure_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_pressure_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_gradient_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_use_gradient_set(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  tail call fastcc void @rna_Brush_use_gradient_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Brush_use_gradient_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  br i1 %5, label %8, label %10

8:                                                ; preds = %2
  %9 = and i32 %7, -2097153
  store i32 %9, ptr %6, align 8, !tbaa !51
  br label %17

10:                                               ; preds = %2
  %11 = or i32 %7, 2097152
  store i32 %11, ptr %6, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call ptr @add_colorband(i8 noundef zeroext 1) #15
  store ptr %16, ptr %12, align 8, !tbaa !85
  br label %17

17:                                               ; preds = %8, %15, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_pressure_jitter_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_pressure_jitter_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_pressure_spacing_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_pressure_spacing_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_pressure_masking_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !86
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_pressure_masking_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 17
  store i32 %1, ptr %5, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_inverse_smooth_pressure_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 24
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_inverse_smooth_pressure_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -16777217
  %9 = select i1 %5, i32 0, i32 16777216
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_rake_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_rake_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_relative_jitter_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 30
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_relative_jitter_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -1073741825
  %9 = select i1 %5, i32 1073741824, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_random_rotation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 25
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_random_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -33554433
  %9 = select i1 %5, i32 0, i32 33554432
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_plane_trim_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 26
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_plane_trim_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -67108865
  %9 = select i1 %5, i32 0, i32 67108864
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_frontface_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 27
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_frontface_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -134217729
  %9 = select i1 %5, i32 0, i32 134217728
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_anchor_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_anchor_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_space_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_line_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 29
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_line_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -536870913
  %9 = select i1 %5, i32 0, i32 536870912
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_curve_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 31
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_curve_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, 2147483647
  %9 = select i1 %5, i32 0, i32 -2147483648
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_smooth_stroke_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_smooth_stroke_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_persistent_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_persistent_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_accumulate_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_accumulate_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_space_attenuation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 18
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_space_attenuation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -262145
  %9 = select i1 %5, i32 0, i32 262144
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_adaptive_space_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_adaptive_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_locked_size_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_locked_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -1048577
  %9 = select i1 %5, i32 0, i32 1048576
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_edge_to_edge_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 22
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_edge_to_edge_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -4194305
  %9 = select i1 %5, i32 0, i32 4194304
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_restore_mesh_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_restore_mesh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -8388609
  %9 = select i1 %5, i32 0, i32 8388608
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_alpha_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 16384, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef %6) #15
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_paint_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PaintCurve, ptr noundef %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_paint_curve_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !88
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_gradient_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_gradient_stroke_mode_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 32
  %5 = load i32, ptr %4, align 8, !tbaa !89
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_gradient_stroke_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 32
  store i32 %1, ptr %5, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_gradient_fill_mode_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 33
  %5 = load i32, ptr %4, align 4, !tbaa !90
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_gradient_fill_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 33
  store i32 %1, ptr %5, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_primary_overlay_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_primary_overlay_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_secondary_overlay_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_secondary_overlay_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_cursor_overlay_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_cursor_overlay_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_cursor_overlay_override_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_cursor_overlay_override_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_primary_overlay_override_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_primary_overlay_override_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_secondary_overlay_override_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_secondary_overlay_override_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_paint_sculpt_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 2, !tbaa !92
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_paint_sculpt_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_paint_vertex_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 2, !tbaa !92
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_paint_vertex_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_paint_weight_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 2, !tbaa !92
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_paint_weight_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_paint_image_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 2, !tbaa !92
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_paint_image_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_texture_slot_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 3
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BrushTextureSlot, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 3, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 3, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_mask_texture_slot_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 4
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BrushTextureSlot, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_mask_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 4, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_mask_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 4, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_texture_overlay_alpha_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 43
  %5 = load i32, ptr %4, align 8, !tbaa !95
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_texture_overlay_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 43
  store i32 %6, ptr %7, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_mask_overlay_alpha_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 4, !tbaa !96
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_mask_overlay_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 44
  store i32 %6, ptr %7, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_cursor_overlay_alpha_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 8, !tbaa !97
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_cursor_overlay_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 45
  store i32 %6, ptr %7, align 8, !tbaa !97
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_cursor_color_add_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 51
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !65
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !98

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_cursor_color_add_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 51
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !65
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !99

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_cursor_color_subtract_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 52
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !65
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !100

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_cursor_color_subtract_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 52
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !65
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !101

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_use_custom_icon_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 28
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_use_custom_icon_set(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, -268435457
  %9 = select i1 %5, i32 0, i32 268435456
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_icon_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 10
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #15
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Brush_icon_filepath_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 10
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_icon_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 10
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_clone_image_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_clone_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Brush_clone_alpha_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 1, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !103
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_clone_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 2
  store float %8, ptr %9, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_clone_offset_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !65
  store float %6, ptr %1, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Brush_clone_offset_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 1
  %6 = load float, ptr %1, align 4, !tbaa !65
  store float %6, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 1, i32 1, i64 1
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_brush_capabilities_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call fastcc void @rna_Brush_capabilities_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Brush_capabilities_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !104 {
  %3 = load ptr, ptr %1, align 8, !tbaa !105
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_BrushCapabilities, ptr noundef %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_sculpt_capabilities_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call fastcc void @rna_Sculpt_tool_capabilities_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Sculpt_tool_capabilities_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !106 {
  %3 = load ptr, ptr %1, align 8, !tbaa !105
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_SculptToolCapabilities, ptr noundef %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Brush_image_paint_capabilities_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call fastcc void @rna_Imapaint_tool_capabilities_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Imapaint_tool_capabilities_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !107 {
  %3 = load ptr, ptr %1, align 8, !tbaa !105
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_ImapaintToolCapabilities, ptr noundef %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BrushCapabilities_rna_properties_begin(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !108
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BrushCapabilities_rna_properties, ptr %4, align 8, !tbaa !110
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @BrushCapabilities_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BrushCapabilities_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 !PGOFuncName !113 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BrushCapabilities_rna_properties_next(ptr noundef %0) #4 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !112
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @BrushCapabilities_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BrushCapabilities_rna_properties_end(ptr noundef %0) #4 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BrushCapabilities_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BrushCapabilities_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BrushCapabilities_has_overlay_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_BrushCapabilities_has_overlay_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_BrushCapabilities_has_overlay_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 3, i32 20
  %5 = load i8, ptr %4, align 4, !tbaa !116
  %6 = icmp ult i8 %5, 2
  %7 = icmp eq i8 %5, 5
  %8 = or i1 %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BrushCapabilities_has_random_texture_angle_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_BrushCapabilities_has_random_texture_angle_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_BrushCapabilities_has_random_texture_angle_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 3, i32 20
  %5 = load i8, ptr %4, align 4, !tbaa !116
  switch i8 %5, label %12 [
    i8 0, label %6
    i8 3, label %6
    i8 4, label %6
  ]

6:                                                ; preds = %1, %1, %1
  %7 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BrushCapabilities_has_texture_angle_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_BrushCapabilities_has_texture_angle_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_BrushCapabilities_has_texture_angle_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 3, i32 20
  %5 = load i8, ptr %4, align 4, !tbaa !116
  %6 = icmp ult i8 %5, 6
  br i1 %6, label %10, label %7

7:                                                ; preds = %10, %1
  %8 = icmp eq i8 %5, 4
  %9 = zext i1 %8 to i32
  br label %14

10:                                               ; preds = %1
  %11 = lshr i8 43, %5
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %7, label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %9, %7 ], [ 1, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BrushCapabilities_has_texture_angle_source_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_BrushCapabilities_has_texture_angle_source_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_BrushCapabilities_has_texture_angle_source_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 3, i32 20
  %5 = load i8, ptr %4, align 4, !tbaa !116
  switch i8 %5, label %6 [
    i8 0, label %9
    i8 3, label %9
  ]

6:                                                ; preds = %1
  %7 = icmp eq i8 %5, 4
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %1, %6
  %10 = phi i32 [ 1, %1 ], [ %8, %6 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BrushCapabilities_has_spacing_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_BrushCapabilities_has_spacing_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_BrushCapabilities_has_spacing_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BrushCapabilities_has_smooth_stroke_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_BrushCapabilities_has_smooth_stroke_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_BrushCapabilities_has_smooth_stroke_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !121 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, -1602223872
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SculptToolCapabilities_rna_properties_begin(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !108
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SculptToolCapabilities_rna_properties, ptr %4, align 8, !tbaa !110
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @SculptToolCapabilities_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SculptToolCapabilities_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 !PGOFuncName !122 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SculptToolCapabilities_rna_properties_next(ptr noundef %0) #4 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !112
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @SculptToolCapabilities_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SculptToolCapabilities_rna_properties_end(ptr noundef %0) #4 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SculptToolCapabilities_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SculptToolCapabilities_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @SculptToolCapabilities_has_accumulate_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_accumulate_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_SculptToolCapabilities_has_accumulate_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !123 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  switch i8 %5, label %6 [
    i8 17, label %9
    i8 8, label %9
    i8 16, label %9
    i8 1, label %9
    i8 4, label %9
  ]

6:                                                ; preds = %1
  %7 = icmp eq i8 %5, 6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %1, %1, %1, %1, %6
  %10 = phi i32 [ 1, %1 ], [ %8, %6 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SculptToolCapabilities_has_auto_smooth_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_auto_smooth_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_SculptToolCapabilities_has_auto_smooth_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !124 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = icmp ne i8 %5, 19
  %7 = icmp ne i8 %5, 2
  %8 = and i1 %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SculptToolCapabilities_has_height_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_height_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_SculptToolCapabilities_has_height_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !125 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = icmp eq i8 %5, 6
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @SculptToolCapabilities_has_jitter_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_jitter_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_SculptToolCapabilities_has_jitter_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !126 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, 8388864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %10 = load i8, ptr %9, align 8, !tbaa !48
  switch i8 %10, label %11 [
    i8 5, label %14
    i8 14, label %14
    i8 13, label %14
  ]

11:                                               ; preds = %8
  %12 = icmp ne i8 %10, 12
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %8, %8, %8, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %8 ], [ %13, %11 ], [ 0, %8 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SculptToolCapabilities_has_normal_weight_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_normal_weight_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_SculptToolCapabilities_has_normal_weight_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !127 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = and i8 %5, -9
  %7 = icmp eq i8 %6, 5
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SculptToolCapabilities_has_persistence_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_persistence_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_SculptToolCapabilities_has_persistence_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !128 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = icmp eq i8 %5, 6
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SculptToolCapabilities_has_pinch_factor_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_pinch_factor_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_SculptToolCapabilities_has_pinch_factor_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !129 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = and i8 %5, -2
  %7 = icmp eq i8 %6, 16
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @SculptToolCapabilities_has_plane_offset_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_plane_offset_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_SculptToolCapabilities_has_plane_offset_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !130 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  switch i8 %5, label %6 [
    i8 8, label %9
    i8 18, label %9
    i8 9, label %9
    i8 7, label %9
  ]

6:                                                ; preds = %1
  %7 = icmp eq i8 %5, 10
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %1, %1, %1, %6
  %10 = phi i32 [ 1, %1 ], [ %8, %6 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @SculptToolCapabilities_has_random_texture_angle_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_random_texture_angle_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_SculptToolCapabilities_has_random_texture_angle_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !131 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  switch i8 %5, label %6 [
    i8 5, label %9
    i8 14, label %9
    i8 13, label %9
  ]

6:                                                ; preds = %1
  %7 = icmp ne i8 %5, 12
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %1, %1, %6
  %10 = phi i32 [ 0, %1 ], [ %8, %6 ], [ 0, %1 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @SculptToolCapabilities_has_sculpt_plane_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_sculpt_plane_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_SculptToolCapabilities_has_sculpt_plane_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !132 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  switch i8 %5, label %6 [
    i8 4, label %9
    i8 19, label %9
    i8 3, label %9
  ]

6:                                                ; preds = %1
  %7 = icmp ne i8 %5, 2
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %1, %1, %6
  %10 = phi i32 [ 0, %1 ], [ %8, %6 ], [ 0, %1 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @SculptToolCapabilities_has_secondary_color_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_secondary_color_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_SculptToolCapabilities_has_secondary_color_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !133 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = add i8 %5, -1
  %7 = icmp ult i8 %6, 18
  br i1 %7, label %11, label %8

8:                                                ; preds = %11, %1
  %9 = icmp eq i8 %5, 10
  %10 = zext i1 %9 to i32
  br label %16

11:                                               ; preds = %1
  %12 = zext nneg i8 %6 to i32
  %13 = lshr i32 229837, %12
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ 1, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @SculptToolCapabilities_has_smooth_stroke_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_smooth_stroke_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_SculptToolCapabilities_has_smooth_stroke_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, -1602223872
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %10 = load i8, ptr %9, align 8, !tbaa !48
  switch i8 %10, label %11 [
    i8 5, label %14
    i8 14, label %14
    i8 13, label %14
  ]

11:                                               ; preds = %8
  %12 = icmp ne i8 %10, 12
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %8, %8, %8, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %8 ], [ %13, %11 ], [ 0, %8 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @SculptToolCapabilities_has_space_attenuation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_space_attenuation_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_SculptToolCapabilities_has_space_attenuation_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !135 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, -1610611712
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %10 = load i8, ptr %9, align 8, !tbaa !48
  switch i8 %10, label %11 [
    i8 5, label %14
    i8 14, label %14
    i8 2, label %14
  ]

11:                                               ; preds = %8
  %12 = icmp ne i8 %10, 13
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %8, %8, %8, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %8 ], [ %13, %11 ], [ 0, %8 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SculptToolCapabilities_has_strength_pressure_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_strength_pressure_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_SculptToolCapabilities_has_strength_pressure_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = and i8 %5, -9
  %7 = icmp ne i8 %6, 5
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SculptToolCapabilities_has_gravity_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_SculptToolCapabilities_has_gravity_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_SculptToolCapabilities_has_gravity_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  %5 = load i8, ptr %4, align 8, !tbaa !48
  %6 = icmp ne i8 %5, 19
  %7 = icmp ne i8 %5, 2
  %8 = and i1 %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImapaintToolCapabilities_rna_properties_begin(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !108
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ImapaintToolCapabilities_rna_properties, ptr %4, align 8, !tbaa !110
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @ImapaintToolCapabilities_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ImapaintToolCapabilities_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 !PGOFuncName !138 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImapaintToolCapabilities_rna_properties_next(ptr noundef %0) #4 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !112
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @ImapaintToolCapabilities_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImapaintToolCapabilities_rna_properties_end(ptr noundef %0) #4 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ImapaintToolCapabilities_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ImapaintToolCapabilities_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ImapaintToolCapabilities_has_accumulate_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ImapaintToolCapabilities_has_accumulate_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_ImapaintToolCapabilities_has_accumulate_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, 8388865
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 36
  %10 = load i8, ptr %9, align 2, !tbaa !50
  switch i8 %10, label %11 [
    i8 1, label %21
    i8 2, label %21
    i8 4, label %21
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 3, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 3, i32 20
  %17 = load i8, ptr %16, align 4, !tbaa !116
  switch i8 %17, label %18 [
    i8 1, label %21
    i8 5, label %21
  ]

18:                                               ; preds = %15
  %19 = icmp eq i8 %17, 2
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %18, %15, %15, %8, %8, %8, %11, %1
  %22 = phi i32 [ 0, %8 ], [ 0, %1 ], [ 1, %11 ], [ 0, %8 ], [ 0, %8 ], [ 1, %15 ], [ %20, %18 ], [ 1, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImapaintToolCapabilities_has_space_attenuation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ImapaintToolCapabilities_has_space_attenuation_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_ImapaintToolCapabilities_has_space_attenuation_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, -1610611712
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 36
  %10 = load i8, ptr %9, align 2, !tbaa !50
  %11 = icmp ne i8 %10, 4
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ 0, %1 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImapaintToolCapabilities_has_radius_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ImapaintToolCapabilities_has_radius_get(ptr noundef %0) #14, !range !114
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_ImapaintToolCapabilities_has_radius_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !141 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 36
  %5 = load i8, ptr %4, align 2, !tbaa !50
  %6 = icmp ne i8 %5, 4
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BrushTextureSlot_angle_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !142
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BrushTextureSlot_angle_set(ptr nocapture noundef readonly %0, float noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x401921FB60000000
  %7 = select i1 %6, float 0x401921FB60000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 4, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BrushTextureSlot_map_mode_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 20
  %5 = load i8, ptr %4, align 4, !tbaa !143
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BrushTextureSlot_map_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 20
  store i8 %5, ptr %6, align 4, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BrushTextureSlot_tex_paint_map_mode_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 20
  %5 = load i8, ptr %4, align 4, !tbaa !143
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BrushTextureSlot_tex_paint_map_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 20
  store i8 %5, ptr %6, align 4, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BrushTextureSlot_mask_map_mode_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.MTex, ptr %3, i64 0, i32 20
  %5 = load i8, ptr %4, align 4, !tbaa !143
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BrushTextureSlot_mask_map_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MTex, ptr %4, i64 0, i32 20
  store i8 %5, ptr %6, align 4, !tbaa !143
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !144 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_sculpt_tool_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !145 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call fastcc void @rna_Brush_reset_icon(ptr noundef %5) #14
  tail call void @rna_Brush_update(ptr poison, ptr poison, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_vertex_tool_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !146 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call fastcc void @rna_Brush_reset_icon(ptr noundef %5) #14
  tail call void @rna_Brush_update(ptr poison, ptr poison, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_imagepaint_tool_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !147 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call fastcc void @rna_Brush_reset_icon(ptr noundef %5) #14
  tail call void @rna_Brush_update(ptr poison, ptr poison, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal nonnull ptr @rna_Brush_direction_itemf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 !PGOFuncName !148 {
  %5 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  switch i32 %5, label %29 [
    i32 0, label %8
    i32 4, label %24
    i32 3, label %24
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 34
  %10 = load i8, ptr %9, align 8, !tbaa !48
  switch i8 %10, label %23 [
    i8 1, label %29
    i8 16, label %29
    i8 17, label %29
    i8 6, label %29
    i8 8, label %29
    i8 18, label %29
    i8 19, label %11
    i8 7, label %18
    i8 9, label %19
    i8 10, label %20
    i8 3, label %21
    i8 4, label %22
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 37
  %13 = load i8, ptr %12, align 1, !tbaa !53
  %14 = icmp eq i8 %13, 1
  %15 = select i1 %14, ptr @rna_Brush_direction_itemf.prop_default_items, ptr @rna_Brush_direction_itemf.prop_flatten_contrast_items
  %16 = icmp eq i8 %13, 0
  %17 = select i1 %16, ptr @prop_direction_items, ptr %15
  br label %29

18:                                               ; preds = %8
  br label %29

19:                                               ; preds = %8
  br label %29

20:                                               ; preds = %8
  br label %29

21:                                               ; preds = %8
  br label %29

22:                                               ; preds = %8
  br label %29

23:                                               ; preds = %8
  br label %29

24:                                               ; preds = %4, %4
  %25 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 36
  %26 = load i8, ptr %25, align 2, !tbaa !50
  %27 = icmp eq i8 %26, 1
  %28 = select i1 %27, ptr @rna_Brush_direction_itemf.prop_soften_sharpen_items, ptr @rna_Brush_direction_itemf.prop_default_items
  br label %29

29:                                               ; preds = %4, %24, %11, %8, %8, %8, %8, %8, %8, %23, %22, %21, %20, %19, %18
  %30 = phi ptr [ @rna_Brush_direction_itemf.prop_default_items, %23 ], [ @rna_Brush_direction_itemf.prop_inflate_deflate_items, %22 ], [ @rna_Brush_direction_itemf.prop_pinch_magnify_items, %21 ], [ @rna_Brush_direction_itemf.prop_scrape_peaks_items, %20 ], [ @rna_Brush_direction_itemf.prop_fill_deepen_items, %19 ], [ @rna_Brush_direction_itemf.prop_flatten_contrast_items, %18 ], [ @prop_direction_items, %8 ], [ @prop_direction_items, %8 ], [ @prop_direction_items, %8 ], [ @prop_direction_items, %8 ], [ @prop_direction_items, %8 ], [ @prop_direction_items, %8 ], [ %17, %11 ], [ %28, %24 ], [ @rna_Brush_direction_itemf.prop_default_items, %4 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_stroke_update(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !149 {
  tail call void @WM_main_add_notifier(i32 noundef 68091904, ptr noundef %1) #15
  tail call void @rna_Brush_update(ptr poison, ptr poison, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef nonnull ptr @rna_Brush_stroke_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 !PGOFuncName !150 {
  %5 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #15
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [5 x ptr], ptr @switch.table.rna_Brush_stroke_itemf, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %10, %7 ], [ @rna_Brush_stroke_itemf.brush_stroke_method_items, %4 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_size_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !151 {
  tail call void @BKE_paint_invalidate_overlay_all() #15
  tail call void @rna_Brush_update(ptr poison, ptr poison, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_main_tex_update(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !152 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 3, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  tail call void @BKE_paint_invalidate_overlay_tex(ptr noundef %1, ptr noundef %7) #15
  tail call void @rna_Brush_update(ptr poison, ptr poison, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_secondary_tex_update(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !153 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 4, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  tail call void @BKE_paint_invalidate_overlay_tex(ptr noundef %1, ptr noundef %7) #15
  tail call void @rna_Brush_update(ptr poison, ptr poison, ptr noundef %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Brush_icon_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !154 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @IMB_freeImBuf(ptr noundef nonnull %7) #15
  store ptr null, ptr %6, align 8, !tbaa !155
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 7
  store i32 0, ptr %11, align 8, !tbaa !156
  %12 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @BKE_previewimg_get(ptr noundef nonnull %5) #15
  %18 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %5) #15
  tail call void @BKE_icon_changed(i32 noundef %18) #15
  br label %19

19:                                               ; preds = %16, %10
  tail call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #8

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_TextureSlot_brush_angle_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 !PGOFuncName !157 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MTex, ptr %5, i64 0, i32 10
  %7 = load i8, ptr %6, align 1, !tbaa !158
  %8 = icmp eq i8 %7, 5
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MTex, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  tail call void @BKE_paint_invalidate_overlay_tex(ptr noundef %1, ptr noundef %11) #15
  br label %12

12:                                               ; preds = %9, %3
  tail call void @rna_TextureSlot_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @rna_TextureSlot_brush_update(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: optsize
declare ptr @rna_TextureSlot_path(ptr noundef) #8

; Function Attrs: optsize
declare ptr @rna_PropertyGroup_refine(ptr noundef) #8

; Function Attrs: optsize
declare ptr @rna_PropertyGroup_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: optsize
declare void @rna_PropertyGroup_unregister(ptr noundef, ptr noundef) #8

; Function Attrs: optsize
declare ptr @rna_PropertyGroup_idprops(ptr noundef, i8 noundef zeroext) #8

; Function Attrs: optsize
declare void @BKE_brush_scale_unprojected_radius(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_brush_scale_size(ptr noundef, float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @add_colorband(i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Brush_reset_icon(ptr noundef %0) unnamed_addr #4 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = and i32 %3, 268435456
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !161
  %9 = icmp sgt i32 %8, 845
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @BKE_icon_delete(ptr noundef nonnull %0) #15
  tail call void @BKE_previewimg_free_id(ptr noundef nonnull %0) #15
  br label %11

11:                                               ; preds = %10, %6
  store i32 0, ptr %7, align 8, !tbaa !161
  br label %12

12:                                               ; preds = %1, %11
  ret void
}

; Function Attrs: optsize
declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_previewimg_free_id(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_paint_invalidate_overlay_all() local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_paint_invalidate_overlay_tex(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @BKE_previewimg_get(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @rna_TextureSlot_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { nounwind }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !43, i64 1844}
!41 = !{!"Brush", !42, i64 0, !45, i64 120, !37, i64 144, !47, i64 152, !47, i64 464, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !38, i64 816, !46, i64 1840, !43, i64 1844, !43, i64 1846, !46, i64 1848, !44, i64 1852, !44, i64 1856, !44, i64 1860, !46, i64 1864, !44, i64 1868, !44, i64 1872, !44, i64 1876, !44, i64 1880, !46, i64 1884, !46, i64 1888, !38, i64 1892, !46, i64 1904, !38, i64 1908, !44, i64 1920, !46, i64 1924, !46, i64 1928, !44, i64 1932, !44, i64 1936, !44, i64 1940, !38, i64 1944, !38, i64 1945, !38, i64 1946, !38, i64 1947, !46, i64 1948, !46, i64 1952, !46, i64 1956, !46, i64 1960, !46, i64 1964, !44, i64 1968, !44, i64 1972, !44, i64 1976, !46, i64 1980, !46, i64 1984, !44, i64 1988, !44, i64 1992, !46, i64 1996, !38, i64 2000, !38, i64 2012, !38, i64 2024, !38, i64 2032, !38, i64 2040, !38, i64 2048}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"BrushClone", !37, i64 0, !38, i64 8, !46, i64 16, !46, i64 20}
!46 = !{!"float", !38, i64 0}
!47 = !{!"MTex", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !46, i64 116, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !43, i64 128, !43, i64 130, !38, i64 132, !38, i64 133, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308}
!48 = !{!41, !38, i64 1944}
!49 = !{!41, !38, i64 1945}
!50 = !{!41, !38, i64 1946}
!51 = !{!41, !44, i64 1856}
!52 = !{!41, !44, i64 1920}
!53 = !{!41, !38, i64 1947}
!54 = !{!41, !44, i64 1852}
!55 = !{!"rna_brush_gen.c:rna_Brush_set_size"}
!56 = !{!41, !46, i64 1980}
!57 = !{!"rna_brush_gen.c:rna_Brush_set_unprojected_radius"}
!58 = !{!41, !46, i64 1864}
!59 = !{!41, !44, i64 1868}
!60 = !{!41, !44, i64 1876}
!61 = !{!41, !44, i64 1932}
!62 = !{!41, !44, i64 1880}
!63 = !{!41, !46, i64 1884}
!64 = !{!41, !46, i64 1888}
!65 = !{!46, !46, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !67}
!71 = !{!41, !46, i64 1848}
!72 = !{!41, !46, i64 1904}
!73 = !{!41, !46, i64 1924}
!74 = !{!41, !46, i64 1956}
!75 = !{!41, !46, i64 1960}
!76 = !{!41, !46, i64 1964}
!77 = !{!41, !46, i64 1840}
!78 = !{!41, !46, i64 1952}
!79 = !{!41, !46, i64 1948}
!80 = !{!41, !46, i64 1984}
!81 = !{!41, !46, i64 1996}
!82 = !{!41, !44, i64 1988}
!83 = !{!41, !44, i64 1992}
!84 = !{!"rna_brush_gen.c:rna_Brush_use_gradient_set"}
!85 = !{!41, !37, i64 800}
!86 = !{!41, !44, i64 1860}
!87 = !{!41, !37, i64 144}
!88 = !{!41, !37, i64 808}
!89 = !{!41, !44, i64 1936}
!90 = !{!41, !44, i64 1940}
!91 = !{!41, !44, i64 1872}
!92 = !{!41, !43, i64 1846}
!93 = !{!41, !37, i64 168}
!94 = !{!41, !37, i64 480}
!95 = !{!41, !44, i64 1968}
!96 = !{!41, !44, i64 1972}
!97 = !{!41, !44, i64 1976}
!98 = distinct !{!98, !67}
!99 = distinct !{!99, !67}
!100 = distinct !{!100, !67}
!101 = distinct !{!101, !67}
!102 = !{!41, !37, i64 120}
!103 = !{!41, !46, i64 136}
!104 = !{!"rna_brush_gen.c:rna_Brush_capabilities_get"}
!105 = !{!35, !37, i64 0}
!106 = !{!"rna_brush_gen.c:rna_Sculpt_tool_capabilities_get"}
!107 = !{!"rna_brush_gen.c:rna_Imapaint_tool_capabilities_get"}
!108 = !{i64 0, i64 8, !109, i64 8, i64 8, !109, i64 16, i64 8, !109}
!109 = !{!37, !37, i64 0}
!110 = !{!111, !37, i64 48}
!111 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!112 = !{!111, !44, i64 128}
!113 = !{!"rna_brush_gen.c:BrushCapabilities_rna_properties_get"}
!114 = !{i32 0, i32 2}
!115 = !{!"rna_brush_gen.c:rna_BrushCapabilities_has_overlay_get"}
!116 = !{!41, !38, i64 284}
!117 = !{!"rna_brush_gen.c:rna_BrushCapabilities_has_random_texture_angle_get"}
!118 = !{!"rna_brush_gen.c:rna_BrushCapabilities_has_texture_angle_get"}
!119 = !{!"rna_brush_gen.c:rna_BrushCapabilities_has_texture_angle_source_get"}
!120 = !{!"rna_brush_gen.c:rna_BrushCapabilities_has_spacing_get"}
!121 = !{!"rna_brush_gen.c:rna_BrushCapabilities_has_smooth_stroke_get"}
!122 = !{!"rna_brush_gen.c:SculptToolCapabilities_rna_properties_get"}
!123 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_accumulate_get"}
!124 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_auto_smooth_get"}
!125 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_height_get"}
!126 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_jitter_get"}
!127 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_normal_weight_get"}
!128 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_persistence_get"}
!129 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_pinch_factor_get"}
!130 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_plane_offset_get"}
!131 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_random_texture_angle_get"}
!132 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_sculpt_plane_get"}
!133 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_secondary_color_get"}
!134 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_smooth_stroke_get"}
!135 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_space_attenuation_get"}
!136 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_strength_pressure_get"}
!137 = !{!"rna_brush_gen.c:rna_SculptToolCapabilities_has_gravity_get"}
!138 = !{!"rna_brush_gen.c:ImapaintToolCapabilities_rna_properties_get"}
!139 = !{!"rna_brush_gen.c:rna_ImapaintToolCapabilities_has_accumulate_get"}
!140 = !{!"rna_brush_gen.c:rna_ImapaintToolCapabilities_has_space_attenuation_get"}
!141 = !{!"rna_brush_gen.c:rna_ImapaintToolCapabilities_has_radius_get"}
!142 = !{!47, !46, i64 116}
!143 = !{!47, !38, i64 132}
!144 = !{!"rna_brush_gen.c:rna_Brush_update"}
!145 = !{!"rna_brush_gen.c:rna_Brush_sculpt_tool_update"}
!146 = !{!"rna_brush_gen.c:rna_Brush_vertex_tool_update"}
!147 = !{!"rna_brush_gen.c:rna_Brush_imagepaint_tool_update"}
!148 = !{!"rna_brush_gen.c:rna_Brush_direction_itemf"}
!149 = !{!"rna_brush_gen.c:rna_Brush_stroke_update"}
!150 = !{!"rna_brush_gen.c:rna_Brush_stroke_itemf"}
!151 = !{!"rna_brush_gen.c:rna_Brush_size_update"}
!152 = !{!"rna_brush_gen.c:rna_Brush_main_tex_update"}
!153 = !{!"rna_brush_gen.c:rna_Brush_secondary_tex_update"}
!154 = !{!"rna_brush_gen.c:rna_Brush_icon_update"}
!155 = !{!41, !37, i64 784}
!156 = !{!41, !44, i64 104}
!157 = !{!"rna_brush_gen.c:rna_TextureSlot_brush_angle_update"}
!158 = !{!47, !38, i64 91}
!159 = !{!47, !37, i64 16}
!160 = !{!"rna_brush_gen.c:rna_Brush_reset_icon"}
!161 = !{!42, !44, i64 104}
