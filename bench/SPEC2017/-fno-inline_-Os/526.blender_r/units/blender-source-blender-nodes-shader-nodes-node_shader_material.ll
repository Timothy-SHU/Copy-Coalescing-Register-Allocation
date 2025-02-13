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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_material() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_material.ntype, i32 noundef 100, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #11
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_material.ntype, i16 noundef signext 1) #11
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_material.ntype, ptr noundef nonnull @sh_node_material_in, ptr noundef nonnull @sh_node_material_out) #11
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_material.ntype, ptr noundef nonnull @node_shader_init_material) #11
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_material.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_material) #11
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_material.ntype, ptr noundef nonnull @gpu_shader_material) #11
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_material.ntype) #11
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @node_shader_init_material(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #2 !PGOFuncName !34 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  store i16 3, ptr %3, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_material(ptr noundef readonly %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !45 {
  %7 = alloca %struct.ShadeResult, align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [11 x i8], align 1
  %10 = alloca [4 x float], align 16
  %11 = icmp eq ptr %0, null
  br i1 %11, label %228, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %228, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %9, i8 0, i64 11, i1 false)
  %17 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %28, %20 ], [ 0, %16 ]
  %22 = phi ptr [ %29, %20 ], [ %18, %16 ]
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp ne ptr %24, null
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 %21
  store i8 %26, ptr %27, align 1, !tbaa !51
  %28 = add nuw i64 %21, 1
  %29 = load ptr, ptr %22, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %20, !llvm.loop !52

31:                                               ; preds = %20
  %32 = load i8, ptr %9, align 1, !tbaa !51
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi i8 [ %32, %31 ], [ 0, %16 ]
  %35 = load ptr, ptr %0, align 8, !tbaa !54
  store ptr %14, ptr %35, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 32
  %37 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %36, ptr noundef nonnull align 4 dereferenceable(92) %37, i64 92, i1 false)
  %38 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 38
  %39 = load i16, ptr %38, align 8, !tbaa !58
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 55
  store i32 %40, ptr %41, align 8, !tbaa !63
  %42 = icmp eq i8 %34, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %36, i16 noundef signext 1, ptr noundef %44) #11
  br label %45

45:                                               ; preds = %43, %33
  %46 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !51
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 35
  %51 = getelementptr inbounds ptr, ptr %4, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %50, i16 noundef signext 1, ptr noundef %52) #11
  br label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !51
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 50
  %59 = getelementptr inbounds ptr, ptr %4, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %58, i16 noundef signext 0, ptr noundef %60) #11
  br label %61

61:                                               ; preds = %57, %53
  %62 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !51
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 16
  br i1 %64, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds ptr, ptr %4, i64 3
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %65, i16 noundef signext 1, ptr noundef %68) #11
  tail call fastcc void @normalize_v3(ptr noundef nonnull %65) #13
  br label %71

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 17
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %65, ptr noundef nonnull %70) #13
  br label %71

71:                                               ; preds = %69, %66
  %72 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %73 = load i16, ptr %72, align 8, !tbaa !35
  %74 = and i16 %73, 4
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 16
  tail call fastcc void @negate_v3(ptr noundef nonnull %77) #13
  br label %78

78:                                               ; preds = %76, %71
  %79 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 8
  %80 = load i16, ptr %79, align 4, !tbaa !64
  %81 = icmp eq i16 %80, 118
  br i1 %81, label %82, label %138

82:                                               ; preds = %78
  %83 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 4
  %84 = load i8, ptr %83, align 1, !tbaa !51
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 38
  %88 = getelementptr inbounds ptr, ptr %4, i64 4
  %89 = load ptr, ptr %88, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %87, i16 noundef signext 1, ptr noundef %89) #11
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 5
  %92 = load i8, ptr %91, align 1, !tbaa !51
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 44
  %96 = getelementptr inbounds ptr, ptr %4, i64 5
  %97 = load ptr, ptr %96, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %95, i16 noundef signext 0, ptr noundef %97) #11
  br label %98

