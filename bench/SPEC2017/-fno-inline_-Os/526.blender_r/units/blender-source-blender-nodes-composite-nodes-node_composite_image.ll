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
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.NodeImageLayer = type { i32, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_cmp_image() local_unnamed_addr #0 {
  tail call void @cmp_node_type_base(ptr noundef nonnull @register_node_type_cmp_image.ntype, i32 noundef 220, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #8
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_cmp_image.ntype, ptr noundef nonnull @node_composit_init_image) #8
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_cmp_image.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_composit_free_image, ptr noundef nonnull @node_composit_copy_image) #8
  tail call void @node_type_update(ptr noundef nonnull @register_node_type_cmp_image.ntype, ptr noundef nonnull @cmp_node_image_update, ptr noundef null) #8
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_cmp_image.ntype) #8
  ret void
}

; Function Attrs: optsize
declare void @cmp_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_init_image(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.3) #8
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 2
  store i32 1, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 4
  store i32 1, ptr %7, align 4, !tbaa !48
  %8 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 5
  store i8 2, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 7
  store i8 1, ptr %9, align 2, !tbaa !50
  tail call fastcc void @cmp_node_image_verify_outputs(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_free_image(ptr nocapture noundef readonly %0) #0 !PGOFuncName !51 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  tail call void %7(ptr noundef %9) #8
  %10 = load ptr, ptr %6, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !55

12:                                               ; preds = %5, %1
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  tail call void %13(ptr noundef %15) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_copy_image(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !57 {
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = tail call ptr %4(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %7, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %21, %12 ], [ %10, %3 ]
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = tail call ptr %14(ptr noundef %16) #8
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 6
  store ptr %17, ptr %20, align 8, !tbaa !52
  %21 = load ptr, ptr %13, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !59

23:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: optsize
declare void @node_type_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cmp_node_image_update(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @cmp_node_image_verify_outputs(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_cmp_rlayers_force_hidden_passes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 33
  %8 = load i16, ptr %7, align 8, !tbaa !63
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.SceneRenderLayer, ptr %10, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !67
  %22 = and i16 %21, -9
  store i16 %22, ptr %20, align 2, !tbaa !67
  %23 = load ptr, ptr %19, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !68

25:                                               ; preds = %18, %12
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 0, i32 noundef 1) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 1, i32 noundef 1) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 2, i32 noundef 2) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 3, i32 noundef 256) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 5, i32 noundef 512) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 4, i32 noundef 4096) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 6, i32 noundef 4) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 7, i32 noundef 8) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 8, i32 noundef 16) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 9, i32 noundef 32) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 10, i32 noundef 64) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 11, i32 noundef 128) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 12, i32 noundef 1024) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 13, i32 noundef 8192) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 14, i32 noundef 2048) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 15, i32 noundef 262144) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 16, i32 noundef 16384) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 17, i32 noundef 65536) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 18, i32 noundef 131072) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 19, i32 noundef 524288) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 20, i32 noundef 1048576) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 21, i32 noundef 2097152) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 22, i32 noundef 4194304) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 23, i32 noundef 8388608) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 24, i32 noundef 16777216) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 25, i32 noundef 33554432) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 26, i32 noundef 67108864) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 27, i32 noundef 134217728) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 28, i32 noundef 268435456) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 29, i32 noundef 536870912) #9
  tail call fastcc void @set_output_visible(ptr noundef %0, i32 noundef %14, i32 noundef 30, i32 noundef 1073741824) #9
  br label %26

