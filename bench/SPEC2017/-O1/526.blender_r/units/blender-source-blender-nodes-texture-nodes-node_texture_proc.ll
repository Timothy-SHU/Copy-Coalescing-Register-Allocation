; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_proc.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }

@register_node_type_tex_proc_voronoi.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"Voronoi\00", align 1
@voronoi_inputs = internal global [9 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"W1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -2.000000e+00, float 2.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"W2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -2.000000e+00, float 2.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"W3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -2.000000e+00, float 2.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"W4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -2.000000e+00, float 2.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"iScale\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F847AE140000000, float 1.000000e+01, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F1A36E2E0000000, float 4.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs_both = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 22, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"Tex\00", align 1
@register_node_type_tex_proc_blend.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@blend_inputs = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs_color_only = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_tex_proc_magic.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Magic\00", align 1
@magic_inputs = internal global [4 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Turbulence\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+02, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_tex_proc_marble.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"Marble\00", align 1
@marble_inputs = internal global [5 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F1A36E2E0000000, float 2.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Turbulence\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+02, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_tex_proc_clouds.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"Clouds\00", align 1
@clouds_inputs = internal global [4 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F1A36E2E0000000, float 2.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_tex_proc_wood.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"Wood\00", align 1
@wood_inputs = internal global [5 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F1A36E2E0000000, float 2.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Turbulence\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+02, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_tex_proc_musgrave.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"Musgrave\00", align 1
@musgrave_inputs = internal global [8 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F1A36E2E0000000, float 2.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Lacunarity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Octaves\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 8.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"iScale\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+01, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F1A36E2E0000000, float 2.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_tex_proc_noise.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@noise_inputs = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_tex_proc_stucci.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"Stucci\00", align 1
@stucci_inputs = internal global [5 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F1A36E2E0000000, float 2.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Turbulence\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+02, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@register_node_type_tex_proc_distnoise.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"Distorted Noise\00", align 1
@distnoise_inputs = internal global [5 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F1A36E2E0000000, float 2.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Distortion\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+01, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@MEM_callocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_voronoi() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, i32 noundef 512, ptr noundef nonnull @.str, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, ptr noundef nonnull @voronoi_inputs, ptr noundef nonnull @outputs_both) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @voronoi_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype) #4
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @init(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 416, ptr noundef nonnull @.str.1) #4
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !38
  tail call void @default_tex(ptr noundef %4) #4
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 8
  %7 = load i16, ptr %6, align 4, !tbaa !45
  %8 = add i16 %7, -500
  %9 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 32
  store i16 %8, ptr %9, align 8, !tbaa !46
  %10 = icmp eq i16 %8, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 33
  store i16 2, ptr %12, align 2, !tbaa !50
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_standard_storage(ptr noundef) #1

declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @voronoi_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @voronoi_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @voronoi_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_blend() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, i32 noundef 505, ptr noundef nonnull @.str.2, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, ptr noundef nonnull @blend_inputs, ptr noundef nonnull @outputs_color_only) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @blend_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @blend_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @blend_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_magic() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, i32 noundef 504, ptr noundef nonnull @.str.3, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, ptr noundef nonnull @magic_inputs, ptr noundef nonnull @outputs_color_only) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @magic_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @magic_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @magic_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @magic_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_marble() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, i32 noundef 503, ptr noundef nonnull @.str.4, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, ptr noundef nonnull @marble_inputs, ptr noundef nonnull @outputs_both) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @marble_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @marble_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @marble_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @marble_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_clouds() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, i32 noundef 501, ptr noundef nonnull @.str.5, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, ptr noundef nonnull @clouds_inputs, ptr noundef nonnull @outputs_both) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @clouds_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clouds_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @clouds_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @clouds_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_wood() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, i32 noundef 502, ptr noundef nonnull @.str.6, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, ptr noundef nonnull @wood_inputs, ptr noundef nonnull @outputs_both) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @wood_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wood_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @wood_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @wood_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_musgrave() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, i32 noundef 511, ptr noundef nonnull @.str.7, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, ptr noundef nonnull @musgrave_inputs, ptr noundef nonnull @outputs_both) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @musgrave_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @musgrave_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @musgrave_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @musgrave_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_noise() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, i32 noundef 507, ptr noundef nonnull @.str.8, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, ptr noundef nonnull @noise_inputs, ptr noundef nonnull @outputs_color_only) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @noise_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @noise_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @noise_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @noise_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_stucci() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, i32 noundef 506, ptr noundef nonnull @.str.9, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, ptr noundef nonnull @stucci_inputs, ptr noundef nonnull @outputs_both) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @stucci_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stucci_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @stucci_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @stucci_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_proc_distnoise() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, i32 noundef 513, ptr noundef nonnull @.str.10, i16 noundef signext 13, i16 noundef signext 4) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, ptr noundef nonnull @distnoise_inputs, ptr noundef nonnull @outputs_both) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, i32 noundef 2) #4
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, ptr noundef nonnull @init) #4
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @distnoise_exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @distnoise_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %7, %6 ], [ %11, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i32 %10, 1
  br i1 %12, label %14, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %17, ptr noundef nonnull @distnoise_colorfn, ptr noundef %0) #4
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp ugt i32 %10, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %22, ptr noundef nonnull @distnoise_normalfn, ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @default_tex(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @voronoi_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @voronoi_map_inputs, i16 noundef signext %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @voronoi_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 19
  store float %17, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds ptr, ptr %3, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = call float @tex_input_value(ptr noundef %20, ptr noundef %1, i16 noundef signext %4) #4
  %22 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 20
  store float %21, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %3, i64 4
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = call float @tex_input_value(ptr noundef %24, ptr noundef %1, i16 noundef signext %4) #4
  %26 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 21
  store float %25, ptr %26, align 4, !tbaa !61
  %27 = getelementptr inbounds ptr, ptr %3, i64 5
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = call float @tex_input_value(ptr noundef %28, ptr noundef %1, i16 noundef signext %4) #4
  %30 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 22
  store float %29, ptr %30, align 8, !tbaa !62
  %31 = getelementptr inbounds ptr, ptr %3, i64 6
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = call float @tex_input_value(ptr noundef %32, ptr noundef %1, i16 noundef signext %4) #4
  %34 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 18
  store float %33, ptr %34, align 8, !tbaa !63
  %35 = getelementptr inbounds ptr, ptr %3, i64 7
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = call float @tex_input_value(ptr noundef %36, ptr noundef %1, i16 noundef signext %4) #4
  %38 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 2
  store float %37, ptr %38, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %39 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %39, align 8, !tbaa !65
  %40 = load ptr, ptr %1, align 8, !tbaa !67
  %41 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  %43 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !71
  %47 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  %49 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !73
  %51 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %40, ptr noundef %42, ptr noundef %44, i32 noundef %46, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %48, ptr noundef %50, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5, i16 noundef signext %6) unnamed_addr #0 {
  %8 = alloca %struct.TexResult, align 8
  %9 = alloca %struct.Tex, align 8
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %9) #4
  %12 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %9, ptr noundef nonnull align 8 dereferenceable(416) %13, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #4
  %14 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %10, ptr noundef %14, ptr noundef %1, i16 noundef signext %6) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %11, ptr noundef %16, ptr noundef %1, i16 noundef signext %6) #4
  call void %5(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef %1, i16 noundef signext %6) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #4
  %17 = icmp eq i8 %4, 0
  %18 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 6
  %19 = select i1 %17, ptr null, ptr %0
  store ptr %19, ptr %18, align 8, !tbaa !65
  %20 = load ptr, ptr %1, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !71
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = call i32 @multitex_nodes(ptr noundef nonnull %9, ptr noundef %20, ptr noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef nonnull %8, i16 noundef signext %6, i16 noundef signext 0, ptr noundef %28, ptr noundef %30, ptr noundef null) #4
  br i1 %17, label %32, label %59