98:                                               ; preds = %94, %90
  %99 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 6
  %100 = load i8, ptr %99, align 1, !tbaa !51
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 45
  %104 = getelementptr inbounds ptr, ptr %4, i64 6
  %105 = load ptr, ptr %104, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %103, i16 noundef signext 0, ptr noundef %105) #11
  br label %106

106:                                              ; preds = %102, %98
  %107 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 7
  %108 = load i8, ptr %107, align 1, !tbaa !51
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 47
  %112 = getelementptr inbounds ptr, ptr %4, i64 7
  %113 = load ptr, ptr %112, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %111, i16 noundef signext 0, ptr noundef %113) #11
  br label %114

114:                                              ; preds = %110, %106
  %115 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 8
  %116 = load i8, ptr %115, align 1, !tbaa !51
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 48
  %120 = getelementptr inbounds ptr, ptr %4, i64 8
  %121 = load ptr, ptr %120, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %119, i16 noundef signext 0, ptr noundef %121) #11
  br label %122

122:                                              ; preds = %118, %114
  %123 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 9
  %124 = load i8, ptr %123, align 1, !tbaa !51
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 49
  %128 = getelementptr inbounds ptr, ptr %4, i64 9
  %129 = load ptr, ptr %128, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %127, i16 noundef signext 0, ptr noundef %129) #11
  br label %130

130:                                              ; preds = %126, %122
  %131 = getelementptr inbounds [11 x i8], ptr %9, i64 0, i64 10
  %132 = load i8, ptr %131, align 1, !tbaa !51
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 54
  %136 = getelementptr inbounds ptr, ptr %4, i64 10
  %137 = load ptr, ptr %136, align 8, !tbaa !47
  tail call void @nodestack_get_vec(ptr noundef nonnull %135, i16 noundef signext 0, ptr noundef %137) #11
  br label %138

138:                                              ; preds = %130, %134, %78
  %139 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 21
  %140 = load i32, ptr %139, align 8, !tbaa !65
  %141 = load ptr, ptr %35, align 8, !tbaa !56
  %142 = getelementptr inbounds %struct.Material, ptr %141, i64 0, i32 51
  %143 = load i32, ptr %142, align 4, !tbaa !66
  %144 = and i32 %143, 65536
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %138
  %147 = or i32 %140, 65536
  store i32 %147, ptr %139, align 8, !tbaa !65
  br label %148

148:                                              ; preds = %146, %138
  %149 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 116
  store i16 1, ptr %149, align 2, !tbaa !67
  %150 = load ptr, ptr @node_shader_lamp_loop, align 8, !tbaa !47
  call void %150(ptr noundef nonnull %35, ptr noundef nonnull %7) #11
  store i16 0, ptr %149, align 2, !tbaa !67
  store i32 %140, ptr %139, align 8, !tbaa !65
  %151 = load i16, ptr %72, align 8, !tbaa !35
  %152 = zext i16 %151 to i32
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %148
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  %156 = and i16 %151, 2
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8
  call fastcc void @sub_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %159) #13
  br label %167

160:                                              ; preds = %148
  %161 = and i32 %152, 2
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %164) #13
  br label %167

165:                                              ; preds = %160
  %166 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %166, align 8, !tbaa !68
  store <2 x float> zeroinitializer, ptr %8, align 16, !tbaa !68
  br label %167

167:                                              ; preds = %163, %165, %155, %158
  %168 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 2
  %169 = load float, ptr %168, align 4, !tbaa !69
  %170 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float %169, ptr %170, align 4, !tbaa !68
  %171 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 112
  %172 = load i8, ptr %171, align 8, !tbaa !71
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.bNodeExecData, ptr %3, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !72
  %177 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 103
  %178 = load i32, ptr %177, align 4, !tbaa !74
  %179 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 104
  %180 = load i32, ptr %179, align 8, !tbaa !75
  %181 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 113
  %182 = load i8, ptr %181, align 1, !tbaa !76
  call void @BKE_node_preview_set_pixel(ptr noundef %176, ptr noundef nonnull %8, i32 noundef %178, i32 noundef %180, i8 noundef zeroext %182) #11
  br label %183

