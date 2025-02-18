; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_gpencil_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_gpencil_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }

@rna_GreasePencil_layers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GreasePencil_draw_mode, ptr null, i32 -1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.4, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_GreasePencilLayers, ptr null }, ptr @GreasePencil_layers_begin, ptr @GreasePencil_layers_next, ptr @GreasePencil_layers_end, ptr @GreasePencil_layers_get, ptr null, ptr @GreasePencil_layers_lookup_int, ptr @GreasePencil_layers_lookup_string, ptr null, ptr @RNA_GPencilLayer }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_GreasePencilLayers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GreasePencilLayers_rna_type, ptr null, i32 -1, ptr @.str.16, i32 128, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GreasePencilLayers_rna_properties_begin, ptr @GreasePencilLayers_rna_properties_next, ptr @GreasePencilLayers_rna_properties_end, ptr @GreasePencilLayers_rna_properties_get, ptr null, ptr null, ptr @GreasePencilLayers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GPencilLayer_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_rna_type, ptr null, i32 -1, ptr @.str.16, i32 128, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_rna_properties_begin, ptr @GPencilLayer_rna_properties_next, ptr @GPencilLayer_rna_properties_end, ptr @GPencilLayer_rna_properties_get, ptr null, ptr null, ptr @GPencilLayer_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GPencilLayer_frames = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_active_frame, ptr @rna_GPencilLayer_info, i32 -1, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_GPencilFrames, ptr null }, ptr @GPencilLayer_frames_begin, ptr @GPencilLayer_frames_next, ptr @GPencilLayer_frames_end, ptr @GPencilLayer_frames_get, ptr null, ptr @GPencilLayer_frames_lookup_int, ptr null, ptr null, ptr @RNA_GPencilFrame }, align 8
@RNA_GPencilFrame = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GPencilStrokes, ptr @RNA_GPencilFrames, ptr null, %struct.ListBase { ptr @rna_GPencilFrame_rna_properties, ptr @rna_GPencilFrame_select } }, ptr @.str.113, ptr null, ptr null, i32 4, ptr @.str.114, ptr @.str.115, ptr @.str.5, i32 17, ptr null, ptr @rna_GPencilFrame_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_GPencilFrame_clear_func, ptr @rna_GPencilFrame_clear_func } }, align 8
@rna_GPencilFrames_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilFrames_rna_type, ptr null, i32 -1, ptr @.str.16, i32 128, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilFrames_rna_properties_begin, ptr @GPencilFrames_rna_properties_next, ptr @GPencilFrames_rna_properties_end, ptr @GPencilFrames_rna_properties_get, ptr null, ptr null, ptr @GPencilFrames_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GPencilFrame_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilFrame_rna_type, ptr null, i32 -1, ptr @.str.16, i32 128, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilFrame_rna_properties_begin, ptr @GPencilFrame_rna_properties_next, ptr @GPencilFrame_rna_properties_end, ptr @GPencilFrame_rna_properties_get, ptr null, ptr null, ptr @GPencilFrame_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GPencilFrame_strokes = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilFrame_frame_number, ptr @rna_GPencilFrame_rna_type, i32 -1, ptr @.str.105, i32 0, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_GPencilStrokes, ptr null }, ptr @GPencilFrame_strokes_begin, ptr @GPencilFrame_strokes_next, ptr @GPencilFrame_strokes_end, ptr @GPencilFrame_strokes_get, ptr null, ptr @GPencilFrame_strokes_lookup_int, ptr null, ptr null, ptr @RNA_GPencilStroke }, align 8
@rna_GPencilStrokes_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilStrokes_rna_type, ptr null, i32 -1, ptr @.str.16, i32 128, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStrokes_rna_properties_begin, ptr @GPencilStrokes_rna_properties_next, ptr @GPencilStrokes_rna_properties_end, ptr @GPencilStrokes_rna_properties_get, ptr null, ptr null, ptr @GPencilStrokes_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GPencilStroke_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilStroke_rna_type, ptr null, i32 -1, ptr @.str.16, i32 128, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStroke_rna_properties_begin, ptr @GPencilStroke_rna_properties_next, ptr @GPencilStroke_rna_properties_end, ptr @GPencilStroke_rna_properties_get, ptr null, ptr null, ptr @GPencilStroke_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GPencilStroke_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilStroke_draw_mode, ptr @rna_GPencilStroke_rna_type, i32 -1, ptr @.str.124, i32 16384, ptr @.str.125, ptr @.str.126, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_GPencilStrokePoints, ptr null }, ptr @GPencilStroke_points_begin, ptr @GPencilStroke_points_next, ptr @GPencilStroke_points_end, ptr @GPencilStroke_points_get, ptr @GPencilStroke_points_length, ptr @GPencilStroke_points_lookup_int, ptr null, ptr null, ptr @RNA_GPencilStrokePoint }, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.GPencilStroke_points_lookup_int = private unnamed_addr constant [32 x i8] c"GPencilStroke_points_lookup_int\00", align 1
@rna_GPencilStrokePoints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilStrokePoints_rna_type, ptr null, i32 -1, ptr @.str.16, i32 128, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStrokePoints_rna_properties_begin, ptr @GPencilStrokePoints_rna_properties_next, ptr @GPencilStrokePoints_rna_properties_end, ptr @GPencilStrokePoints_rna_properties_get, ptr null, ptr null, ptr @GPencilStrokePoints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GPencilStrokePoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilStrokePoint_rna_type, ptr null, i32 -1, ptr @.str.16, i32 128, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStrokePoint_rna_properties_begin, ptr @GPencilStrokePoint_rna_properties_next, ptr @GPencilStrokePoint_rna_properties_end, ptr @GPencilStrokePoint_rna_properties_get, ptr null, ptr null, ptr @GPencilStrokePoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GreasePencil_draw_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_GreasePencil_use_stroke_endpoints, ptr @rna_GreasePencil_layers, i32 -1, ptr @.str.6, i32 3, ptr @.str.7, ptr @.str.4, i32 0, ptr @.str.5, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GreasePencil_draw_mode_get, ptr @GreasePencil_draw_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_GreasePencil_draw_mode_items, i32 4, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_GreasePencilLayers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GPencilLayer, ptr @RNA_GreasePencil, ptr null, %struct.ListBase { ptr @rna_GreasePencilLayers_rna_properties, ptr @rna_GreasePencilLayers_active } }, ptr @.str.39, ptr null, ptr null, i32 4, ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 17, ptr null, ptr @rna_GreasePencilLayers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_GreasePencilLayers_new_func, ptr @rna_GreasePencilLayers_remove_func } }, align 8
@RNA_GPencilLayer = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GPencilFrames, ptr @RNA_GreasePencilLayers, ptr null, %struct.ListBase { ptr @rna_GPencilLayer_rna_properties, ptr @rna_GPencilLayer_show_x_ray } }, ptr @.str.28, ptr null, ptr null, i32 4, ptr @.str.85, ptr @.str.86, ptr @.str.5, i32 17, ptr @rna_GPencilLayer_info, ptr @rna_GPencilLayer_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_GPencilLayer_clear_func, ptr @rna_GPencilLayer_clear_func } }, align 8
@rna_GreasePencil_use_stroke_endpoints = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GreasePencil_draw_mode, i32 -1, ptr @.str.8, i32 3, ptr @.str.9, ptr @.str.10, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GreasePencil_use_stroke_endpoints_get, ptr @GreasePencil_use_stroke_endpoints_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"draw_mode\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Draw Mode\00", align 1
@rna_GreasePencil_draw_mode_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 16, ptr @.str.159, i32 0, ptr @.str.160, ptr @.str.161 }, %struct.EnumPropertyItem { i32 0, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.164 }, %struct.EnumPropertyItem { i32 48, ptr @.str.165, i32 0, ptr @.str.166, ptr @.str.167 }, %struct.EnumPropertyItem { i32 80, ptr @.str.168, i32 0, ptr @.str.119, ptr @.str.169 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"use_stroke_endpoints\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Only Endpoints\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Only use the first and last parts of the stroke for snapping\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Remove all the grease pencil data\00", align 1
@rna_GreasePencil_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA zeroinitializer, ptr @.str.11, i32 0, ptr @.str.12, ptr @GreasePencil_clear_call, ptr null }, align 8
@RNA_ControlFluidSettings = external global %struct.StructRNA, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"GreasePencil\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Freehand annotation sketchbook\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_GreasePencil = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GreasePencilLayers, ptr @RNA_ControlFluidSettings, ptr null, %struct.ListBase { ptr @rna_GreasePencil_layers, ptr @rna_GreasePencil_use_stroke_endpoints } }, ptr @.str.13, ptr null, ptr null, i32 7, ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 197, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase { ptr @rna_GreasePencil_clear_func, ptr @rna_GreasePencil_clear_func } }, align 8
@rna_GreasePencilLayers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GreasePencilLayers_active, ptr @rna_GreasePencilLayers_rna_properties, i32 -1, ptr @.str.19, i32 8912896, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GreasePencilLayers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_GreasePencilLayers_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GreasePencilLayers_rna_type, i32 -1, ptr @.str.22, i32 8388609, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GreasePencilLayers_active_get, ptr @GreasePencilLayers_active_set, ptr null, ptr null, ptr @RNA_GPencilLayer }, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Active Layer\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Active grease pencil layer\00", align 1
@rna_GreasePencilLayers_new_set_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GreasePencilLayers_new_layer, ptr @rna_GreasePencilLayers_new_name, i32 -1, ptr @.str.29, i32 3, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Name of the layer\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"GPencilLayer\00", align 1
@rna_GreasePencilLayers_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_GreasePencilLayers_new_set_active, ptr null, i32 -1, ptr @.str.25, i32 262149, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.5, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 64, ptr @.str.28 }, align 8
@rna_GreasePencilLayers_new_layer = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GreasePencilLayers_new_set_active, i32 -1, ptr @.str.32, i32 8388616, ptr @.str.4, ptr @.str.33, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GPencilLayer }, align 8
@.str.29 = private unnamed_addr constant [11 x i8] c"set_active\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Set Active\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"Set the newly created layer to the active layer\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"The newly created layer\00", align 1
@rna_GreasePencilLayers_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_GreasePencilLayers_new_func, ptr null, %struct.ListBase { ptr @rna_GreasePencilLayers_remove_layer, ptr @rna_GreasePencilLayers_remove_layer } }, ptr @.str.37, i32 16, ptr @.str.38, ptr @GreasePencilLayers_remove_call, ptr null }, align 8
@.str.34 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Add a new grease pencil layer\00", align 1
@rna_GreasePencilLayers_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_GreasePencilLayers_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_GreasePencilLayers_new_name, ptr @rna_GreasePencilLayers_new_layer } }, ptr @.str.34, i32 0, ptr @.str.35, ptr @GreasePencilLayers_new_call, ptr @rna_GreasePencilLayers_new_layer }, align 8
@.str.36 = private unnamed_addr constant [20 x i8] c"The layer to remove\00", align 1
@rna_GreasePencilLayers_remove_layer = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.32, i32 264196, ptr @.str.4, ptr @.str.36, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GPencilLayer }, align 8
@.str.37 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Remove a grease pencil layer\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"GreasePencilLayers\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"Grease Pencil Layers\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Collection of grease pencil layers\00", align 1
@rna_GPencilLayer_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_info, ptr @rna_GPencilLayer_rna_properties, i32 -1, ptr @.str.19, i32 8912896, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_GPencilLayer_info = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_frames, ptr @rna_GPencilLayer_rna_type, i32 -1, ptr @.str.42, i32 262145, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.5, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 128, i32 0, i32 0], i32 0, ptr null, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_info_get, ptr @GPencilLayer_info_length, ptr @GPencilLayer_info_set, ptr null, ptr null, ptr null, i32 128, ptr @.str.4 }, align 8
@.str.42 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Layer name\00", align 1
@rna_GPencilLayer_active_frame = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_color, ptr @rna_GPencilLayer_frames, i32 -1, ptr @.str.48, i32 8388608, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 375062528, ptr @rna_GPencilLayer_active_frame_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_active_frame_get, ptr null, ptr null, ptr null, ptr @RNA_GPencilFrame }, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"Sketches for this layer on different frames\00", align 1
@RNA_GPencilFrames = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GPencilFrame, ptr @RNA_GPencilLayer, ptr null, %struct.ListBase { ptr @rna_GPencilFrames_rna_properties, ptr @rna_GPencilFrames_rna_type } }, ptr @.str.102, ptr null, ptr null, i32 4, ptr @.str.103, ptr @.str.104, ptr @.str.5, i32 17, ptr null, ptr @rna_GPencilFrames_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_GPencilFrames_new_func, ptr @rna_GPencilFrames_copy_func } }, align 8
@rna_GPencilLayer_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_alpha, ptr @rna_GPencilLayer_active_frame, i32 -1, ptr @.str.51, i32 8195, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.5, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 48, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @GPencilLayer_color_get, ptr @GPencilLayer_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_GPencilLayer_color_default }, align 8
@.str.48 = private unnamed_addr constant [13 x i8] c"active_frame\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"Active Frame\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"Frame currently being displayed for this layer\00", align 1
@rna_GPencilLayer_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_line_width, ptr @rna_GPencilLayer_color, i32 -1, ptr @.str.54, i32 8195, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.5, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @GPencilLayer_alpha_get, ptr @GPencilLayer_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FD3333340000000, float 1.000000e+00, float 0x3FD3333340000000, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.51 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"Color for all strokes in this layer\00", align 1
@rna_GPencilLayer_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_GPencilLayer_line_width = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_use_onion_skinning, ptr @rna_GPencilLayer_alpha, i32 -1, ptr @.str.57, i32 8195, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.5, i32 1, i32 12, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 44, i32 1, ptr null, ptr null }, ptr @GPencilLayer_line_width_get, ptr @GPencilLayer_line_width_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10, i32 1, i32 10, i32 1, i32 0, ptr null }, align 8
@.str.54 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"Layer Opacity\00", align 1
@rna_GPencilLayer_use_onion_skinning = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_ghost_range_max, ptr @rna_GPencilLayer_line_width, i32 -1, ptr @.str.60, i32 3, ptr @.str.61, ptr @.str.62, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_use_onion_skinning_get, ptr @GPencilLayer_use_onion_skinning_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.57 = private unnamed_addr constant [11 x i8] c"line_width\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"Thickness\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"Thickness of strokes (in pixels)\00", align 1
@rna_GPencilLayer_ghost_range_max = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_hide, ptr @rna_GPencilLayer_use_onion_skinning, i32 -1, ptr @.str.63, i32 8195, ptr @.str.64, ptr @.str.65, i32 0, ptr @.str.5, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 46, i32 1, ptr null, ptr null }, ptr @GPencilLayer_ghost_range_max_get, ptr @GPencilLayer_ghost_range_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 120, i32 0, i32 120, i32 1, i32 0, ptr null }, align 8
@.str.60 = private unnamed_addr constant [19 x i8] c"use_onion_skinning\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"Onion Skinning\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"Ghost frames on either side of frame\00", align 1
@rna_GPencilLayer_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_lock, ptr @rna_GPencilLayer_ghost_range_max, i32 -1, ptr @.str.66, i32 3, ptr @.str.67, ptr @.str.68, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_hide_get, ptr @GPencilLayer_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.63 = private unnamed_addr constant [16 x i8] c"ghost_range_max\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"Max Ghost Range\00", align 1
@.str.65 = private unnamed_addr constant [123 x i8] c"Maximum number of frames on either side of the active frame to show (0 = show the 'first' available sketch on either side)\00", align 1
@rna_GPencilLayer_lock = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_lock_frame, ptr @rna_GPencilLayer_hide, i32 -1, ptr @.str.69, i32 3, ptr @.str.70, ptr @.str.71, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_lock_get, ptr @GPencilLayer_lock_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.66 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"Set layer Visibility\00", align 1
@rna_GPencilLayer_lock_frame = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_select, ptr @rna_GPencilLayer_lock, i32 -1, ptr @.str.72, i32 3, ptr @.str.73, ptr @.str.74, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_lock_frame_get, ptr @GPencilLayer_lock_frame_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.69 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"Protect layer from further editing and/or frame changes\00", align 1
@rna_GPencilLayer_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_show_points, ptr @rna_GPencilLayer_lock_frame, i32 -1, ptr @.str.75, i32 3, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_select_get, ptr @GPencilLayer_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.72 = private unnamed_addr constant [11 x i8] c"lock_frame\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"Frame Locked\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"Lock current frame displayed by layer\00", align 1
@rna_GPencilLayer_show_points = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilLayer_show_x_ray, ptr @rna_GPencilLayer_select, i32 -1, ptr @.str.78, i32 3, ptr @.str.79, ptr @.str.80, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_show_points_get, ptr @GPencilLayer_show_points_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.75 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.77 = private unnamed_addr constant [48 x i8] c"Layer is selected for editing in the Dope Sheet\00", align 1
@rna_GPencilLayer_show_x_ray = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilLayer_show_points, i32 -1, ptr @.str.81, i32 3, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilLayer_show_x_ray_get, ptr @GPencilLayer_show_x_ray_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.78 = private unnamed_addr constant [12 x i8] c"show_points\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"Show Points\00", align 1
@.str.80 = private unnamed_addr constant [67 x i8] c"Draw the points which make up the strokes (for debugging purposes)\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"show_x_ray\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"X Ray\00", align 1
@.str.83 = private unnamed_addr constant [40 x i8] c"Make the layer draw in front of objects\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"Remove all the grease pencil layer data\00", align 1
@rna_GPencilLayer_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA zeroinitializer, ptr @.str.11, i32 0, ptr @.str.84, ptr @GPencilLayer_clear_call, ptr null }, align 8
@.str.85 = private unnamed_addr constant [20 x i8] c"Grease Pencil Layer\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Collection of related sketches\00", align 1
@rna_GPencilFrames_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilFrames_rna_properties, i32 -1, ptr @.str.19, i32 8912896, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilFrames_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_GPencilFrames_new_frame = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilFrames_new_frame_number, i32 -1, ptr @.str.90, i32 8388616, ptr @.str.4, ptr @.str.91, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GPencilFrame }, align 8
@.str.87 = private unnamed_addr constant [13 x i8] c"frame_number\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"Frame Number\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"The frame on which this sketch appears\00", align 1
@rna_GPencilFrames_new_frame_number = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilFrames_new_frame, ptr null, i32 -1, ptr @.str.87, i32 7, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.5, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 1, ptr null }, align 8
@.str.90 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"The newly created frame\00", align 1
@rna_GPencilFrames_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_GPencilFrames_copy_func, ptr @rna_GPencilFrames_new_func, ptr null, %struct.ListBase { ptr @rna_GPencilFrames_remove_frame, ptr @rna_GPencilFrames_remove_frame } }, ptr @.str.37, i32 16, ptr @.str.95, ptr @GPencilFrames_remove_call, ptr null }, align 8
@.str.92 = private unnamed_addr constant [30 x i8] c"Add a new grease pencil frame\00", align 1
@rna_GPencilFrames_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_GPencilFrames_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_GPencilFrames_new_frame_number, ptr @rna_GPencilFrames_new_frame } }, ptr @.str.34, i32 16, ptr @.str.92, ptr @GPencilFrames_new_call, ptr @rna_GPencilFrames_new_frame }, align 8
@.str.93 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"The frame to remove\00", align 1
@rna_GPencilFrames_remove_frame = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.90, i32 264196, ptr @.str.93, ptr @.str.94, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GPencilFrame }, align 8
@rna_GPencilFrames_copy_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_GPencilFrames_remove_func, ptr null, %struct.ListBase { ptr @rna_GPencilFrames_copy_source, ptr @rna_GPencilFrames_copy_copy } }, ptr @.str.99, i32 0, ptr @.str.101, ptr @GPencilFrames_copy_call, ptr @rna_GPencilFrames_copy_copy }, align 8
@.str.95 = private unnamed_addr constant [29 x i8] c"Remove a grease pencil frame\00", align 1
@rna_GPencilFrames_copy_copy = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilFrames_copy_source, i32 -1, ptr @.str.99, i32 8388616, ptr @.str.4, ptr @.str.100, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GPencilFrame }, align 8
@.str.96 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"The source frame\00", align 1
@rna_GPencilFrames_copy_source = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilFrames_copy_copy, ptr null, i32 -1, ptr @.str.96, i32 8650756, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GPencilFrame }, align 8
@.str.99 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"The newly copied frame\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"Copy a grease pencil frame\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"GPencilFrames\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"Grease Pencil Frames\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"Collection of grease pencil frames\00", align 1
@rna_GPencilFrame_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilFrame_strokes, ptr @rna_GPencilFrame_rna_properties, i32 -1, ptr @.str.19, i32 8912896, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilFrame_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_GPencilFrame_frame_number = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilFrame_is_edited, ptr @rna_GPencilFrame_strokes, i32 -1, ptr @.str.87, i32 8195, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.5, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 32, i32 0, ptr null, ptr null }, ptr @GPencilFrame_frame_number_get, ptr @GPencilFrame_frame_number_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.105 = private unnamed_addr constant [8 x i8] c"strokes\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"Strokes\00", align 1
@.str.107 = private unnamed_addr constant [50 x i8] c"Freehand curves defining the sketch on this frame\00", align 1
@RNA_GPencilStrokes = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GPencilStroke, ptr @RNA_GPencilFrame, ptr null, %struct.ListBase { ptr @rna_GPencilStrokes_rna_properties, ptr @rna_GPencilStrokes_rna_type } }, ptr @.str.122, ptr null, ptr null, i32 4, ptr @.str.103, ptr @.str.123, ptr @.str.5, i32 17, ptr null, ptr @rna_GPencilStrokes_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_GPencilStrokes_new_func, ptr @rna_GPencilStrokes_remove_func } }, align 8
@RNA_GPencilStroke = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GPencilStrokePoints, ptr @RNA_GPencilStrokes, ptr null, %struct.ListBase { ptr @rna_GPencilStroke_rna_properties, ptr @rna_GPencilStroke_draw_mode } }, ptr @.str.127, ptr null, ptr null, i32 4, ptr @.str.128, ptr @.str.129, ptr @.str.5, i32 17, ptr null, ptr @rna_GPencilStroke_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_GPencilFrame_is_edited = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilFrame_select, ptr @rna_GPencilFrame_frame_number, i32 -1, ptr @.str.108, i32 3, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilFrame_is_edited_get, ptr @GPencilFrame_is_edited_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_GPencilFrame_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilFrame_is_edited, i32 -1, ptr @.str.75, i32 3, ptr @.str.76, ptr @.str.111, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilFrame_select_get, ptr @GPencilFrame_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.108 = private unnamed_addr constant [10 x i8] c"is_edited\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"Paint Lock\00", align 1
@.str.110 = private unnamed_addr constant [35 x i8] c"Frame is being edited (painted on)\00", align 1
@.str.111 = private unnamed_addr constant [48 x i8] c"Frame is selected for editing in the Dope Sheet\00", align 1
@.str.112 = private unnamed_addr constant [40 x i8] c"Remove all the grease pencil frame data\00", align 1
@rna_GPencilFrame_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA zeroinitializer, ptr @.str.11, i32 0, ptr @.str.112, ptr @GPencilFrame_clear_call, ptr null }, align 8
@.str.113 = private unnamed_addr constant [13 x i8] c"GPencilFrame\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"Grease Pencil Frame\00", align 1
@.str.115 = private unnamed_addr constant [53 x i8] c"Collection of related sketches on a particular frame\00", align 1
@rna_GPencilStrokes_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilStrokes_rna_properties, i32 -1, ptr @.str.19, i32 8912896, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStrokes_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.116 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.117 = private unnamed_addr constant [25 x i8] c"The newly created stroke\00", align 1
@rna_GPencilStrokes_new_stroke = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.116, i32 8388616, ptr @.str.4, ptr @.str.117, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GPencilStroke }, align 8
@rna_GPencilStrokes_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_GPencilStrokes_new_func, ptr null, %struct.ListBase { ptr @rna_GPencilStrokes_remove_stroke, ptr @rna_GPencilStrokes_remove_stroke } }, ptr @.str.37, i32 16, ptr @.str.121, ptr @GPencilStrokes_remove_call, ptr null }, align 8
@.str.118 = private unnamed_addr constant [31 x i8] c"Add a new grease pencil stroke\00", align 1
@rna_GPencilStrokes_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_GPencilStrokes_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_GPencilStrokes_new_stroke, ptr @rna_GPencilStrokes_new_stroke } }, ptr @.str.34, i32 0, ptr @.str.118, ptr @GPencilStrokes_new_call, ptr @rna_GPencilStrokes_new_stroke }, align 8
@.str.119 = private unnamed_addr constant [7 x i8] c"Stroke\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"The stroke to remove\00", align 1
@rna_GPencilStrokes_remove_stroke = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.116, i32 264196, ptr @.str.119, ptr @.str.120, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_GPencilStroke }, align 8
@.str.121 = private unnamed_addr constant [30 x i8] c"Remove a grease pencil stroke\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"GPencilStrokes\00", align 1
@.str.123 = private unnamed_addr constant [35 x i8] c"Collection of grease pencil stroke\00", align 1
@rna_GPencilStroke_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilStroke_points, ptr @rna_GPencilStroke_rna_properties, i32 -1, ptr @.str.19, i32 8912896, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStroke_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_GPencilStroke_draw_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilStroke_points, i32 -1, ptr @.str.6, i32 3, ptr @.str.7, ptr @.str.4, i32 0, ptr @.str.5, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStroke_draw_mode_get, ptr @GPencilStroke_draw_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_GPencilStroke_draw_mode_items, i32 4, i32 0 }, align 8
@.str.124 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"Stroke Points\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"Stroke data points\00", align 1
@RNA_GPencilStrokePoints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GPencilStrokePoint, ptr @RNA_GPencilStroke, ptr null, %struct.ListBase { ptr @rna_GPencilStrokePoints_rna_properties, ptr @rna_GPencilStrokePoints_rna_type } }, ptr @.str.140, ptr null, ptr null, i32 4, ptr @.str.141, ptr @.str.142, ptr @.str.5, i32 17, ptr null, ptr @rna_GPencilStrokePoints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_GPencilStrokePoints_add_func, ptr @rna_GPencilStrokePoints_pop_func } }, align 8
@RNA_GPencilStrokePoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Group, ptr @RNA_GPencilStrokePoints, ptr null, %struct.ListBase { ptr @rna_GPencilStrokePoint_rna_properties, ptr @rna_GPencilStrokePoint_pressure } }, ptr @.str.148, ptr null, ptr null, i32 4, ptr @.str.149, ptr @.str.150, ptr @.str.5, i32 17, ptr null, ptr @rna_GPencilStrokePoint_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_GPencilStroke_draw_mode_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.172 }, %struct.EnumPropertyItem { i32 1, ptr @.str.173, i32 0, ptr @.str.174, ptr @.str.175 }, %struct.EnumPropertyItem { i32 2, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.178 }, %struct.EnumPropertyItem { i32 4, ptr @.str.179, i32 0, ptr @.str.180, ptr @.str.181 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.127 = private unnamed_addr constant [14 x i8] c"GPencilStroke\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"Grease Pencil Stroke\00", align 1
@.str.129 = private unnamed_addr constant [41 x i8] c"Freehand curve defining part of a sketch\00", align 1
@rna_GPencilStrokePoints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilStrokePoints_rna_properties, i32 -1, ptr @.str.19, i32 8912896, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStrokePoints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.130 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@.str.132 = private unnamed_addr constant [38 x i8] c"Number of points to add to the stroke\00", align 1
@rna_GPencilStrokePoints_add_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.130, i32 3, ptr @.str.131, ptr @.str.132, i32 0, ptr @.str.5, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 1, ptr null }, align 8
@rna_GPencilStrokePoints_pop_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_GPencilStrokePoints_add_func, ptr null, %struct.ListBase { ptr @rna_GPencilStrokePoints_pop_index, ptr @rna_GPencilStrokePoints_pop_index } }, ptr @.str.138, i32 16, ptr @.str.139, ptr @GPencilStrokePoints_pop_call, ptr null }, align 8
@.str.133 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.134 = private unnamed_addr constant [37 x i8] c"Add a new grease pencil stroke point\00", align 1
@rna_GPencilStrokePoints_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_GPencilStrokePoints_pop_func, ptr null, ptr null, %struct.ListBase { ptr @rna_GPencilStrokePoints_add_count, ptr @rna_GPencilStrokePoints_add_count } }, ptr @.str.133, i32 0, ptr @.str.134, ptr @GPencilStrokePoints_add_call, ptr null }, align 8
@.str.135 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"point index\00", align 1
@rna_GPencilStrokePoints_pop_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.135, i32 3, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.5, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647, i32 1, i32 -1, ptr null }, align 8
@.str.138 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.139 = private unnamed_addr constant [36 x i8] c"Remove a grease pencil stroke point\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"GPencilStrokePoints\00", align 1
@.str.141 = private unnamed_addr constant [28 x i8] c"Grease Pencil Stroke Points\00", align 1
@.str.142 = private unnamed_addr constant [42 x i8] c"Collection of grease pencil stroke points\00", align 1
@rna_GPencilStrokePoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilStrokePoint_co, ptr @rna_GPencilStrokePoint_rna_properties, i32 -1, ptr @.str.19, i32 8912896, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GPencilStrokePoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_GPencilStrokePoint_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GPencilStrokePoint_pressure, ptr @rna_GPencilStrokePoint_rna_type, i32 -1, ptr @.str.143, i32 8195, ptr @.str.144, ptr @.str.4, i32 0, ptr @.str.5, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @GPencilStrokePoint_co_get, ptr @GPencilStrokePoint_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_GPencilStrokePoint_co_default }, align 8
@rna_GPencilStrokePoint_pressure = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GPencilStrokePoint_co, i32 -1, ptr @.str.145, i32 8195, ptr @.str.146, ptr @.str.147, i32 0, ptr @.str.5, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_GPencil_update, i32 375062528, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @GPencilStrokePoint_pressure_get, ptr @GPencilStrokePoint_pressure_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.143 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"Coordinates\00", align 1
@rna_GPencilStrokePoint_co_default = internal global [3 x float] zeroinitializer, align 4
@.str.145 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1
@.str.147 = private unnamed_addr constant [44 x i8] c"Pressure of tablet at point when drawing it\00", align 1
@RNA_Group = external global %struct.StructRNA, align 8
@.str.148 = private unnamed_addr constant [19 x i8] c"GPencilStrokePoint\00", align 1
@.str.149 = private unnamed_addr constant [27 x i8] c"Grease Pencil Stroke Point\00", align 1
@.str.150 = private unnamed_addr constant [37 x i8] c"Data point for freehand stroke curve\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"GP_Layer\00", align 1
@.str.152 = private unnamed_addr constant [38 x i8] c"Layer not found in grease pencil data\00", align 1
@.str.153 = private unnamed_addr constant [45 x i8] c"Frame already exists on this frame number %d\00", align 1
@.str.154 = private unnamed_addr constant [39 x i8] c"Frame not found in grease pencil layer\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.155 = private unnamed_addr constant [10 x i8] c"gp_stroke\00", align 1
@.str.156 = private unnamed_addr constant [40 x i8] c"Stroke not found in grease pencil frame\00", align 1
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@.str.157 = private unnamed_addr constant [17 x i8] c"gp_stroke_points\00", align 1
@.str.158 = private unnamed_addr constant [44 x i8] c"GPencilStrokePoints.pop: index out of range\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.161 = private unnamed_addr constant [29 x i8] c"Draw stroke at the 3D cursor\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@.str.164 = private unnamed_addr constant [26 x i8] c"Stick stroke to the view \00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"SURFACE\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"Surface\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"Stick stroke to surfaces\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"STROKE\00", align 1
@.str.169 = private unnamed_addr constant [30 x i8] c"Stick stroke to other strokes\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.172 = private unnamed_addr constant [26 x i8] c"Stroke is in screen-space\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"3DSPACE\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"3D Space\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"Stroke is in 3D-space\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"2DSPACE\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"2D Space\00", align 1
@.str.178 = private unnamed_addr constant [22 x i8] c"Stroke is in 2D-space\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"2DIMAGE\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"2D Image\00", align 1
@.str.181 = private unnamed_addr constant [57 x i8] c"Stroke is in 2D-space (but with special 'image' scaling)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencil_layers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GreasePencil_layers, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 1
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #14
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !46
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @GreasePencil_layers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencil_layers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !49
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencil_layers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GreasePencil_layers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !40
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_GreasePencil_layers, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.bGPdata, ptr %8, i64 0, i32 1
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #14
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #14, !noalias !52
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef %17) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !45
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
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
  %33 = load ptr, ptr %22, align 8, !tbaa !57
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #14
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !58

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
  %52 = load ptr, ptr %48, align 8, !tbaa !61
  store ptr %52, ptr %22, align 8, !tbaa !57
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !63

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
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #14, !noalias !64
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef %63) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GreasePencil_layers_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #14
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !40
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_GreasePencil_layers, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.bGPdata, ptr %9, i64 0, i32 1
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #14
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !45
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #14, !noalias !67
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef %18) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !45
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i8 [ 0, %22 ], [ %54, %59 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bGPDlayer, ptr %27, i64 0, i32 8
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #15
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef nonnull %30, i64 noundef 128) #14
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %50

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %40 = add i64 %31, 1
  %41 = and i64 %40, 4294967295
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str) #14
  %43 = load ptr, ptr %24, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.bGPDlayer, ptr %43, i64 0, i32 8
  %45 = call ptr @BLI_strncpy_utf8(ptr noundef %42, ptr noundef nonnull %44, i64 noundef 128) #14
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #15
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %48(ptr noundef %42) #14
  br i1 %47, label %49, label %50

