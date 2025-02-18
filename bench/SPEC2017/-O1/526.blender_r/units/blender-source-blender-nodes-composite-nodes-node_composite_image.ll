; ModuleID = 'blender/source/blender/nodes/composite/nodes/node_composite_image.c'
source_filename = "blender/source/blender/nodes/composite/nodes/node_composite_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.NodeImageLayer = type { i32, i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@register_node_type_cmp_image.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ImageUser\00", align 1
@register_node_type_cmp_rlayers.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Render Layers\00", align 1
@cmp_node_rlayers_out = internal global [32 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Alpha\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Z\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"UV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Speed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Diffuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Specular\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Shadow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"AO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Reflect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Refract\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Indirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"IndexOB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"IndexMA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Mist\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Emit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Environment\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Diffuse Direct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Diffuse Indirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Diffuse Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Glossy Direct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Glossy Indirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Glossy Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Transmission Direct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Transmission Indirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Transmission Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Subsurface Direct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Subsurface Indirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Subsurface Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"node image user\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"node image layer\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"CompositorNodeTree\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_cmp_image() local_unnamed_addr #0 {
  tail call void @cmp_node_type_base(ptr noundef nonnull @register_node_type_cmp_image.ntype, i32 noundef 220, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #6
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_cmp_image.ntype, ptr noundef nonnull @node_composit_init_image) #6
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_cmp_image.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_composit_free_image, ptr noundef nonnull @node_composit_copy_image) #6
  tail call void @node_type_update(ptr noundef nonnull @register_node_type_cmp_image.ntype, ptr noundef nonnull @cmp_node_image_update, ptr noundef null) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_cmp_image.ntype) #6
  ret void
}