32:                                               ; preds = %7
  %33 = and i32 %31, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !58
  store float %37, ptr %0, align 4, !tbaa !58
  %38 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 2
  %39 = load float, ptr %38, align 8, !tbaa !58
  %40 = getelementptr inbounds float, ptr %0, i64 1
  store float %39, ptr %40, align 4, !tbaa !58
  %41 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 3
  %42 = load float, ptr %41, align 4, !tbaa !58
  %43 = getelementptr inbounds float, ptr %0, i64 2
  store float %42, ptr %43, align 4, !tbaa !58
  %44 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 4
  %45 = load float, ptr %44, align 8, !tbaa !58
  %46 = getelementptr inbounds float, ptr %0, i64 3
  store float %45, ptr %46, align 4, !tbaa !58
  br label %59

47:                                               ; preds = %32
  %48 = load float, ptr %10, align 16, !tbaa !58
  store float %48, ptr %0, align 4, !tbaa !58
  %49 = getelementptr inbounds float, ptr %10, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !58
  %51 = getelementptr inbounds float, ptr %0, i64 1
  store float %50, ptr %51, align 4, !tbaa !58
  %52 = getelementptr inbounds float, ptr %10, i64 2
  %53 = load float, ptr %52, align 8, !tbaa !58
  %54 = getelementptr inbounds float, ptr %0, i64 2
  store float %53, ptr %54, align 4, !tbaa !58
  %55 = getelementptr inbounds float, ptr %10, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !58
  %57 = getelementptr inbounds float, ptr %0, i64 3
  store float %56, ptr %57, align 4, !tbaa !58
  %58 = load float, ptr %8, align 8, !tbaa !74
  call void @ramp_blend(i32 noundef 0, ptr noundef nonnull %0, float noundef %58, ptr noundef nonnull %11) #4
  br label %59

