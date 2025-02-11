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
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_add_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @material_slot_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @object_add_material_slot(ptr noundef nonnull %3) #8
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !18
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %13 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %12, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #8
  br label %14

14:                                               ; preds = %11, %5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %3) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef nonnull %3) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102825984, ptr noundef nonnull %3) #8
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_remove_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @material_slot_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.67) #8
  br label %21

11:                                               ; preds = %5
  %12 = tail call zeroext i8 @object_remove_material_slot(ptr noundef nonnull %3) #8
  %13 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !18
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %19 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %18, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #8
  br label %20

20:                                               ; preds = %17, %11
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 2) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %3) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef nonnull %3) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102825984, ptr noundef nonnull %3) #8
  br label %21

21:                                               ; preds = %2, %20, %8
  %22 = phi i32 [ 2, %8 ], [ 4, %20 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_assign(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_assign_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @material_slot_assign_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %86, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %10 = load i32, ptr %9, align 4, !tbaa !27
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !28
  switch i16 %14, label %83 [
    i16 1, label %15
    i16 2, label %35
    i16 3, label %35
    i16 4, label %56
  ]

15:                                               ; preds = %12
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !29
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %19) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18, %31
  %23 = phi ptr [ %32, %31 ], [ %20, %18 ]
  %24 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23) #10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %9, align 4, !tbaa !27
  %28 = trunc i32 %27 to i16
  %29 = add i16 %28, -1
  %30 = getelementptr inbounds %struct.BMFace, ptr %23, i64 0, i32 5
  store i16 %29, ptr %30, align 8, !tbaa !31
  br label %31

31:                                               ; preds = %22, %26
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %22, !llvm.loop !34

34:                                               ; preds = %31, %18, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %83

35:                                               ; preds = %12, %12
  %36 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  %38 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %37) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %83, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %38, align 8, !tbaa !37
  %42 = icmp eq ptr %41, null
  br i1 %42, label %83, label %43

43:                                               ; preds = %40, %53
  %44 = phi ptr [ %54, %53 ], [ %41, %40 ]
  %45 = tail call i32 @isNurbsel(ptr noundef nonnull %44) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %9, align 4, !tbaa !27
  %49 = add nsw i32 %48, -1
  %50 = getelementptr inbounds %struct.Nurb, ptr %44, i64 0, i32 21
  store i32 %49, ptr %50, align 4, !tbaa !38
  %51 = trunc i32 %49 to i16
  %52 = getelementptr inbounds %struct.Nurb, ptr %44, i64 0, i32 3
  store i16 %51, ptr %52, align 2, !tbaa !40
  br label %53

53:                                               ; preds = %43, %47
  %54 = load ptr, ptr %44, align 8, !tbaa !37
  %55 = icmp eq ptr %54, null
  br i1 %55, label %83, label %43, !llvm.loop !41

56:                                               ; preds = %12
  %57 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !36
  %59 = getelementptr inbounds %struct.Curve, ptr %58, i64 0, i32 53
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %82, label %62

62:                                               ; preds = %56
  %63 = call i32 @BKE_vfont_select_get(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %4, align 4, !tbaa !45
  %67 = load i32, ptr %5, align 4, !tbaa !45
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %9, align 4, !tbaa !27
  %71 = trunc i32 %70 to i16
  %72 = getelementptr inbounds %struct.EditFont, ptr %60, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = sext i32 %66 to i64
  %75 = add i32 %67, 1
  br label %76

76:                                               ; preds = %69, %76
  %77 = phi i64 [ %74, %69 ], [ %79, %76 ]
  %78 = getelementptr inbounds %struct.CharInfo, ptr %73, i64 %77, i32 1
  store i16 %71, ptr %78, align 2, !tbaa !48
  %79 = add nsw i64 %77, 1
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %76, !llvm.loop !49

82:                                               ; preds = %76, %65, %62, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %83

83:                                               ; preds = %53, %40, %12, %35, %34, %82, %8
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 2) #8
  %84 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !36
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %85) #8
  br label %86