declare void @cmp_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_composit_init_image(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.3) #6
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 2
  store i32 1, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 4
  store i32 1, ptr %7, align 4, !tbaa !47
  %8 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 5
  store i8 2, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 7
  store i8 1, ptr %9, align 2, !tbaa !49
  tail call fastcc void @cmp_node_image_verify_outputs(ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_composit_free_image(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  tail call void %7(ptr noundef %9) #6
  %10 = load ptr, ptr %6, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !53

12:                                               ; preds = %5, %1
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  tail call void %13(ptr noundef %15) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_composit_copy_image(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call ptr %4(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %7, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %21, %12 ], [ %10, %3 ]
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = tail call ptr %14(ptr noundef %16) #6
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 6
  store ptr %17, ptr %20, align 8, !tbaa !50
  %21 = load ptr, ptr %13, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !57

23:                                               ; preds = %12, %3
  ret void
}

declare void @node_type_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @cmp_node_image_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !58
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @cmp_node_image_verify_outputs(ptr noundef %0, ptr noundef %1)
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_cmp_rlayers_force_hidden_passes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %272, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 33
  %8 = load i16, ptr %7, align 8, !tbaa !60
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %9) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %272, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.SceneRenderLayer, ptr %10, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !64
  %22 = and i16 %21, -9
  store i16 %22, ptr %20, align 2, !tbaa !64
  %23 = load ptr, ptr %19, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !65

25:                                               ; preds = %18, %12
  %26 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 0) #6
  %27 = and i32 %14, 1
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !64
  %31 = and i16 %30, -11
  %32 = or i16 %30, 8
  %33 = select i1 %28, i16 %32, i16 %31
  store i16 %33, ptr %29, align 2, !tbaa !64
  %34 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 1) #6
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %34, i64 0, i32 8
  %36 = load i16, ptr %35, align 2, !tbaa !64
  %37 = and i16 %36, -11
  %38 = or i16 %36, 8
  %39 = select i1 %28, i16 %38, i16 %37
  store i16 %39, ptr %35, align 2, !tbaa !64
  %40 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 2) #6
  %41 = and i32 %14, 2
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %40, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !64
  %45 = and i16 %44, -11
  %46 = or i16 %44, 8
  %47 = select i1 %42, i16 %46, i16 %45
  store i16 %47, ptr %43, align 2, !tbaa !64
  %48 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 3) #6
  %49 = and i32 %14, 256
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !64
  %53 = and i16 %52, -11
  %54 = or i16 %52, 8
  %55 = select i1 %50, i16 %54, i16 %53
  store i16 %55, ptr %51, align 2, !tbaa !64
  %56 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 5) #6
  %57 = and i32 %14, 512
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct.bNodeSocket, ptr %56, i64 0, i32 8
  %60 = load i16, ptr %59, align 2, !tbaa !64
  %61 = and i16 %60, -11
  %62 = or i16 %60, 8
  %63 = select i1 %58, i16 %62, i16 %61
  store i16 %63, ptr %59, align 2, !tbaa !64
  %64 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 4) #6
  %65 = and i32 %14, 4096
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds %struct.bNodeSocket, ptr %64, i64 0, i32 8
  %68 = load i16, ptr %67, align 2, !tbaa !64
  %69 = and i16 %68, -11
  %70 = or i16 %68, 8
  %71 = select i1 %66, i16 %70, i16 %69
  store i16 %71, ptr %67, align 2, !tbaa !64
  %72 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 6) #6
  %73 = and i32 %14, 4
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct.bNodeSocket, ptr %72, i64 0, i32 8
  %76 = load i16, ptr %75, align 2, !tbaa !64
  %77 = and i16 %76, -11
  %78 = or i16 %76, 8
  %79 = select i1 %74, i16 %78, i16 %77
  store i16 %79, ptr %75, align 2, !tbaa !64
  %80 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 7) #6
  %81 = and i32 %14, 8
  %82 = icmp eq i32 %81, 0
  %83 = getelementptr inbounds %struct.bNodeSocket, ptr %80, i64 0, i32 8
  %84 = load i16, ptr %83, align 2, !tbaa !64
  %85 = and i16 %84, -11
  %86 = or i16 %84, 8
  %87 = select i1 %82, i16 %86, i16 %85
  store i16 %87, ptr %83, align 2, !tbaa !64
  %88 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 8) #6
  %89 = and i32 %14, 16
  %90 = icmp eq i32 %89, 0
  %91 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 8
  %92 = load i16, ptr %91, align 2, !tbaa !64
  %93 = and i16 %92, -11
  %94 = or i16 %92, 8
  %95 = select i1 %90, i16 %94, i16 %93
  store i16 %95, ptr %91, align 2, !tbaa !64
  %96 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 9) #6
  %97 = and i32 %14, 32
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds %struct.bNodeSocket, ptr %96, i64 0, i32 8
  %100 = load i16, ptr %99, align 2, !tbaa !64
  %101 = and i16 %100, -11
  %102 = or i16 %100, 8
  %103 = select i1 %98, i16 %102, i16 %101
  store i16 %103, ptr %99, align 2, !tbaa !64
  %104 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 10) #6
  %105 = and i32 %14, 64
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds %struct.bNodeSocket, ptr %104, i64 0, i32 8
  %108 = load i16, ptr %107, align 2, !tbaa !64
  %109 = and i16 %108, -11
  %110 = or i16 %108, 8
  %111 = select i1 %106, i16 %110, i16 %109
  store i16 %111, ptr %107, align 2, !tbaa !64
  %112 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 11) #6
  %113 = and i32 %14, 128
  %114 = icmp eq i32 %113, 0
  %115 = getelementptr inbounds %struct.bNodeSocket, ptr %112, i64 0, i32 8
  %116 = load i16, ptr %115, align 2, !tbaa !64
  %117 = and i16 %116, -11
  %118 = or i16 %116, 8
  %119 = select i1 %114, i16 %118, i16 %117
  store i16 %119, ptr %115, align 2, !tbaa !64
  %120 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 12) #6
  %121 = and i32 %14, 1024
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.bNodeSocket, ptr %120, i64 0, i32 8
  %124 = load i16, ptr %123, align 2, !tbaa !64
  %125 = and i16 %124, -11
  %126 = or i16 %124, 8
  %127 = select i1 %122, i16 %126, i16 %125
  store i16 %127, ptr %123, align 2, !tbaa !64
  %128 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 13) #6
  %129 = and i32 %14, 8192
  %130 = icmp eq i32 %129, 0
  %131 = getelementptr inbounds %struct.bNodeSocket, ptr %128, i64 0, i32 8
  %132 = load i16, ptr %131, align 2, !tbaa !64
  %133 = and i16 %132, -11
  %134 = or i16 %132, 8
  %135 = select i1 %130, i16 %134, i16 %133
  store i16 %135, ptr %131, align 2, !tbaa !64
  %136 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 14) #6
  %137 = and i32 %14, 2048
  %138 = icmp eq i32 %137, 0
  %139 = getelementptr inbounds %struct.bNodeSocket, ptr %136, i64 0, i32 8
  %140 = load i16, ptr %139, align 2, !tbaa !64
  %141 = and i16 %140, -11
  %142 = or i16 %140, 8
  %143 = select i1 %138, i16 %142, i16 %141
  store i16 %143, ptr %139, align 2, !tbaa !64
  %144 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 15) #6
  %145 = and i32 %14, 262144
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %struct.bNodeSocket, ptr %144, i64 0, i32 8
  %148 = load i16, ptr %147, align 2, !tbaa !64
  %149 = and i16 %148, -11
  %150 = or i16 %148, 8
  %151 = select i1 %146, i16 %150, i16 %149
  store i16 %151, ptr %147, align 2, !tbaa !64
  %152 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 16) #6
  %153 = and i32 %14, 16384
  %154 = icmp eq i32 %153, 0
  %155 = getelementptr inbounds %struct.bNodeSocket, ptr %152, i64 0, i32 8
  %156 = load i16, ptr %155, align 2, !tbaa !64
  %157 = and i16 %156, -11
  %158 = or i16 %156, 8
  %159 = select i1 %154, i16 %158, i16 %157
  store i16 %159, ptr %155, align 2, !tbaa !64
  %160 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 17) #6
  %161 = and i32 %14, 65536
  %162 = icmp eq i32 %161, 0
  %163 = getelementptr inbounds %struct.bNodeSocket, ptr %160, i64 0, i32 8
  %164 = load i16, ptr %163, align 2, !tbaa !64
  %165 = and i16 %164, -11
  %166 = or i16 %164, 8
  %167 = select i1 %162, i16 %166, i16 %165
  store i16 %167, ptr %163, align 2, !tbaa !64
  %168 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 18) #6
  %169 = and i32 %14, 131072
  %170 = icmp eq i32 %169, 0
  %171 = getelementptr inbounds %struct.bNodeSocket, ptr %168, i64 0, i32 8
  %172 = load i16, ptr %171, align 2, !tbaa !64
  %173 = and i16 %172, -11
  %174 = or i16 %172, 8
  %175 = select i1 %170, i16 %174, i16 %173
  store i16 %175, ptr %171, align 2, !tbaa !64
  %176 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 19) #6
  %177 = and i32 %14, 524288
  %178 = icmp eq i32 %177, 0
  %179 = getelementptr inbounds %struct.bNodeSocket, ptr %176, i64 0, i32 8
  %180 = load i16, ptr %179, align 2, !tbaa !64
  %181 = and i16 %180, -11
  %182 = or i16 %180, 8
  %183 = select i1 %178, i16 %182, i16 %181
  store i16 %183, ptr %179, align 2, !tbaa !64
  %184 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 20) #6
  %185 = and i32 %14, 1048576
  %186 = icmp eq i32 %185, 0
  %187 = getelementptr inbounds %struct.bNodeSocket, ptr %184, i64 0, i32 8
  %188 = load i16, ptr %187, align 2, !tbaa !64
  %189 = and i16 %188, -11
  %190 = or i16 %188, 8
  %191 = select i1 %186, i16 %190, i16 %189
  store i16 %191, ptr %187, align 2, !tbaa !64
  %192 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 21) #6
  %193 = and i32 %14, 2097152
  %194 = icmp eq i32 %193, 0
  %195 = getelementptr inbounds %struct.bNodeSocket, ptr %192, i64 0, i32 8
  %196 = load i16, ptr %195, align 2, !tbaa !64
  %197 = and i16 %196, -11
  %198 = or i16 %196, 8
  %199 = select i1 %194, i16 %198, i16 %197
  store i16 %199, ptr %195, align 2, !tbaa !64
  %200 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 22) #6
  %201 = and i32 %14, 4194304
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.bNodeSocket, ptr %200, i64 0, i32 8
  %204 = load i16, ptr %203, align 2, !tbaa !64
  %205 = and i16 %204, -11
  %206 = or i16 %204, 8
  %207 = select i1 %202, i16 %206, i16 %205
  store i16 %207, ptr %203, align 2, !tbaa !64
  %208 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 23) #6
  %209 = and i32 %14, 8388608
  %210 = icmp eq i32 %209, 0
  %211 = getelementptr inbounds %struct.bNodeSocket, ptr %208, i64 0, i32 8
  %212 = load i16, ptr %211, align 2, !tbaa !64
  %213 = and i16 %212, -11
  %214 = or i16 %212, 8
  %215 = select i1 %210, i16 %214, i16 %213
  store i16 %215, ptr %211, align 2, !tbaa !64
  %216 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 24) #6
  %217 = and i32 %14, 16777216
  %218 = icmp eq i32 %217, 0
  %219 = getelementptr inbounds %struct.bNodeSocket, ptr %216, i64 0, i32 8
  %220 = load i16, ptr %219, align 2, !tbaa !64
  %221 = and i16 %220, -11
  %222 = or i16 %220, 8
  %223 = select i1 %218, i16 %222, i16 %221
  store i16 %223, ptr %219, align 2, !tbaa !64
  %224 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 25) #6
  %225 = and i32 %14, 33554432
  %226 = icmp eq i32 %225, 0
  %227 = getelementptr inbounds %struct.bNodeSocket, ptr %224, i64 0, i32 8
  %228 = load i16, ptr %227, align 2, !tbaa !64
  %229 = and i16 %228, -11
  %230 = or i16 %228, 8
  %231 = select i1 %226, i16 %230, i16 %229
  store i16 %231, ptr %227, align 2, !tbaa !64
  %232 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 26) #6
  %233 = and i32 %14, 67108864
  %234 = icmp eq i32 %233, 0
  %235 = getelementptr inbounds %struct.bNodeSocket, ptr %232, i64 0, i32 8
  %236 = load i16, ptr %235, align 2, !tbaa !64
  %237 = and i16 %236, -11
  %238 = or i16 %236, 8
  %239 = select i1 %234, i16 %238, i16 %237
  store i16 %239, ptr %235, align 2, !tbaa !64
  %240 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 27) #6
  %241 = and i32 %14, 134217728
  %242 = icmp eq i32 %241, 0
  %243 = getelementptr inbounds %struct.bNodeSocket, ptr %240, i64 0, i32 8
  %244 = load i16, ptr %243, align 2, !tbaa !64
  %245 = and i16 %244, -11
  %246 = or i16 %244, 8
  %247 = select i1 %242, i16 %246, i16 %245
  store i16 %247, ptr %243, align 2, !tbaa !64
  %248 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 28) #6
  %249 = and i32 %14, 268435456
  %250 = icmp eq i32 %249, 0
  %251 = getelementptr inbounds %struct.bNodeSocket, ptr %248, i64 0, i32 8
  %252 = load i16, ptr %251, align 2, !tbaa !64
  %253 = and i16 %252, -11
  %254 = or i16 %252, 8
  %255 = select i1 %250, i16 %254, i16 %253
  store i16 %255, ptr %251, align 2, !tbaa !64
  %256 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 29) #6
  %257 = and i32 %14, 536870912
  %258 = icmp eq i32 %257, 0
  %259 = getelementptr inbounds %struct.bNodeSocket, ptr %256, i64 0, i32 8
  %260 = load i16, ptr %259, align 2, !tbaa !64
  %261 = and i16 %260, -11
  %262 = or i16 %260, 8
  %263 = select i1 %258, i16 %262, i16 %261
  store i16 %263, ptr %259, align 2, !tbaa !64
  %264 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef 30) #6
  %265 = and i32 %14, 1073741824
  %266 = icmp eq i32 %265, 0
  %267 = getelementptr inbounds %struct.bNodeSocket, ptr %264, i64 0, i32 8
  %268 = load i16, ptr %267, align 2, !tbaa !64
  %269 = or i16 %268, 8
  %270 = and i16 %268, -11
  %271 = select i1 %266, i16 %269, i16 %270
  store i16 %271, ptr %267, align 2, !tbaa !64
  br label %272