59:                                               ; preds = %7, %35, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %9) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @voronoi_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #4
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 19
  store float %7, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #4
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 20
  store float %11, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds ptr, ptr %1, i64 4
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = tail call float @tex_input_value(ptr noundef %14, ptr noundef %2, i16 noundef signext %3) #4
  %16 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 21
  store float %15, ptr %16, align 4, !tbaa !61
  %17 = getelementptr inbounds ptr, ptr %1, i64 5
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call float @tex_input_value(ptr noundef %18, ptr noundef %2, i16 noundef signext %3) #4
  %20 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 22
  store float %19, ptr %20, align 8, !tbaa !62
  %21 = getelementptr inbounds ptr, ptr %1, i64 6
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = tail call float @tex_input_value(ptr noundef %22, ptr noundef %2, i16 noundef signext %3) #4
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  store float %23, ptr %24, align 8, !tbaa !63
  %25 = getelementptr inbounds ptr, ptr %1, i64 7
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = tail call float @tex_input_value(ptr noundef %26, ptr noundef %2, i16 noundef signext %3) #4
  %28 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %27, ptr %28, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare i32 @multitex_nodes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @blend_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %15 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr null, ptr %15, align 8, !tbaa !65
  %16 = load ptr, ptr %1, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !71
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %24, ptr noundef %26, ptr noundef null) #4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !58
  store float %32, ptr %0, align 4, !tbaa !58
  %33 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %34 = load float, ptr %33, align 8, !tbaa !58
  %35 = getelementptr inbounds float, ptr %0, i64 1
  store float %34, ptr %35, align 4, !tbaa !58
  %36 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !58
  %39 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %40 = load float, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds float, ptr %0, i64 3
  store float %40, ptr %41, align 4, !tbaa !58
  br label %54

