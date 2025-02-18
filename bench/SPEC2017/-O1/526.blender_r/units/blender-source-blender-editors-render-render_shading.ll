; ModuleID = 'blender/source/blender/editors/render/render_shading.c'
source_filename = "blender/source/blender/editors/render/render_shading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.EditFont = type { ptr, ptr, ptr, ptr, ptr, [4 x [2 x float]], i32, i32, i32, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
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
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.EnvMap = type { ptr, ptr, [6 x ptr], [4 x [4 x float]], [3 x [3 x float]], i16, i16, float, float, float, i32, i16, i16, i32, i32, i16, i16 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }

@.str = private unnamed_addr constant [18 x i8] c"Add Material Slot\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_material_slot_add\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Add a new material slot\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Remove Material Slot\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_material_slot_remove\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Remove the selected material slot\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Assign Material Slot\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_material_slot_assign\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Assign active material slot to selection\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Select Material Slot\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_material_slot_select\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Select by active material slot\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Deselect Material Slot\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"OBJECT_OT_material_slot_deselect\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Deselect by active material slot\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Copy Material to Others\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_material_slot_copy\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Copies materials to other selected objects\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"New Material\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"MATERIAL_OT_new\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Add a new material\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"New Texture\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"TEXTURE_OT_new\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Add a new texture\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"New World\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"WORLD_OT_new\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Add a new world\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Add Render Layer\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"SCENE_OT_render_layer_add\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Add a render layer\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Remove Render Layer\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"SCENE_OT_render_layer_remove\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Remove the selected render layer\00", align 1
@TEXTURE_OT_slot_move.slot_move = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 1, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.35 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Move Texture Slot\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"TEXTURE_OT_slot_move\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Move texture slots up and down\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Save Environment Map\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"TEXTURE_OT_envmap_save\00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"Save the current generated Environment map to an image file\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@default_envmap_layout = external constant [0 x float], align 4
@.str.47 = private unnamed_addr constant [12 x i8] c"File layout\00", align 1
@.str.48 = private unnamed_addr constant [163 x i8] c"Flat array describing the X,Y position of each cube face in the output image, where 1 is the size of a face - order is [+Z -Z +Y -X -Y +X] (use -1 to skip a face)\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"Clear Environment Map\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"TEXTURE_OT_envmap_clear\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"Discard the environment map and free it from memory\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"Clear All Environment Maps\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"TEXTURE_OT_envmap_clear_all\00", align 1
@.str.54 = private unnamed_addr constant [74 x i8] c"Discard all environment maps in the .blend file and free them from memory\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"Copy Material\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"MATERIAL_OT_copy\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"Copy the material settings and nodes\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Paste Material\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"MATERIAL_OT_paste\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"Paste the material settings and nodes\00", align 1
@mtexcopied = internal unnamed_addr global i1 false, align 2
@.str.61 = private unnamed_addr constant [27 x i8] c"Copy Texture Slot Settings\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"TEXTURE_OT_slot_copy\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"Copy the material texture settings and nodes\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"Paste Texture Slot Settings\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"TEXTURE_OT_slot_paste\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"Copy the texture settings and nodes\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"Unable to remove material slot in edit mode\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@RNA_Material = external global %struct.StructRNA, align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@RNA_Texture = external global %struct.StructRNA, align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@RNA_World = external global %struct.StructRNA, align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"texture_slot\00", align 1
@RNA_TextureSlot = external global %struct.StructRNA, align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"texture_slots\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@mtexcopybuf = internal unnamed_addr global %struct.MTex zeroinitializer, align 8
@.str.77 = private unnamed_addr constant [5 x i8] c"lamp\00", align 1
@RNA_Lamp = external global %struct.StructRNA, align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@RNA_ParticleSystem = external global %struct.StructRNA, align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"line_style\00", align 1
@RNA_FreestyleLineStyle = external global %struct.StructRNA, align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [10 x i8] c"mtex copy\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_add_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @material_slot_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @object_add_material_slot(ptr noundef nonnull %3) #6
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !47
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %13 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %12, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #6
  br label %14

14:                                               ; preds = %11, %5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %3) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef nonnull %3) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102825984, ptr noundef nonnull %3) #6
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

declare i32 @ED_operator_object_active_editable(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @material_slot_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.67) #6
  br label %21

11:                                               ; preds = %5
  %12 = tail call zeroext i8 @object_remove_material_slot(ptr noundef nonnull %3) #6
  %13 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %19 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %18, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #6
  br label %20

20:                                               ; preds = %17, %11
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 2) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %3) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef nonnull %3) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102825984, ptr noundef nonnull %3) #6
  br label %21