26:                                               ; preds = %5, %1, %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_output_visible(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !69 {
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %6 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %2) #8
  %7 = and i32 %3, %1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !67
  %11 = or i16 %10, 8
  %12 = and i16 %10, -11
  %13 = select i1 %8, i16 %11, i16 %12
  store i16 %13, ptr %9, align 2, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_cmp_rlayers() local_unnamed_addr #0 {
  tail call void @cmp_node_type_base(ptr noundef nonnull @register_node_type_cmp_rlayers.ntype, i32 noundef 221, ptr noundef nonnull @.str.2, i16 noundef signext 0, i16 noundef signext 4) #8
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_cmp_rlayers.ntype, ptr noundef null, ptr noundef nonnull @cmp_node_rlayers_out) #8
  store ptr @node_composit_init_rlayers, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_rlayers.ntype, i64 0, i32 34), align 8, !tbaa !70
  store ptr @node_composit_poll_rlayers, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_cmp_rlayers.ntype, i64 0, i32 37), align 8, !tbaa !73
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_cmp_rlayers.ntype) #8
  ret void
}

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_composit_init_rlayers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !74 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  store ptr %3, ptr %6, align 8, !tbaa !62
  tail call void @node_cmp_rlayers_force_hidden_passes(ptr noundef %5) #9
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @node_composit_poll_rlayers(ptr nocapture readnone %0, ptr noundef readonly %1) #3 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 3
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(19) @.str.5) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load ptr, ptr @G, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 11
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %8, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %9, !llvm.loop !101

17:                                               ; preds = %13, %9
  %18 = zext i1 %12 to i32
  br label %19

19:                                               ; preds = %2, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cmp_node_image_verify_outputs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !102 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !103
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #9
  tail call fastcc void @cmp_node_image_create_outputs(ptr noundef %0, ptr noundef %1) #9
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %12, %2
  %8 = load ptr, ptr %3, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  br label %16

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %14, %12 ], [ %5, %2 ]
  call fastcc void @cmp_node_image_output_find_match(ptr noundef nonnull %13, ptr noundef nonnull %3) #9
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %7, label %12, !llvm.loop !104

16:                                               ; preds = %10, %33
  %17 = phi ptr [ %8, %10 ], [ %35, %33 ]
  %18 = phi i32 [ 0, %10 ], [ %34, %33 ]
  %19 = tail call fastcc ptr @cmp_node_image_output_relink(ptr noundef %1, ptr noundef nonnull %17, i32 noundef %18) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %11, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21, %30
  %25 = phi ptr [ %31, %30 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.bNodeLink, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = icmp eq ptr %27, %17
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store ptr %19, ptr %26, align 8, !tbaa !105
  br label %30

30:                                               ; preds = %24, %29
  %31 = load ptr, ptr %25, align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !107

33:                                               ; preds = %30, %21, %16
  %34 = add nuw nsw i32 %18, 1
  %35 = load ptr, ptr %17, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !108

37:                                               ; preds = %33
  br i1 %9, label %45, label %38

38:                                               ; preds = %37, %38
  %39 = phi ptr [ %40, %38 ], [ %8, %37 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  tail call void %41(ptr noundef %43) #8
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %39) #8
  %44 = icmp eq ptr %40, null
  br i1 %44, label %45, label %38, !llvm.loop !110

45:                                               ; preds = %38, %7, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !111 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cmp_node_image_create_outputs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !112 {
  %3 = alloca %struct.ImageUser, align 8
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %10 = tail call i32 @BKE_image_sequence_guess_offset(ptr noundef nonnull %5) #8
  %11 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 7
  store i8 1, ptr %11, align 2, !tbaa !50
  %12 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 1
  store i32 %10, ptr %12, align 8, !tbaa !113
  %13 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef null) #8
  %14 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.RenderResult, ptr %15, i64 0, i32 12
  %19 = getelementptr inbounds %struct.ImageUser, ptr %9, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !116
  %21 = sext i16 %20 to i32
  %22 = call ptr @BLI_findlink(ptr noundef nonnull %18, i32 noundef %21) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 12
  %26 = load i16, ptr %25, align 2, !tbaa !117
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.RenderLayer, ptr %22, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !118
  call fastcc void @cmp_node_image_add_render_pass_outputs(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %30) #9
  br label %34

31:                                               ; preds = %24
  call fastcc void @cmp_node_image_add_multilayer_outputs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %22) #9
  br label %34

32:                                               ; preds = %17
  call fastcc void @cmp_node_image_add_render_pass_outputs(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #9
  br label %34

33:                                               ; preds = %7
  call fastcc void @cmp_node_image_add_render_pass_outputs(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 3) #9
  br label %34

34:                                               ; preds = %32, %31, %28, %33
  call void @BKE_image_release_ibuf(ptr noundef nonnull %5, ptr noundef %13, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #11
  br label %36

35:                                               ; preds = %2
  tail call fastcc void @cmp_node_image_add_render_pass_outputs(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #9
  br label %36

36:                                               ; preds = %35, %34
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc void @cmp_node_image_output_find_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !120 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cmp_node_image_output_relink(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !121 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 5
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %4, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 5
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %5) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %6, !llvm.loop !122

14:                                               ; preds = %6
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %2) #8
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %15, %14 ], [ %8, %10 ]
  ret ptr %17
}