86:                                               ; preds = %2, %83
  %87 = phi i32 [ 4, %83 ], [ 2, %2 ]
  ret i32 %87
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_select_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @material_slot_select_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc i32 @material_slot_de_select(ptr noundef %0, i8 noundef zeroext 1) #10, !range !50
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_deselect(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_deselect_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @material_slot_deselect_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc i32 @material_slot_de_select(ptr noundef %0, i8 noundef zeroext 0) #10, !range !50
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_material_slot_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @material_slot_copy_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @material_slot_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @give_matarar(ptr noundef nonnull %4) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %10 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #8
  %11 = load ptr, ptr %3, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 31
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 32
  br label %17

17:                                               ; preds = %13, %41
  %18 = phi ptr [ %11, %13 ], [ %42, %41 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = icmp eq ptr %4, %20
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = call ptr @give_matarar(ptr noundef %20) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %14, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %15, align 8, !tbaa !55
  %32 = trunc i32 %31 to i16
  call void @assign_matarar(ptr noundef nonnull %20, ptr noundef nonnull %7, i16 noundef signext %32) #8
  br label %33

33:                                               ; preds = %30, %25
  %34 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 31
  %35 = load i32, ptr %34, align 8, !tbaa !55
  %36 = load i32, ptr %15, align 8, !tbaa !55
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, ptr %16, align 4, !tbaa !27
  %40 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 32
  store i32 %39, ptr %40, align 4, !tbaa !27
  call void @DAG_id_tag_update(ptr noundef nonnull %20, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %20) #8
  br label %41

41:                                               ; preds = %33, %38, %22, %17
  %42 = load ptr, ptr %18, align 8, !tbaa !37
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %17, !llvm.loop !56

44:                                               ; preds = %41, %9
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %45

45:                                               ; preds = %2, %6, %44
  %46 = phi i32 [ 4, %44 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MATERIAL_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_material_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @new_material_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Material) #8
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = call ptr @CTX_data_main(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %11 = icmp eq ptr %9, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call ptr @BKE_material_copy(ptr noundef nonnull %9) #8
  br label %20

14:                                               ; preds = %2
  %15 = call ptr @BKE_material_add(ptr noundef %10, ptr noundef nonnull @.str.69) #8
  %16 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  call void @ED_node_shader_default(ptr noundef %0, ptr noundef %15) #8
  %19 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 77
  store i8 1, ptr %19, align 1, !tbaa !58
  br label %20

20:                                               ; preds = %14, %18, %12
  %21 = phi ptr [ %13, %12 ], [ %15, %18 ], [ %15, %14 ]
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %22 = load ptr, ptr %6, align 8, !tbaa !37
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4, !tbaa !62
  call void @RNA_id_pointer_create(ptr noundef %21, ptr noundef nonnull %5) #8
  %28 = load ptr, ptr %6, align 8, !tbaa !37
  call void @RNA_property_pointer_set(ptr noundef nonnull %4, ptr noundef %28, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5) #8
  %29 = load ptr, ptr %6, align 8, !tbaa !37
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %29) #8
  br label %30

30:                                               ; preds = %24, %20
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 100663299, ptr noundef %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_texture_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @new_texture_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #8
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = call ptr @CTX_data_main(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %11 = icmp eq ptr %9, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call ptr @BKE_texture_copy(ptr noundef nonnull %9) #8
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @add_texture(ptr noundef %10, ptr noundef nonnull @.str.71) #8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %18 = load ptr, ptr %6, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !63
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4, !tbaa !63
  %24 = load ptr, ptr %4, align 8, !tbaa !66
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 4
  %28 = load i16, ptr %27, align 8, !tbaa !67
  %29 = icmp eq i16 %28, 16717
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %4, ptr noundef nonnull %18) #8
  %31 = load ptr, ptr %7, align 8, !tbaa !66
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 75
  %36 = load i8, ptr %35, align 1, !tbaa !68
  %37 = zext nneg i8 %36 to i32
  %38 = shl nuw i32 1, %37
  %39 = xor i32 %38, -1
  %40 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 73
  %41 = load i32, ptr %40, align 8, !tbaa !69
  %42 = and i32 %41, %39
  store i32 %42, ptr %40, align 8, !tbaa !69
  br label %43

43:                                               ; preds = %33, %30, %26, %20
  call void @RNA_id_pointer_create(ptr noundef nonnull %17, ptr noundef nonnull %5) #8
  %44 = load ptr, ptr %6, align 8, !tbaa !37
  call void @RNA_property_pointer_set(ptr noundef nonnull %4, ptr noundef %44, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5) #8
  %45 = load ptr, ptr %6, align 8, !tbaa !37
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %45) #8
  br label %46

46:                                               ; preds = %43, %16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440515, ptr noundef %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @WORLD_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_world_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @new_world_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull @RNA_World) #8
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = call ptr @CTX_data_main(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %11 = icmp eq ptr %9, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call ptr @BKE_world_copy(ptr noundef nonnull %9) #8
  br label %20

14:                                               ; preds = %2
  %15 = call ptr @add_world(ptr noundef %10, ptr noundef nonnull @.str.73) #8
  %16 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  call void @ED_node_shader_default(ptr noundef %0, ptr noundef %15) #8
  %19 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 72
  store i16 1, ptr %19, align 2, !tbaa !70
  br label %20

20:                                               ; preds = %14, %18, %12
  %21 = phi ptr [ %13, %12 ], [ %15, %18 ], [ %15, %14 ]
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %22 = load ptr, ptr %6, align 8, !tbaa !37
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !72
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4, !tbaa !72
  call void @RNA_id_pointer_create(ptr noundef %21, ptr noundef nonnull %5) #8
  %28 = load ptr, ptr %6, align 8, !tbaa !37
  call void @RNA_property_pointer_set(ptr noundef nonnull %4, ptr noundef %28, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5) #8
  %29 = load ptr, ptr %6, align 8, !tbaa !37
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %29) #8
  br label %30

30:                                               ; preds = %24, %20
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 218103811, ptr noundef %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SCENE_OT_render_layer_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_layer_add_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_layer_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_scene_add_render_layer(ptr noundef %3, ptr noundef null) #8
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -1
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 61
  store i16 %8, ptr %9, align 8, !tbaa !73
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %3) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SCENE_OT_render_layer_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_layer_remove_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_layer_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 61
  %6 = load i16, ptr %5, align 8, !tbaa !73
  %7 = sext i16 %6 to i32
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #8
  %9 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %10 = tail call zeroext i8 @BKE_scene_remove_render_layer(ptr noundef %9, ptr noundef %3, ptr noundef %8) #8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 0) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef nonnull %3) #8
  br label %13

13:                                               ; preds = %2, %12
  %14 = phi i32 [ 4, %12 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXTURE_OT_slot_move(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @texture_slot_move_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.41, ptr noundef nonnull @TEXTURE_OT_slot_move.slot_move, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @texture_slot_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull @RNA_TextureSlot) #8
  %6 = load ptr, ptr %3, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %108, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.41) #8
  %12 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %6) #8
  %13 = call zeroext i8 @give_active_mtex(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %14 = icmp eq i32 %11, -1
  %15 = load i16, ptr %5, align 2, !tbaa !67
  br i1 %14, label %16, label %61

16:                                               ; preds = %8
  %17 = icmp sgt i16 %15, 0
  br i1 %17, label %18, label %106

18:                                               ; preds = %16
  %19 = zext nneg i16 %15 to i64
  %20 = load ptr, ptr %4, align 8, !tbaa !37
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = add nuw nsw i64 %19, 4294967295
  %24 = and i64 %23, 4294967295
  %25 = getelementptr inbounds ptr, ptr %20, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  store ptr %26, ptr %21, align 8, !tbaa !37
  %27 = load ptr, ptr %4, align 8, !tbaa !37
  %28 = getelementptr ptr, ptr %27, i64 %19
  %29 = getelementptr ptr, ptr %28, i64 -1
  store ptr %22, ptr %29, align 8, !tbaa !37
  %30 = zext nneg i16 %15 to i32
  %31 = add nsw i32 %30, -1
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef %31, i32 noundef -1, i8 noundef zeroext 0) #8
  %32 = load i16, ptr %5, align 2, !tbaa !67
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, -1
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef %33, i32 noundef %34, i8 noundef zeroext 0) #8
  %35 = load i16, ptr %5, align 2, !tbaa !67
  %36 = sext i16 %35 to i32
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %36, i8 noundef zeroext 0) #8
  %37 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !67
  %39 = icmp eq i16 %38, 16717
  %40 = load i16, ptr %5, align 2, !tbaa !67
  br i1 %39, label %41, label %59

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 73
  %43 = load i32, ptr %42, align 8, !tbaa !69
  %44 = zext nneg i16 %40 to i32
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = xor i32 %45, -1
  %48 = and i32 %43, %47
  %49 = sext i16 %40 to i32
  %50 = add nsw i32 %49, -1
  %51 = shl nuw i32 1, %50
  %52 = and i32 %48, %51
  %53 = shl i32 %52, 1
  %54 = or i32 %53, %48
  %55 = xor i32 %51, -1
  %56 = and i32 %54, %55
  %57 = ashr i32 %46, 1
  %58 = or i32 %56, %57
  store i32 %58, ptr %42, align 8, !tbaa !69
  br label %59