21:                                               ; preds = %2, %20, %8
  %22 = phi i32 [ 2, %8 ], [ 4, %20 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_assign(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_assign_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @material_slot_assign_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %95, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %92

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !57
  switch i16 %14, label %92 [
    i16 1, label %15
    i16 2, label %44
    i16 3, label %44
    i16 4, label %65
  ]

15:                                               ; preds = %12
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %20, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  store ptr %24, ptr %3, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %25 = load ptr, ptr %22, align 8, !tbaa !63
  %26 = call ptr %25(ptr noundef nonnull %3) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %18, %39
  %29 = phi ptr [ %41, %39 ], [ %26, %18 ]
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !68
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %9, align 4, !tbaa !56
  %36 = trunc i32 %35 to i16
  %37 = add i16 %36, -1
  %38 = getelementptr inbounds %struct.BMFace, ptr %29, i64 0, i32 5
  store i16 %37, ptr %38, align 8, !tbaa !70
  br label %39

39:                                               ; preds = %28, %34
  %40 = load ptr, ptr %22, align 8, !tbaa !63
  %41 = call ptr %40(ptr noundef nonnull %3) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %28, !llvm.loop !72

43:                                               ; preds = %39, %18, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  br label %92

44:                                               ; preds = %12, %12
  %45 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %46) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %92, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %47, align 8, !tbaa !76
  %51 = icmp eq ptr %50, null
  br i1 %51, label %92, label %52

52:                                               ; preds = %49, %62
  %53 = phi ptr [ %63, %62 ], [ %50, %49 ]
  %54 = tail call i32 @isNurbsel(ptr noundef nonnull %53) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %9, align 4, !tbaa !56
  %58 = add nsw i32 %57, -1
  %59 = getelementptr inbounds %struct.Nurb, ptr %53, i64 0, i32 21
  store i32 %58, ptr %59, align 4, !tbaa !77
  %60 = trunc i32 %58 to i16
  %61 = getelementptr inbounds %struct.Nurb, ptr %53, i64 0, i32 3
  store i16 %60, ptr %61, align 2, !tbaa !79
  br label %62

62:                                               ; preds = %52, %56
  %63 = load ptr, ptr %53, align 8, !tbaa !76
  %64 = icmp eq ptr %63, null
  br i1 %64, label %92, label %52, !llvm.loop !80

65:                                               ; preds = %12
  %66 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  %68 = getelementptr inbounds %struct.Curve, ptr %67, i64 0, i32 53
  %69 = load ptr, ptr %68, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %91, label %71

71:                                               ; preds = %65
  %72 = call i32 @BKE_vfont_select_get(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %4, align 4, !tbaa !84
  %76 = load i32, ptr %5, align 4, !tbaa !84
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %91, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %9, align 4, !tbaa !56
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds %struct.EditFont, ptr %69, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !85
  %83 = sext i32 %75 to i64
  %84 = add i32 %76, 1
  br label %85

85:                                               ; preds = %78, %85
  %86 = phi i64 [ %83, %78 ], [ %88, %85 ]
  %87 = getelementptr inbounds %struct.CharInfo, ptr %82, i64 %86, i32 1
  store i16 %80, ptr %87, align 2, !tbaa !87
  %88 = add nsw i64 %86, 1
  %89 = trunc i64 %88 to i32
  %90 = icmp eq i32 %84, %89
  br i1 %90, label %91, label %85, !llvm.loop !88

91:                                               ; preds = %85, %74, %71, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %92

92:                                               ; preds = %62, %49, %12, %44, %43, %91, %8
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 2) #6
  %93 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !75
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %94) #6
  br label %95

95:                                               ; preds = %2, %92
  %96 = phi i32 [ 4, %92 ], [ 2, %2 ]
  ret i32 %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_select_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @material_slot_select_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc i32 @material_slot_de_select(ptr noundef %0, i8 noundef zeroext 1), !range !89
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_deselect(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_deselect_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @material_slot_deselect_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc i32 @material_slot_de_select(ptr noundef %0, i8 noundef zeroext 0), !range !89
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_copy_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @material_slot_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @give_matarar(ptr noundef nonnull %4) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %10 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #6
  %11 = load ptr, ptr %3, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 31
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 31
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 32
  br label %18

18:                                               ; preds = %13, %42
  %19 = phi ptr [ %11, %13 ], [ %43, %42 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = icmp eq ptr %4, %21
  br i1 %22, label %42, label %23

23:                                               ; preds = %18
  %24 = call ptr @give_matarar(ptr noundef %21) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %14, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %15, align 8, !tbaa !94
  %33 = trunc i32 %32 to i16
  call void @assign_matarar(ptr noundef %21, ptr noundef nonnull %7, i16 noundef signext %33) #6
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 31
  %36 = load i32, ptr %35, align 8, !tbaa !94
  %37 = load i32, ptr %16, align 8, !tbaa !94
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, ptr %17, align 4, !tbaa !56
  %41 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 32
  store i32 %40, ptr %41, align 4, !tbaa !56
  call void @DAG_id_tag_update(ptr noundef %21, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %21) #6
  br label %42

42:                                               ; preds = %34, %39, %23, %18
  %43 = load ptr, ptr %19, align 8, !tbaa !76
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %18, !llvm.loop !95

45:                                               ; preds = %42, %9
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %46

46:                                               ; preds = %2, %6, %45
  %47 = phi i32 [ 4, %45 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MATERIAL_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_material_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @new_material_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Material) #6
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %11 = icmp eq ptr %9, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call ptr @BKE_material_copy(ptr noundef nonnull %9) #6
  br label %20

14:                                               ; preds = %2
  %15 = call ptr @BKE_material_add(ptr noundef %10, ptr noundef nonnull @.str.69) #6
  %16 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  call void @ED_node_shader_default(ptr noundef %0, ptr noundef %15) #6
  %19 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 77
  store i8 1, ptr %19, align 1, !tbaa !97
  br label %20

20:                                               ; preds = %14, %18, %12
  %21 = phi ptr [ %13, %12 ], [ %15, %18 ], [ %15, %14 ]
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #6
  %22 = load ptr, ptr %6, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !101
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4, !tbaa !101
  call void @RNA_id_pointer_create(ptr noundef %21, ptr noundef nonnull %5) #6
  %28 = load ptr, ptr %6, align 8, !tbaa !76
  call void @RNA_property_pointer_set(ptr noundef nonnull %4, ptr noundef %28, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5) #6
  %29 = load ptr, ptr %6, align 8, !tbaa !76
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %29) #6
  br label %30

30:                                               ; preds = %24, %20
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 100663299, ptr noundef %21) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_texture_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @new_texture_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #6
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %11 = icmp eq ptr %9, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call ptr @BKE_texture_copy(ptr noundef nonnull %9) #6
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @add_texture(ptr noundef %10, ptr noundef nonnull @.str.71) #6
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #6
  %18 = load ptr, ptr %6, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !102
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4, !tbaa !102
  %24 = load ptr, ptr %4, align 8, !tbaa !105
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 4
  %28 = load i16, ptr %27, align 8, !tbaa !106
  %29 = icmp eq i16 %28, 16717
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %4, ptr noundef nonnull %18) #6
  %31 = load ptr, ptr %7, align 8, !tbaa !105
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !tbaa !105
  %35 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 75
  %36 = load i8, ptr %35, align 1, !tbaa !107
  %37 = zext nneg i8 %36 to i32
  %38 = shl nuw i32 1, %37
  %39 = xor i32 %38, -1
  %40 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 73
  %41 = load i32, ptr %40, align 8, !tbaa !108
  %42 = and i32 %41, %39
  store i32 %42, ptr %40, align 8, !tbaa !108
  br label %43