272:                                              ; preds = %25, %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_cmp_rlayers() local_unnamed_addr #0 {
  tail call void @cmp_node_type_base(ptr noundef nonnull @register_node_type_cmp_rlayers.ntype, i32 noundef 221, ptr noundef nonnull @.str.2, i16 noundef signext 0, i16 noundef signext 4) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_cmp_rlayers.ntype, ptr noundef null, ptr noundef nonnull @cmp_node_rlayers_out) #6
  store ptr @node_composit_init_rlayers, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_rlayers.ntype, i64 0, i32 34), align 8, !tbaa !66
  store ptr @node_composit_poll_rlayers, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_rlayers.ntype, i64 0, i32 37), align 8, !tbaa !69
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_cmp_rlayers.ntype) #6
  ret void
}

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_composit_init_rlayers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  store ptr %3, ptr %6, align 8, !tbaa !59
  tail call void @node_cmp_rlayers_force_hidden_passes(ptr noundef %5)
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @node_composit_poll_rlayers(ptr nocapture readnone %0, ptr noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 3
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(19) @.str.5) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load ptr, ptr @G, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 11
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %8, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %9, !llvm.loop !95

17:                                               ; preds = %13, %9
  %18 = zext i1 %12 to i32
  br label %19

19:                                               ; preds = %2, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cmp_node_image_verify_outputs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ImageUser, align 8
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa.struct !96
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %12 = tail call i32 @BKE_image_sequence_guess_offset(ptr noundef nonnull %7) #6
  %13 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 7
  store i8 1, ptr %13, align 2, !tbaa !49
  %14 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 1
  store i32 %12, ptr %14, align 8, !tbaa !97
  %15 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef null) #6
  %16 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %66, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.RenderResult, ptr %17, i64 0, i32 12
  %21 = getelementptr inbounds %struct.ImageUser, ptr %11, i64 0, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !100
  %23 = sext i16 %22 to i32
  %24 = call ptr @BLI_findlink(ptr noundef nonnull %20, i32 noundef %23) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 12
  %28 = load i16, ptr %27, align 2, !tbaa !101
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.RenderLayer, ptr %24, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !102
  call fastcc void @cmp_node_image_add_render_pass_outputs(ptr noundef %0, ptr noundef %1, i32 noundef %32)
  br label %82

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.RenderLayer, ptr %24, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %82, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %53, %37 ], [ %35, %33 ]
  %39 = phi i32 [ %52, %37 ], [ 0, %33 ]
  %40 = getelementptr inbounds %struct.RenderPass, ptr %38, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !104
  %42 = icmp eq i32 %41, 1
  %43 = select i1 %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.RenderPass, ptr %38, i64 0, i32 4
  %45 = call ptr @nodeAddStaticSocket(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef %43, i32 noundef 0, ptr noundef nonnull %44, ptr noundef nonnull %44) #6
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %47 = call ptr %46(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %45, i64 0, i32 6
  store ptr %47, ptr %48, align 8, !tbaa !50
  store i32 %39, ptr %47, align 4, !tbaa !106
  %49 = getelementptr inbounds %struct.RenderPass, ptr %38, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !108
  %51 = getelementptr inbounds %struct.NodeImageLayer, ptr %47, i64 0, i32 1
  store i32 %50, ptr %51, align 4, !tbaa !109
  %52 = add nuw nsw i32 %39, 1
  %53 = load ptr, ptr %38, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %37, !llvm.loop !110

55:                                               ; preds = %19
  %56 = call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @cmp_node_rlayers_out, i32 noundef 2) #6
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %58 = call ptr %57(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %59 = getelementptr inbounds %struct.bNodeSocket, ptr %56, i64 0, i32 6
  store ptr %58, ptr %59, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.NodeImageLayer, ptr %58, i64 0, i32 1
  store i32 1, ptr %60, align 4, !tbaa !109
  %61 = call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 1), i32 noundef 2) #6
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %63 = call ptr %62(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %64 = getelementptr inbounds %struct.bNodeSocket, ptr %61, i64 0, i32 6
  store ptr %63, ptr %64, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.NodeImageLayer, ptr %63, i64 0, i32 1
  store i32 1, ptr %65, align 4, !tbaa !109
  br label %82

66:                                               ; preds = %9
  %67 = call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @cmp_node_rlayers_out, i32 noundef 2) #6
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %69 = call ptr %68(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %70 = getelementptr inbounds %struct.bNodeSocket, ptr %67, i64 0, i32 6
  store ptr %69, ptr %70, align 8, !tbaa !50
  %71 = getelementptr inbounds %struct.NodeImageLayer, ptr %69, i64 0, i32 1
  store i32 1, ptr %71, align 4, !tbaa !109
  %72 = call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 1), i32 noundef 2) #6
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %74 = call ptr %73(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %75 = getelementptr inbounds %struct.bNodeSocket, ptr %72, i64 0, i32 6
  store ptr %74, ptr %75, align 8, !tbaa !50
  %76 = getelementptr inbounds %struct.NodeImageLayer, ptr %74, i64 0, i32 1
  store i32 1, ptr %76, align 4, !tbaa !109
  %77 = call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 2), i32 noundef 2) #6
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %79 = call ptr %78(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %80 = getelementptr inbounds %struct.bNodeSocket, ptr %77, i64 0, i32 6
  store ptr %79, ptr %80, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.NodeImageLayer, ptr %79, i64 0, i32 1
  store i32 2, ptr %81, align 4, !tbaa !109
  br label %82

82:                                               ; preds = %37, %33, %66, %55, %30
  call void @BKE_image_release_ibuf(ptr noundef nonnull %7, ptr noundef %15, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  br label %94

83:                                               ; preds = %2
  %84 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @cmp_node_rlayers_out, i32 noundef 2) #6
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %86 = tail call ptr %85(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %87 = getelementptr inbounds %struct.bNodeSocket, ptr %84, i64 0, i32 6
  store ptr %86, ptr %87, align 8, !tbaa !50
  %88 = getelementptr inbounds %struct.NodeImageLayer, ptr %86, i64 0, i32 1
  store i32 1, ptr %88, align 4, !tbaa !109
  %89 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 1), i32 noundef 2) #6
  %90 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %91 = tail call ptr %90(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %92 = getelementptr inbounds %struct.bNodeSocket, ptr %89, i64 0, i32 6
  store ptr %91, ptr %92, align 8, !tbaa !50
  %93 = getelementptr inbounds %struct.NodeImageLayer, ptr %91, i64 0, i32 1
  store i32 1, ptr %93, align 4, !tbaa !109
  br label %94

94:                                               ; preds = %83, %82
  %95 = icmp eq ptr %5, null
  br i1 %95, label %138, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  br label %98

98:                                               ; preds = %96, %127
  %99 = phi ptr [ %5, %96 ], [ %129, %127 ]
  %100 = phi i32 [ 0, %96 ], [ %128, %127 ]
  %101 = getelementptr inbounds %struct.bNodeSocket, ptr %99, i64 0, i32 5
  br label %102

102:                                              ; preds = %98, %106
  %103 = phi ptr [ %104, %106 ], [ %4, %98 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !34
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.bNodeSocket, ptr %104, i64 0, i32 5
  %108 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(1) %101) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %102, !llvm.loop !111

110:                                              ; preds = %102
  %111 = call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %100) #6
  br label %112