42:                                               ; preds = %5
  %43 = load float, ptr %8, align 16, !tbaa !58
  store float %43, ptr %0, align 4, !tbaa !58
  %44 = getelementptr inbounds float, ptr %8, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !58
  %46 = getelementptr inbounds float, ptr %0, i64 1
  store float %45, ptr %46, align 4, !tbaa !58
  %47 = getelementptr inbounds float, ptr %8, i64 2
  %48 = load float, ptr %47, align 8, !tbaa !58
  %49 = getelementptr inbounds float, ptr %0, i64 2
  store float %48, ptr %49, align 4, !tbaa !58
  %50 = getelementptr inbounds float, ptr %8, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds float, ptr %0, i64 3
  store float %51, ptr %52, align 4, !tbaa !58
  %53 = load float, ptr %6, align 8, !tbaa !74
  call void @ramp_blend(i32 noundef 0, ptr noundef nonnull %0, float noundef %53, ptr noundef nonnull %9) #4
  br label %54

54:                                               ; preds = %30, %42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %15 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %15, align 8, !tbaa !65
  %16 = load ptr, ptr %1, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !71
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %24, ptr noundef %26, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @magic_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 3
  store float %17, ptr %18, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %19 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr null, ptr %19, align 8, !tbaa !65
  %20 = load ptr, ptr %1, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !71
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %20, ptr noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %28, ptr noundef %30, ptr noundef null) #4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !58
  store float %36, ptr %0, align 4, !tbaa !58
  %37 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %38 = load float, ptr %37, align 8, !tbaa !58
  %39 = getelementptr inbounds float, ptr %0, i64 1
  store float %38, ptr %39, align 4, !tbaa !58
  %40 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !58
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %44 = load float, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds float, ptr %0, i64 3
  store float %44, ptr %45, align 4, !tbaa !58
  br label %58

46:                                               ; preds = %5
  %47 = load float, ptr %8, align 16, !tbaa !58
  store float %47, ptr %0, align 4, !tbaa !58
  %48 = getelementptr inbounds float, ptr %8, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = getelementptr inbounds float, ptr %0, i64 1
  store float %49, ptr %50, align 4, !tbaa !58
  %51 = getelementptr inbounds float, ptr %8, i64 2
  %52 = load float, ptr %51, align 8, !tbaa !58
  %53 = getelementptr inbounds float, ptr %0, i64 2
  store float %52, ptr %53, align 4, !tbaa !58
  %54 = getelementptr inbounds float, ptr %8, i64 3
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = getelementptr inbounds float, ptr %0, i64 3
  store float %55, ptr %56, align 4, !tbaa !58
  %57 = load float, ptr %6, align 8, !tbaa !74
  call void @ramp_blend(i32 noundef 0, ptr noundef nonnull %0, float noundef %57, ptr noundef nonnull %9) #4
  br label %58

58:                                               ; preds = %34, %46
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @magic_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 3
  store float %17, ptr %18, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %19 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %19, align 8, !tbaa !65
  %20 = load ptr, ptr %1, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !71
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %20, ptr noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %28, ptr noundef %30, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @marble_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @marble_map_inputs, i16 noundef signext %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @marble_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 2
  store float %17, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %3, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = call float @tex_input_value(ptr noundef %20, ptr noundef %1, i16 noundef signext %4) #4
  %22 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 3
  store float %21, ptr %22, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %23 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %23, align 8, !tbaa !65
  %24 = load ptr, ptr %1, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !71
  %31 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %24, ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %32, ptr noundef %34, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @marble_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #4
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #4
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  store float %11, ptr %12, align 4, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clouds_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 2
  store float %17, ptr %18, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %19 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr null, ptr %19, align 8, !tbaa !65
  %20 = load ptr, ptr %1, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !71
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %20, ptr noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %28, ptr noundef %30, ptr noundef null) #4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !58
  store float %36, ptr %0, align 4, !tbaa !58
  %37 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %38 = load float, ptr %37, align 8, !tbaa !58
  %39 = getelementptr inbounds float, ptr %0, i64 1
  store float %38, ptr %39, align 4, !tbaa !58
  %40 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !58
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %44 = load float, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds float, ptr %0, i64 3
  store float %44, ptr %45, align 4, !tbaa !58
  br label %58