49:                                               ; preds = %38, %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %50

50:                                               ; preds = %49, %38, %34
  %51 = phi i8 [ %26, %34 ], [ %26, %38 ], [ 1, %49 ]
  %52 = phi i1 [ true, %34 ], [ true, %38 ], [ false, %49 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %50, %25
  %54 = phi i8 [ %51, %50 ], [ %26, %25 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #14
  %55 = load i32, ptr %13, align 8, !tbaa !45
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %58 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #14, !noalias !70
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef %58) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %59

59:                                               ; preds = %53, %57
  %60 = load i32, ptr %13, align 8, !tbaa !45
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25, !llvm.loop !73

62:                                               ; preds = %50, %59
  %63 = phi i8 [ %54, %59 ], [ %51, %50 ]
  %64 = zext nneg i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %19
  %66 = phi i32 [ 0, %19 ], [ %64, %62 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #14
  ret i32 %66
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_info_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 8
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_info_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 8
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 128) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GreasePencil_draw_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = and i32 %5, 112
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GreasePencil_draw_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bGPdata, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = and i32 %6, -113
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GreasePencil_use_stroke_endpoints_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GreasePencil_use_stroke_endpoints_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPdata, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !74
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GreasePencilLayers_rna_properties, ptr %4, align 8, !tbaa !42
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @GreasePencilLayers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GreasePencilLayers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !79, !noalias !80
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !83, !noalias !80
  %6 = icmp eq i16 %5, 17479
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !41, !noalias !80
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bGPDlayer, ptr %11, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !84, !noalias !80
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18, !llvm.loop !86

18:                                               ; preds = %13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef nonnull %11) #14
  br label %20