183:                                              ; preds = %174, %167
  %184 = load ptr, ptr %5, align 8, !tbaa !47
  call fastcc void @copy_v3_v3(ptr noundef %184, ptr noundef nonnull %8) #13
  %185 = load float, ptr %168, align 4, !tbaa !69
  %186 = getelementptr inbounds ptr, ptr %5, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !47
  store float %185, ptr %187, align 8, !tbaa !68
  %188 = load i16, ptr %72, align 8, !tbaa !35
  %189 = and i16 %188, 4
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 16
  %193 = load <2 x float>, ptr %192, align 4, !tbaa !68
  %194 = fneg <2 x float> %193
  store <2 x float> %194, ptr %192, align 4, !tbaa !68
  %195 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 16, i64 2
  %196 = load float, ptr %195, align 4, !tbaa !68
  %197 = fneg float %196
  store float %197, ptr %195, align 4, !tbaa !68
  br label %198

198:                                              ; preds = %191, %183
  %199 = getelementptr inbounds ptr, ptr %5, i64 2
  %200 = load ptr, ptr %199, align 8, !tbaa !47
  %201 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 16
  call fastcc void @copy_v3_v3(ptr noundef %200, ptr noundef nonnull %201) #13
  %202 = load i16, ptr %79, align 4, !tbaa !64
  %203 = icmp eq i16 %202, 118
  br i1 %203, label %204, label %214

204:                                              ; preds = %198
  %205 = getelementptr inbounds ptr, ptr %5, i64 3
  %206 = load ptr, ptr %205, align 8, !tbaa !47
  %207 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef %206, ptr noundef nonnull %207) #13
  %208 = getelementptr inbounds ptr, ptr %5, i64 4
  %209 = load ptr, ptr %208, align 8, !tbaa !47
  %210 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef %209, ptr noundef nonnull %210) #13
  %211 = getelementptr inbounds ptr, ptr %5, i64 5
  %212 = load ptr, ptr %211, align 8, !tbaa !47
  %213 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 10
  call fastcc void @copy_v3_v3(ptr noundef %212, ptr noundef nonnull %213) #13
  br label %214

214:                                              ; preds = %204, %198
  %215 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %216 = load i32, ptr %215, align 8, !tbaa !77
  %217 = and i32 %216, 32
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  %220 = getelementptr inbounds %struct.ShaderCallData, ptr %0, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !78
  call fastcc void @copy_v4_v4(ptr noundef nonnull %10, ptr noundef %221) #13
  %222 = getelementptr inbounds %struct.ShadeResult, ptr %221, i64 0, i32 2
  %223 = load float, ptr %222, align 4, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %221, ptr noundef nonnull align 4 dereferenceable(212) %7, i64 212, i1 false), !tbaa.struct !79
  %224 = load ptr, ptr %220, align 8, !tbaa !78
  call fastcc void @copy_v4_v4(ptr noundef %224, ptr noundef nonnull %10) #13
  %225 = load ptr, ptr %220, align 8, !tbaa !78
  %226 = getelementptr inbounds %struct.ShadeResult, ptr %225, i64 0, i32 2
  store float %223, ptr %226, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  br label %227

227:                                              ; preds = %219, %214
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %7) #12
  br label %228

228:                                              ; preds = %227, %12, %6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gpu_shader_material(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !80 {
  %6 = alloca %struct.GPUShadeInput, align 8
  %7 = alloca %struct.GPUShadeResult, align 8
  %8 = alloca [11 x i8], align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %153, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %8, i8 0, i64 11, i1 false)
  %15 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @GPU_shadeinput_set(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %6) #11
  br label %36

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %27, %19 ], [ 0, %14 ]
  %21 = phi ptr [ %28, %19 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %21, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp ne ptr %23, null
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 %20
  store i8 %25, ptr %26, align 1, !tbaa !51
  %27 = add nuw i64 %20, 1
  %28 = load ptr, ptr %21, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %19, !llvm.loop !81

30:                                               ; preds = %19
  %31 = load i8, ptr %8, align 1, !tbaa !51
  %32 = icmp eq i8 %31, 0
  call void @GPU_shadeinput_set(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %6) #11
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call fastcc ptr @gpu_get_input_link(ptr noundef %3) #13
  %35 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !82
  br label %36

36:                                               ; preds = %18, %33, %30
  %37 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !51
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1
  %42 = call fastcc ptr @gpu_get_input_link(ptr noundef nonnull %41) #13
  %43 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !84
  br label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !51
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2
  %50 = call fastcc ptr @gpu_get_input_link(ptr noundef nonnull %49) #13
  %51 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 9
  store ptr %50, ptr %51, align 8, !tbaa !85
  br label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !51
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  %57 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 3
  %58 = call fastcc ptr @gpu_get_input_link(ptr noundef nonnull %57) #13
  %59 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 4
  store ptr %58, ptr %59, align 8, !tbaa !86
  %60 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %58, ptr noundef nonnull %59, ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  br label %61

61:                                               ; preds = %56, %52
  %62 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %63 = load i16, ptr %62, align 8, !tbaa !35
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !86
  %69 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %68, ptr noundef nonnull %67) #11
  br label %70

