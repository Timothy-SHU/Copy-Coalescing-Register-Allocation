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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_voronoi() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, i32 noundef 512, ptr noundef nonnull @.str, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, ptr noundef nonnull @voronoi_inputs, ptr noundef nonnull @outputs_both) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @voronoi_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_voronoi.ntype) #7
  ret void
}

; Function Attrs: optsize
declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 !PGOFuncName !34 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %4 = tail call ptr %3(i64 noundef 416, ptr noundef nonnull @.str.1) #7
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !39
  tail call void @default_tex(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 8
  %7 = load i16, ptr %6, align 4, !tbaa !46
  %8 = add i16 %7, -500
  %9 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 32
  store i16 %8, ptr %9, align 8, !tbaa !47
  %10 = icmp eq i16 %8, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Tex, ptr %4, i64 0, i32 33
  store i16 2, ptr %12, align 2, !tbaa !51
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_free_standard_storage(ptr noundef) #1

; Function Attrs: optsize
declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @voronoi_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !52 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @voronoi_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @voronoi_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_blend() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, i32 noundef 505, ptr noundef nonnull @.str.2, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, ptr noundef nonnull @blend_inputs, ptr noundef nonnull @outputs_color_only) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @blend_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_blend.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !53 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @blend_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @blend_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_magic() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, i32 noundef 504, ptr noundef nonnull @.str.3, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, ptr noundef nonnull @magic_inputs, ptr noundef nonnull @outputs_color_only) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @magic_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_magic.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @magic_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !54 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @magic_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @magic_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_marble() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, i32 noundef 503, ptr noundef nonnull @.str.4, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, ptr noundef nonnull @marble_inputs, ptr noundef nonnull @outputs_both) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @marble_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_marble.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @marble_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !55 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @marble_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @marble_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_clouds() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, i32 noundef 501, ptr noundef nonnull @.str.5, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, ptr noundef nonnull @clouds_inputs, ptr noundef nonnull @outputs_both) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @clouds_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_clouds.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clouds_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !56 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @clouds_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @clouds_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_wood() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, i32 noundef 502, ptr noundef nonnull @.str.6, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, ptr noundef nonnull @wood_inputs, ptr noundef nonnull @outputs_both) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @wood_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_wood.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wood_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !57 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @wood_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @wood_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_musgrave() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, i32 noundef 511, ptr noundef nonnull @.str.7, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, ptr noundef nonnull @musgrave_inputs, ptr noundef nonnull @outputs_both) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @musgrave_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_musgrave.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @musgrave_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !58 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @musgrave_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @musgrave_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_noise() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, i32 noundef 507, ptr noundef nonnull @.str.8, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, ptr noundef nonnull @noise_inputs, ptr noundef nonnull @outputs_color_only) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @noise_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_noise.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @noise_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !59 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @noise_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @noise_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_stucci() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, i32 noundef 506, ptr noundef nonnull @.str.9, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, ptr noundef nonnull @stucci_inputs, ptr noundef nonnull @outputs_both) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @stucci_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_stucci.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stucci_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !60 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @stucci_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @stucci_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_proc_distnoise() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, i32 noundef 513, ptr noundef nonnull @.str.10, i16 noundef signext 13, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, ptr noundef nonnull @distnoise_inputs, ptr noundef nonnull @outputs_both) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @distnoise_exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_proc_distnoise.ntype) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @distnoise_exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !61 {
  %7 = tail call fastcc i32 @count_outputs(ptr noundef %2) #8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull @distnoise_colorfn, ptr noundef %0) #7
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %5, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, ptr noundef nonnull @distnoise_normalfn, ptr noundef %0) #7
  br label %15