19:                                               ; preds = %9, %2
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #14
  br label %20

20:                                               ; preds = %18, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !83
  %8 = icmp eq i16 %7, 17479
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %21, %13 ], [ %11, %9 ]
  %15 = icmp eq ptr %14, %4
  %16 = getelementptr inbounds %struct.bGPDlayer, ptr %14, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !84
  %18 = and i32 %17, -5
  %19 = select i1 %15, i32 4, i32 0
  %20 = or disjoint i32 %18, %19
  store i32 %20, ptr %16, align 8, !tbaa !84
  %21 = load ptr, ptr %14, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13, !llvm.loop !87

23:                                               ; preds = %13, %9
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  br label %24

24:                                               ; preds = %2, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilLayer_rna_properties, ptr %4, align 8, !tbaa !42
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilLayer_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPencilLayer_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_info_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %5, i64 0, i32 8
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 128) #14
  %8 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 1
  tail call void @BLI_uniquename(ptr noundef nonnull %8, ptr noundef %5, ptr noundef nonnull @.str.151, i8 noundef zeroext 46, i32 noundef 64, i32 noundef 128) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_frames_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilLayer_frames, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.bGPDlayer, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #14
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !88
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_GPencilFrame, ptr noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilLayer_frames_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GPencilFrame, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_frames_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !91
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_GPencilFrame, ptr noundef %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_frames_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GPencilLayer_frames_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !40
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_GPencilLayer_frames, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %8, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #14
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #14, !noalias !94
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_GPencilFrame, ptr noundef %17) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !45
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
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
  %33 = load ptr, ptr %22, align 8, !tbaa !57
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #14
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !97

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
  %52 = load ptr, ptr %48, align 8, !tbaa !61
  store ptr %52, ptr %22, align 8, !tbaa !57
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !98

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
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #14, !noalias !99
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_GPencilFrame, ptr noundef %63) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_active_frame_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GPencilFrame, ptr noundef %6) #14
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !103
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !103
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !105

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !103
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
  store float %15, ptr %16, align 4, !tbaa !103
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !106

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GPencilLayer_alpha_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 7, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !103
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3FD3333340000000
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0x3FD3333340000000, float %7
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 7, i64 3
  store float %8, ptr %9, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_line_width_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !107
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_line_width_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 5
  store i16 %7, ptr %8, align 4, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_use_onion_skinning_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_use_onion_skinning_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_ghost_range_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !108
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_ghost_range_max_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 120)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 6
  store i16 %7, ptr %8, align 2, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_hide_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_lock_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_lock_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_lock_frame_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_lock_frame_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_show_points_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_show_points_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilLayer_show_x_ray_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilLayer_show_x_ray_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 128, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrames_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilFrames_rna_properties, ptr %4, align 8, !tbaa !42
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilFrames_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrames_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrames_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPencilFrames_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrames_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilFrame_rna_properties, ptr %4, align 8, !tbaa !42
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilFrame_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPencilFrame_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_strokes_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilFrame_strokes, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.bGPDframe, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #14
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !109
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_GPencilStroke, ptr noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilFrame_strokes_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GPencilStroke, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_strokes_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #14, !noalias !112
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_GPencilStroke, ptr noundef %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_strokes_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GPencilFrame_strokes_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !40
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_GPencilFrame_strokes, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %8, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #14
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #14, !noalias !115
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_GPencilStroke, ptr noundef %17) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !45
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
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
  %33 = load ptr, ptr %22, align 8, !tbaa !57
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #14
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !118

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
  %52 = load ptr, ptr %48, align 8, !tbaa !61
  store ptr %52, ptr %22, align 8, !tbaa !57
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !119

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
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #14, !noalias !120
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_GPencilStroke, ptr noundef %63) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !40
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
define dso_local i32 @GPencilFrame_frame_number_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !123
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilFrame_frame_number_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -300000)
  %7 = getelementptr inbounds %struct.bGPDframe, ptr %4, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilFrame_is_edited_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !125
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilFrame_is_edited_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDframe, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !125
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilFrame_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !125
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilFrame_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bGPDframe, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !125
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !125
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokes_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilStrokes_rna_properties, ptr %4, align 8, !tbaa !42
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilStrokes_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokes_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokes_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPencilStrokes_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokes_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStroke_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilStroke_rna_properties, ptr %4, align 8, !tbaa !42
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilStroke_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStroke_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStroke_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPencilStroke_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStroke_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilStroke_points_length(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDstroke, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bGPDstroke, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !129
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStroke_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilStroke_points, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.bGPDstroke, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !126
  %9 = getelementptr inbounds %struct.bGPDstroke, ptr %5, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !129
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 20, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #14
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #14, !noalias !130
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_GPencilStrokePoint, ptr noundef %16) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @GPencilStroke_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GPencilStrokePoint, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStroke_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #14, !noalias !133
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_GPencilStrokePoint, ptr noundef %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStroke_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #14
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @GPencilStroke_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !40
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_GPencilStroke_points, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.bGPDstroke, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %13 = getelementptr inbounds %struct.bGPDstroke, ptr %8, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !129
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 20, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #14
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #14, !noalias !136
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_GPencilStrokePoint, ptr noundef %20) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !45
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
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.GPencilStroke_points_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !139
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
  br i1 %48, label %42, label %49, !llvm.loop !141

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !142
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !143
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !143
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #14, !noalias !144
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_GPencilStrokePoint, ptr noundef %66) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  ret i32 %68
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPencilStroke_draw_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDstroke, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !147
  %6 = and i16 %5, 7
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilStroke_draw_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bGPDstroke, ptr %4, i64 0, i32 6
  %6 = load i16, ptr %5, align 2, !tbaa !147
  %7 = and i16 %6, -8
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 2, !tbaa !147
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilStrokePoints_rna_properties, ptr %4, align 8, !tbaa !42
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilStrokePoints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPencilStrokePoints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !40
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GPencilStrokePoint_rna_properties, ptr %4, align 8, !tbaa !42
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GPencilStrokePoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPencilStrokePoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilStrokePoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !148
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !103
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !150

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilStrokePoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !103
  %9 = getelementptr inbounds float, ptr %4, i64 %6
  store float %8, ptr %9, align 4, !tbaa !148
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !151

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GPencilStrokePoint_pressure_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDspoint, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !152
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPencilStrokePoint_pressure_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bGPDspoint, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !152
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencil_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  tail call void @free_gpencil_layers(ptr noundef nonnull %2) #14
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencil_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 1
  tail call void @free_gpencil_layers(ptr noundef nonnull %7) #14
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GreasePencilLayers_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gpencil_layer_addnew(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !155
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call ptr @gpencil_layer_addnew(ptr noundef %6, ptr noundef %8, i32 noundef %10) #14
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  store ptr %12, ptr %11, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %5) #14
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.152) #14
  br label %11