59:                                               ; preds = %41, %18
  %60 = add i16 %40, -1
  br label %104

61:                                               ; preds = %8
  %62 = icmp slt i16 %15, 17
  br i1 %62, label %63, label %106

63:                                               ; preds = %61
  %64 = sext i16 %15 to i64
  %65 = load ptr, ptr %4, align 8, !tbaa !37
  %66 = getelementptr inbounds ptr, ptr %65, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !37
  %68 = getelementptr ptr, ptr %66, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !37
  store ptr %69, ptr %66, align 8, !tbaa !37
  %70 = load ptr, ptr %4, align 8, !tbaa !37
  %71 = getelementptr ptr, ptr %70, i64 %64
  %72 = getelementptr ptr, ptr %71, i64 1
  store ptr %67, ptr %72, align 8, !tbaa !37
  %73 = sext i16 %15 to i32
  %74 = add nsw i32 %73, 1
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef %74, i32 noundef -1, i8 noundef zeroext 0) #8
  %75 = load i16, ptr %5, align 2, !tbaa !67
  %76 = sext i16 %75 to i32
  %77 = add nsw i32 %76, 1
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef %76, i32 noundef %77, i8 noundef zeroext 0) #8
  %78 = load i16, ptr %5, align 2, !tbaa !67
  %79 = sext i16 %78 to i32
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %6, ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %79, i8 noundef zeroext 0) #8
  %80 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %81 = load i16, ptr %80, align 8, !tbaa !67
  %82 = icmp eq i16 %81, 16717
  %83 = load i16, ptr %5, align 2, !tbaa !67
  br i1 %82, label %84, label %102

84:                                               ; preds = %63
  %85 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 73
  %86 = load i32, ptr %85, align 8, !tbaa !69
  %87 = zext nneg i16 %83 to i32
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = xor i32 %88, -1
  %91 = and i32 %86, %90
  %92 = sext i16 %83 to i32
  %93 = add nsw i32 %92, 1
  %94 = shl nuw i32 1, %93
  %95 = and i32 %91, %94
  %96 = ashr i32 %95, 1
  %97 = or i32 %96, %91
  %98 = xor i32 %94, -1
  %99 = and i32 %97, %98
  %100 = shl i32 %89, 1
  %101 = or i32 %99, %100
  store i32 %101, ptr %85, align 8, !tbaa !69
  br label %102

102:                                              ; preds = %84, %63
  %103 = add i16 %83, 1
  br label %104

104:                                              ; preds = %59, %102
  %105 = phi i16 [ %103, %102 ], [ %60, %59 ]
  call void @set_active_mtex(ptr noundef nonnull %6, i16 noundef signext %105) #8
  br label %106

106:                                              ; preds = %104, %61, %16
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 0) #8
  %107 = call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440512, ptr noundef %107) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %108

108:                                              ; preds = %106, %2
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXTURE_OT_envmap_save(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @envmap_save_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @envmap_save_invoke, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @envmap_save_poll, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 65, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = tail call ptr @RNA_def_float_array(ptr noundef %9, ptr noundef nonnull @.str.46, i32 noundef 12, ptr noundef nonnull @default_envmap_layout, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #8
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @envmap_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22
  %9 = load i8, ptr %8, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #9
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  call void @RNA_string_get(ptr noundef %11, ptr noundef nonnull @.str.76, ptr noundef nonnull %4) #8
  %12 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 46
  %13 = load i32, ptr %12, align 4, !tbaa !96
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @BKE_add_image_extension(ptr noundef nonnull %4, ptr noundef nonnull %8) #8
  br label %18

18:                                               ; preds = %16, %2
  call void @WM_cursor_wait(i8 noundef zeroext 1) #8
  %19 = getelementptr inbounds %struct.Tex, ptr %6, i64 0, i32 56
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  call fastcc void @save_envmap(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %20, ptr noundef nonnull %4, i8 noundef zeroext %9) #10
  call void @WM_cursor_wait(i8 noundef zeroext 0) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440512, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @envmap_save_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.76) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @envmap_save_exec(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !93
  %12 = load ptr, ptr @G, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 2
  tail call void @RNA_string_set(ptr noundef %11, ptr noundef nonnull @.str.76, ptr noundef nonnull %13) #8
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ 4, %8 ], [ 1, %10 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @envmap_save_poll(ptr noundef %0) #1 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #8
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.EnvMap, ptr %8, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnvMap, ptr %8, i64 0, i32 2, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %6, %10, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 0, %6 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RNA_def_float_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_envmap_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @envmap_clear_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @envmap_clear_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @envmap_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.Tex, ptr %5, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  call void @BKE_free_envmapdata(ptr noundef %7) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440513, ptr noundef %5) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @envmap_clear_poll(ptr noundef %0) #1 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @RNA_Texture) #8
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.EnvMap, ptr %8, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnvMap, ptr %8, i64 0, i32 2, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %6, %10, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 0, %6 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_envmap_clear_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @envmap_clear_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @envmap_clear_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @envmap_clear_all_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @BKE_free_envmapdata(ptr noundef nonnull %10) #8
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !37
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !102

16:                                               ; preds = %13, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440513, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MATERIAL_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_material_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 65, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_material_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Material) #8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @copy_matcopybuf(ptr noundef nonnull %5) #8
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MATERIAL_OT_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_material_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_material_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Material) #8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @paste_matcopybuf(ptr noundef nonnull %5) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef nonnull %5) #8
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ED_render_clear_mtex_copybuf() local_unnamed_addr #4 {
  store i1 false, ptr @mtexcopied, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_slot_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.61, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_mtex_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @copy_mtex_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 65, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_mtex_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull @RNA_TextureSlot) #8
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @ED_render_clear_mtex_copybuf() #10
  br label %8