15:                                               ; preds = %6, %12, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @default_tex(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_outputs(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %2, %1 ], [ %6, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %8, %3 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  %8 = add nuw nsw i32 %5, 1
  br i1 %7, label %9, label %3, !llvm.loop !63

9:                                                ; preds = %3
  ret i32 %5
}

; Function Attrs: optsize
declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @voronoi_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !65 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @voronoi_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @voronoi_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !66 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @voronoi_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5, i16 noundef signext %6) unnamed_addr #0 !PGOFuncName !67 {
  %8 = alloca %struct.Tex, align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %8) #9
  %11 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %8, ptr noundef nonnull align 8 dereferenceable(416) %12, i64 416, i1 false), !tbaa.struct !68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %13 = load ptr, ptr %3, align 8, !tbaa !35
  call void @tex_input_rgba(ptr noundef nonnull %9, ptr noundef %13, ptr noundef %1, i16 noundef signext %6) #7
  %14 = getelementptr inbounds ptr, ptr %3, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  call void @tex_input_rgba(ptr noundef nonnull %10, ptr noundef %15, ptr noundef %1, i16 noundef signext %6) #7
  call void %5(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, i16 noundef signext %6) #7
  call fastcc void @do_proc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext %4, ptr noundef nonnull %8, i16 noundef signext %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %8) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @voronoi_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 !PGOFuncName !73 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #7
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 19
  store float %7, ptr %8, align 4, !tbaa !74
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #7
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 20
  store float %11, ptr %12, align 8, !tbaa !75
  %13 = getelementptr inbounds ptr, ptr %1, i64 4
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call float @tex_input_value(ptr noundef %14, ptr noundef %2, i16 noundef signext %3) #7
  %16 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 21
  store float %15, ptr %16, align 4, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %1, i64 5
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = tail call float @tex_input_value(ptr noundef %18, ptr noundef %2, i16 noundef signext %3) #7
  %20 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 22
  store float %19, ptr %20, align 8, !tbaa !77
  %21 = getelementptr inbounds ptr, ptr %1, i64 6
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = tail call float @tex_input_value(ptr noundef %22, ptr noundef %2, i16 noundef signext %3) #7
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  store float %23, ptr %24, align 8, !tbaa !78
  %25 = getelementptr inbounds ptr, ptr %1, i64 7
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = tail call float @tex_input_value(ptr noundef %26, ptr noundef %2, i16 noundef signext %3) #7
  %28 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %27, ptr %28, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_proc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, i16 noundef signext %6) unnamed_addr #0 !PGOFuncName !80 {
  %8 = alloca %struct.TexResult, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  %9 = icmp eq i8 %4, 0
  %10 = select i1 %9, ptr null, ptr %0
  %11 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 6
  store ptr %10, ptr %11, align 8
  %12 = load ptr, ptr %1, align 8, !tbaa !81
  %13 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !85
  %19 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = call i32 @multitex_nodes(ptr noundef %5, ptr noundef %12, ptr noundef %14, ptr noundef %16, i32 noundef %18, ptr noundef nonnull %8, i16 noundef signext %6, i16 noundef signext 0, ptr noundef %20, ptr noundef %22, ptr noundef null) #7
  br i1 %9, label %24, label %31

24:                                               ; preds = %7
  %25 = and i32 %23, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 1
  call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %28) #8
  br label %31

29:                                               ; preds = %24
  call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %2) #8
  %30 = load float, ptr %8, align 8, !tbaa !88
  call void @ramp_blend(i32 noundef 0, ptr noundef %0, float noundef %30, ptr noundef %3) #7
  br label %31

31:                                               ; preds = %27, %29, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  ret void
}