10:                                               ; preds = %3
  tail call void @gpencil_layer_delete(ptr noundef %0, ptr noundef %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  br label %11

11:                                               ; preds = %9, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GreasePencilLayers_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 1
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %10) #14
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.152) #14
  br label %16

15:                                               ; preds = %4
  tail call void @gpencil_layer_delete(ptr noundef %6, ptr noundef %10) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  br label %16

16:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @free_gpencil_frames(ptr noundef %0) #14
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilLayer_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @free_gpencil_frames(ptr noundef %6) #14
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPencilFrames_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_gpencil_layer_find_frame(ptr noundef %0, i32 noundef %2) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.153, i32 noundef %2) #14
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @gpencil_frame_addnew(ptr noundef %0, i32 noundef %2) #14
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  br label %9

9:                                                ; preds = %6, %7
  %10 = phi ptr [ null, %6 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrames_new_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = load i32, ptr %7, align 4, !tbaa !155
  %9 = tail call ptr @BKE_gpencil_layer_find_frame(ptr noundef %6, i32 noundef %8) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.153, i32 noundef %8) #14
  br label %14

12:                                               ; preds = %4
  %13 = tail call ptr @gpencil_frame_addnew(ptr noundef %6, i32 noundef %8) #14
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  br label %14

14:                                               ; preds = %11, %12
  %15 = phi ptr [ null, %11 ], [ %13, %12 ]
  %16 = getelementptr inbounds i8, ptr %7, i64 4
  store ptr %15, ptr %16, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrames_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %5) #14
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.154) #14
  br label %12

