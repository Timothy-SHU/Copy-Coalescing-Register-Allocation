; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_material.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.bNodeExecData = type { ptr, ptr }
%struct.ShaderCallData = type { ptr, ptr }
%struct.GPUShadeInput = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GPUShadeResult = type { ptr, ptr, ptr, ptr }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }

@register_node_type_sh_material.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@sh_node_material_in = internal global [5 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Spec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Refl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 22, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_material_out = internal global [4 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Alpha\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_sh_material_ext.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Extended Material\00", align 1
@sh_node_material_ext_in = internal global [12 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Spec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Refl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 22, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Mirror\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Ambient\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Emit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"SpecTra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Ray Mirror\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Alpha\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Translucency\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_material_ext_out = internal global [7 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Alpha\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Diffuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Spec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"AO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@node_shader_lamp_loop = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"vec_math_normalize\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"vec_math_negate\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"vec_math_sub\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"set_rgb_zero\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"mtex_alpha_to_col\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"set_rgb_one\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_material() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_material.ntype, i32 noundef 100, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #8
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_material.ntype, i16 noundef signext 1) #8
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_material.ntype, ptr noundef nonnull @sh_node_material_in, ptr noundef nonnull @sh_node_material_out) #8
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_material.ntype, ptr noundef nonnull @node_shader_init_material) #8
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_material.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_material) #8
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_material.ntype, ptr noundef nonnull @gpu_shader_material) #8
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_material.ntype) #8
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @node_shader_init_material(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  store i16 3, ptr %3, align 8, !tbaa !34
  ret void
}

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_exec_material(ptr noundef readonly %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca %struct.ShadeResult, align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [11 x i8], align 1
  %10 = icmp eq ptr %0, null
  br i1 %10, label %331, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %331, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %9) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %9, i8 0, i64 11, i1 false)
  %16 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ %27, %19 ], [ 0, %15 ]
  %21 = phi ptr [ %28, %19 ], [ %17, %15 ]
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %21, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp ne ptr %23, null
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 %20
  store i8 %25, ptr %26, align 1, !tbaa !49
  %27 = add nuw i64 %20, 1
  %28 = load ptr, ptr %21, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %19, !llvm.loop !50

30:                                               ; preds = %19, %15
  %31 = load ptr, ptr %0, align 8, !tbaa !53
  store ptr %13, ptr %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 32
  %33 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %32, ptr noundef nonnull align 4 dereferenceable(92) %33, i64 92, i1 false)
  %34 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 38
  %35 = load i16, ptr %34, align 8, !tbaa !57
  %36 = sext i16 %35 to i32
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 55
  store i32 %36, ptr %37, align 8, !tbaa !62
  %38 = load i8, ptr %9, align 1, !tbaa !49
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %32, i16 noundef signext 1, ptr noundef %41) #8
  br label %42

42:                                               ; preds = %40, %30
  %43 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !49
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 35
  %48 = getelementptr inbounds ptr, ptr %4, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %47, i16 noundef signext 1, ptr noundef %49) #8
  br label %50

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !49
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 50
  %56 = getelementptr inbounds ptr, ptr %4, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %55, i16 noundef signext 0, ptr noundef %57) #8
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !49
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16
  br i1 %61, label %87, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds ptr, ptr %4, i64 3
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %62, i16 noundef signext 1, ptr noundef %65) #8
  %66 = load float, ptr %62, align 4, !tbaa !63
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !63
  %69 = fmul float %68, %68
  %70 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %69)
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !63
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %70)
  %74 = fcmp ogt float %73, 0x38AA95A5C0000000
  br i1 %74, label %75, label %84

75:                                               ; preds = %63
  %76 = tail call float @sqrtf(float noundef %73) #8
  %77 = fdiv float 1.000000e+00, %76
  %78 = load float, ptr %62, align 4, !tbaa !63
  %79 = fmul float %78, %77
  store float %79, ptr %62, align 4, !tbaa !63
  %80 = load float, ptr %67, align 4, !tbaa !63
  %81 = fmul float %77, %80
  store float %81, ptr %67, align 4, !tbaa !63
  %82 = load float, ptr %71, align 4, !tbaa !63
  %83 = fmul float %77, %82
  br label %85