7:                                                ; preds = %2
  call fastcc void @copy_mtex_copybuf(ptr noundef nonnull %4) #10
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ 2, %6 ], [ 4, %7 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @copy_mtex_poll(ptr noundef %0) #1 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull @RNA_TextureSlot) #8
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXTURE_OT_slot_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_mtex_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_mtex_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull @RNA_TextureSlot) #8
  %9 = load ptr, ptr %3, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Material) #8
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef nonnull @RNA_Lamp) #8
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull @RNA_World) #8
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull @RNA_ParticleSystem) #8
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef nonnull @RNA_FreestyleLineStyle) #8
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = icmp eq ptr %13, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = icmp eq ptr %15, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = icmp eq ptr %17, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = icmp eq ptr %19, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi ptr [ %31, %29 ], [ %21, %27 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %25, %23, %11, %32, %2
  %36 = phi ptr [ %33, %32 ], [ %9, %2 ], [ %17, %25 ], [ %15, %23 ], [ %13, %11 ]
  call fastcc void @paste_mtex_copybuf(ptr noundef nonnull %36) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 119537664, ptr noundef null) #8
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i32 [ 4, %35 ], [ 2, %32 ]
  ret i32 %38
}

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @object_add_material_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @object_remove_material_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #10
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !105
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call ptr %3(ptr noundef %0) #8
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @isNurbsel(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_vfont_select_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 3, ptr %3, align 4, !tbaa !108
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  store ptr %7, ptr %0, align 8, !tbaa !113
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @material_slot_de_select(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !28
  switch i16 %7, label %102 [
    i16 1, label %8
    i16 2, label %16
    i16 3, label %16
  ]

8:                                                ; preds = %5
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %3) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %102, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %13 = load i32, ptr %12, align 4, !tbaa !27
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, -1
  tail call void @EDBM_deselect_by_material(ptr noundef nonnull %9, i16 noundef signext %15, i8 noundef zeroext %1) #8
  br label %102

16:                                               ; preds = %5, %5
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  %19 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %18) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %102, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !37
  %23 = icmp eq ptr %22, null
  br i1 %23, label %102, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %26 = load i32, ptr %25, align 4, !tbaa !27
  %27 = add nsw i32 %26, -1
  %28 = icmp ne i8 %1, 0
  %29 = zext i1 %28 to i16
  br label %30

30:                                               ; preds = %24, %99
  %31 = phi ptr [ %22, %24 ], [ %100, %99 ]
  %32 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !40
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %27, %34
  br i1 %35, label %36, label %99

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  %39 = icmp eq ptr %38, null
  br i1 %39, label %73, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !115
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %99, label %44

44:                                               ; preds = %40, %70
  %45 = phi i32 [ %47, %70 ], [ %42, %40 ]
  %46 = phi ptr [ %71, %70 ], [ %38, %40 ]
  %47 = add nsw i32 %45, -1
  %48 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 10
  %49 = load i8, ptr %48, align 2, !tbaa !116
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 7
  %53 = load i8, ptr %52, align 1, !tbaa !118
  %54 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 8
  %55 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 9
  br i1 %28, label %56, label %62

56:                                               ; preds = %51
  %57 = or i8 %53, 1
  store i8 %57, ptr %52, align 1, !tbaa !118
  %58 = load i8, ptr %54, align 4, !tbaa !119
  %59 = or i8 %58, 1
  store i8 %59, ptr %54, align 4, !tbaa !119
  %60 = load i8, ptr %55, align 1, !tbaa !120
  %61 = or i8 %60, 1
  br label %68

62:                                               ; preds = %51
  %63 = and i8 %53, -2
  store i8 %63, ptr %52, align 1, !tbaa !118
  %64 = load i8, ptr %54, align 4, !tbaa !119
  %65 = and i8 %64, -2
  store i8 %65, ptr %54, align 4, !tbaa !119
  %66 = load i8, ptr %55, align 1, !tbaa !120
  %67 = and i8 %66, -2
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i8 [ %61, %56 ], [ %67, %62 ]
  store i8 %69, ptr %55, align 1, !tbaa !120
  br label %70

70:                                               ; preds = %68, %44
  %71 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 1
  %72 = icmp eq i32 %47, 0
  br i1 %72, label %99, label %44, !llvm.loop !121

73:                                               ; preds = %36
  %74 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !122
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !115
  %80 = getelementptr inbounds %struct.Nurb, ptr %31, i64 0, i32 7
  %81 = load i32, ptr %80, align 4, !tbaa !123
  %82 = mul nsw i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %77, %96
  %85 = phi i32 [ %87, %96 ], [ %82, %77 ]
  %86 = phi ptr [ %97, %96 ], [ %75, %77 ]
  %87 = add nsw i32 %85, -1
  %88 = getelementptr inbounds %struct.BPoint, ptr %86, i64 0, i32 4
  %89 = load i16, ptr %88, align 2, !tbaa !124
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.BPoint, ptr %86, i64 0, i32 3
  %93 = load i16, ptr %92, align 4, !tbaa !126
  %94 = and i16 %93, -2
  %95 = or disjoint i16 %94, %29
  store i16 %95, ptr %92, align 4, !tbaa !126
  br label %96

96:                                               ; preds = %91, %84
  %97 = getelementptr inbounds %struct.BPoint, ptr %86, i64 1
  %98 = icmp eq i32 %87, 0
  br i1 %98, label %99, label %84, !llvm.loop !127

99:                                               ; preds = %70, %96, %40, %77, %30, %73
  %100 = load ptr, ptr %31, align 8, !tbaa !37
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %30, !llvm.loop !128

102:                                              ; preds = %99, %21, %16, %5, %8, %11
  %103 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !36
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %104) #8
  br label %105

105:                                              ; preds = %2, %102
  %106 = phi i32 [ 4, %102 ], [ 2, %2 ]
  ret i32 %106
}