10:                                               ; preds = %3
  %11 = tail call zeroext i8 @gpencil_layer_delframe(ptr noundef %0, ptr noundef %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  br label %12

12:                                               ; preds = %9, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrames_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %6, i64 0, i32 2
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %10) #14
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.154) #14
  br label %17

15:                                               ; preds = %4
  %16 = tail call zeroext i8 @gpencil_layer_delframe(ptr noundef %6, ptr noundef %10) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  br label %17

17:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPencilFrames_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gpencil_frame_duplicate(ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !123
  %6 = tail call ptr @BKE_gpencil_layer_find_frame(ptr noundef %0, i32 noundef %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2, %8
  %9 = load i32, ptr %4, align 8, !tbaa !123
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %4, align 8, !tbaa !123
  %11 = tail call ptr @BKE_gpencil_layer_find_frame(ptr noundef %0, i32 noundef %10) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !156

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %3) #14
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrames_copy_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = tail call ptr @gpencil_frame_duplicate(ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !123
  %12 = tail call ptr @BKE_gpencil_layer_find_frame(ptr noundef %6, i32 noundef %11) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4, %14
  %15 = load i32, ptr %10, align 8, !tbaa !123
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %10, align 8, !tbaa !123
  %17 = tail call ptr @BKE_gpencil_layer_find_frame(ptr noundef %6, i32 noundef %16) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !156

19:                                               ; preds = %14, %4
  %20 = getelementptr inbounds i8, ptr %7, i64 8
  %21 = getelementptr inbounds %struct.bGPDlayer, ptr %6, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef %9) #14
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  store ptr %9, ptr %20, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @free_gpencil_strokes(ptr noundef %0) #14
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilFrame_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call zeroext i8 @free_gpencil_strokes(ptr noundef %6) #14
  tail call void @WM_main_add_notifier(i32 noundef 375062529, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPencilStrokes_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %3 = tail call ptr %2(i64 noundef 48, ptr noundef nonnull @.str.155) #14
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %3) #14
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokes_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %9 = tail call ptr %8(i64 noundef 48, ptr noundef nonnull @.str.155) #14
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %6, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %9) #14
  store ptr %9, ptr %7, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokes_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %5) #14
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.156) #14
  br label %11