43:                                               ; preds = %33, %30, %26, %20
  call void @RNA_id_pointer_create(ptr noundef %17, ptr noundef nonnull %5) #6
  %44 = load ptr, ptr %6, align 8, !tbaa !76
  call void @RNA_property_pointer_set(ptr noundef nonnull %4, ptr noundef %44, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5) #6
  %45 = load ptr, ptr %6, align 8, !tbaa !76
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %45) #6
  br label %46

46:                                               ; preds = %43, %16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440515, ptr noundef %17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @WORLD_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_world_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @new_world_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull @RNA_World) #6
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %11 = icmp eq ptr %9, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call ptr @BKE_world_copy(ptr noundef nonnull %9) #6
  br label %20

14:                                               ; preds = %2
  %15 = call ptr @add_world(ptr noundef %10, ptr noundef nonnull @.str.73) #6
  %16 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  call void @ED_node_shader_default(ptr noundef %0, ptr noundef %15) #6
  %19 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 72
  store i16 1, ptr %19, align 2, !tbaa !109
  br label %20

20:                                               ; preds = %14, %18, %12
  %21 = phi ptr [ %13, %12 ], [ %15, %18 ], [ %15, %14 ]
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #6
  %22 = load ptr, ptr %6, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !111
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4, !tbaa !111
  call void @RNA_id_pointer_create(ptr noundef %21, ptr noundef nonnull %5) #6
  %28 = load ptr, ptr %6, align 8, !tbaa !76
  call void @RNA_property_pointer_set(ptr noundef nonnull %4, ptr noundef %28, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5) #6
  %29 = load ptr, ptr %6, align 8, !tbaa !76
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %29) #6
  br label %30

30:                                               ; preds = %24, %20
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 218103811, ptr noundef %21) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SCENE_OT_render_layer_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_layer_add_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @render_layer_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @BKE_scene_add_render_layer(ptr noundef %3, ptr noundef null) #6
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #6
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -1
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 61
  store i16 %8, ptr %9, align 8, !tbaa !112
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %3) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SCENE_OT_render_layer_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_layer_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @render_layer_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 61
  %6 = load i16, ptr %5, align 8, !tbaa !112
  %7 = sext i16 %6 to i32
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #6
  %9 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %10 = tail call zeroext i8 @BKE_scene_remove_render_layer(ptr noundef %9, ptr noundef %3, ptr noundef %8) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %3) #6
  br label %13

13:                                               ; preds = %2, %12
  %14 = phi i32 [ 4, %12 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXTURE_OT_slot_move(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_slot_move_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.41, ptr noundef nonnull @TEXTURE_OT_slot_move.slot_move, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @texture_slot_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull @RNA_TextureSlot) #6
  %6 = load ptr, ptr %3, align 8, !tbaa !105
  %7 = icmp eq ptr %6, null
  br i1 %7, label %111, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #6
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.41) #6
  %12 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %6) #6
  %13 = call zeroext i8 @give_active_mtex(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %14 = icmp eq i32 %11, -1
  %15 = load i16, ptr %5, align 2, !tbaa !106
  br i1 %14, label %16, label %63

16:                                               ; preds = %8
  %17 = icmp sgt i16 %15, 0
  br i1 %17, label %18, label %109

18:                                               ; preds = %16
  %19 = zext nneg i16 %15 to i64
  %20 = load ptr, ptr %4, align 8, !tbaa !76
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = add nuw nsw i64 %19, 4294967295
  %24 = and i64 %23, 4294967295
  %25 = getelementptr inbounds ptr, ptr %20, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  store ptr %26, ptr %21, align 8, !tbaa !76
  %27 = load ptr, ptr %4, align 8, !tbaa !76
  %28 = zext nneg i16 %15 to i64
  %29 = getelementptr ptr, ptr %27, i64 %28
  %30 = getelementptr ptr, ptr %29, i64 -1
  store ptr %22, ptr %30, align 8, !tbaa !76
  %31 = zext nneg i16 %15 to i32
  %32 = add nsw i32 %31, -1
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef %32, i32 noundef -1, i8 noundef zeroext 0) #6
  %33 = load i16, ptr %5, align 2, !tbaa !106
  %34 = sext i16 %33 to i32
  %35 = add nsw i32 %34, -1
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef %34, i32 noundef %35, i8 noundef zeroext 0) #6
  %36 = load i16, ptr %5, align 2, !tbaa !106
  %37 = sext i16 %36 to i32
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %37, i8 noundef zeroext 0) #6
  %38 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !106
  %40 = icmp eq i16 %39, 16717
  br i1 %40, label %41, label %60

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 73
  %43 = load i32, ptr %42, align 8, !tbaa !108
  %44 = load i16, ptr %5, align 2, !tbaa !106
  %45 = zext nneg i16 %44 to i32
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %43
  %48 = xor i32 %46, -1
  %49 = and i32 %43, %48
  %50 = sext i16 %44 to i32
  %51 = add nsw i32 %50, -1
  %52 = shl nuw i32 1, %51
  %53 = and i32 %49, %52
  %54 = shl i32 %53, 1
  %55 = or i32 %54, %49
  %56 = xor i32 %52, -1
  %57 = and i32 %55, %56
  %58 = ashr i32 %47, 1
  %59 = or i32 %57, %58
  store i32 %59, ptr %42, align 8, !tbaa !108
  br label %60

60:                                               ; preds = %41, %18
  %61 = load i16, ptr %5, align 2, !tbaa !106
  %62 = add i16 %61, -1
  br label %107

63:                                               ; preds = %8
  %64 = icmp slt i16 %15, 17
  br i1 %64, label %65, label %109