84:                                               ; preds = %63
  store float 0.000000e+00, ptr %62, align 4, !tbaa !63
  store float 0.000000e+00, ptr %67, align 4, !tbaa !63
  br label %85

85:                                               ; preds = %75, %84
  %86 = phi float [ 0.000000e+00, %84 ], [ %83, %75 ]
  store float %86, ptr %71, align 4, !tbaa !63
  br label %96

87:                                               ; preds = %58
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 17
  %89 = load float, ptr %88, align 4, !tbaa !63
  store float %89, ptr %62, align 4, !tbaa !63
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 17, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !63
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 1
  store float %91, ptr %92, align 4, !tbaa !63
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 17, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !63
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 2
  store float %94, ptr %95, align 4, !tbaa !63
  br label %96

96:                                               ; preds = %87, %85
  %97 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %98 = load i16, ptr %97, align 8, !tbaa !34
  %99 = and i16 %98, 4
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16
  %103 = load float, ptr %102, align 4, !tbaa !63
  %104 = fneg float %103
  store float %104, ptr %102, align 4, !tbaa !63
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !63
  %107 = fneg float %106
  store float %107, ptr %105, align 4, !tbaa !63
  %108 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !63
  %110 = fneg float %109
  store float %110, ptr %108, align 4, !tbaa !63
  br label %111

111:                                              ; preds = %101, %96
  %112 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 8
  %113 = load i16, ptr %112, align 4, !tbaa !64
  %114 = icmp eq i16 %113, 118
  br i1 %114, label %115, label %171

115:                                              ; preds = %111
  %116 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 4
  %117 = load i8, ptr %116, align 1, !tbaa !49
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 38
  %121 = getelementptr inbounds ptr, ptr %4, i64 4
  %122 = load ptr, ptr %121, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %120, i16 noundef signext 1, ptr noundef %122) #8
  br label %123

123:                                              ; preds = %119, %115
  %124 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 5
  %125 = load i8, ptr %124, align 1, !tbaa !49
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 44
  %129 = getelementptr inbounds ptr, ptr %4, i64 5
  %130 = load ptr, ptr %129, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %128, i16 noundef signext 0, ptr noundef %130) #8
  br label %131

131:                                              ; preds = %127, %123
  %132 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 6
  %133 = load i8, ptr %132, align 1, !tbaa !49
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 45
  %137 = getelementptr inbounds ptr, ptr %4, i64 6
  %138 = load ptr, ptr %137, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %136, i16 noundef signext 0, ptr noundef %138) #8
  br label %139

139:                                              ; preds = %135, %131
  %140 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 7
  %141 = load i8, ptr %140, align 1, !tbaa !49
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 47
  %145 = getelementptr inbounds ptr, ptr %4, i64 7
  %146 = load ptr, ptr %145, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %144, i16 noundef signext 0, ptr noundef %146) #8
  br label %147

147:                                              ; preds = %143, %139
  %148 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 8
  %149 = load i8, ptr %148, align 1, !tbaa !49
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 48
  %153 = getelementptr inbounds ptr, ptr %4, i64 8
  %154 = load ptr, ptr %153, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %152, i16 noundef signext 0, ptr noundef %154) #8
  br label %155

155:                                              ; preds = %151, %147
  %156 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 9
  %157 = load i8, ptr %156, align 1, !tbaa !49
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 49
  %161 = getelementptr inbounds ptr, ptr %4, i64 9
  %162 = load ptr, ptr %161, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %160, i16 noundef signext 0, ptr noundef %162) #8
  br label %163

163:                                              ; preds = %159, %155
  %164 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 10
  %165 = load i8, ptr %164, align 1, !tbaa !49
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 54
  %169 = getelementptr inbounds ptr, ptr %4, i64 10
  %170 = load ptr, ptr %169, align 8, !tbaa !45
  tail call void @nodestack_get_vec(ptr noundef nonnull %168, i16 noundef signext 0, ptr noundef %170) #8
  br label %171