46:                                               ; preds = %5
  %47 = load float, ptr %8, align 16, !tbaa !58
  store float %47, ptr %0, align 4, !tbaa !58
  %48 = getelementptr inbounds float, ptr %8, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = getelementptr inbounds float, ptr %0, i64 1
  store float %49, ptr %50, align 4, !tbaa !58
  %51 = getelementptr inbounds float, ptr %8, i64 2
  %52 = load float, ptr %51, align 8, !tbaa !58
  %53 = getelementptr inbounds float, ptr %0, i64 2
  store float %52, ptr %53, align 4, !tbaa !58
  %54 = getelementptr inbounds float, ptr %8, i64 3
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = getelementptr inbounds float, ptr %0, i64 3
  store float %55, ptr %56, align 4, !tbaa !58
  %57 = load float, ptr %6, align 8, !tbaa !74
  call void @ramp_blend(i32 noundef 0, ptr noundef nonnull %0, float noundef %57, ptr noundef nonnull %9) #4
  br label %58

58:                                               ; preds = %34, %46
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clouds_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 2
  store float %17, ptr %18, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %19 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %19, align 8, !tbaa !65
  %20 = load ptr, ptr %1, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !71
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %20, ptr noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %28, ptr noundef %30, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wood_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @wood_map_inputs, i16 noundef signext %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wood_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 2
  store float %17, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %3, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = call float @tex_input_value(ptr noundef %20, ptr noundef %1, i16 noundef signext %4) #4
  %22 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 3
  store float %21, ptr %22, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %23 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %23, align 8, !tbaa !65
  %24 = load ptr, ptr %1, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !71
  %31 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %24, ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %32, ptr noundef %34, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wood_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #4
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #4
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  store float %11, ptr %12, align 4, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @musgrave_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @musgrave_map_inputs, i16 noundef signext %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @musgrave_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 12
  store float %17, ptr %18, align 8, !tbaa !76
  %19 = getelementptr inbounds ptr, ptr %3, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = call float @tex_input_value(ptr noundef %20, ptr noundef %1, i16 noundef signext %4) #4
  %22 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 13
  store float %21, ptr %22, align 4, !tbaa !77
  %23 = getelementptr inbounds ptr, ptr %3, i64 4
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = call float @tex_input_value(ptr noundef %24, ptr noundef %1, i16 noundef signext %4) #4
  %26 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 14
  store float %25, ptr %26, align 8, !tbaa !78
  %27 = getelementptr inbounds ptr, ptr %3, i64 5
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = call float @tex_input_value(ptr noundef %28, ptr noundef %1, i16 noundef signext %4) #4
  %30 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 18
  store float %29, ptr %30, align 8, !tbaa !63
  %31 = getelementptr inbounds ptr, ptr %3, i64 6
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = call float @tex_input_value(ptr noundef %32, ptr noundef %1, i16 noundef signext %4) #4
  %34 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 2
  store float %33, ptr %34, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %35 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %35, align 8, !tbaa !65
  %36 = load ptr, ptr %1, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !71
  %43 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  %47 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %36, ptr noundef %38, ptr noundef %40, i32 noundef %42, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %44, ptr noundef %46, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @musgrave_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #4
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  store float %7, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #4
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  store float %11, ptr %12, align 4, !tbaa !77
  %13 = getelementptr inbounds ptr, ptr %1, i64 4
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = tail call float @tex_input_value(ptr noundef %14, ptr noundef %2, i16 noundef signext %3) #4
  %16 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  store float %15, ptr %16, align 8, !tbaa !78
  %17 = getelementptr inbounds ptr, ptr %1, i64 5
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call float @tex_input_value(ptr noundef %18, ptr noundef %2, i16 noundef signext %3) #4
  %20 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  store float %19, ptr %20, align 8, !tbaa !63
  %21 = getelementptr inbounds ptr, ptr %1, i64 6
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = tail call float @tex_input_value(ptr noundef %22, ptr noundef %2, i16 noundef signext %3) #4
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %23, ptr %24, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @noise_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %15 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr null, ptr %15, align 8, !tbaa !65
  %16 = load ptr, ptr %1, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !71
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %24, ptr noundef %26, ptr noundef null) #4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !58
  store float %32, ptr %0, align 4, !tbaa !58
  %33 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %34 = load float, ptr %33, align 8, !tbaa !58
  %35 = getelementptr inbounds float, ptr %0, i64 1
  store float %34, ptr %35, align 4, !tbaa !58
  %36 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !58
  %39 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %40 = load float, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds float, ptr %0, i64 3
  store float %40, ptr %41, align 4, !tbaa !58
  br label %54