65:                                               ; preds = %63
  %66 = sext i16 %15 to i64
  %67 = load ptr, ptr %4, align 8, !tbaa !76
  %68 = getelementptr inbounds ptr, ptr %67, i64 %66
  %69 = load ptr, ptr %68, align 8, !tbaa !76
  %70 = getelementptr ptr, ptr %68, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !76
  store ptr %71, ptr %68, align 8, !tbaa !76
  %72 = load ptr, ptr %4, align 8, !tbaa !76
  %73 = getelementptr ptr, ptr %72, i64 %66
  %74 = getelementptr ptr, ptr %73, i64 1
  store ptr %69, ptr %74, align 8, !tbaa !76
  %75 = sext i16 %15 to i32
  %76 = add nsw i32 %75, 1
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef %76, i32 noundef -1, i8 noundef zeroext 0) #6
  %77 = load i16, ptr %5, align 2, !tbaa !106
  %78 = sext i16 %77 to i32
  %79 = add nsw i32 %78, 1
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef %78, i32 noundef %79, i8 noundef zeroext 0) #6
  %80 = load i16, ptr %5, align 2, !tbaa !106
  %81 = sext i16 %80 to i32
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %81, i8 noundef zeroext 0) #6
  %82 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %83 = load i16, ptr %82, align 8, !tbaa !106
  %84 = icmp eq i16 %83, 16717
  br i1 %84, label %85, label %104

85:                                               ; preds = %65
  %86 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 73
  %87 = load i32, ptr %86, align 8, !tbaa !108
  %88 = load i16, ptr %5, align 2, !tbaa !106
  %89 = zext nneg i16 %88 to i32
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %87
  %92 = xor i32 %90, -1
  %93 = and i32 %87, %92
  %94 = sext i16 %88 to i32
  %95 = add nsw i32 %94, 1
  %96 = shl nuw i32 1, %95
  %97 = and i32 %93, %96
  %98 = ashr i32 %97, 1
  %99 = or i32 %98, %93
  %100 = xor i32 %96, -1
  %101 = and i32 %99, %100
  %102 = shl i32 %91, 1
  %103 = or i32 %101, %102
  store i32 %103, ptr %86, align 8, !tbaa !108
  br label %104

104:                                              ; preds = %85, %65
  %105 = load i16, ptr %5, align 2, !tbaa !106
  %106 = add i16 %105, 1
  br label %107

107:                                              ; preds = %60, %104
  %108 = phi i16 [ %106, %104 ], [ %62, %60 ]
  call void @set_active_mtex(ptr noundef nonnull %6, i16 noundef signext %108) #6
  br label %109

109:                                              ; preds = %107, %63, %16
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 0) #6
  %110 = call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440512, ptr noundef %110) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %111

111:                                              ; preds = %109, %2
  ret i32 4
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @TEXTURE_OT_envmap_save(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @envmap_save_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @envmap_save_invoke, ptr %5, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @envmap_save_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 65, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = tail call ptr @RNA_def_float_array(ptr noundef %9, ptr noundef nonnull @.str.46, i32 noundef 12, ptr noundef nonnull @default_envmap_layout, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, float noundef 0.000000e+00, float noundef 0.000000e+00) #6
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #6
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @envmap_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [12 x float], align 16
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [1024 x i8], align 16
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #6
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22
  %10 = load i8, ptr %9, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.76, ptr noundef nonnull %5) #6
  %13 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 46
  %14 = load i32, ptr %13, align 4, !tbaa !135
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @BKE_add_image_extension(ptr noundef nonnull %5, ptr noundef nonnull %9) #6
  br label %19

19:                                               ; preds = %17, %2
  call void @WM_cursor_wait(i8 noundef zeroext 1) #6
  %20 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 56
  %21 = load ptr, ptr %20, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #6
  %22 = load ptr, ptr %11, align 8, !tbaa !132
  %23 = call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str.46) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %11, align 8, !tbaa !132
  call void @RNA_float_get_array(ptr noundef %26, ptr noundef nonnull @.str.46, ptr noundef nonnull %3) #6
  br label %28

27:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(48) @default_envmap_layout, i64 48, i1 false)
  br label %28

28:                                               ; preds = %25, %27
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = call zeroext i8 @RE_WriteEnvmapResult(ptr noundef %30, ptr noundef %8, ptr noundef %21, ptr noundef nonnull %5, i8 noundef zeroext %10, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #6
  call void @WM_cursor_wait(i8 noundef zeroext 0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440512, ptr noundef %7) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @envmap_save_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.76) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @envmap_save_exec(ptr noundef %0, ptr noundef %1)
  br label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !132
  %12 = load ptr, ptr @G, align 8, !tbaa !137
  %13 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 2
  tail call void @RNA_string_set(ptr noundef %11, ptr noundef nonnull @.str.76, ptr noundef nonnull %13) #6
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #6
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ 4, %8 ], [ 1, %10 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @envmap_save_poll(ptr noundef %0) #1 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #6
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.EnvMap, ptr %8, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !139
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnvMap, ptr %8, i64 0, i32 2, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %6, %10, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 0, %6 ], [ %18, %14 ]
  ret i32 %20
}