171:                                              ; preds = %163, %167, %111
  %172 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 21
  %173 = load i32, ptr %172, align 8, !tbaa !65
  %174 = load ptr, ptr %31, align 8, !tbaa !55
  %175 = getelementptr inbounds %struct.Material, ptr %174, i64 0, i32 51
  %176 = load i32, ptr %175, align 4, !tbaa !66
  %177 = and i32 %176, 65536
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = or i32 %173, 65536
  store i32 %180, ptr %172, align 8, !tbaa !65
  br label %181

181:                                              ; preds = %179, %171
  %182 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 116
  store i16 1, ptr %182, align 2, !tbaa !67
  %183 = load ptr, ptr @node_shader_lamp_loop, align 8, !tbaa !45
  call void %183(ptr noundef nonnull %31, ptr noundef nonnull %7) #8
  store i16 0, ptr %182, align 2, !tbaa !67
  store i32 %173, ptr %172, align 8, !tbaa !65
  %184 = load i16, ptr %97, align 8, !tbaa !34
  %185 = zext i16 %184 to i32
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %208, label %188

188:                                              ; preds = %181
  %189 = load float, ptr %7, align 4, !tbaa !63
  store float %189, ptr %8, align 16, !tbaa !63
  %190 = getelementptr inbounds float, ptr %7, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !63
  %192 = getelementptr inbounds float, ptr %8, i64 1
  store float %191, ptr %192, align 4, !tbaa !63
  %193 = getelementptr inbounds float, ptr %7, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !63
  %195 = getelementptr inbounds float, ptr %8, i64 2
  store float %194, ptr %195, align 8, !tbaa !63
  %196 = and i16 %184, 2
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %198, label %223

198:                                              ; preds = %188
  %199 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8
  %200 = load float, ptr %199, align 4, !tbaa !63
  %201 = fsub float %189, %200
  store float %201, ptr %8, align 16, !tbaa !63
  %202 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !63
  %204 = fsub float %191, %203
  store float %204, ptr %192, align 4, !tbaa !63
  %205 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8, i64 2
  %206 = load float, ptr %205, align 4, !tbaa !63
  %207 = fsub float %194, %206
  store float %207, ptr %195, align 8, !tbaa !63
  br label %223

208:                                              ; preds = %181
  %209 = and i32 %185, 2
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8
  %213 = load float, ptr %212, align 4, !tbaa !63
  store float %213, ptr %8, align 16, !tbaa !63
  %214 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8, i64 1
  %215 = load float, ptr %214, align 4, !tbaa !63
  %216 = getelementptr inbounds float, ptr %8, i64 1
  store float %215, ptr %216, align 4, !tbaa !63
  %217 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8, i64 2
  %218 = load float, ptr %217, align 4, !tbaa !63
  %219 = getelementptr inbounds float, ptr %8, i64 2
  store float %218, ptr %219, align 8, !tbaa !63
  br label %223

220:                                              ; preds = %208
  %221 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %221, align 8, !tbaa !63
  %222 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float 0.000000e+00, ptr %222, align 4, !tbaa !63
  store float 0.000000e+00, ptr %8, align 16, !tbaa !63
  br label %223

223:                                              ; preds = %211, %220, %188, %198
  %224 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 2
  %225 = load float, ptr %224, align 4, !tbaa !68
  %226 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float %225, ptr %226, align 4, !tbaa !63
  %227 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 112
  %228 = load i8, ptr %227, align 8, !tbaa !70
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.bNodeExecData, ptr %3, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !71
  %233 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 103
  %234 = load i32, ptr %233, align 4, !tbaa !73
  %235 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 104
  %236 = load i32, ptr %235, align 8, !tbaa !74
  %237 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 113
  %238 = load i8, ptr %237, align 1, !tbaa !75
  call void @BKE_node_preview_set_pixel(ptr noundef %232, ptr noundef nonnull %8, i32 noundef %234, i32 noundef %236, i8 noundef zeroext %238) #8
  br label %239