; Function Attrs: optsize
declare i32 @multitex_nodes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !90 {
  %3 = load float, ptr %1, align 4, !tbaa !72
  store float %3, ptr %0, align 4, !tbaa !72
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !72
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !72
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !72
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !72
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !72
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !91 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @blend_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !92 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @blend_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @blend_map_inputs(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i16 signext %3) #6 !PGOFuncName !93 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @magic_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !94 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @magic_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @magic_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !95 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @magic_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @magic_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 !PGOFuncName !96 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #7
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  store float %7, ptr %8, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @marble_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !98 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @marble_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @marble_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !99 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @marble_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @marble_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 !PGOFuncName !100 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #7
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #7
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  store float %11, ptr %12, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clouds_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !101 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @clouds_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clouds_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !102 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @clouds_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clouds_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 !PGOFuncName !103 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #7
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wood_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !104 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @wood_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wood_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !105 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @wood_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wood_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 !PGOFuncName !106 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #7
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #7
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  store float %11, ptr %12, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @musgrave_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !107 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @musgrave_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @musgrave_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !108 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @musgrave_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @musgrave_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 !PGOFuncName !109 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #7
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  store float %7, ptr %8, align 8, !tbaa !110
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #7
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  store float %11, ptr %12, align 4, !tbaa !111
  %13 = getelementptr inbounds ptr, ptr %1, i64 4
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call float @tex_input_value(ptr noundef %14, ptr noundef %2, i16 noundef signext %3) #7
  %16 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  store float %15, ptr %16, align 8, !tbaa !112
  %17 = getelementptr inbounds ptr, ptr %1, i64 5
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = tail call float @tex_input_value(ptr noundef %18, ptr noundef %2, i16 noundef signext %3) #7
  %20 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  store float %19, ptr %20, align 8, !tbaa !78
  %21 = getelementptr inbounds ptr, ptr %1, i64 6
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = tail call float @tex_input_value(ptr noundef %22, ptr noundef %2, i16 noundef signext %3) #7
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %23, ptr %24, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @noise_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !113 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @noise_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @noise_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !114 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @noise_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @noise_map_inputs(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i16 signext %3) #6 !PGOFuncName !115 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stucci_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !116 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @stucci_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stucci_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !117 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @stucci_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stucci_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 !PGOFuncName !118 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #7
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #7
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  store float %11, ptr %12, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @distnoise_colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !119 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull @distnoise_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @distnoise_normalfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) #0 !PGOFuncName !120 {
  tail call fastcc void @texfn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @distnoise_map_inputs, i16 noundef signext %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @distnoise_map_inputs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) #0 !PGOFuncName !121 {
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %2, i16 noundef signext %3) #7
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef %2, i16 noundef signext %3) #7
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 17
  store float %11, ptr %12, align 4, !tbaa !122
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!34 = !{!"node_texture_proc.c:init"}
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
!46 = !{!40, !42, i64 172}
!47 = !{!48, !42, i64 232}
!48 = !{!"Tex", !49, i64 0, !36, i64 120, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !41, i64 252, !41, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !50, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!50 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !41, i64 36}
!51 = !{!48, !42, i64 234}
!52 = !{!"node_texture_proc.c:voronoi_exec"}
!53 = !{!"node_texture_proc.c:blend_exec"}
!54 = !{!"node_texture_proc.c:magic_exec"}
!55 = !{!"node_texture_proc.c:marble_exec"}
!56 = !{!"node_texture_proc.c:clouds_exec"}
!57 = !{!"node_texture_proc.c:wood_exec"}
!58 = !{!"node_texture_proc.c:musgrave_exec"}
!59 = !{!"node_texture_proc.c:noise_exec"}
!60 = !{!"node_texture_proc.c:stucci_exec"}
!61 = !{!"node_texture_proc.c:distnoise_exec"}
!62 = !{!"node_texture_proc.c:count_outputs"}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"node_texture_proc.c:voronoi_colorfn"}
!66 = !{!"node_texture_proc.c:voronoi_normalfn"}
!67 = !{!"node_texture_proc.c:texfn"}
!68 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 66, !69, i64 98, i64 2, !70, i64 100, i64 4, !71, i64 104, i64 4, !71, i64 108, i64 4, !71, i64 112, i64 8, !35, i64 120, i64 8, !35, i64 128, i64 4, !72, i64 132, i64 4, !72, i64 136, i64 4, !72, i64 140, i64 4, !72, i64 144, i64 4, !72, i64 148, i64 4, !72, i64 152, i64 4, !72, i64 156, i64 4, !72, i64 160, i64 4, !72, i64 164, i64 4, !72, i64 168, i64 4, !72, i64 172, i64 4, !72, i64 176, i64 4, !72, i64 180, i64 4, !72, i64 184, i64 4, !72, i64 188, i64 4, !72, i64 192, i64 4, !72, i64 196, i64 4, !72, i64 200, i64 4, !72, i64 204, i64 4, !72, i64 208, i64 4, !72, i64 212, i64 4, !72, i64 216, i64 2, !70, i64 218, i64 2, !70, i64 220, i64 2, !70, i64 222, i64 2, !70, i64 224, i64 2, !70, i64 226, i64 2, !70, i64 228, i64 2, !70, i64 230, i64 2, !70, i64 232, i64 2, !70, i64 234, i64 2, !70, i64 236, i64 4, !72, i64 240, i64 4, !72, i64 244, i64 4, !72, i64 248, i64 4, !72, i64 252, i64 4, !71, i64 256, i64 4, !71, i64 260, i64 2, !70, i64 262, i64 2, !70, i64 264, i64 2, !70, i64 266, i64 2, !70, i64 268, i64 4, !71, i64 272, i64 4, !71, i64 276, i64 4, !71, i64 280, i64 4, !71, i64 284, i64 4, !72, i64 288, i64 4, !72, i64 292, i64 4, !72, i64 296, i64 8, !35, i64 304, i64 4, !71, i64 308, i64 4, !71, i64 312, i64 4, !71, i64 316, i64 4, !71, i64 320, i64 1, !69, i64 321, i64 1, !69, i64 322, i64 1, !69, i64 323, i64 1, !69, i64 324, i64 2, !70, i64 326, i64 2, !70, i64 328, i64 2, !70, i64 330, i64 2, !70, i64 332, i64 4, !71, i64 336, i64 8, !35, i64 344, i64 8, !35, i64 352, i64 8, !35, i64 360, i64 8, !35, i64 368, i64 8, !35, i64 376, i64 8, !35, i64 384, i64 8, !35, i64 392, i64 8, !35, i64 400, i64 8, !35, i64 408, i64 1, !69, i64 409, i64 7, !69}
!69 = !{!37, !37, i64 0}
!70 = !{!42, !42, i64 0}
!71 = !{!41, !41, i64 0}
!72 = !{!44, !44, i64 0}
!73 = !{!"node_texture_proc.c:voronoi_map_inputs"}
!74 = !{!48, !44, i64 196}
!75 = !{!48, !44, i64 200}
!76 = !{!48, !44, i64 204}
!77 = !{!48, !44, i64 208}
!78 = !{!48, !44, i64 192}
!79 = !{!48, !44, i64 128}
!80 = !{!"node_texture_proc.c:do_proc"}
!81 = !{!82, !36, i64 0}
!82 = !{!"TexParams", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48}
!83 = !{!82, !36, i64 8}
!84 = !{!82, !36, i64 16}
!85 = !{!82, !41, i64 36}
!86 = !{!82, !36, i64 40}
!87 = !{!82, !36, i64 48}
!88 = !{!89, !44, i64 0}
!89 = !{!"TexResult", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !41, i64 20, !36, i64 24}
!90 = !{!"node_texture_proc.c:copy_v4_v4"}
!91 = !{!"node_texture_proc.c:blend_colorfn"}
!92 = !{!"node_texture_proc.c:blend_normalfn"}
!93 = !{!"node_texture_proc.c:blend_map_inputs"}
!94 = !{!"node_texture_proc.c:magic_colorfn"}
!95 = !{!"node_texture_proc.c:magic_normalfn"}
!96 = !{!"node_texture_proc.c:magic_map_inputs"}
!97 = !{!48, !44, i64 132}
!98 = !{!"node_texture_proc.c:marble_colorfn"}
!99 = !{!"node_texture_proc.c:marble_normalfn"}
!100 = !{!"node_texture_proc.c:marble_map_inputs"}
!101 = !{!"node_texture_proc.c:clouds_colorfn"}
!102 = !{!"node_texture_proc.c:clouds_normalfn"}
!103 = !{!"node_texture_proc.c:clouds_map_inputs"}
!104 = !{!"node_texture_proc.c:wood_colorfn"}
!105 = !{!"node_texture_proc.c:wood_normalfn"}
!106 = !{!"node_texture_proc.c:wood_map_inputs"}
!107 = !{!"node_texture_proc.c:musgrave_colorfn"}
!108 = !{!"node_texture_proc.c:musgrave_normalfn"}
!109 = !{!"node_texture_proc.c:musgrave_map_inputs"}
!110 = !{!48, !44, i64 168}
!111 = !{!48, !44, i64 172}
!112 = !{!48, !44, i64 176}
!113 = !{!"node_texture_proc.c:noise_colorfn"}
!114 = !{!"node_texture_proc.c:noise_normalfn"}
!115 = !{!"node_texture_proc.c:noise_map_inputs"}
!116 = !{!"node_texture_proc.c:stucci_colorfn"}
!117 = !{!"node_texture_proc.c:stucci_normalfn"}
!118 = !{!"node_texture_proc.c:stucci_map_inputs"}
!119 = !{!"node_texture_proc.c:distnoise_colorfn"}
!120 = !{!"node_texture_proc.c:distnoise_normalfn"}
!121 = !{!"node_texture_proc.c:distnoise_map_inputs"}
!122 = !{!48, !44, i64 188}