declare ptr @RNA_def_float_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_envmap_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @envmap_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @envmap_clear_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @envmap_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  call void @BKE_free_envmapdata(ptr noundef %7) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440513, ptr noundef %5) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @envmap_clear_poll(ptr noundef %0) #1 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #6
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.EnvMap, ptr %8, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !139
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnvMap, ptr %8, i64 0, i32 2, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %6, %10, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 0, %6 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_envmap_clear_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @envmap_clear_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @envmap_clear_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @envmap_clear_all_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @BKE_free_envmapdata(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !141

16:                                               ; preds = %13, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440513, ptr noundef null) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MATERIAL_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_material_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 65, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_material_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Material) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @copy_matcopybuf(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MATERIAL_OT_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_material_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paste_material_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Material) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @paste_matcopybuf(ptr noundef nonnull %5) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ED_render_clear_mtex_copybuf() local_unnamed_addr #4 {
  store i1 false, ptr @mtexcopied, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_slot_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.61, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_mtex_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @copy_mtex_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 65, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_mtex_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull @RNA_TextureSlot) #6
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !106
  switch i16 %8, label %34 [
    i16 16717, label %9
    i16 16716, label %14
    i16 20311, label %19
    i16 16720, label %24
    i16 21324, label %29
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 75
  %11 = load i8, ptr %10, align 1, !tbaa !107
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 102, i64 %12
  br label %34

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 49
  %16 = load i16, ptr %15, align 8, !tbaa !142
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 69, i64 %17
  br label %34

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !144
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 70, i64 %22
  br label %34

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %4, i64 0, i32 10
  %26 = load i16, ptr %25, align 2, !tbaa !145
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %4, i64 0, i32 121, i64 %27
  br label %34

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 28
  %31 = load i16, ptr %30, align 4, !tbaa !147
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 39, i64 %32
  br label %34

34:                                               ; preds = %29, %24, %19, %14, %9, %6
  %35 = phi ptr [ null, %6 ], [ %33, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %9 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 8, !tbaa !76
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) @mtexcopybuf, ptr noundef nonnull align 8 dereferenceable(312) %38, i64 312, i1 false)
  br label %41

41:                                               ; preds = %40, %37, %34, %2
  %42 = phi i1 [ false, %2 ], [ true, %40 ], [ false, %37 ], [ false, %34 ]
  %43 = phi i32 [ 2, %2 ], [ 4, %40 ], [ 4, %37 ], [ 4, %34 ]
  store i1 %42, ptr @mtexcopied, align 2
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_mtex_poll(ptr noundef %0) #1 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull @RNA_TextureSlot) #6
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_slot_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_mtex_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paste_mtex_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull @RNA_TextureSlot) #6
  %9 = load ptr, ptr %3, align 8, !tbaa !105
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Material) #6
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef nonnull @RNA_Lamp) #6
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull @RNA_World) #6
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull @RNA_ParticleSystem) #6
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef nonnull @RNA_FreestyleLineStyle) #6
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = icmp eq ptr %13, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = icmp eq ptr %15, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = icmp eq ptr %17, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = icmp eq ptr %19, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !149
  br label %32

32:                                               ; preds = %27, %25, %23, %11, %29
  %33 = phi ptr [ %31, %29 ], [ %13, %11 ], [ %15, %23 ], [ %17, %25 ], [ %21, %27 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %88, label %35

35:                                               ; preds = %32, %2
  %36 = phi ptr [ %33, %32 ], [ %9, %2 ]
  %37 = load i1, ptr @mtexcopied, align 2
  %38 = load ptr, ptr getelementptr inbounds (%struct.MTex, ptr @mtexcopybuf, i64 0, i32 5), align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %87

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ID, ptr %36, i64 0, i32 4
  %43 = load i16, ptr %42, align 8, !tbaa !106
  switch i16 %43, label %87 [
    i16 16717, label %44
    i16 16716, label %49
    i16 20311, label %54
    i16 16720, label %59
    i16 21324, label %64
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 75
  %46 = load i8, ptr %45, align 1, !tbaa !107
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 102, i64 %47
  br label %69

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.Lamp, ptr %36, i64 0, i32 49
  %51 = load i16, ptr %50, align 8, !tbaa !142
  %52 = sext i16 %51 to i64
  %53 = getelementptr inbounds %struct.Lamp, ptr %36, i64 0, i32 69, i64 %52
  br label %69

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.World, ptr %36, i64 0, i32 4
  %56 = load i16, ptr %55, align 4, !tbaa !144
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds %struct.World, ptr %36, i64 0, i32 70, i64 %57
  br label %69

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.ParticleSettings, ptr %36, i64 0, i32 10
  %61 = load i16, ptr %60, align 2, !tbaa !145
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %36, i64 0, i32 121, i64 %62
  br label %69

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %36, i64 0, i32 28
  %66 = load i16, ptr %65, align 4, !tbaa !147
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %36, i64 0, i32 39, i64 %67
  br label %69

69:                                               ; preds = %64, %59, %54, %49, %44
  %70 = phi ptr [ %68, %64 ], [ %63, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %44 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !76
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %75 = call ptr %74(i64 noundef 312, ptr noundef nonnull @.str.80) #6
  store ptr %75, ptr %70, align 8, !tbaa !76
  br label %84

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.MTex, ptr %71, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !151
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ID, ptr %78, i64 0, i32 6
  %82 = load i32, ptr %81, align 4, !tbaa !102
  %83 = add nsw i32 %82, -1
  store i32 %83, ptr %81, align 4, !tbaa !102
  br label %84

84:                                               ; preds = %80, %76, %73
  %85 = load ptr, ptr %70, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %85, ptr noundef nonnull align 8 dereferenceable(312) @mtexcopybuf, i64 312, i1 false)
  %86 = load ptr, ptr getelementptr inbounds (%struct.MTex, ptr @mtexcopybuf, i64 0, i32 5), align 8, !tbaa !151
  call void @id_us_plus(ptr noundef %86) #6
  br label %87

87:                                               ; preds = %35, %41, %84
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 119537664, ptr noundef null) #6
  br label %88

88:                                               ; preds = %32, %87
  %89 = phi i32 [ 4, %87 ], [ 2, %32 ]
  ret i32 %89
}

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @object_add_material_slot(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @object_remove_material_slot(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

declare i32 @isNurbsel(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_vfont_select_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @material_slot_de_select(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %106, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !57
  switch i16 %7, label %103 [
    i16 1, label %8
    i16 2, label %16
    i16 3, label %16
  ]

8:                                                ; preds = %5
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %3) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %103, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %13 = load i32, ptr %12, align 4, !tbaa !56
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, -1
  tail call void @EDBM_deselect_by_material(ptr noundef nonnull %9, i16 noundef signext %15, i8 noundef zeroext %1) #6
  br label %103

16:                                               ; preds = %5, %5
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %18) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %103, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  br i1 %23, label %103, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %26 = load i32, ptr %25, align 4, !tbaa !56
  %27 = add nsw i32 %26, -1
  %28 = icmp eq i8 %1, 0
  %29 = icmp ne i8 %1, 0
  %30 = zext i1 %29 to i16
  br label %31

31:                                               ; preds = %24, %100
  %32 = phi ptr [ %22, %24 ], [ %101, %100 ]
  %33 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !79
  %35 = sext i16 %34 to i32
  %36 = icmp eq i32 %27, %35
  br i1 %36, label %37, label %100

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !153
  %40 = icmp eq ptr %39, null
  br i1 %40, label %74, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !154
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %100, label %45

45:                                               ; preds = %41, %71
  %46 = phi i32 [ %48, %71 ], [ %43, %41 ]
  %47 = phi ptr [ %72, %71 ], [ %39, %41 ]
  %48 = add nsw i32 %46, -1
  %49 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 10
  %50 = load i8, ptr %49, align 2, !tbaa !155
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 7
  %54 = load i8, ptr %53, align 1, !tbaa !157
  %55 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 8
  %56 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 9
  br i1 %28, label %63, label %57

57:                                               ; preds = %52
  %58 = or i8 %54, 1
  store i8 %58, ptr %53, align 1, !tbaa !157
  %59 = load i8, ptr %55, align 4, !tbaa !158
  %60 = or i8 %59, 1
  store i8 %60, ptr %55, align 4, !tbaa !158
  %61 = load i8, ptr %56, align 1, !tbaa !159
  %62 = or i8 %61, 1
  br label %69

63:                                               ; preds = %52
  %64 = and i8 %54, -2
  store i8 %64, ptr %53, align 1, !tbaa !157
  %65 = load i8, ptr %55, align 4, !tbaa !158
  %66 = and i8 %65, -2
  store i8 %66, ptr %55, align 4, !tbaa !158
  %67 = load i8, ptr %56, align 1, !tbaa !159
  %68 = and i8 %67, -2
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i8 [ %62, %57 ], [ %68, %63 ]
  store i8 %70, ptr %56, align 1, !tbaa !159
  br label %71

71:                                               ; preds = %69, %45
  %72 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 1
  %73 = icmp eq i32 %48, 0
  br i1 %73, label %100, label %45, !llvm.loop !160

74:                                               ; preds = %37
  %75 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !161
  %77 = icmp eq ptr %76, null
  br i1 %77, label %100, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 6
  %80 = load i32, ptr %79, align 8, !tbaa !154
  %81 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 7
  %82 = load i32, ptr %81, align 4, !tbaa !162
  %83 = mul nsw i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %78, %97
  %86 = phi i32 [ %88, %97 ], [ %83, %78 ]
  %87 = phi ptr [ %98, %97 ], [ %76, %78 ]
  %88 = add nsw i32 %86, -1
  %89 = getelementptr inbounds %struct.BPoint, ptr %87, i64 0, i32 4
  %90 = load i16, ptr %89, align 2, !tbaa !163
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.BPoint, ptr %87, i64 0, i32 3
  %94 = load i16, ptr %93, align 4, !tbaa !165
  %95 = and i16 %94, -2
  %96 = or disjoint i16 %95, %30
  store i16 %96, ptr %93, align 4, !tbaa !165
  br label %97

97:                                               ; preds = %92, %85
  %98 = getelementptr inbounds %struct.BPoint, ptr %87, i64 1
  %99 = icmp eq i32 %88, 0
  br i1 %99, label %100, label %85, !llvm.loop !166

100:                                              ; preds = %71, %97, %41, %78, %31, %74
  %101 = load ptr, ptr %32, align 8, !tbaa !76
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %31, !llvm.loop !167

103:                                              ; preds = %100, %21, %16, %5, %8, %11
  %104 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !75
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %105) #6
  br label %106

106:                                              ; preds = %2, %103
  %107 = phi i32 [ 4, %103 ], [ 2, %2 ]
  ret i32 %107
}