239:                                              ; preds = %230, %223
  %240 = load ptr, ptr %5, align 8, !tbaa !45
  %241 = load float, ptr %8, align 16, !tbaa !63
  store float %241, ptr %240, align 4, !tbaa !63
  %242 = getelementptr inbounds float, ptr %8, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !63
  %244 = getelementptr inbounds float, ptr %240, i64 1
  store float %243, ptr %244, align 4, !tbaa !63
  %245 = getelementptr inbounds float, ptr %8, i64 2
  %246 = load float, ptr %245, align 8, !tbaa !63
  %247 = getelementptr inbounds float, ptr %240, i64 2
  store float %246, ptr %247, align 4, !tbaa !63
  %248 = load float, ptr %224, align 4, !tbaa !68
  %249 = getelementptr inbounds ptr, ptr %5, i64 1
  %250 = load ptr, ptr %249, align 8, !tbaa !45
  store float %248, ptr %250, align 8, !tbaa !63
  %251 = load i16, ptr %97, align 8, !tbaa !34
  %252 = and i16 %251, 4
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %239
  %255 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16
  %256 = load float, ptr %255, align 4, !tbaa !63
  %257 = fneg float %256
  store float %257, ptr %255, align 4, !tbaa !63
  %258 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 1
  %259 = load float, ptr %258, align 4, !tbaa !63
  %260 = fneg float %259
  store float %260, ptr %258, align 4, !tbaa !63
  %261 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 2
  %262 = load float, ptr %261, align 4, !tbaa !63
  %263 = fneg float %262
  store float %263, ptr %261, align 4, !tbaa !63
  br label %264

264:                                              ; preds = %254, %239
  %265 = getelementptr inbounds ptr, ptr %5, i64 2
  %266 = load ptr, ptr %265, align 8, !tbaa !45
  %267 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16
  %268 = load float, ptr %267, align 4, !tbaa !63
  store float %268, ptr %266, align 4, !tbaa !63
  %269 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !63
  %271 = getelementptr inbounds float, ptr %266, i64 1
  store float %270, ptr %271, align 4, !tbaa !63
  %272 = getelementptr inbounds %struct.ShadeInput, ptr %31, i64 0, i32 16, i64 2
  %273 = load float, ptr %272, align 4, !tbaa !63
  %274 = getelementptr inbounds float, ptr %266, i64 2
  store float %273, ptr %274, align 4, !tbaa !63
  %275 = load i16, ptr %112, align 4, !tbaa !64
  %276 = icmp eq i16 %275, 118
  br i1 %276, label %277, label %308

277:                                              ; preds = %264
  %278 = getelementptr inbounds ptr, ptr %5, i64 3
  %279 = load ptr, ptr %278, align 8, !tbaa !45
  %280 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 7
  %281 = load float, ptr %280, align 4, !tbaa !63
  store float %281, ptr %279, align 4, !tbaa !63
  %282 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 7, i64 1
  %283 = load float, ptr %282, align 4, !tbaa !63
  %284 = getelementptr inbounds float, ptr %279, i64 1
  store float %283, ptr %284, align 4, !tbaa !63
  %285 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 7, i64 2
  %286 = load float, ptr %285, align 4, !tbaa !63
  %287 = getelementptr inbounds float, ptr %279, i64 2
  store float %286, ptr %287, align 4, !tbaa !63
  %288 = getelementptr inbounds ptr, ptr %5, i64 4
  %289 = load ptr, ptr %288, align 8, !tbaa !45
  %290 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8
  %291 = load float, ptr %290, align 4, !tbaa !63
  store float %291, ptr %289, align 4, !tbaa !63
  %292 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !63
  %294 = getelementptr inbounds float, ptr %289, i64 1
  store float %293, ptr %294, align 4, !tbaa !63
  %295 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !63
  %297 = getelementptr inbounds float, ptr %289, i64 2
  store float %296, ptr %297, align 4, !tbaa !63
  %298 = getelementptr inbounds ptr, ptr %5, i64 5
  %299 = load ptr, ptr %298, align 8, !tbaa !45
  %300 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 10
  %301 = load float, ptr %300, align 4, !tbaa !63
  store float %301, ptr %299, align 4, !tbaa !63
  %302 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 10, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !63
  %304 = getelementptr inbounds float, ptr %299, i64 1
  store float %303, ptr %304, align 4, !tbaa !63
  %305 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 10, i64 2
  %306 = load float, ptr %305, align 4, !tbaa !63
  %307 = getelementptr inbounds float, ptr %299, i64 2
  store float %306, ptr %307, align 4, !tbaa !63
  br label %308