42:                                               ; preds = %5
  %43 = load float, ptr %8, align 16, !tbaa !58
  store float %43, ptr %0, align 4, !tbaa !58
  %44 = getelementptr inbounds float, ptr %8, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !58
  %46 = getelementptr inbounds float, ptr %0, i64 1
  store float %45, ptr %46, align 4, !tbaa !58
  %47 = getelementptr inbounds float, ptr %8, i64 2
  %48 = load float, ptr %47, align 8, !tbaa !58
  %49 = getelementptr inbounds float, ptr %0, i64 2
  store float %48, ptr %49, align 4, !tbaa !58
  %50 = getelementptr inbounds float, ptr %8, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds float, ptr %0, i64 3
  store float %51, ptr %52, align 4, !tbaa !58
  %53 = load float, ptr %6, align 8, !tbaa !74
  call void @ramp_blend(i32 noundef 0, ptr noundef nonnull %0, float noundef %53, ptr noundef nonnull %9) #4
  br label %54

54:                                               ; preds = %30, %42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @noise_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %15 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %15, align 8, !tbaa !65
  %16 = load ptr, ptr %1, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !71
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %24, ptr noundef %26, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stucci_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @stucci_map_inputs, i16 noundef signext %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stucci_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 2
  store float %17, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %3, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = call float @tex_input_value(ptr noundef %20, ptr noundef %1, i16 noundef signext %4) #4
  %22 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 3
  store float %21, ptr %22, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %23 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %23, align 8, !tbaa !65
  %24 = load ptr, ptr %1, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !71
  %31 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %24, ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %32, ptr noundef %34, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stucci_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #4
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #4
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  store float %11, ptr %12, align 4, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @distnoise_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @distnoise_map_inputs, i16 noundef signext %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @distnoise_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca %struct.Tex, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #4
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %7, ptr noundef nonnull align 8 dereferenceable(416) %11, i64 416, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %14, ptr noundef %1, i16 noundef signext %4) #4
  %15 = getelementptr inbounds ptr, ptr %3, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = call float @tex_input_value(ptr noundef %16, ptr noundef %1, i16 noundef signext %4) #4
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 2
  store float %17, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %3, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = call float @tex_input_value(ptr noundef %20, ptr noundef %1, i16 noundef signext %4) #4
  %22 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 17
  store float %21, ptr %22, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %23 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  store ptr %0, ptr %23, align 8, !tbaa !65
  %24 = load ptr, ptr %1, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !71
  %31 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = call i32 @multitex_nodes(ptr noundef nonnull %7, ptr noundef %24, ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef nonnull %6, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %32, ptr noundef %34, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @distnoise_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #4
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #4
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 17
  store float %11, ptr %12, align 4, !tbaa !79
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!45 = !{!39, !41, i64 172}
!46 = !{!47, !41, i64 232}
!47 = !{!"Tex", !48, i64 0, !35, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !40, i64 252, !40, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !49, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!48 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!49 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!50 = !{!47, !41, i64 234}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 66, !55, i64 98, i64 2, !56, i64 100, i64 4, !57, i64 104, i64 4, !57, i64 108, i64 4, !57, i64 112, i64 8, !34, i64 120, i64 8, !34, i64 128, i64 4, !58, i64 132, i64 4, !58, i64 136, i64 4, !58, i64 140, i64 4, !58, i64 144, i64 4, !58, i64 148, i64 4, !58, i64 152, i64 4, !58, i64 156, i64 4, !58, i64 160, i64 4, !58, i64 164, i64 4, !58, i64 168, i64 4, !58, i64 172, i64 4, !58, i64 176, i64 4, !58, i64 180, i64 4, !58, i64 184, i64 4, !58, i64 188, i64 4, !58, i64 192, i64 4, !58, i64 196, i64 4, !58, i64 200, i64 4, !58, i64 204, i64 4, !58, i64 208, i64 4, !58, i64 212, i64 4, !58, i64 216, i64 2, !56, i64 218, i64 2, !56, i64 220, i64 2, !56, i64 222, i64 2, !56, i64 224, i64 2, !56, i64 226, i64 2, !56, i64 228, i64 2, !56, i64 230, i64 2, !56, i64 232, i64 2, !56, i64 234, i64 2, !56, i64 236, i64 4, !58, i64 240, i64 4, !58, i64 244, i64 4, !58, i64 248, i64 4, !58, i64 252, i64 4, !57, i64 256, i64 4, !57, i64 260, i64 2, !56, i64 262, i64 2, !56, i64 264, i64 2, !56, i64 266, i64 2, !56, i64 268, i64 4, !57, i64 272, i64 4, !57, i64 276, i64 4, !57, i64 280, i64 4, !57, i64 284, i64 4, !58, i64 288, i64 4, !58, i64 292, i64 4, !58, i64 296, i64 8, !34, i64 304, i64 4, !57, i64 308, i64 4, !57, i64 312, i64 4, !57, i64 316, i64 4, !57, i64 320, i64 1, !55, i64 321, i64 1, !55, i64 322, i64 1, !55, i64 323, i64 1, !55, i64 324, i64 2, !56, i64 326, i64 2, !56, i64 328, i64 2, !56, i64 330, i64 2, !56, i64 332, i64 4, !57, i64 336, i64 8, !34, i64 344, i64 8, !34, i64 352, i64 8, !34, i64 360, i64 8, !34, i64 368, i64 8, !34, i64 376, i64 8, !34, i64 384, i64 8, !34, i64 392, i64 8, !34, i64 400, i64 8, !34, i64 408, i64 1, !55, i64 409, i64 7, !55}
!55 = !{!36, !36, i64 0}
!56 = !{!41, !41, i64 0}
!57 = !{!40, !40, i64 0}
!58 = !{!43, !43, i64 0}
!59 = !{!47, !43, i64 196}
!60 = !{!47, !43, i64 200}
!61 = !{!47, !43, i64 204}
!62 = !{!47, !43, i64 208}
!63 = !{!47, !43, i64 192}
!64 = !{!47, !43, i64 128}
!65 = !{!66, !35, i64 24}
!66 = !{!"TexResult", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !40, i64 20, !35, i64 24}
!67 = !{!68, !35, i64 0}
!68 = !{!"TexParams", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48}
!69 = !{!68, !35, i64 8}
!70 = !{!68, !35, i64 16}
!71 = !{!68, !40, i64 36}
!72 = !{!68, !35, i64 40}
!73 = !{!68, !35, i64 48}
!74 = !{!66, !43, i64 0}
!75 = !{!47, !43, i64 132}
!76 = !{!47, !43, i64 168}
!77 = !{!47, !43, i64 172}
!78 = !{!47, !43, i64 176}
!79 = !{!47, !43, i64 188}