; Function Attrs: optsize
declare void @EDBM_deselect_by_material(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_matarar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assign_matarar(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_material_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_material_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_texture(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_world_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_world(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_scene_add_render_layer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_remove_render_layer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @give_active_mtex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_active_mtex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_add_image_extension(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_envmap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca [12 x float], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.46) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %7, align 8, !tbaa !93
  call void @RNA_float_get_array(ptr noundef %12, ptr noundef nonnull @.str.46, ptr noundef nonnull %6) #8
  br label %14

13:                                               ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(48) @default_envmap_layout, i64 48, i1 false)
  br label %14

14:                                               ; preds = %13, %11
  %15 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = call zeroext i8 @RE_WriteEnvmapResult(ptr noundef %16, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #9
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare zeroext i8 @RE_WriteEnvmapResult(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_free_envmapdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_matcopybuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paste_matcopybuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copy_mtex_copybuf(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !67
  switch i16 %3, label %34 [
    i16 16717, label %4
    i16 16716, label %9
    i16 20311, label %14
    i16 16720, label %19
    i16 21324, label %24
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 75
  %6 = load i8, ptr %5, align 1, !tbaa !68
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %7
  br label %29

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  %11 = load i16, ptr %10, align 8, !tbaa !129
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %12
  br label %29

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  %16 = load i16, ptr %15, align 4, !tbaa !131
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %17
  br label %29

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  %21 = load i16, ptr %20, align 2, !tbaa !132
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %22
  br label %29

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  %26 = load i16, ptr %25, align 4, !tbaa !134
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %27
  br label %29

29:                                               ; preds = %24, %19, %14, %9, %4
  %30 = phi ptr [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ %23, %19 ], [ %28, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !37
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) @mtexcopybuf, ptr noundef nonnull align 8 dereferenceable(312) %31, i64 312, i1 false)
  br label %34

34:                                               ; preds = %1, %29, %33
  %35 = phi i1 [ true, %33 ], [ false, %29 ], [ false, %1 ]
  store i1 %35, ptr @mtexcopied, align 2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paste_mtex_copybuf(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load i1, ptr @mtexcopied, align 2
  %3 = load ptr, ptr getelementptr inbounds (%struct.MTex, ptr @mtexcopybuf, i64 0, i32 5), align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %53

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !67
  switch i16 %8, label %53 [
    i16 16717, label %9
    i16 16716, label %14
    i16 20311, label %19
    i16 16720, label %24
    i16 21324, label %29
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 75
  %11 = load i8, ptr %10, align 1, !tbaa !68
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %12
  br label %34

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  %16 = load i16, ptr %15, align 8, !tbaa !129
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %17
  br label %34

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !131
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %22
  br label %34

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  %26 = load i16, ptr %25, align 2, !tbaa !132
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %27
  br label %34

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  %31 = load i16, ptr %30, align 4, !tbaa !134
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %32
  br label %34

34:                                               ; preds = %9, %14, %19, %24, %29
  %35 = phi ptr [ %33, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %9 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !37
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %40 = tail call ptr %39(i64 noundef 312, ptr noundef nonnull @.str.80) #8
  store ptr %40, ptr %35, align 8, !tbaa !37
  %41 = load ptr, ptr getelementptr inbounds (%struct.MTex, ptr @mtexcopybuf, i64 0, i32 5), align 8, !tbaa !136
  br label %50

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.MTex, ptr %36, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !136
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !63
  %49 = add nsw i32 %48, -1
  store i32 %49, ptr %47, align 4, !tbaa !63
  br label %50

50:                                               ; preds = %42, %46, %38
  %51 = phi ptr [ %3, %42 ], [ %3, %46 ], [ %41, %38 ]
  %52 = phi ptr [ %36, %42 ], [ %36, %46 ], [ %40, %38 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %52, ptr noundef nonnull align 8 dereferenceable(312) @mtexcopybuf, i64 312, i1 false)
  tail call void @id_us_plus(ptr noundef %51) #8
  br label %53

53:                                               ; preds = %6, %1, %50
  ret void
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!19, !21, i64 432}
!19 = !{!"Object", !20, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !21, i64 140, !21, i64 144, !21, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !22, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !21, i64 432, !21, i64 436, !7, i64 440, !7, i64 448, !21, i64 456, !21, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !23, i64 616, !23, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !21, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !21, i64 968, !21, i64 972, !21, i64 976, !21, i64 980, !21, i64 984, !23, i64 988, !23, i64 992, !23, i64 996, !23, i64 1000, !23, i64 1004, !23, i64 1008, !23, i64 1012, !23, i64 1016, !23, i64 1020, !23, i64 1024, !23, i64 1028, !23, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !23, i64 1048, !23, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !23, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !21, i64 1144, !21, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !23, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !24, i64 1304, !24, i64 1312, !21, i64 1320, !21, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!20 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !21, i64 100, !21, i64 104, !21, i64 108, !7, i64 112}
!21 = !{!"int", !8, i64 0}
!22 = !{!"bAnimVizSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44}
!23 = !{!"float", !8, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!26, !7, i64 120}
!26 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!27 = !{!19, !21, i64 460}
!28 = !{!19, !12, i64 136}
!29 = !{!30, !7, i64 0}
!30 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !21, i64 16, !7, i64 24, !21, i64 32, !7, i64 40, !7, i64 48, !24, i64 56, !7, i64 64, !21, i64 72, !7, i64 80, !21, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !21, i64 104}
!31 = !{!32, !12, i64 48}
!32 = !{!"BMFace", !33, i64 0, !7, i64 16, !7, i64 24, !21, i64 32, !8, i64 36, !12, i64 48}
!33 = !{!"BMHeader", !7, i64 0, !21, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!19, !7, i64 296}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !21, i64 84}
!39 = !{!"Nurb", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !21, i64 24, !21, i64 28, !8, i64 32, !12, i64 36, !12, i64 38, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !12, i64 82, !21, i64 84}
!40 = !{!39, !12, i64 18}
!41 = distinct !{!41, !35}
!42 = !{!43, !7, i64 376}
!43 = !{!"Curve", !20, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !8, i64 220, !8, i64 232, !12, i64 244, !12, i64 246, !12, i64 248, !12, i64 250, !23, i64 252, !23, i64 256, !21, i64 260, !12, i64 264, !12, i64 266, !21, i64 268, !23, i64 272, !23, i64 276, !23, i64 280, !12, i64 284, !12, i64 286, !12, i64 288, !12, i64 290, !21, i64 292, !21, i64 296, !8, i64 300, !12, i64 304, !8, i64 306, !8, i64 307, !23, i64 308, !23, i64 312, !23, i64 316, !23, i64 320, !23, i64 324, !23, i64 328, !23, i64 332, !23, i64 336, !23, i64 340, !23, i64 344, !21, i64 348, !21, i64 352, !21, i64 356, !21, i64 360, !21, i64 364, !7, i64 368, !7, i64 376, !8, i64 384, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !21, i64 488, !21, i64 492, !7, i64 496, !44, i64 504, !23, i64 512, !23, i64 516, !23, i64 520, !8, i64 524, !8, i64 525, !8, i64 526}
!44 = !{!"CharInfo", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !12, i64 6}
!45 = !{!21, !21, i64 0}
!46 = !{!47, !7, i64 24}
!47 = !{!"EditFont", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !21, i64 72, !21, i64 76, !21, i64 80, !21, i64 84}
!48 = !{!44, !12, i64 2}
!49 = distinct !{!49, !35}
!50 = !{i32 2, i32 5}
!51 = !{!52, !7, i64 32}
!52 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !53, i64 16}
!53 = !{!"PointerRNA", !54, i64 0, !7, i64 8, !7, i64 16}
!54 = !{!"", !7, i64 0}
!55 = !{!19, !21, i64 456}
!56 = distinct !{!56, !35}
!57 = !{!53, !7, i64 16}
!58 = !{!59, !8, i64 543}
!59 = !{!"Material", !20, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !23, i64 132, !23, i64 136, !23, i64 140, !23, i64 144, !23, i64 148, !23, i64 152, !23, i64 156, !23, i64 160, !23, i64 164, !23, i64 168, !23, i64 172, !23, i64 176, !23, i64 180, !23, i64 184, !23, i64 188, !23, i64 192, !23, i64 196, !23, i64 200, !23, i64 204, !23, i64 208, !23, i64 212, !23, i64 216, !23, i64 220, !60, i64 224, !61, i64 312, !23, i64 328, !23, i64 332, !23, i64 336, !23, i64 340, !23, i64 344, !23, i64 348, !23, i64 352, !12, i64 356, !12, i64 358, !12, i64 360, !8, i64 362, !8, i64 363, !23, i64 364, !23, i64 368, !12, i64 372, !12, i64 374, !23, i64 376, !23, i64 380, !23, i64 384, !23, i64 388, !12, i64 392, !12, i64 394, !21, i64 396, !21, i64 400, !21, i64 404, !21, i64 408, !12, i64 412, !12, i64 414, !12, i64 416, !12, i64 418, !23, i64 420, !23, i64 424, !23, i64 428, !23, i64 432, !23, i64 436, !23, i64 440, !23, i64 444, !23, i64 448, !23, i64 452, !23, i64 456, !8, i64 460, !23, i64 524, !23, i64 528, !23, i64 532, !21, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !12, i64 544, !12, i64 546, !12, i64 548, !8, i64 550, !8, i64 551, !12, i64 552, !12, i64 554, !23, i64 556, !23, i64 560, !8, i64 564, !23, i64 580, !23, i64 584, !12, i64 588, !12, i64 590, !7, i64 592, !7, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !12, i64 612, !12, i64 614, !23, i64 616, !23, i64 620, !8, i64 624, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !23, i64 800, !23, i64 804, !23, i64 808, !23, i64 812, !23, i64 816, !12, i64 820, !12, i64 822, !8, i64 824, !8, i64 836, !23, i64 848, !23, i64 852, !23, i64 856, !23, i64 860, !23, i64 864, !23, i64 868, !23, i64 872, !12, i64 876, !12, i64 878, !21, i64 880, !12, i64 884, !12, i64 886, !8, i64 888, !12, i64 904, !12, i64 906, !12, i64 908, !12, i64 910, !12, i64 912, !8, i64 914, !7, i64 920, !10, i64 928}
!60 = !{!"VolumeSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !23, i64 52, !23, i64 56, !23, i64 60, !12, i64 64, !12, i64 66, !12, i64 68, !12, i64 70, !23, i64 72, !23, i64 76, !23, i64 80, !23, i64 84}
!61 = !{!"GameSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!62 = !{!59, !21, i64 100}
!63 = !{!64, !21, i64 100}
!64 = !{!"Tex", !20, i64 0, !7, i64 120, !23, i64 128, !23, i64 132, !23, i64 136, !23, i64 140, !23, i64 144, !23, i64 148, !23, i64 152, !23, i64 156, !23, i64 160, !23, i64 164, !23, i64 168, !23, i64 172, !23, i64 176, !23, i64 180, !23, i64 184, !23, i64 188, !23, i64 192, !23, i64 196, !23, i64 200, !23, i64 204, !23, i64 208, !23, i64 212, !12, i64 216, !12, i64 218, !12, i64 220, !12, i64 222, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !23, i64 236, !23, i64 240, !23, i64 244, !23, i64 248, !21, i64 252, !21, i64 256, !12, i64 260, !12, i64 262, !12, i64 264, !12, i64 266, !21, i64 268, !21, i64 272, !21, i64 276, !21, i64 280, !23, i64 284, !23, i64 288, !23, i64 292, !65, i64 296, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !8, i64 408, !8, i64 409}
!65 = !{!"ImageUser", !7, i64 0, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !21, i64 36}
!66 = !{!53, !7, i64 0}
!67 = !{!12, !12, i64 0}
!68 = !{!59, !8, i64 541}
!69 = !{!59, !21, i64 536}
!70 = !{!71, !12, i64 506}
!71 = !{!"World", !20, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !12, i64 132, !12, i64 134, !23, i64 136, !23, i64 140, !23, i64 144, !23, i64 148, !23, i64 152, !23, i64 156, !23, i64 160, !23, i64 164, !23, i64 168, !23, i64 172, !23, i64 176, !23, i64 180, !23, i64 184, !23, i64 188, !23, i64 192, !23, i64 196, !12, i64 200, !12, i64 202, !12, i64 204, !12, i64 206, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !23, i64 216, !23, i64 220, !23, i64 224, !23, i64 228, !23, i64 232, !23, i64 236, !23, i64 240, !23, i64 244, !23, i64 248, !23, i64 252, !23, i64 256, !23, i64 260, !12, i64 264, !12, i64 266, !12, i64 268, !12, i64 270, !23, i64 272, !23, i64 276, !23, i64 280, !23, i64 284, !12, i64 288, !12, i64 290, !12, i64 292, !12, i64 294, !23, i64 296, !23, i64 300, !23, i64 304, !23, i64 308, !23, i64 312, !23, i64 316, !23, i64 320, !12, i64 324, !12, i64 326, !12, i64 328, !12, i64 330, !12, i64 332, !12, i64 334, !7, i64 336, !7, i64 344, !7, i64 352, !8, i64 360, !12, i64 504, !12, i64 506, !8, i64 508, !7, i64 512, !7, i64 520}
!72 = !{!71, !21, i64 100}
!73 = !{!74, !12, i64 888}
!74 = !{!"Scene", !20, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !21, i64 232, !21, i64 236, !21, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !75, i64 280, !84, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !21, i64 4380, !10, i64 4384, !85, i64 4400, !86, i64 4416, !89, i64 4600, !7, i64 4608, !90, i64 4616, !7, i64 4640, !24, i64 4648, !24, i64 4656, !77, i64 4664, !78, i64 4824, !91, i64 4888, !7, i64 4952}
!75 = !{!"RenderData", !76, i64 0, !7, i64 248, !7, i64 256, !79, i64 264, !80, i64 328, !21, i64 400, !21, i64 404, !21, i64 408, !23, i64 412, !21, i64 416, !21, i64 420, !21, i64 424, !21, i64 428, !12, i64 432, !12, i64 434, !23, i64 436, !23, i64 440, !23, i64 444, !23, i64 448, !23, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !21, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !21, i64 484, !21, i64 488, !12, i64 492, !12, i64 494, !21, i64 496, !21, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !21, i64 516, !21, i64 520, !21, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !81, i64 544, !81, i64 560, !82, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !23, i64 612, !23, i64 616, !23, i64 620, !23, i64 624, !21, i64 628, !23, i64 632, !23, i64 636, !23, i64 640, !23, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !23, i64 660, !23, i64 664, !12, i64 668, !12, i64 670, !23, i64 672, !23, i64 676, !8, i64 680, !21, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !21, i64 2520, !12, i64 2524, !12, i64 2526, !23, i64 2528, !23, i64 2532, !12, i64 2536, !12, i64 2538, !23, i64 2540, !12, i64 2544, !12, i64 2546, !21, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !23, i64 2560, !23, i64 2564, !7, i64 2568, !21, i64 2576, !23, i64 2580, !8, i64 2584, !83, i64 2616, !21, i64 3976, !21, i64 3980}
!76 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !23, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !77, i64 24, !78, i64 184}
!77 = !{!"ColorManagedViewSettings", !21, i64 0, !21, i64 4, !8, i64 8, !8, i64 72, !23, i64 136, !23, i64 140, !7, i64 144, !7, i64 152}
!78 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!79 = !{!"QuicktimeCodecSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !12, i64 48, !12, i64 50, !21, i64 52, !21, i64 56, !21, i64 60}
!80 = !{!"FFMpegCodecData", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !23, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !7, i64 64}
!81 = !{!"rctf", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!82 = !{!"rcti", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!83 = !{!"BakeData", !76, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !23, i64 1280, !23, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!84 = !{!"AudioData", !21, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !21, i64 16, !12, i64 20, !12, i64 22, !23, i64 24, !23, i64 28}
!85 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!86 = !{!"GameData", !85, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !87, i64 40, !12, i64 64, !12, i64 66, !23, i64 68, !88, i64 72, !23, i64 128, !23, i64 132, !21, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !23, i64 164, !23, i64 168, !23, i64 172, !23, i64 176, !23, i64 180}
!87 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !23, i64 8, !23, i64 12, !7, i64 16}
!88 = !{!"RecastData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !21, i64 40, !23, i64 44, !23, i64 48, !12, i64 52, !12, i64 54}
!89 = !{!"UnitSettings", !23, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!90 = !{!"PhysicsSettings", !8, i64 0, !21, i64 12, !21, i64 16, !21, i64 20}
!91 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!92 = !{!6, !7, i64 88}
!93 = !{!26, !7, i64 112}
!94 = !{!6, !7, i64 48}
!95 = !{!74, !8, i64 280}
!96 = !{!74, !21, i64 796}
!97 = !{!64, !7, i64 368}
!98 = !{!99, !7, i64 0}
!99 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !21, i64 2096, !21, i64 2100, !8, i64 2104, !21, i64 2108, !21, i64 2112, !8, i64 2116}
!100 = !{!101, !21, i64 188}
!101 = !{!"EnvMap", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 64, !8, i64 128, !12, i64 164, !12, i64 166, !23, i64 168, !23, i64 172, !23, i64 176, !21, i64 180, !12, i64 184, !12, i64 186, !21, i64 188, !21, i64 192, !12, i64 196, !12, i64 198}
!102 = distinct !{!102, !35}
!103 = !{!104, !7, i64 16}
!104 = !{!"ParticleSystem", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !10, i64 88, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !8, i64 168, !8, i64 232, !23, i64 296, !23, i64 300, !23, i64 304, !21, i64 308, !21, i64 312, !21, i64 316, !21, i64 320, !21, i64 324, !21, i64 328, !21, i64 332, !21, i64 336, !12, i64 340, !12, i64 342, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 540, !12, i64 564, !12, i64 566, !7, i64 568, !7, i64 576, !10, i64 584, !7, i64 600, !7, i64 608, !21, i64 616, !21, i64 620, !7, i64 624, !7, i64 632, !7, i64 640, !23, i64 648, !23, i64 652}
!105 = !{!33, !8, i64 13}
!106 = !{!107, !7, i64 48}
!107 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !21, i64 56, !8, i64 60}
!108 = !{!107, !8, i64 60}
!109 = !{!107, !7, i64 40}
!110 = !{!111, !7, i64 56}
!111 = !{!"BMesh", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !21, i64 88, !21, i64 92, !21, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !21, i64 128, !7, i64 136, !112, i64 144, !112, i64 344, !112, i64 544, !112, i64 744, !12, i64 944, !21, i64 948, !21, i64 952, !21, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!112 = !{!"CustomData", !7, i64 0, !8, i64 8, !21, i64 172, !21, i64 176, !21, i64 180, !7, i64 184, !7, i64 192}
!113 = !{!8, !8, i64 0}
!114 = !{!39, !7, i64 72}
!115 = !{!39, !21, i64 24}
!116 = !{!117, !8, i64 54}
!117 = !{!"BezTriple", !8, i64 0, !23, i64 36, !23, i64 40, !23, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !23, i64 56, !23, i64 60, !23, i64 64, !8, i64 68}
!118 = !{!117, !8, i64 51}
!119 = !{!117, !8, i64 52}
!120 = !{!117, !8, i64 53}
!121 = distinct !{!121, !35}
!122 = !{!39, !7, i64 64}
!123 = !{!39, !21, i64 28}
!124 = !{!125, !12, i64 26}
!125 = !{!"BPoint", !8, i64 0, !23, i64 16, !23, i64 20, !12, i64 24, !12, i64 26, !23, i64 28, !23, i64 32}
!126 = !{!125, !12, i64 24}
!127 = distinct !{!127, !35}
!128 = distinct !{!128, !35}
!129 = !{!130, !12, i64 280}
!130 = !{!"Lamp", !20, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !21, i64 132, !12, i64 136, !12, i64 138, !23, i64 140, !23, i64 144, !23, i64 148, !23, i64 152, !23, i64 156, !23, i64 160, !23, i64 164, !23, i64 168, !23, i64 172, !23, i64 176, !23, i64 180, !23, i64 184, !23, i64 188, !23, i64 192, !23, i64 196, !7, i64 200, !12, i64 208, !12, i64 210, !23, i64 212, !23, i64 216, !23, i64 220, !23, i64 224, !23, i64 228, !23, i64 232, !23, i64 236, !12, i64 240, !12, i64 242, !12, i64 244, !12, i64 246, !8, i64 248, !8, i64 249, !12, i64 250, !12, i64 252, !12, i64 254, !12, i64 256, !12, i64 258, !23, i64 260, !23, i64 264, !23, i64 268, !23, i64 272, !12, i64 276, !12, i64 278, !12, i64 280, !12, i64 282, !12, i64 284, !12, i64 286, !23, i64 288, !23, i64 292, !23, i64 296, !23, i64 300, !23, i64 304, !23, i64 308, !23, i64 312, !23, i64 316, !23, i64 320, !23, i64 324, !23, i64 328, !23, i64 332, !23, i64 336, !12, i64 340, !8, i64 342, !7, i64 344, !8, i64 352, !12, i64 496, !12, i64 498, !8, i64 500, !7, i64 504, !7, i64 512}
!131 = !{!71, !12, i64 132}
!132 = !{!133, !12, i64 166}
!133 = !{!"ParticleSettings", !20, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !21, i64 152, !21, i64 156, !12, i64 160, !12, i64 162, !12, i64 164, !12, i64 166, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !21, i64 176, !21, i64 180, !12, i64 184, !12, i64 186, !12, i64 188, !12, i64 190, !12, i64 192, !12, i64 194, !12, i64 196, !12, i64 198, !12, i64 200, !12, i64 202, !12, i64 204, !12, i64 206, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !12, i64 220, !12, i64 222, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !23, i64 232, !23, i64 236, !8, i64 240, !8, i64 248, !23, i64 256, !23, i64 260, !23, i64 264, !12, i64 268, !12, i64 270, !23, i64 272, !23, i64 276, !23, i64 280, !23, i64 284, !23, i64 288, !23, i64 292, !23, i64 296, !23, i64 300, !23, i64 304, !23, i64 308, !23, i64 312, !23, i64 316, !8, i64 320, !21, i64 324, !21, i64 328, !21, i64 332, !21, i64 336, !12, i64 340, !8, i64 342, !23, i64 348, !23, i64 352, !23, i64 356, !23, i64 360, !23, i64 364, !23, i64 368, !23, i64 372, !8, i64 376, !23, i64 388, !23, i64 392, !23, i64 396, !23, i64 400, !23, i64 404, !23, i64 408, !23, i64 412, !8, i64 416, !23, i64 428, !23, i64 432, !23, i64 436, !23, i64 440, !21, i64 444, !21, i64 448, !23, i64 452, !23, i64 456, !23, i64 460, !23, i64 464, !23, i64 468, !23, i64 472, !23, i64 476, !23, i64 480, !23, i64 484, !23, i64 488, !23, i64 492, !23, i64 496, !23, i64 500, !23, i64 504, !23, i64 508, !23, i64 512, !23, i64 516, !23, i64 520, !23, i64 524, !23, i64 528, !23, i64 532, !23, i64 536, !23, i64 540, !23, i64 544, !23, i64 548, !8, i64 552, !23, i64 560, !23, i64 564, !21, i64 568, !21, i64 572, !8, i64 576, !7, i64 720, !10, i64 728, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !12, i64 792, !8, i64 794}
!134 = !{!135, !12, i64 220}
!135 = !{!"FreestyleLineStyle", !20, i64 0, !7, i64 120, !23, i64 128, !23, i64 132, !23, i64 136, !23, i64 140, !23, i64 144, !21, i64 148, !23, i64 152, !21, i64 156, !21, i64 160, !21, i64 164, !21, i64 168, !23, i64 172, !23, i64 176, !23, i64 180, !23, i64 184, !23, i64 188, !21, i64 192, !12, i64 196, !12, i64 198, !12, i64 200, !12, i64 202, !12, i64 204, !12, i64 206, !21, i64 208, !21, i64 212, !23, i64 216, !12, i64 220, !12, i64 222, !12, i64 224, !8, i64 226, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !21, i64 244, !8, i64 248, !7, i64 392, !10, i64 400, !10, i64 416, !10, i64 432, !10, i64 448}
!136 = !{!137, !7, i64 16}
!137 = !{!"MTex", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !23, i64 116, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !12, i64 128, !12, i64 130, !8, i64 132, !8, i64 133, !23, i64 140, !23, i64 144, !23, i64 148, !23, i64 152, !23, i64 156, !23, i64 160, !23, i64 164, !23, i64 168, !23, i64 172, !23, i64 176, !23, i64 180, !23, i64 184, !23, i64 188, !23, i64 192, !23, i64 196, !23, i64 200, !23, i64 204, !23, i64 208, !23, i64 212, !23, i64 216, !23, i64 220, !23, i64 224, !23, i64 228, !23, i64 232, !23, i64 236, !23, i64 240, !23, i64 244, !23, i64 248, !23, i64 252, !23, i64 256, !23, i64 260, !23, i64 264, !23, i64 268, !23, i64 272, !23, i64 276, !23, i64 280, !23, i64 284, !23, i64 288, !23, i64 292, !23, i64 296, !23, i64 300, !23, i64 304, !23, i64 308}