70:                                               ; preds = %66, %61
  %71 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 8
  %72 = load i16, ptr %71, align 4, !tbaa !64
  %73 = icmp eq i16 %72, 118
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 5
  %76 = load i8, ptr %75, align 1, !tbaa !51
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 5
  %80 = call fastcc ptr @gpu_get_input_link(ptr noundef nonnull %79) #13
  %81 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 13
  store ptr %80, ptr %81, align 8, !tbaa !87
  br label %82

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 6
  %84 = load i8, ptr %83, align 1, !tbaa !51
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 6
  %88 = call fastcc ptr @gpu_get_input_link(ptr noundef nonnull %87) #13
  %89 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 11
  store ptr %88, ptr %89, align 8, !tbaa !88
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds [11 x i8], ptr %8, i64 0, i64 9
  %92 = load i8, ptr %91, align 1, !tbaa !51
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 9
  %96 = call fastcc ptr @gpu_get_input_link(ptr noundef nonnull %95) #13
  %97 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 8
  store ptr %96, ptr %97, align 8, !tbaa !89
  br label %98

98:                                               ; preds = %90, %94, %70
  call void @GPU_shaderesult_set(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %99 = load i16, ptr %62, align 8, !tbaa !35
  %100 = zext i16 %99 to i32
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !90
  %106 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  store ptr %105, ptr %106, align 8, !tbaa !92
  %107 = and i16 %99, 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %110 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !94
  %112 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %105, ptr noundef %111, ptr noundef nonnull %106, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %123

113:                                              ; preds = %98
  %114 = and i32 %100, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !94
  %119 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  store ptr %118, ptr %119, align 8, !tbaa !92
  br label %123

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  %122 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %121) #11
  br label %123

123:                                              ; preds = %116, %120, %103, %109
  %124 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !92
  %126 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !95
  %128 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %125, ptr noundef %127, ptr noundef nonnull %124) #11
  %129 = load ptr, ptr %126, align 8, !tbaa !95
  %130 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 1, i32 3
  store ptr %129, ptr %130, align 8, !tbaa !92
  %131 = load i16, ptr %62, align 8, !tbaa !35
  %132 = and i16 %131, 4
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !86
  %137 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %136, ptr noundef nonnull %135) #11
  br label %138

138:                                              ; preds = %134, %123
  %139 = getelementptr inbounds %struct.GPUShadeInput, ptr %6, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !86
  %141 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 2, i32 3
  store ptr %140, ptr %141, align 8, !tbaa !92
  %142 = load i16, ptr %71, align 4, !tbaa !64
  %143 = icmp eq i16 %142, 118
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load ptr, ptr %7, align 8, !tbaa !96
  %146 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 3, i32 3
  store ptr %145, ptr %146, align 8, !tbaa !92
  %147 = getelementptr inbounds %struct.GPUShadeResult, ptr %7, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !94
  %149 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 4, i32 3
  store ptr %148, ptr %149, align 8, !tbaa !92
  %150 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 5, i32 3
  %151 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %150) #11
  br label %152

152:                                              ; preds = %144, %138
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #12
  br label %153