10:                                               ; preds = %3
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef %5) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  br label %11

11:                                               ; preds = %9, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokes_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %6, i64 0, i32 2
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %10) #14
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.156) #14
  br label %16

15:                                               ; preds = %4
  tail call void @BLI_freelinkN(ptr noundef nonnull %11, ptr noundef %10) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  br label %16

16:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoints_add(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.bGPDstroke, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.bGPDstroke, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !129
  %10 = add nsw i32 %9, %1
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 20
  %13 = tail call ptr %5(ptr noundef %7, i64 noundef %12, ptr noundef nonnull @.str.157) #14
  store ptr %13, ptr %6, align 8, !tbaa !126
  %14 = load i32, ptr %8, align 8, !tbaa !129
  %15 = add nsw i32 %14, %1
  store i32 %15, ptr %8, align 8, !tbaa !129
  br label %16

16:                                               ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoints_add_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !153
  %6 = load i32, ptr %5, align 4, !tbaa !155
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.bGPDstroke, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = getelementptr inbounds %struct.bGPDstroke, ptr %10, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !129
  %16 = add nsw i32 %15, %6
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %17, 20
  %19 = tail call ptr %11(ptr noundef %13, i64 noundef %18, ptr noundef nonnull @.str.157) #14
  store ptr %19, ptr %12, align 8, !tbaa !126
  %20 = load i32, ptr %14, align 8, !tbaa !129
  %21 = add nsw i32 %20, %6
  store i32 %21, ptr %14, align 8, !tbaa !129
  br label %22

22:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoints_pop(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_GPencil_stroke_point_pop(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rna_GPencil_stroke_point_pop(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bGPDstroke, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bGPDstroke, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !129
  %10 = add nsw i32 %9, %2
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %2, %3 ]
  %13 = getelementptr inbounds %struct.bGPDstroke, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !129
  %15 = icmp sle i32 %14, %12
  %16 = icmp slt i32 %12, 0
  %17 = or i1 %16, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.158) #14
  br label %44

19:                                               ; preds = %11
  %20 = add nsw i32 %14, -1
  store i32 %20, ptr %13, align 8, !tbaa !129
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %22 = sext i32 %20 to i64
  %23 = mul nsw i64 %22, 20
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.157) #14
  store ptr %24, ptr %4, align 8, !tbaa !126
  %25 = icmp sgt i32 %12, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = zext nneg i32 %12 to i64
  %28 = mul nuw nsw i64 %27, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %5, i64 %28, i1 false)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, ptr %13, align 8, !tbaa !129
  %31 = icmp slt i32 %12, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 8, !tbaa !126
  %34 = zext nneg i32 %12 to i64
  %35 = getelementptr inbounds %struct.bGPDspoint, ptr %33, i64 %34
  %36 = sext i32 %12 to i64
  %37 = getelementptr %struct.bGPDspoint, ptr %5, i64 %36
  %38 = getelementptr %struct.bGPDspoint, ptr %37, i64 1
  %39 = sub nsw i32 %30, %12
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %40, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %38, i64 %41, i1 false)
  br label %42