112:                                              ; preds = %106, %110
  %113 = phi ptr [ %111, %110 ], [ %104, %106 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %127, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %97, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %115, %124
  %119 = phi ptr [ %125, %124 ], [ %116, %115 ]
  %120 = getelementptr inbounds %struct.bNodeLink, ptr %119, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !112
  %122 = icmp eq ptr %121, %99
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store ptr %113, ptr %120, align 8, !tbaa !112
  br label %124

124:                                              ; preds = %118, %123
  %125 = load ptr, ptr %119, align 8, !tbaa !34
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %118, !llvm.loop !114

127:                                              ; preds = %124, %115, %112
  %128 = add nuw nsw i32 %100, 1
  %129 = load ptr, ptr %99, align 8, !tbaa !34
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %98, !llvm.loop !115

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %5, %127 ]
  %133 = load ptr, ptr %132, align 8, !tbaa !116
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %135 = getelementptr inbounds %struct.bNodeSocket, ptr %132, i64 0, i32 6
  %136 = load ptr, ptr %135, align 8, !tbaa !50
  call void %134(ptr noundef %136) #6
  call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %132) #6
  %137 = icmp eq ptr %133, null
  br i1 %137, label %138, label %131, !llvm.loop !117

138:                                              ; preds = %131, %94
  ret void
}