153:                                              ; preds = %5, %152
  %154 = phi i32 [ 1, %152 ], [ 0, %5 ]
  ret i32 %154
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_material_ext() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, i32 noundef 118, ptr noundef nonnull @.str.1, i16 noundef signext 0, i16 noundef signext 4) #11
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, i16 noundef signext 1) #11
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, ptr noundef nonnull @sh_node_material_ext_in, ptr noundef nonnull @sh_node_material_ext_out) #11
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, ptr noundef nonnull @node_shader_init_material) #11
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, i32 noundef 2) #11
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_material) #11
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_material_ext.ntype, ptr noundef nonnull @gpu_shader_material) #11
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_material_ext.ntype) #11
  ret void
}

; Function Attrs: optsize
declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !97 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !98 {
  %3 = load float, ptr %1, align 4, !tbaa !68
  store float %3, ptr %0, align 4, !tbaa !68
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !99 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !68
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !68
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !100 {
  %3 = load float, ptr %1, align 4, !tbaa !68
  %4 = load float, ptr %0, align 4, !tbaa !68
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !68
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !68
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !68
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !68
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !68
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @BKE_node_preview_set_pixel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !101 {
  %3 = load float, ptr %1, align 4, !tbaa !68
  store float %3, ptr %0, align 4, !tbaa !68
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !102 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !103 {
  %3 = load float, ptr %0, align 4, !tbaa !68
  %4 = load float, ptr %1, align 4, !tbaa !68
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !68
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !68
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !104 {
  %4 = load float, ptr %1, align 4, !tbaa !68
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !68
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !105 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !68
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare void @GPU_shadeinput_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_get_input_link(ptr noundef %0) unnamed_addr #0 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 2
  %7 = tail call ptr @GPU_uniform(ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_shaderesult_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

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
!34 = !{!"node_shader_material.c:node_shader_init_material"}
!35 = !{!36, !41, i64 376}
!36 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !38, i64 188, !42, i64 200, !42, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !38, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !37, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !37, i64 456}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!"node_shader_material.c:node_shader_exec_material"}
!46 = !{!36, !37, i64 240}
!47 = !{!37, !37, i64 0}
!48 = !{!49, !37, i64 296}
!49 = !{!"bNodeSocket", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !38, i64 96, !37, i64 160, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !37, i64 176, !38, i64 184, !43, i64 248, !43, i64 252, !37, i64 256, !41, i64 264, !41, i64 266, !40, i64 268, !37, i64 272, !40, i64 280, !40, i64 284, !37, i64 288, !37, i64 296, !50, i64 304}
!50 = !{!"bNodeStack", !38, i64 0, !43, i64 16, !43, i64 20, !37, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !38, i64 44}
!51 = !{!38, !38, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!55, !37, i64 0}
!55 = !{!"ShaderCallData", !37, i64 0, !37, i64 8}
!56 = !{!57, !37, i64 0}
!57 = !{!"ShadeInput", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !38, i64 44, !41, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 90, !41, i64 92, !41, i64 94, !41, i64 96, !38, i64 100, !38, i64 112, !38, i64 124, !38, i64 136, !38, i64 148, !40, i64 160, !40, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !38, i64 192, !38, i64 204, !38, i64 216, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !40, i64 320, !38, i64 324, !38, i64 336, !38, i64 348, !38, i64 360, !38, i64 372, !38, i64 384, !38, i64 400, !38, i64 416, !43, i64 428, !38, i64 432, !38, i64 444, !38, i64 456, !43, i64 472, !38, i64 476, !38, i64 492, !38, i64 504, !38, i64 520, !38, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !38, i64 1112, !38, i64 1124, !38, i64 1136, !38, i64 1148, !38, i64 1160, !38, i64 1172, !38, i64 1184, !38, i64 1196, !38, i64 1208, !38, i64 1220, !38, i64 1232, !38, i64 1244, !43, i64 1256, !43, i64 1260, !38, i64 1264, !38, i64 1276, !38, i64 1288, !38, i64 1300, !38, i64 1312, !38, i64 1324, !43, i64 1336, !43, i64 1340, !38, i64 1344, !38, i64 1356, !38, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !38, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !38, i64 1416, !43, i64 1428, !38, i64 1432, !38, i64 1433, !41, i64 1434, !41, i64 1436, !41, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !37, i64 1456, !37, i64 1464}
!58 = !{!59, !41, i64 360}
!59 = !{!"Material", !60, i64 0, !37, i64 120, !41, i64 128, !41, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !61, i64 224, !62, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !38, i64 362, !38, i64 363, !43, i64 364, !43, i64 368, !41, i64 372, !41, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !41, i64 392, !41, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !38, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !40, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !38, i64 550, !38, i64 551, !41, i64 552, !41, i64 554, !43, i64 556, !43, i64 560, !38, i64 564, !43, i64 580, !43, i64 584, !41, i64 588, !41, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !41, i64 612, !41, i64 614, !43, i64 616, !43, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !41, i64 820, !41, i64 822, !38, i64 824, !38, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !41, i64 876, !41, i64 878, !40, i64 880, !41, i64 884, !41, i64 886, !38, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!60 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!61 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!62 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!63 = !{!57, !40, i64 320}
!64 = !{!36, !41, i64 172}
!65 = !{!57, !40, i64 160}
!66 = !{!59, !40, i64 396}
!67 = !{!57, !41, i64 1438}
!68 = !{!43, !43, i64 0}
!69 = !{!70, !43, i64 32}
!70 = !{!"ShadeResult", !38, i64 0, !38, i64 16, !43, i64 32, !43, i64 36, !43, i64 40, !38, i64 44, !38, i64 56, !38, i64 68, !38, i64 80, !38, i64 92, !38, i64 108, !38, i64 120, !38, i64 132, !38, i64 144, !38, i64 156, !38, i64 168, !38, i64 180, !38, i64 196}
!71 = !{!57, !38, i64 1432}
!72 = !{!73, !37, i64 8}
!73 = !{!"bNodeExecData", !37, i64 0, !37, i64 8}
!74 = !{!57, !40, i64 1380}
!75 = !{!57, !40, i64 1384}
!76 = !{!57, !38, i64 1433}
!77 = !{!36, !40, i64 168}
!78 = !{!55, !37, i64 8}
!79 = !{i64 0, i64 16, !51, i64 16, i64 16, !51, i64 32, i64 4, !68, i64 36, i64 4, !68, i64 40, i64 4, !68, i64 44, i64 12, !51, i64 56, i64 12, !51, i64 68, i64 12, !51, i64 80, i64 12, !51, i64 92, i64 16, !51, i64 108, i64 12, !51, i64 120, i64 12, !51, i64 132, i64 12, !51, i64 144, i64 12, !51, i64 156, i64 12, !51, i64 168, i64 12, !51, i64 180, i64 16, !51, i64 196, i64 16, !51}
!80 = !{!"node_shader_material.c:gpu_shader_material"}
!81 = distinct !{!81, !53}
!82 = !{!83, !37, i64 16}
!83 = !{!"GPUShadeInput", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104}
!84 = !{!83, !37, i64 24}
!85 = !{!83, !37, i64 72}
!86 = !{!83, !37, i64 32}
!87 = !{!83, !37, i64 104}
!88 = !{!83, !37, i64 88}
!89 = !{!83, !37, i64 64}
!90 = !{!91, !37, i64 16}
!91 = !{!"GPUShadeResult", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!92 = !{!93, !37, i64 32}
!93 = !{!"GPUNodeStack", !40, i64 0, !37, i64 8, !38, i64 16, !37, i64 32, !38, i64 40, !38, i64 41, !41, i64 42}
!94 = !{!91, !37, i64 8}
!95 = !{!91, !37, i64 24}
!96 = !{!91, !37, i64 0}
!97 = !{!"node_shader_material.c:normalize_v3"}
!98 = !{!"node_shader_material.c:copy_v3_v3"}
!99 = !{!"node_shader_material.c:negate_v3"}
!100 = !{!"node_shader_material.c:sub_v3_v3"}
!101 = !{!"node_shader_material.c:copy_v4_v4"}
!102 = !{!"node_shader_material.c:normalize_v3_v3"}
!103 = !{!"node_shader_material.c:dot_v3v3"}
!104 = !{!"node_shader_material.c:mul_v3_v3fl"}
!105 = !{!"node_shader_material.c:zero_v3"}
!106 = !{!"node_shader_material.c:gpu_get_input_link"}