308:                                              ; preds = %277, %264
  %309 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %310 = load i32, ptr %309, align 8, !tbaa !76
  %311 = and i32 %310, 32
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %330, label %313

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.ShaderCallData, ptr %0, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !77
  %316 = load float, ptr %315, align 4, !tbaa !63
  %317 = getelementptr inbounds float, ptr %315, i64 1
  %318 = load float, ptr %317, align 4, !tbaa !63
  %319 = getelementptr inbounds float, ptr %315, i64 2
  %320 = load float, ptr %319, align 4, !tbaa !63
  %321 = getelementptr inbounds float, ptr %315, i64 3
  %322 = load float, ptr %321, align 4, !tbaa !63
  %323 = getelementptr inbounds %struct.ShadeResult, ptr %315, i64 0, i32 2
  %324 = load float, ptr %323, align 4, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %315, ptr noundef nonnull align 4 dereferenceable(212) %7, i64 212, i1 false), !tbaa.struct !78
  %325 = load ptr, ptr %314, align 8, !tbaa !77
  store float %316, ptr %325, align 4, !tbaa !63
  %326 = getelementptr inbounds float, ptr %325, i64 1
  store float %318, ptr %326, align 4, !tbaa !63
  %327 = getelementptr inbounds float, ptr %325, i64 2
  store float %320, ptr %327, align 4, !tbaa !63
  %328 = getelementptr inbounds float, ptr %325, i64 3
  store float %322, ptr %328, align 4, !tbaa !63
  %329 = getelementptr inbounds %struct.ShadeResult, ptr %325, i64 0, i32 2
  store float %324, ptr %329, align 4, !tbaa !68
  br label %330

330:                                              ; preds = %313, %308
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %7) #8
  br label %331

331:                                              ; preds = %330, %11, %6
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @gpu_shader_material(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.GPUShadeInput, align 8
  %7 = alloca %struct.GPUShadeResult, align 8
  %8 = alloca [11 x i8], align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %195, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %8) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %8, i8 0, i64 11, i1 false)
  %15 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ %26, %18 ], [ 0, %14 ]
  %20 = phi ptr [ %27, %18 ], [ %16, %14 ]
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp ne ptr %22, null
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 %19
  store i8 %24, ptr %25, align 1, !tbaa !49
  %26 = add nuw i64 %19, 1
  %27 = load ptr, ptr %20, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !79

29:                                               ; preds = %18, %14
  call void @GPU_shadeinput_set(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %6) #8
  %30 = load i8, ptr %8, align 1, !tbaa !49
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 0, i32 2
  %38 = call ptr @GPU_uniform(ptr noundef nonnull %37) #8
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi ptr [ %38, %36 ], [ %34, %32 ]
  %41 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !82
  br label %42

42:                                               ; preds = %39, %29
  %43 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !49
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !80
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1, i32 2
  %52 = call ptr @GPU_uniform(ptr noundef nonnull %51) #8
  br label %53

53:                                               ; preds = %46, %50
  %54 = phi ptr [ %52, %50 ], [ %48, %46 ]
  %55 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !84
  br label %56

56:                                               ; preds = %53, %42
  %57 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !49
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2, i32 2
  %66 = call ptr @GPU_uniform(ptr noundef nonnull %65) #8
  br label %67

67:                                               ; preds = %60, %64
  %68 = phi ptr [ %66, %64 ], [ %62, %60 ]
  %69 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 9
  store ptr %68, ptr %69, align 8, !tbaa !85
  br label %70

70:                                               ; preds = %67, %56
  %71 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 3
  %72 = load i8, ptr %71, align 1, !tbaa !49
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %75 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 3, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !80
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 3, i32 2
  %80 = call ptr @GPU_uniform(ptr noundef nonnull %79) #8
  br label %81

81:                                               ; preds = %74, %78
  %82 = phi ptr [ %80, %78 ], [ %76, %74 ]
  %83 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 4
  store ptr %82, ptr %83, align 8, !tbaa !86
  %84 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %82, ptr noundef nonnull %83, ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %85

85:                                               ; preds = %81, %70
  %86 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %87 = load i16, ptr %86, align 8, !tbaa !34
  %88 = and i16 %87, 4
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !86
  %93 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %92, ptr noundef nonnull %91) #8
  br label %94