; Function Attrs: optsize
declare void @nodeRemoveSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare i32 @BKE_image_sequence_guess_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cmp_node_image_add_render_pass_outputs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !123 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0) #9
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 1) #9
  br label %7

7:                                                ; preds = %6, %3
  %8 = and i32 %2, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 2) #9
  br label %11

11:                                               ; preds = %10, %7
  %12 = and i32 %2, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 256, i32 noundef 3) #9
  br label %15

15:                                               ; preds = %14, %11
  %16 = and i32 %2, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 512, i32 noundef 5) #9
  br label %19

19:                                               ; preds = %18, %15
  %20 = and i32 %2, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 4096, i32 noundef 4) #9
  br label %23

23:                                               ; preds = %22, %19
  %24 = and i32 %2, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef 6) #9
  br label %27

27:                                               ; preds = %26, %23
  %28 = and i32 %2, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 8, i32 noundef 7) #9
  br label %31

31:                                               ; preds = %30, %27
  %32 = and i32 %2, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 16, i32 noundef 8) #9
  br label %35

35:                                               ; preds = %34, %31
  %36 = and i32 %2, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 32, i32 noundef 9) #9
  br label %39

39:                                               ; preds = %38, %35
  %40 = and i32 %2, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 64, i32 noundef 10) #9
  br label %43

43:                                               ; preds = %42, %39
  %44 = and i32 %2, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 128, i32 noundef 11) #9
  br label %47

47:                                               ; preds = %46, %43
  %48 = and i32 %2, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 1024, i32 noundef 12) #9
  br label %51

51:                                               ; preds = %50, %47
  %52 = and i32 %2, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 8192, i32 noundef 13) #9
  br label %55

55:                                               ; preds = %54, %51
  %56 = and i32 %2, 2048
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 2048, i32 noundef 14) #9
  br label %59

59:                                               ; preds = %58, %55
  %60 = and i32 %2, 262144
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 262144, i32 noundef 15) #9
  br label %63

63:                                               ; preds = %62, %59
  %64 = and i32 %2, 16384
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 16384, i32 noundef 16) #9
  br label %67

67:                                               ; preds = %66, %63
  %68 = and i32 %2, 65536
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 65536, i32 noundef 17) #9
  br label %71

71:                                               ; preds = %70, %67
  %72 = and i32 %2, 131072
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 131072, i32 noundef 18) #9
  br label %75

75:                                               ; preds = %74, %71
  %76 = and i32 %2, 524288
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 524288, i32 noundef 19) #9
  br label %79

79:                                               ; preds = %78, %75
  %80 = and i32 %2, 1048576
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 1048576, i32 noundef 20) #9
  br label %83

83:                                               ; preds = %82, %79
  %84 = and i32 %2, 2097152
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 2097152, i32 noundef 21) #9
  br label %87

87:                                               ; preds = %86, %83
  %88 = and i32 %2, 4194304
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 4194304, i32 noundef 22) #9
  br label %91

91:                                               ; preds = %90, %87
  %92 = and i32 %2, 8388608
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 8388608, i32 noundef 23) #9
  br label %95

95:                                               ; preds = %94, %91
  %96 = and i32 %2, 16777216
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 16777216, i32 noundef 24) #9
  br label %99

99:                                               ; preds = %98, %95
  %100 = and i32 %2, 33554432
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 33554432, i32 noundef 25) #9
  br label %103

103:                                              ; preds = %102, %99
  %104 = and i32 %2, 67108864
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 67108864, i32 noundef 26) #9
  br label %107

107:                                              ; preds = %106, %103
  %108 = and i32 %2, 134217728
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 134217728, i32 noundef 27) #9
  br label %111

111:                                              ; preds = %110, %107
  %112 = and i32 %2, 268435456
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 268435456, i32 noundef 28) #9
  br label %115