42:                                               ; preds = %32, %29
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %43(ptr noundef %5) #14
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  br label %44

44:                                               ; preds = %42, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPencilStrokePoints_pop_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = load i32, ptr %7, align 4, !tbaa !155
  tail call fastcc void @rna_GPencil_stroke_point_pop(ptr noundef %6, ptr noundef %1, i32 noundef %8)
  ret void
}

declare ptr @rna_ID_refine(ptr noundef) #4

declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_GPencilLayer_active_frame_editable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !84
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @rna_GPencil_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  tail call void @WM_main_add_notifier(i32 noundef 369098753, ptr noundef null) #14
  ret void
}

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #4

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #4

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #4

declare void @free_gpencil_layers(ptr noundef) local_unnamed_addr #4

declare ptr @gpencil_layer_addnew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @gpencil_layer_delete(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @free_gpencil_frames(ptr noundef) local_unnamed_addr #4

declare ptr @BKE_gpencil_layer_find_frame(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @gpencil_frame_addnew(ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @gpencil_layer_delframe(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gpencil_frame_duplicate(ptr noundef) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @free_gpencil_strokes(ptr noundef) local_unnamed_addr #4

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{i64 0, i64 8, !41, i64 8, i64 8, !41, i64 16, i64 8, !41}
!41 = !{!37, !37, i64 0}
!42 = !{!43, !37, i64 48}
!43 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!44 = !{!"int", !38, i64 0}
!45 = !{!43, !44, i64 128}
!46 = !{!47}
!47 = distinct !{!47, !48, !"GreasePencil_layers_get: argument 0"}
!48 = distinct !{!48, !"GreasePencil_layers_get"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"GreasePencil_layers_get: argument 0"}
!51 = distinct !{!51, !"GreasePencil_layers_get"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"GreasePencil_layers_get: argument 0"}
!54 = distinct !{!54, !"GreasePencil_layers_get"}
!55 = !{!56, !37, i64 16}
!56 = !{!"ListBaseIterator", !37, i64 0, !44, i64 8, !37, i64 16}
!57 = !{!56, !37, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!62, !37, i64 0}
!62 = !{!"Link", !37, i64 0, !37, i64 8}
!63 = distinct !{!63, !59, !60}
!64 = !{!65}
!65 = distinct !{!65, !66, !"GreasePencil_layers_get: argument 0"}
!66 = distinct !{!66, !"GreasePencil_layers_get"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"GreasePencil_layers_get: argument 0"}
!69 = distinct !{!69, !"GreasePencil_layers_get"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"GreasePencil_layers_get: argument 0"}
!72 = distinct !{!72, !"GreasePencil_layers_get"}
!73 = distinct !{!73, !59, !60}
!74 = !{!75, !44, i64 136}
!75 = !{!"bGPdata", !76, i64 0, !78, i64 120, !44, i64 136, !77, i64 140, !77, i64 142, !37, i64 144}
!76 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !77, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!77 = !{!"short", !38, i64 0}
!78 = !{!"ListBase", !37, i64 0, !37, i64 8}
!79 = !{!35, !37, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"rna_GPencil_active_layer_get: argument 0"}
!82 = distinct !{!82, !"rna_GPencil_active_layer_get"}
!83 = !{!77, !77, i64 0}
!84 = !{!85, !44, i64 40}
!85 = !{!"bGPDlayer", !37, i64 0, !37, i64 8, !78, i64 16, !37, i64 32, !44, i64 40, !77, i64 44, !77, i64 46, !38, i64 48, !38, i64 64}
!86 = distinct !{!86, !59, !60}
!87 = distinct !{!87, !59, !60}
!88 = !{!89}
!89 = distinct !{!89, !90, !"GPencilLayer_frames_get: argument 0"}
!90 = distinct !{!90, !"GPencilLayer_frames_get"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"GPencilLayer_frames_get: argument 0"}
!93 = distinct !{!93, !"GPencilLayer_frames_get"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"GPencilLayer_frames_get: argument 0"}
!96 = distinct !{!96, !"GPencilLayer_frames_get"}
!97 = distinct !{!97, !59, !60}
!98 = distinct !{!98, !59, !60}
!99 = !{!100}
!100 = distinct !{!100, !101, !"GPencilLayer_frames_get: argument 0"}
!101 = distinct !{!101, !"GPencilLayer_frames_get"}
!102 = !{!85, !37, i64 32}
!103 = !{!104, !104, i64 0}
!104 = !{!"float", !38, i64 0}
!105 = distinct !{!105, !59, !60}
!106 = distinct !{!106, !59, !60}
!107 = !{!85, !77, i64 44}
!108 = !{!85, !77, i64 46}
!109 = !{!110}
!110 = distinct !{!110, !111, !"GPencilFrame_strokes_get: argument 0"}
!111 = distinct !{!111, !"GPencilFrame_strokes_get"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"GPencilFrame_strokes_get: argument 0"}
!114 = distinct !{!114, !"GPencilFrame_strokes_get"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"GPencilFrame_strokes_get: argument 0"}
!117 = distinct !{!117, !"GPencilFrame_strokes_get"}
!118 = distinct !{!118, !59, !60}
!119 = distinct !{!119, !59, !60}
!120 = !{!121}
!121 = distinct !{!121, !122, !"GPencilFrame_strokes_get: argument 0"}
!122 = distinct !{!122, !"GPencilFrame_strokes_get"}
!123 = !{!124, !44, i64 32}
!124 = !{!"bGPDframe", !37, i64 0, !37, i64 8, !78, i64 16, !44, i64 32, !44, i64 36}
!125 = !{!124, !44, i64 36}
!126 = !{!127, !37, i64 16}
!127 = !{!"bGPDstroke", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !77, i64 36, !77, i64 38, !128, i64 40}
!128 = !{!"double", !38, i64 0}
!129 = !{!127, !44, i64 32}
!130 = !{!131}
!131 = distinct !{!131, !132, !"GPencilStroke_points_get: argument 0"}
!132 = distinct !{!132, !"GPencilStroke_points_get"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"GPencilStroke_points_get: argument 0"}
!135 = distinct !{!135, !"GPencilStroke_points_get"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"GPencilStroke_points_get: argument 0"}
!138 = distinct !{!138, !"GPencilStroke_points_get"}
!139 = !{!140, !37, i64 32}
!140 = !{!"ArrayIterator", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !44, i64 28, !37, i64 32}
!141 = distinct !{!141, !59, !60}
!142 = !{!140, !44, i64 24}
!143 = !{!140, !37, i64 0}
!144 = !{!145}
!145 = distinct !{!145, !146, !"GPencilStroke_points_get: argument 0"}
!146 = distinct !{!146, !"GPencilStroke_points_get"}
!147 = !{!127, !77, i64 38}
!148 = !{!149, !104, i64 0}
!149 = !{!"bGPDspoint", !104, i64 0, !104, i64 4, !104, i64 8, !104, i64 12, !104, i64 16}
!150 = distinct !{!150, !59, !60}
!151 = distinct !{!151, !59, !60}
!152 = !{!149, !104, i64 12}
!153 = !{!154, !37, i64 0}
!154 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!155 = !{!44, !44, i64 0}
!156 = distinct !{!156, !59, !60}