declare void @nodeRemoveSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @BKE_image_sequence_guess_offset(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cmp_node_image_add_render_pass_outputs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @cmp_node_rlayers_out, i32 noundef 2) #6
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.NodeImageLayer, ptr %9, i64 0, i32 1
  store i32 1, ptr %11, align 4, !tbaa !109
  %12 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 1), i32 noundef 2) #6
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 6
  store ptr %14, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.NodeImageLayer, ptr %14, i64 0, i32 1
  store i32 1, ptr %16, align 4, !tbaa !109
  br label %17

17:                                               ; preds = %6, %3
  %18 = and i32 %2, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 2), i32 noundef 2) #6
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %24 = getelementptr inbounds %struct.bNodeSocket, ptr %21, i64 0, i32 6
  store ptr %23, ptr %24, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.NodeImageLayer, ptr %23, i64 0, i32 1
  store i32 2, ptr %25, align 4, !tbaa !109
  br label %26

26:                                               ; preds = %20, %17
  %27 = and i32 %2, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 3), i32 noundef 2) #6
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %30, i64 0, i32 6
  store ptr %32, ptr %33, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.NodeImageLayer, ptr %32, i64 0, i32 1
  store i32 256, ptr %34, align 4, !tbaa !109
  br label %35

35:                                               ; preds = %29, %26
  %36 = and i32 %2, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 5), i32 noundef 2) #6
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = tail call ptr %40(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %42 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 6
  store ptr %41, ptr %42, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.NodeImageLayer, ptr %41, i64 0, i32 1
  store i32 512, ptr %43, align 4, !tbaa !109
  br label %44

44:                                               ; preds = %38, %35
  %45 = and i32 %2, 4096
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 4), i32 noundef 2) #6
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %50 = tail call ptr %49(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 6
  store ptr %50, ptr %51, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct.NodeImageLayer, ptr %50, i64 0, i32 1
  store i32 4096, ptr %52, align 4, !tbaa !109
  br label %53

53:                                               ; preds = %47, %44
  %54 = and i32 %2, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 6), i32 noundef 2) #6
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %59 = tail call ptr %58(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %60 = getelementptr inbounds %struct.bNodeSocket, ptr %57, i64 0, i32 6
  store ptr %59, ptr %60, align 8, !tbaa !50
  %61 = getelementptr inbounds %struct.NodeImageLayer, ptr %59, i64 0, i32 1
  store i32 4, ptr %61, align 4, !tbaa !109
  br label %62

62:                                               ; preds = %56, %53
  %63 = and i32 %2, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 7), i32 noundef 2) #6
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %68 = tail call ptr %67(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %69 = getelementptr inbounds %struct.bNodeSocket, ptr %66, i64 0, i32 6
  store ptr %68, ptr %69, align 8, !tbaa !50
  %70 = getelementptr inbounds %struct.NodeImageLayer, ptr %68, i64 0, i32 1
  store i32 8, ptr %70, align 4, !tbaa !109
  br label %71

71:                                               ; preds = %65, %62
  %72 = and i32 %2, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 8), i32 noundef 2) #6
  %76 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %77 = tail call ptr %76(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %78 = getelementptr inbounds %struct.bNodeSocket, ptr %75, i64 0, i32 6
  store ptr %77, ptr %78, align 8, !tbaa !50
  %79 = getelementptr inbounds %struct.NodeImageLayer, ptr %77, i64 0, i32 1
  store i32 16, ptr %79, align 4, !tbaa !109
  br label %80

80:                                               ; preds = %74, %71
  %81 = and i32 %2, 32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 9), i32 noundef 2) #6
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %86 = tail call ptr %85(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %87 = getelementptr inbounds %struct.bNodeSocket, ptr %84, i64 0, i32 6
  store ptr %86, ptr %87, align 8, !tbaa !50
  %88 = getelementptr inbounds %struct.NodeImageLayer, ptr %86, i64 0, i32 1
  store i32 32, ptr %88, align 4, !tbaa !109
  br label %89

89:                                               ; preds = %83, %80
  %90 = and i32 %2, 64
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 10), i32 noundef 2) #6
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %95 = tail call ptr %94(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %96 = getelementptr inbounds %struct.bNodeSocket, ptr %93, i64 0, i32 6
  store ptr %95, ptr %96, align 8, !tbaa !50
  %97 = getelementptr inbounds %struct.NodeImageLayer, ptr %95, i64 0, i32 1
  store i32 64, ptr %97, align 4, !tbaa !109
  br label %98

98:                                               ; preds = %92, %89
  %99 = and i32 %2, 128
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 11), i32 noundef 2) #6
  %103 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %104 = tail call ptr %103(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %105 = getelementptr inbounds %struct.bNodeSocket, ptr %102, i64 0, i32 6
  store ptr %104, ptr %105, align 8, !tbaa !50
  %106 = getelementptr inbounds %struct.NodeImageLayer, ptr %104, i64 0, i32 1
  store i32 128, ptr %106, align 4, !tbaa !109
  br label %107

107:                                              ; preds = %101, %98
  %108 = and i32 %2, 1024
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 12), i32 noundef 2) #6
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %113 = tail call ptr %112(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %114 = getelementptr inbounds %struct.bNodeSocket, ptr %111, i64 0, i32 6
  store ptr %113, ptr %114, align 8, !tbaa !50
  %115 = getelementptr inbounds %struct.NodeImageLayer, ptr %113, i64 0, i32 1
  store i32 1024, ptr %115, align 4, !tbaa !109
  br label %116

116:                                              ; preds = %110, %107
  %117 = and i32 %2, 8192
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  %120 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 13), i32 noundef 2) #6
  %121 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %122 = tail call ptr %121(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %123 = getelementptr inbounds %struct.bNodeSocket, ptr %120, i64 0, i32 6
  store ptr %122, ptr %123, align 8, !tbaa !50
  %124 = getelementptr inbounds %struct.NodeImageLayer, ptr %122, i64 0, i32 1
  store i32 8192, ptr %124, align 4, !tbaa !109
  br label %125

125:                                              ; preds = %119, %116
  %126 = and i32 %2, 2048
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 14), i32 noundef 2) #6
  %130 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %131 = tail call ptr %130(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %132 = getelementptr inbounds %struct.bNodeSocket, ptr %129, i64 0, i32 6
  store ptr %131, ptr %132, align 8, !tbaa !50
  %133 = getelementptr inbounds %struct.NodeImageLayer, ptr %131, i64 0, i32 1
  store i32 2048, ptr %133, align 4, !tbaa !109
  br label %134

134:                                              ; preds = %128, %125
  %135 = and i32 %2, 262144
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 15), i32 noundef 2) #6
  %139 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %140 = tail call ptr %139(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %141 = getelementptr inbounds %struct.bNodeSocket, ptr %138, i64 0, i32 6
  store ptr %140, ptr %141, align 8, !tbaa !50
  %142 = getelementptr inbounds %struct.NodeImageLayer, ptr %140, i64 0, i32 1
  store i32 262144, ptr %142, align 4, !tbaa !109
  br label %143

143:                                              ; preds = %137, %134
  %144 = and i32 %2, 16384
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 16), i32 noundef 2) #6
  %148 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %149 = tail call ptr %148(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %150 = getelementptr inbounds %struct.bNodeSocket, ptr %147, i64 0, i32 6
  store ptr %149, ptr %150, align 8, !tbaa !50
  %151 = getelementptr inbounds %struct.NodeImageLayer, ptr %149, i64 0, i32 1
  store i32 16384, ptr %151, align 4, !tbaa !109
  br label %152

152:                                              ; preds = %146, %143
  %153 = and i32 %2, 65536
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %152
  %156 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 17), i32 noundef 2) #6
  %157 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %158 = tail call ptr %157(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %159 = getelementptr inbounds %struct.bNodeSocket, ptr %156, i64 0, i32 6
  store ptr %158, ptr %159, align 8, !tbaa !50
  %160 = getelementptr inbounds %struct.NodeImageLayer, ptr %158, i64 0, i32 1
  store i32 65536, ptr %160, align 4, !tbaa !109
  br label %161

161:                                              ; preds = %155, %152
  %162 = and i32 %2, 131072
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 18), i32 noundef 2) #6
  %166 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %167 = tail call ptr %166(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %168 = getelementptr inbounds %struct.bNodeSocket, ptr %165, i64 0, i32 6
  store ptr %167, ptr %168, align 8, !tbaa !50
  %169 = getelementptr inbounds %struct.NodeImageLayer, ptr %167, i64 0, i32 1
  store i32 131072, ptr %169, align 4, !tbaa !109
  br label %170

170:                                              ; preds = %164, %161
  %171 = and i32 %2, 524288
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 19), i32 noundef 2) #6
  %175 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %176 = tail call ptr %175(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %177 = getelementptr inbounds %struct.bNodeSocket, ptr %174, i64 0, i32 6
  store ptr %176, ptr %177, align 8, !tbaa !50
  %178 = getelementptr inbounds %struct.NodeImageLayer, ptr %176, i64 0, i32 1
  store i32 524288, ptr %178, align 4, !tbaa !109
  br label %179

179:                                              ; preds = %173, %170
  %180 = and i32 %2, 1048576
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 20), i32 noundef 2) #6
  %184 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %185 = tail call ptr %184(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %186 = getelementptr inbounds %struct.bNodeSocket, ptr %183, i64 0, i32 6
  store ptr %185, ptr %186, align 8, !tbaa !50
  %187 = getelementptr inbounds %struct.NodeImageLayer, ptr %185, i64 0, i32 1
  store i32 1048576, ptr %187, align 4, !tbaa !109
  br label %188

188:                                              ; preds = %182, %179
  %189 = and i32 %2, 2097152
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 21), i32 noundef 2) #6
  %193 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %194 = tail call ptr %193(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %195 = getelementptr inbounds %struct.bNodeSocket, ptr %192, i64 0, i32 6
  store ptr %194, ptr %195, align 8, !tbaa !50
  %196 = getelementptr inbounds %struct.NodeImageLayer, ptr %194, i64 0, i32 1
  store i32 2097152, ptr %196, align 4, !tbaa !109
  br label %197

197:                                              ; preds = %191, %188
  %198 = and i32 %2, 4194304
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 22), i32 noundef 2) #6
  %202 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %203 = tail call ptr %202(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %204 = getelementptr inbounds %struct.bNodeSocket, ptr %201, i64 0, i32 6
  store ptr %203, ptr %204, align 8, !tbaa !50
  %205 = getelementptr inbounds %struct.NodeImageLayer, ptr %203, i64 0, i32 1
  store i32 4194304, ptr %205, align 4, !tbaa !109
  br label %206

206:                                              ; preds = %200, %197
  %207 = and i32 %2, 8388608
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %206
  %210 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 23), i32 noundef 2) #6
  %211 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %212 = tail call ptr %211(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %213 = getelementptr inbounds %struct.bNodeSocket, ptr %210, i64 0, i32 6
  store ptr %212, ptr %213, align 8, !tbaa !50
  %214 = getelementptr inbounds %struct.NodeImageLayer, ptr %212, i64 0, i32 1
  store i32 8388608, ptr %214, align 4, !tbaa !109
  br label %215

215:                                              ; preds = %209, %206
  %216 = and i32 %2, 16777216
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 24), i32 noundef 2) #6
  %220 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %221 = tail call ptr %220(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %222 = getelementptr inbounds %struct.bNodeSocket, ptr %219, i64 0, i32 6
  store ptr %221, ptr %222, align 8, !tbaa !50
  %223 = getelementptr inbounds %struct.NodeImageLayer, ptr %221, i64 0, i32 1
  store i32 16777216, ptr %223, align 4, !tbaa !109
  br label %224

224:                                              ; preds = %218, %215
  %225 = and i32 %2, 33554432
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  %228 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 25), i32 noundef 2) #6
  %229 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %230 = tail call ptr %229(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %231 = getelementptr inbounds %struct.bNodeSocket, ptr %228, i64 0, i32 6
  store ptr %230, ptr %231, align 8, !tbaa !50
  %232 = getelementptr inbounds %struct.NodeImageLayer, ptr %230, i64 0, i32 1
  store i32 33554432, ptr %232, align 4, !tbaa !109
  br label %233

233:                                              ; preds = %227, %224
  %234 = and i32 %2, 67108864
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %233
  %237 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 26), i32 noundef 2) #6
  %238 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %239 = tail call ptr %238(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %240 = getelementptr inbounds %struct.bNodeSocket, ptr %237, i64 0, i32 6
  store ptr %239, ptr %240, align 8, !tbaa !50
  %241 = getelementptr inbounds %struct.NodeImageLayer, ptr %239, i64 0, i32 1
  store i32 67108864, ptr %241, align 4, !tbaa !109
  br label %242

242:                                              ; preds = %236, %233
  %243 = and i32 %2, 134217728
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %242
  %246 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 27), i32 noundef 2) #6
  %247 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %248 = tail call ptr %247(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %249 = getelementptr inbounds %struct.bNodeSocket, ptr %246, i64 0, i32 6
  store ptr %248, ptr %249, align 8, !tbaa !50
  %250 = getelementptr inbounds %struct.NodeImageLayer, ptr %248, i64 0, i32 1
  store i32 134217728, ptr %250, align 4, !tbaa !109
  br label %251

251:                                              ; preds = %245, %242
  %252 = and i32 %2, 268435456
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %251
  %255 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 28), i32 noundef 2) #6
  %256 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %257 = tail call ptr %256(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %258 = getelementptr inbounds %struct.bNodeSocket, ptr %255, i64 0, i32 6
  store ptr %257, ptr %258, align 8, !tbaa !50
  %259 = getelementptr inbounds %struct.NodeImageLayer, ptr %257, i64 0, i32 1
  store i32 268435456, ptr %259, align 4, !tbaa !109
  br label %260

260:                                              ; preds = %254, %251
  %261 = and i32 %2, 536870912
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %260
  %264 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 29), i32 noundef 2) #6
  %265 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %266 = tail call ptr %265(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %267 = getelementptr inbounds %struct.bNodeSocket, ptr %264, i64 0, i32 6
  store ptr %266, ptr %267, align 8, !tbaa !50
  %268 = getelementptr inbounds %struct.NodeImageLayer, ptr %266, i64 0, i32 1
  store i32 536870912, ptr %268, align 4, !tbaa !109
  br label %269

269:                                              ; preds = %263, %260
  %270 = and i32 %2, 1073741824
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %269
  %273 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull getelementptr inbounds ([32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 30), i32 noundef 2) #6
  %274 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %275 = tail call ptr %274(i64 noundef 8, ptr noundef nonnull @.str.4) #6
  %276 = getelementptr inbounds %struct.bNodeSocket, ptr %273, i64 0, i32 6
  store ptr %275, ptr %276, align 8, !tbaa !50
  %277 = getelementptr inbounds %struct.NodeImageLayer, ptr %275, i64 0, i32 1
  store i32 1073741824, ptr %277, align 4, !tbaa !109
  br label %278

278:                                              ; preds = %272, %269
  ret void
}

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @node_add_socket_from_template(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @nodeAddStaticSocket(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 248}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!46, !40, i64 12}
!46 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!47 = !{!46, !40, i64 20}
!48 = !{!46, !36, i64 24}
!49 = !{!46, !36, i64 26}
!50 = !{!51, !35, i64 160}
!51 = !{!"bNodeSocket", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !35, i64 160, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !35, i64 176, !36, i64 184, !43, i64 248, !43, i64 252, !35, i64 256, !41, i64 264, !41, i64 266, !40, i64 268, !35, i64 272, !40, i64 280, !40, i64 284, !35, i64 288, !35, i64 296, !52, i64 304}
!52 = !{!"bNodeStack", !36, i64 0, !43, i64 16, !43, i64 20, !35, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !36, i64 44}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!51, !35, i64 16}
!57 = distinct !{!57, !54, !55}
!58 = !{!39, !40, i64 308}
!59 = !{!39, !35, i64 240}
!60 = !{!39, !41, i64 376}
!61 = !{!62, !40, i64 112}
!62 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !43, i64 124, !63, i64 128}
!63 = !{!"FreestyleConfig", !42, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !42, i64 40}
!64 = !{!51, !41, i64 170}
!65 = distinct !{!65, !54, !55}
!66 = !{!67, !35, i64 640}
!67 = !{!"bNodeType", !35, i64 0, !35, i64 8, !41, i64 16, !36, i64 18, !40, i64 84, !36, i64 88, !36, i64 152, !40, i64 408, !43, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !41, i64 436, !41, i64 438, !41, i64 440, !35, i64 448, !35, i64 456, !36, i64 464, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !68, i64 720}
!68 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!69 = !{!67, !35, i64 664}
!70 = !{!71, !35, i64 16}
!71 = !{!"PointerRNA", !72, i64 0, !35, i64 8, !35, i64 16}
!72 = !{!"", !35, i64 0}
!73 = !{!74, !35, i64 0}
!74 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !42, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!75 = !{!76, !35, i64 248}
!76 = !{!"Scene", !77, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !78, i64 280, !86, i64 4264, !42, i64 4296, !42, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !42, i64 4384, !87, i64 4400, !88, i64 4416, !91, i64 4600, !35, i64 4608, !92, i64 4616, !35, i64 4640, !93, i64 4648, !93, i64 4656, !80, i64 4664, !81, i64 4824, !94, i64 4888, !35, i64 4952}
!77 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!78 = !{!"RenderData", !79, i64 0, !35, i64 248, !35, i64 256, !82, i64 264, !83, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !43, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !44, i64 544, !44, i64 560, !84, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !40, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !43, i64 660, !43, i64 664, !41, i64 668, !41, i64 670, !43, i64 672, !43, i64 676, !36, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !43, i64 2528, !43, i64 2532, !41, i64 2536, !41, i64 2538, !43, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !43, i64 2560, !43, i64 2564, !35, i64 2568, !40, i64 2576, !43, i64 2580, !36, i64 2584, !85, i64 2616, !40, i64 3976, !40, i64 3980}
!79 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !43, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !80, i64 24, !81, i64 184}
!80 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !43, i64 136, !43, i64 140, !35, i64 144, !35, i64 152}
!81 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!82 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!83 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !43, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!84 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!85 = !{!"BakeData", !79, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !43, i64 1280, !43, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!86 = !{!"AudioData", !40, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !43, i64 24, !43, i64 28}
!87 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!88 = !{!"GameData", !87, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !89, i64 40, !41, i64 64, !41, i64 66, !43, i64 68, !90, i64 72, !43, i64 128, !43, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!89 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !43, i64 8, !43, i64 12, !35, i64 16}
!90 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !40, i64 40, !43, i64 44, !43, i64 48, !41, i64 52, !41, i64 54}
!91 = !{!"UnitSettings", !43, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!92 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!93 = !{!"long", !36, i64 0}
!94 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!95 = distinct !{!95, !54, !55}
!96 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!97 = !{!46, !40, i64 8}
!98 = !{!99, !35, i64 1168}
!99 = !{!"Image", !77, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !40, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !43, i64 1296, !40, i64 1300, !41, i64 1304, !41, i64 1306, !40, i64 1308, !40, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !43, i64 1336, !43, i64 1340, !94, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!100 = !{!46, !41, i64 30}
!101 = !{!99, !41, i64 1250}
!102 = !{!103, !40, i64 108}
!103 = !{!"RenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !35, i64 176, !42, i64 184}
!104 = !{!105, !40, i64 20}
!105 = !{!"RenderPass", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 88, !35, i64 96, !40, i64 104, !40, i64 108, !40, i64 112}
!106 = !{!107, !40, i64 0}
!107 = !{!"NodeImageLayer", !40, i64 0, !40, i64 4}
!108 = !{!105, !40, i64 16}
!109 = !{!107, !40, i64 4}
!110 = distinct !{!110, !54, !55}
!111 = distinct !{!111, !54, !55}
!112 = !{!113, !35, i64 32}
!113 = !{!"bNodeLink", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !40, i64 48, !40, i64 52}
!114 = distinct !{!114, !54, !55}
!115 = distinct !{!115, !54, !55}
!116 = !{!51, !35, i64 0}
!117 = distinct !{!117, !54, !55}