115:                                              ; preds = %114, %111
  %116 = and i32 %2, 536870912
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 536870912, i32 noundef 29) #9
  br label %119

119:                                              ; preds = %118, %115
  %120 = and i32 %2, 1073741824
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  tail call fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef 1073741824, i32 noundef 30) #9
  br label %123

123:                                              ; preds = %122, %119
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cmp_node_image_add_multilayer_outputs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !124 {
  %4 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %23, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %22, %7 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !125
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 4
  %15 = tail call ptr @nodeAddStaticSocket(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef %13, i32 noundef 0, ptr noundef nonnull %14, ptr noundef nonnull %14) #8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.4) #8
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 6
  store ptr %17, ptr %18, align 8, !tbaa !52
  store i32 %9, ptr %17, align 4, !tbaa !127
  %19 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !129
  %21 = getelementptr inbounds %struct.NodeImageLayer, ptr %17, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !130
  %22 = add nuw nsw i32 %9, 1
  %23 = load ptr, ptr %8, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !131

25:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cmp_node_image_add_render_pass_output(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !132 {
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds [32 x %struct.bNodeSocketTemplate], ptr @cmp_node_rlayers_out, i64 0, i64 %5
  %7 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2) #8
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %9 = tail call ptr %8(i64 noundef 8, ptr noundef nonnull @.str.4) #8
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.NodeImageLayer, ptr %9, i64 0, i32 1
  store i32 %2, ptr %11, align 4, !tbaa !130
  ret void
}

; Function Attrs: optsize
declare ptr @node_add_socket_from_template(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nodeAddStaticSocket(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize willreturn memory(read) }
attributes #11 = { nounwind }

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
!34 = !{!"node_composite_image.c:node_composit_init_image"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 248}
!40 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !42, i64 184, !42, i64 186, !37, i64 188, !43, i64 200, !43, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !43, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !37, i64 312, !42, i64 376, !42, i64 378, !44, i64 380, !44, i64 384, !42, i64 388, !42, i64 390, !36, i64 392, !45, i64 400, !45, i64 416, !45, i64 432, !42, i64 448, !42, i64 450, !41, i64 452, !36, i64 456}
!41 = !{!"int", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!"float", !37, i64 0}
!45 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!46 = !{!47, !41, i64 12}
!47 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !41, i64 36}
!48 = !{!47, !41, i64 20}
!49 = !{!47, !37, i64 24}
!50 = !{!47, !37, i64 26}
!51 = !{!"node_composite_image.c:node_composit_free_image"}
!52 = !{!53, !36, i64 160}
!53 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !36, i64 176, !37, i64 184, !44, i64 248, !44, i64 252, !36, i64 256, !42, i64 264, !42, i64 266, !41, i64 268, !36, i64 272, !41, i64 280, !41, i64 284, !36, i64 288, !36, i64 296, !54, i64 304}
!54 = !{!"bNodeStack", !37, i64 0, !44, i64 16, !44, i64 20, !36, i64 24, !42, i64 32, !42, i64 34, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !37, i64 44}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"node_composite_image.c:node_composit_copy_image"}
!58 = !{!53, !36, i64 16}
!59 = distinct !{!59, !56}
!60 = !{!"node_composite_image.c:cmp_node_image_update"}
!61 = !{!40, !41, i64 308}
!62 = !{!40, !36, i64 240}
!63 = !{!40, !42, i64 376}
!64 = !{!65, !41, i64 112}
!65 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !44, i64 124, !66, i64 128}
!66 = !{!"FreestyleConfig", !43, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !43, i64 40}
!67 = !{!53, !42, i64 170}
!68 = distinct !{!68, !56}
!69 = !{!"node_composite_image.c:set_output_visible"}
!70 = !{!71, !36, i64 640}
!71 = !{!"bNodeType", !36, i64 0, !36, i64 8, !42, i64 16, !37, i64 18, !41, i64 84, !37, i64 88, !37, i64 152, !41, i64 408, !44, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !42, i64 436, !42, i64 438, !42, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !72, i64 720}
!72 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!73 = !{!71, !36, i64 664}
!74 = !{!"node_composite_image.c:node_composit_init_rlayers"}
!75 = !{!76, !36, i64 16}
!76 = !{!"PointerRNA", !77, i64 0, !36, i64 8, !36, i64 16}
!77 = !{!"", !36, i64 0}
!78 = !{!"node_composite_image.c:node_composit_poll_rlayers"}
!79 = !{!80, !36, i64 0}
!80 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !43, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!81 = !{!82, !36, i64 248}
!82 = !{!"Scene", !83, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !43, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !92, i64 4264, !43, i64 4296, !43, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !43, i64 4384, !93, i64 4400, !94, i64 4416, !97, i64 4600, !36, i64 4608, !98, i64 4616, !36, i64 4640, !99, i64 4648, !99, i64 4656, !86, i64 4664, !87, i64 4824, !100, i64 4888, !36, i64 4952}
!83 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!84 = !{!"RenderData", !85, i64 0, !36, i64 248, !36, i64 256, !88, i64 264, !89, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !45, i64 544, !45, i64 560, !90, i64 576, !43, i64 592, !42, i64 608, !42, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !44, i64 660, !44, i64 664, !42, i64 668, !42, i64 670, !44, i64 672, !44, i64 676, !37, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !44, i64 2528, !44, i64 2532, !42, i64 2536, !42, i64 2538, !44, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !44, i64 2560, !44, i64 2564, !36, i64 2568, !41, i64 2576, !44, i64 2580, !37, i64 2584, !91, i64 2616, !41, i64 3976, !41, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !44, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!89 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!90 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!91 = !{!"BakeData", !85, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !44, i64 1280, !44, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!92 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !44, i64 24, !44, i64 28}
!93 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!94 = !{!"GameData", !93, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !95, i64 40, !42, i64 64, !42, i64 66, !44, i64 68, !96, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!95 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !44, i64 8, !44, i64 12, !36, i64 16}
!96 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !42, i64 52, !42, i64 54}
!97 = !{!"UnitSettings", !44, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!98 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!99 = !{!"long", !37, i64 0}
!100 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!101 = distinct !{!101, !56}
!102 = !{!"node_composite_image.c:cmp_node_image_verify_outputs"}
!103 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!104 = distinct !{!104, !56}
!105 = !{!106, !36, i64 32}
!106 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52}
!107 = distinct !{!107, !56}
!108 = distinct !{!108, !56}
!109 = !{!53, !36, i64 0}
!110 = distinct !{!110, !56}
!111 = !{!"node_composite_image.c:BLI_listbase_clear"}
!112 = !{!"node_composite_image.c:cmp_node_image_create_outputs"}
!113 = !{!47, !41, i64 8}
!114 = !{!115, !36, i64 1168}
!115 = !{!"Image", !83, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !42, i64 1240, !42, i64 1242, !42, i64 1244, !42, i64 1246, !42, i64 1248, !42, i64 1250, !41, i64 1252, !42, i64 1256, !42, i64 1258, !42, i64 1260, !42, i64 1262, !42, i64 1264, !42, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !44, i64 1296, !41, i64 1300, !42, i64 1304, !42, i64 1306, !41, i64 1308, !41, i64 1312, !37, i64 1316, !37, i64 1317, !42, i64 1318, !37, i64 1320, !44, i64 1336, !44, i64 1340, !100, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!116 = !{!47, !42, i64 30}
!117 = !{!115, !42, i64 1250}
!118 = !{!119, !41, i64 108}
!119 = !{!"RenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !36, i64 176, !43, i64 184}
!120 = !{!"node_composite_image.c:cmp_node_image_output_find_match"}
!121 = !{!"node_composite_image.c:cmp_node_image_output_relink"}
!122 = distinct !{!122, !56}
!123 = !{!"node_composite_image.c:cmp_node_image_add_render_pass_outputs"}
!124 = !{!"node_composite_image.c:cmp_node_image_add_multilayer_outputs"}
!125 = !{!126, !41, i64 20}
!126 = !{!"RenderPass", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112}
!127 = !{!128, !41, i64 0}
!128 = !{!"NodeImageLayer", !41, i64 0, !41, i64 4}
!129 = !{!126, !41, i64 16}
!130 = !{!128, !41, i64 4}
!131 = distinct !{!131, !56}
!132 = !{!"node_composite_image.c:cmp_node_image_add_render_pass_output"}