94:                                               ; preds = %90, %85
  %95 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 8
  %96 = load i16, ptr %95, align 4, !tbaa !64
  %97 = icmp eq i16 %96, 118
  br i1 %97, label %98, label %140

98:                                               ; preds = %94
  %99 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 5
  %100 = load i8, ptr %99, align 1, !tbaa !49
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 5, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !80
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 5, i32 2
  %108 = call ptr @GPU_uniform(ptr noundef nonnull %107) #8
  br label %109

109:                                              ; preds = %102, %106
  %110 = phi ptr [ %108, %106 ], [ %104, %102 ]
  %111 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 13
  store ptr %110, ptr %111, align 8, !tbaa !87
  br label %112

112:                                              ; preds = %109, %98
  %113 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 6
  %114 = load i8, ptr %113, align 1, !tbaa !49
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 6, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !80
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 6, i32 2
  %122 = call ptr @GPU_uniform(ptr noundef nonnull %121) #8
  br label %123

123:                                              ; preds = %116, %120
  %124 = phi ptr [ %122, %120 ], [ %118, %116 ]
  %125 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 11
  store ptr %124, ptr %125, align 8, !tbaa !88
  br label %126

126:                                              ; preds = %123, %112
  %127 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 9
  %128 = load i8, ptr %127, align 1, !tbaa !49
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 9, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !80
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 9, i32 2
  %136 = call ptr @GPU_uniform(ptr noundef nonnull %135) #8
  br label %137

137:                                              ; preds = %130, %134
  %138 = phi ptr [ %136, %134 ], [ %132, %130 ]
  %139 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 8
  store ptr %138, ptr %139, align 8, !tbaa !89
  br label %140

140:                                              ; preds = %126, %137, %94
  call void @GPU_shaderesult_set(ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %141 = load i16, ptr %86, align 8, !tbaa !34
  %142 = zext i16 %141 to i32
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !90
  %148 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  store ptr %147, ptr %148, align 8, !tbaa !80
  %149 = and i16 %141, 2
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %152 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !92
  %154 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %147, ptr noundef %153, ptr noundef nonnull %148, ptr noundef nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %165

155:                                              ; preds = %140
  %156 = and i32 %142, 2
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !92
  %161 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  store ptr %160, ptr %161, align 8, !tbaa !80
  br label %165

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  %164 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %163) #8
  br label %165

165:                                              ; preds = %158, %162, %145, %151
  %166 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !80
  %168 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !93
  %170 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %167, ptr noundef %169, ptr noundef nonnull %166) #8
  %171 = load ptr, ptr %168, align 8, !tbaa !93
  %172 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 1, i32 3
  store ptr %171, ptr %172, align 8, !tbaa !80
  %173 = load i16, ptr %86, align 8, !tbaa !34
  %174 = and i16 %173, 4
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %165
  %177 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !86
  %179 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %178, ptr noundef nonnull %177) #8
  br label %180

180:                                              ; preds = %176, %165
  %181 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !86
  %183 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 2, i32 3
  store ptr %182, ptr %183, align 8, !tbaa !80
  %184 = load i16, ptr %95, align 4, !tbaa !64
  %185 = icmp eq i16 %184, 118
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load ptr, ptr %7, align 8, !tbaa !94
  %188 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 3, i32 3
  store ptr %187, ptr %188, align 8, !tbaa !80
  %189 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !92
  %191 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 4, i32 3
  store ptr %190, ptr %191, align 8, !tbaa !80
  %192 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 5, i32 3
  %193 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %192) #8
  br label %194

194:                                              ; preds = %186, %180
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #8
  br label %195

195:                                              ; preds = %5, %194
  %196 = phi i32 [ 1, %194 ], [ 0, %5 ]
  ret i32 %196
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_material_ext() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, i32 noundef 118, ptr noundef nonnull @.str.1, i16 noundef signext 0, i16 noundef signext 4) #8
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, i16 noundef signext 1) #8
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, ptr noundef nonnull @sh_node_material_ext_in, ptr noundef nonnull @sh_node_material_ext_out) #8
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, ptr noundef nonnull @node_shader_init_material) #8
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, i32 noundef 2) #8
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_material) #8
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, ptr noundef nonnull @gpu_shader_material) #8
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_material_ext.ntype) #8
  ret void
}

declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @BKE_node_preview_set_pixel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @GPU_shadeinput_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @GPU_shaderesult_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!34 = !{!35, !40, i64 376}
!35 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"float", !37, i64 0}
!43 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!44 = !{!35, !36, i64 240}
!45 = !{!36, !36, i64 0}
!46 = !{!47, !36, i64 296}
!47 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !36, i64 176, !37, i64 184, !42, i64 248, !42, i64 252, !36, i64 256, !40, i64 264, !40, i64 266, !39, i64 268, !36, i64 272, !39, i64 280, !39, i64 284, !36, i64 288, !36, i64 296, !48, i64 304}
!48 = !{!"bNodeStack", !37, i64 0, !42, i64 16, !42, i64 20, !36, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !37, i64 44}
!49 = !{!37, !37, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!54, !36, i64 0}
!54 = !{!"ShaderCallData", !36, i64 0, !36, i64 8}
!55 = !{!56, !36, i64 0}
!56 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !42, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !42, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !42, i64 1256, !42, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !42, i64 1336, !42, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !42, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!57 = !{!58, !40, i64 360}
!58 = !{!"Material", !59, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !60, i64 224, !61, i64 312, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !42, i64 348, !42, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !42, i64 364, !42, i64 368, !40, i64 372, !40, i64 374, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !42, i64 456, !37, i64 460, !42, i64 524, !42, i64 528, !42, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !42, i64 556, !42, i64 560, !37, i64 564, !42, i64 580, !42, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !42, i64 616, !42, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !42, i64 800, !42, i64 804, !42, i64 808, !42, i64 812, !42, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !42, i64 848, !42, i64 852, !42, i64 856, !42, i64 860, !42, i64 864, !42, i64 868, !42, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!59 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!60 = !{!"VolumeSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !42, i64 52, !42, i64 56, !42, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84}
!61 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!62 = !{!56, !39, i64 320}
!63 = !{!42, !42, i64 0}
!64 = !{!35, !40, i64 172}
!65 = !{!56, !39, i64 160}
!66 = !{!58, !39, i64 396}
!67 = !{!56, !40, i64 1438}
!68 = !{!69, !42, i64 32}
!69 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !42, i64 32, !42, i64 36, !42, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!70 = !{!56, !37, i64 1432}
!71 = !{!72, !36, i64 8}
!72 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!73 = !{!56, !39, i64 1380}
!74 = !{!56, !39, i64 1384}
!75 = !{!56, !37, i64 1433}
!76 = !{!35, !39, i64 168}
!77 = !{!54, !36, i64 8}
!78 = !{i64 0, i64 16, !49, i64 16, i64 16, !49, i64 32, i64 4, !63, i64 36, i64 4, !63, i64 40, i64 4, !63, i64 44, i64 12, !49, i64 56, i64 12, !49, i64 68, i64 12, !49, i64 80, i64 12, !49, i64 92, i64 16, !49, i64 108, i64 12, !49, i64 120, i64 12, !49, i64 132, i64 12, !49, i64 144, i64 12, !49, i64 156, i64 12, !49, i64 168, i64 12, !49, i64 180, i64 16, !49, i64 196, i64 16, !49}
!79 = distinct !{!79, !51, !52}
!80 = !{!81, !36, i64 32}
!81 = !{!"GPUNodeStack", !39, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !37, i64 40, !37, i64 41, !40, i64 42}
!82 = !{!83, !36, i64 16}
!83 = !{!"GPUShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104}
!84 = !{!83, !36, i64 24}
!85 = !{!83, !36, i64 72}
!86 = !{!83, !36, i64 32}
!87 = !{!83, !36, i64 104}
!88 = !{!83, !36, i64 88}
!89 = !{!83, !36, i64 64}
!90 = !{!91, !36, i64 16}
!91 = !{!"GPUShadeResult", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!92 = !{!91, !36, i64 8}
!93 = !{!91, !36, i64 24}
!94 = !{!91, !36, i64 0}