declare void @EDBM_deselect_by_material(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @give_matarar(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @assign_matarar(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_material_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_material_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #2

declare ptr @add_texture(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_world_copy(ptr noundef) local_unnamed_addr #2

declare ptr @add_world(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_scene_add_render_layer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_remove_render_layer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @give_active_mtex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @set_active_mtex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_add_image_extension(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare zeroext i8 @RE_WriteEnvmapResult(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_free_envmapdata(ptr noundef) local_unnamed_addr #2

declare void @copy_matcopybuf(ptr noundef) local_unnamed_addr #2

declare void @paste_matcopybuf(ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!48, !50, i64 432}
!48 = !{!"Object", !49, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !50, i64 140, !50, i64 144, !50, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !51, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !50, i64 432, !50, i64 436, !36, i64 440, !36, i64 448, !50, i64 456, !50, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !52, i64 616, !52, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !50, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !50, i64 968, !50, i64 972, !50, i64 976, !50, i64 980, !50, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !52, i64 1048, !52, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !52, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !50, i64 1144, !50, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !53, i64 1304, !53, i64 1312, !50, i64 1320, !50, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !36, i64 112}
!50 = !{!"int", !37, i64 0}
!51 = !{!"bAnimVizSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44}
!52 = !{!"float", !37, i64 0}
!53 = !{!"long", !37, i64 0}
!54 = !{!55, !36, i64 120}
!55 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!56 = !{!48, !50, i64 460}
!57 = !{!48, !41, i64 136}
!58 = !{!59, !36, i64 0}
!59 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !50, i64 16, !36, i64 24, !50, i64 32, !36, i64 40, !36, i64 48, !53, i64 56, !36, i64 64, !50, i64 72, !36, i64 80, !50, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !50, i64 104}
!60 = !{!61, !37, i64 60}
!61 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !50, i64 56, !37, i64 60}
!62 = !{!61, !36, i64 40}
!63 = !{!61, !36, i64 48}
!64 = !{!65, !36, i64 56}
!65 = !{!"BMesh", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !50, i64 88, !50, i64 92, !50, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !50, i64 128, !36, i64 136, !66, i64 144, !66, i64 344, !66, i64 544, !66, i64 744, !41, i64 944, !50, i64 948, !50, i64 952, !50, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!66 = !{!"CustomData", !36, i64 0, !37, i64 8, !50, i64 172, !50, i64 176, !50, i64 180, !36, i64 184, !36, i64 192}
!67 = !{!37, !37, i64 0}
!68 = !{!69, !37, i64 13}
!69 = !{!"BMHeader", !36, i64 0, !50, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!70 = !{!71, !41, i64 48}
!71 = !{!"BMFace", !69, i64 0, !36, i64 16, !36, i64 24, !50, i64 32, !37, i64 36, !41, i64 48}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!48, !36, i64 296}
!76 = !{!36, !36, i64 0}
!77 = !{!78, !50, i64 84}
!78 = !{!"Nurb", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !50, i64 24, !50, i64 28, !37, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 82, !50, i64 84}
!79 = !{!78, !41, i64 18}
!80 = distinct !{!80, !73, !74}
!81 = !{!82, !36, i64 376}
!82 = !{!"Curve", !49, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !52, i64 252, !52, i64 256, !50, i64 260, !41, i64 264, !41, i64 266, !50, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !50, i64 292, !50, i64 296, !37, i64 300, !41, i64 304, !37, i64 306, !37, i64 307, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !52, i64 340, !52, i64 344, !50, i64 348, !50, i64 352, !50, i64 356, !50, i64 360, !50, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !50, i64 488, !50, i64 492, !36, i64 496, !83, i64 504, !52, i64 512, !52, i64 516, !52, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!83 = !{!"CharInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !41, i64 6}
!84 = !{!50, !50, i64 0}
!85 = !{!86, !36, i64 24}
!86 = !{!"EditFont", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !50, i64 72, !50, i64 76, !50, i64 80, !50, i64 84}
!87 = !{!83, !41, i64 2}
!88 = distinct !{!88, !73, !74}
!89 = !{i32 2, i32 5}
!90 = !{!91, !36, i64 32}
!91 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !92, i64 16}
!92 = !{!"PointerRNA", !93, i64 0, !36, i64 8, !36, i64 16}
!93 = !{!"", !36, i64 0}
!94 = !{!48, !50, i64 456}
!95 = distinct !{!95, !73, !74}
!96 = !{!92, !36, i64 16}
!97 = !{!98, !37, i64 543}
!98 = !{!"Material", !49, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !99, i64 224, !100, i64 312, !52, i64 328, !52, i64 332, !52, i64 336, !52, i64 340, !52, i64 344, !52, i64 348, !52, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !37, i64 362, !37, i64 363, !52, i64 364, !52, i64 368, !41, i64 372, !41, i64 374, !52, i64 376, !52, i64 380, !52, i64 384, !52, i64 388, !41, i64 392, !41, i64 394, !50, i64 396, !50, i64 400, !50, i64 404, !50, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !52, i64 420, !52, i64 424, !52, i64 428, !52, i64 432, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !52, i64 456, !37, i64 460, !52, i64 524, !52, i64 528, !52, i64 532, !50, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !37, i64 550, !37, i64 551, !41, i64 552, !41, i64 554, !52, i64 556, !52, i64 560, !37, i64 564, !52, i64 580, !52, i64 584, !41, i64 588, !41, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !41, i64 612, !41, i64 614, !52, i64 616, !52, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !52, i64 800, !52, i64 804, !52, i64 808, !52, i64 812, !52, i64 816, !41, i64 820, !41, i64 822, !37, i64 824, !37, i64 836, !52, i64 848, !52, i64 852, !52, i64 856, !52, i64 860, !52, i64 864, !52, i64 868, !52, i64 872, !41, i64 876, !41, i64 878, !50, i64 880, !41, i64 884, !41, i64 886, !37, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!99 = !{!"VolumeSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !52, i64 52, !52, i64 56, !52, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84}
!100 = !{!"GameSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!101 = !{!98, !50, i64 100}
!102 = !{!103, !50, i64 100}
!103 = !{!"Tex", !49, i64 0, !36, i64 120, !52, i64 128, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !50, i64 252, !50, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !50, i64 268, !50, i64 272, !50, i64 276, !50, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !104, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!104 = !{!"ImageUser", !36, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !50, i64 36}
!105 = !{!92, !36, i64 0}
!106 = !{!41, !41, i64 0}
!107 = !{!98, !37, i64 541}
!108 = !{!98, !50, i64 536}
!109 = !{!110, !41, i64 506}
!110 = !{!"World", !49, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !52, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !41, i64 504, !41, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!111 = !{!110, !50, i64 100}
!112 = !{!113, !41, i64 888}
!113 = !{!"Scene", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !50, i64 232, !50, i64 236, !50, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !114, i64 280, !123, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !50, i64 4380, !39, i64 4384, !124, i64 4400, !125, i64 4416, !128, i64 4600, !36, i64 4608, !129, i64 4616, !36, i64 4640, !53, i64 4648, !53, i64 4656, !116, i64 4664, !117, i64 4824, !130, i64 4888, !36, i64 4952}
!114 = !{!"RenderData", !115, i64 0, !36, i64 248, !36, i64 256, !118, i64 264, !119, i64 328, !50, i64 400, !50, i64 404, !50, i64 408, !52, i64 412, !50, i64 416, !50, i64 420, !50, i64 424, !50, i64 428, !41, i64 432, !41, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !50, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !50, i64 484, !50, i64 488, !41, i64 492, !41, i64 494, !50, i64 496, !50, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !50, i64 516, !50, i64 520, !50, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !120, i64 544, !120, i64 560, !121, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !50, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !52, i64 660, !52, i64 664, !41, i64 668, !41, i64 670, !52, i64 672, !52, i64 676, !37, i64 680, !50, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !50, i64 2520, !41, i64 2524, !41, i64 2526, !52, i64 2528, !52, i64 2532, !41, i64 2536, !41, i64 2538, !52, i64 2540, !41, i64 2544, !41, i64 2546, !50, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !52, i64 2560, !52, i64 2564, !36, i64 2568, !50, i64 2576, !52, i64 2580, !37, i64 2584, !122, i64 2616, !50, i64 3976, !50, i64 3980}
!115 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !116, i64 24, !117, i64 184}
!116 = !{!"ColorManagedViewSettings", !50, i64 0, !50, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!117 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!118 = !{!"QuicktimeCodecSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !41, i64 48, !41, i64 50, !50, i64 52, !50, i64 56, !50, i64 60}
!119 = !{!"FFMpegCodecData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !52, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !36, i64 64}
!120 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!121 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!122 = !{!"BakeData", !115, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!123 = !{!"AudioData", !50, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !50, i64 16, !41, i64 20, !41, i64 22, !52, i64 24, !52, i64 28}
!124 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!125 = !{!"GameData", !124, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !126, i64 40, !41, i64 64, !41, i64 66, !52, i64 68, !127, i64 72, !52, i64 128, !52, i64 132, !50, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!126 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !52, i64 8, !52, i64 12, !36, i64 16}
!127 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !50, i64 40, !52, i64 44, !52, i64 48, !41, i64 52, !41, i64 54}
!128 = !{!"UnitSettings", !52, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!129 = !{!"PhysicsSettings", !37, i64 0, !50, i64 12, !50, i64 16, !50, i64 20}
!130 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!131 = !{!35, !36, i64 88}
!132 = !{!55, !36, i64 112}
!133 = !{!35, !36, i64 48}
!134 = !{!113, !37, i64 280}
!135 = !{!113, !50, i64 796}
!136 = !{!103, !36, i64 368}
!137 = !{!138, !36, i64 0}
!138 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !50, i64 2096, !50, i64 2100, !37, i64 2104, !50, i64 2108, !50, i64 2112, !37, i64 2116}
!139 = !{!140, !50, i64 188}
!140 = !{!"EnvMap", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 64, !37, i64 128, !41, i64 164, !41, i64 166, !52, i64 168, !52, i64 172, !52, i64 176, !50, i64 180, !41, i64 184, !41, i64 186, !50, i64 188, !50, i64 192, !41, i64 196, !41, i64 198}
!141 = distinct !{!141, !73, !74}
!142 = !{!143, !41, i64 280}
!143 = !{!"Lamp", !49, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !50, i64 132, !41, i64 136, !41, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !36, i64 200, !41, i64 208, !41, i64 210, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !41, i64 240, !41, i64 242, !41, i64 244, !41, i64 246, !37, i64 248, !37, i64 249, !41, i64 250, !41, i64 252, !41, i64 254, !41, i64 256, !41, i64 258, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !41, i64 276, !41, i64 278, !41, i64 280, !41, i64 282, !41, i64 284, !41, i64 286, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !41, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !41, i64 496, !41, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!144 = !{!110, !41, i64 132}
!145 = !{!146, !41, i64 166}
!146 = !{!"ParticleSettings", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !50, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !50, i64 176, !50, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !52, i64 232, !52, i64 236, !37, i64 240, !37, i64 248, !52, i64 256, !52, i64 260, !52, i64 264, !41, i64 268, !41, i64 270, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !37, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !41, i64 340, !37, i64 342, !52, i64 348, !52, i64 352, !52, i64 356, !52, i64 360, !52, i64 364, !52, i64 368, !52, i64 372, !37, i64 376, !52, i64 388, !52, i64 392, !52, i64 396, !52, i64 400, !52, i64 404, !52, i64 408, !52, i64 412, !37, i64 416, !52, i64 428, !52, i64 432, !52, i64 436, !52, i64 440, !50, i64 444, !50, i64 448, !52, i64 452, !52, i64 456, !52, i64 460, !52, i64 464, !52, i64 468, !52, i64 472, !52, i64 476, !52, i64 480, !52, i64 484, !52, i64 488, !52, i64 492, !52, i64 496, !52, i64 500, !52, i64 504, !52, i64 508, !52, i64 512, !52, i64 516, !52, i64 520, !52, i64 524, !52, i64 528, !52, i64 532, !52, i64 536, !52, i64 540, !52, i64 544, !52, i64 548, !37, i64 552, !52, i64 560, !52, i64 564, !50, i64 568, !50, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !41, i64 792, !37, i64 794}
!147 = !{!148, !41, i64 220}
!148 = !{!"FreestyleLineStyle", !49, i64 0, !36, i64 120, !52, i64 128, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !50, i64 148, !52, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !50, i64 192, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !50, i64 208, !50, i64 212, !52, i64 216, !41, i64 220, !41, i64 222, !41, i64 224, !37, i64 226, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !50, i64 244, !37, i64 248, !36, i64 392, !39, i64 400, !39, i64 416, !39, i64 432, !39, i64 448}
!149 = !{!150, !36, i64 16}
!150 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !52, i64 296, !52, i64 300, !52, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !41, i64 340, !41, i64 342, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 540, !41, i64 564, !41, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !50, i64 616, !50, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !52, i64 648, !52, i64 652}
!151 = !{!152, !36, i64 16}
!152 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !52, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !37, i64 132, !37, i64 133, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308}
!153 = !{!78, !36, i64 72}
!154 = !{!78, !50, i64 24}
!155 = !{!156, !37, i64 54}
!156 = !{!"BezTriple", !37, i64 0, !52, i64 36, !52, i64 40, !52, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !52, i64 56, !52, i64 60, !52, i64 64, !37, i64 68}
!157 = !{!156, !37, i64 51}
!158 = !{!156, !37, i64 52}
!159 = !{!156, !37, i64 53}
!160 = distinct !{!160, !73, !74}
!161 = !{!78, !36, i64 64}
!162 = !{!78, !50, i64 28}
!163 = !{!164, !41, i64 26}
!164 = !{!"BPoint", !37, i64 0, !52, i64 16, !52, i64 20, !41, i64 24, !41, i64 26, !52, i64 28, !52, i64 32}
!165 = !{!164, !41, i64 24}
!166 = distinct !{!166, !73, !74}
!167 = distinct !{!167, !73, !74}
