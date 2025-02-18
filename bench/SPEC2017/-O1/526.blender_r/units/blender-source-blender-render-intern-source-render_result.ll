; ModuleID = 'blender/source/blender/render/intern/source/render_result.c'
source_filename = "blender/source/blender/render/intern/source/render_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"new render result\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"new render layer\00", align 1
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Combined display space rgba\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Combined.R\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Combined.G\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Combined.B\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Combined.A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Combined rgba\00", align 1
@__func__.render_result_new_from_exr = private unnamed_addr constant [27 x i8] c"render_result_new_from_exr\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Error writing render result (see console)\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"write exr tmp file, %dx%d, %s\0A\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"%s_%s_%s.exr\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%s_%s_%s%d.exr\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"read exr tmp file: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"cannot read: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"failed being read %s\0A\00", align 1
@U = external global %struct.UserDef, align 8
@.str.20 = private unnamed_addr constant [29 x i8] c"Caching exr file, %dx%d, %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"read exr cache file: %s\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"render_seq rectf\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"render_seq rect\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"loaded pass\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"unknown pass %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Combined\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Emit\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Diffuse\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Spec\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Shadow\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"AO\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"Env\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Indirect\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Reflect\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Refract\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"IndexOB\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"IndexMA\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Mist\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"RayHits\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"DiffDir\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"DiffInd\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"DiffCol\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"GlossDir\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"GlossInd\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"GlossCol\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"TransDir\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"TransInd\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"TransCol\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"SubsurfaceDir\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"SubsurfaceInd\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"SubsurfaceCol\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"Depth.Z\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"Vector.X\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"Vector.Y\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"Vector.Z\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Vector.W\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"Normal.X\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"Normal.Y\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"Normal.Z\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"UV.U\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"UV.V\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"UV.A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Color.R\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"Color.G\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"Color.B\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"Color.A\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Emit.R\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"Emit.G\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"Emit.B\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"Diffuse.R\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Diffuse.G\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Diffuse.B\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"Spec.R\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Spec.G\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"Spec.B\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"Shadow.R\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"Shadow.G\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Shadow.B\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"AO.R\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"AO.G\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"AO.B\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"Env.R\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"Env.G\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Env.B\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"Indirect.R\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"Indirect.G\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"Indirect.B\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"Reflect.R\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"Reflect.G\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"Reflect.B\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"Refract.R\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"Refract.G\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Refract.B\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"IndexOB.X\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"IndexMA.X\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"Mist.Z\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"Rayhits\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"Rayhits.R\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"Rayhits.G\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"Rayhits.B\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"DiffDir.R\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"DiffDir.G\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"DiffDir.B\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"DiffInd.R\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"DiffInd.G\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"DiffInd.B\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"DiffCol.R\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"DiffCol.G\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"DiffCol.B\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"GlossDir.R\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"GlossDir.G\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"GlossDir.B\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"GlossInd.R\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"GlossInd.G\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"GlossInd.B\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"GlossCol.R\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"GlossCol.G\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"GlossCol.B\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"TransDir.R\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"TransDir.G\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"TransDir.B\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"TransInd.R\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"TransInd.G\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"TransInd.B\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"TransCol.R\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"TransCol.G\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"TransCol.B\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"SubsurfaceDir.R\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"SubsurfaceDir.G\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"SubsurfaceDir.B\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"SubsurfaceInd.R\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"SubsurfaceInd.G\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"SubsurfaceInd.B\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"SubsurfaceCol.R\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"SubsurfaceCol.G\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"SubsurfaceCol.B\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@make_pass_name.name = internal global [16 x i8] zeroinitializer, align 16
@.str.143 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"UNSAVED\00", align 1
@.str.145 = private unnamed_addr constant [23 x i8] c"cached_RR_%s_%s_%s.exr\00", align 1
@str = private unnamed_addr constant [44 x i8] c"pop render result error; no current result!\00", align 1
@str.146 = private unnamed_addr constant [52 x i8] c"error in reading render result: NULL result pointer\00", align 1
@str.147 = private unnamed_addr constant [55 x i8] c"error in reading render result: dimensions don't match\00", align 1
@reltable.get_pass_name = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.26 to i64), i64 ptrtoint (ptr @reltable.get_pass_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.get_pass_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.get_pass_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.get_pass_name to i64)) to i32)], align 4
@reltable.get_pass_name.174 = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.174 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.58 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.174 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.174 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.60 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.174 to i64)) to i32)], align 4
@reltable.get_pass_name.175 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.175 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.62 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.175 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.63 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.175 to i64)) to i32)], align 4
@reltable.get_pass_name.176 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.176 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.65 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.176 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.176 to i64)) to i32)], align 4
@reltable.get_pass_name.177 = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.177 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.68 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.177 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.69 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.177 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.70 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.177 to i64)) to i32)], align 4
@reltable.get_pass_name.178 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.178 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.178 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.73 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.178 to i64)) to i32)], align 4
@reltable.get_pass_name.179 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.179 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.75 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.179 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.76 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.179 to i64)) to i32)], align 4
@reltable.get_pass_name.180 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.180 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.78 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.180 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.79 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.180 to i64)) to i32)], align 4
@reltable.get_pass_name.181 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.181 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.81 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.181 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.82 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.181 to i64)) to i32)], align 4
@reltable.get_pass_name.182 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.182 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.84 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.182 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.85 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.182 to i64)) to i32)], align 4
@reltable.get_pass_name.183 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.183 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.87 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.183 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.88 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.183 to i64)) to i32)], align 4
@reltable.get_pass_name.184 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.184 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.90 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.184 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.91 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.184 to i64)) to i32)], align 4
@reltable.get_pass_name.185 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.185 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.93 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.185 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.94 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.185 to i64)) to i32)], align 4
@reltable.get_pass_name.186 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.186 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.96 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.186 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.97 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.186 to i64)) to i32)], align 4
@reltable.get_pass_name.187 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.102 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.187 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.103 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.187 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.104 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.187 to i64)) to i32)], align 4
@reltable.get_pass_name.188 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.188 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.106 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.188 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.107 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.188 to i64)) to i32)], align 4
@reltable.get_pass_name.189 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.189 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.109 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.189 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.110 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.189 to i64)) to i32)], align 4
@reltable.get_pass_name.190 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.190 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.112 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.190 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.113 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.190 to i64)) to i32)], align 4
@reltable.get_pass_name.191 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.191 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.115 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.191 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.116 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.191 to i64)) to i32)], align 4
@reltable.get_pass_name.192 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.49 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.192 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.118 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.192 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.119 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.192 to i64)) to i32)], align 4
@reltable.get_pass_name.193 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.50 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.193 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.121 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.193 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.122 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.193 to i64)) to i32)], align 4
@reltable.get_pass_name.194 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.194 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.124 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.194 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.125 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.194 to i64)) to i32)], align 4
@reltable.get_pass_name.195 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.52 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.195 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.127 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.195 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.128 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.195 to i64)) to i32)], align 4
@reltable.get_pass_name.196 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.53 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.196 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.130 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.196 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.131 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.196 to i64)) to i32)], align 4
@reltable.get_pass_name.197 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.54 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.197 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.133 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.197 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.134 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.197 to i64)) to i32)], align 4
@reltable.get_pass_name.198 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.55 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.198 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.136 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.198 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.137 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.198 to i64)) to i32)], align 4
@reltable.get_pass_name.199 = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.56 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.199 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.139 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.199 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.140 to i64), i64 ptrtoint (ptr @reltable.get_pass_name.199 to i64)) to i32)], align 4
@switch.table.render_result_exr_file_read_path = private unnamed_addr constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], align 8

; Function Attrs: nounwind uwtable
define dso_local void @render_result_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %77, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3, %47
  %8 = phi ptr [ %49, %47 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %13(ptr noundef nonnull %10) #10
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %19(ptr noundef nonnull %16) #10
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %25(ptr noundef nonnull %22) #10
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %28) #10
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 18
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32, %43
  %37 = phi ptr [ %45, %43 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %42(ptr noundef nonnull %39) #10
  br label %43

43:                                               ; preds = %41, %36
  tail call void @BLI_remlink(ptr noundef nonnull %33, ptr noundef nonnull %37) #10
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %37) #10
  %45 = load ptr, ptr %33, align 8, !tbaa !49
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %36, !llvm.loop !52

47:                                               ; preds = %43, %32
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %8) #10
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %48(ptr noundef nonnull %8) #10
  %49 = load ptr, ptr %4, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %7, !llvm.loop !55

51:                                               ; preds = %47, %3
  %52 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !56
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %56(ptr noundef nonnull %53) #10
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %62(ptr noundef nonnull %59) #10
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !58
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %68(ptr noundef nonnull %65) #10
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !59
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %74(ptr noundef nonnull %71) #10
  br label %75

75:                                               ; preds = %73, %69
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %76(ptr noundef nonnull %0) #10
  br label %77

77:                                               ; preds = %1, %75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @render_result_free_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br label %6

6:                                                ; preds = %4, %13
  %7 = phi ptr [ %1, %4 ], [ %8, %13 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  br i1 %5, label %13, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %7) #10
  br label %13

13:                                               ; preds = %12, %9, %6
  tail call void @render_result_free(ptr noundef nonnull %7)
  %14 = icmp eq ptr %8, null
  br i1 %14, label %15, label %6, !llvm.loop !62

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @render_result_new(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !63
  %8 = load i32, ptr %1, align 4, !tbaa !64
  %9 = sub nsw i32 %7, %8
  %10 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !66
  %14 = sub nsw i32 %11, %13
  %15 = icmp slt i32 %9, 1
  %16 = icmp slt i32 %14, 1
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %349, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %20 = tail call ptr %19(i64 noundef 144, ptr noundef nonnull @.str) #10
  %21 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 2
  store i32 %9, ptr %21, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 3
  store i32 %14, ptr %22, align 4, !tbaa !68
  %23 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 13
  store volatile i32 0, ptr %23, align 8, !tbaa !69
  %24 = shl nsw i32 %2, 1
  %25 = sub nsw i32 %9, %24
  %26 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 13, i32 1
  store volatile i32 %25, ptr %26, align 4, !tbaa !70
  %27 = trunc i32 %2 to i16
  %28 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 4
  store i16 %27, ptr %28, align 8, !tbaa !71
  %29 = load i32, ptr %1, align 4, !tbaa !64
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %31 = load i32, ptr %30, align 4, !tbaa !72
  %32 = sub nsw i32 %29, %31
  %33 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 9
  store i32 %32, ptr %33, align 8, !tbaa !87
  %34 = load i32, ptr %6, align 4, !tbaa !63
  %35 = sub nsw i32 %34, %31
  %36 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 9, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !88
  %37 = load i32, ptr %12, align 4, !tbaa !66
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !89
  %40 = sub nsw i32 %37, %39
  %41 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 9, i32 2
  store i32 %40, ptr %41, align 8, !tbaa !90
  %42 = load i32, ptr %10, align 4, !tbaa !65
  %43 = sub nsw i32 %42, %39
  %44 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 9, i32 3
  store i32 %43, ptr %44, align 4, !tbaa !91
  %45 = icmp eq i32 %3, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %18
  %47 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 15
  store i32 1, ptr %47, align 8, !tbaa !92
  br label %48

48:                                               ; preds = %46, %18
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = icmp eq ptr %50, null
  br i1 %51, label %287, label %52

52:                                               ; preds = %48
  %53 = icmp eq ptr %4, null
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %56 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 12
  %57 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 15
  %58 = mul nsw i32 %14, %9
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 2
  %61 = mul nsw i32 %14, %9
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 4
  br label %64

64:                                               ; preds = %52, %283
  %65 = phi ptr [ %50, %52 ], [ %285, %283 ]
  %66 = phi i32 [ 0, %52 ], [ %284, %283 ]
  br i1 %53, label %74, label %67

67:                                               ; preds = %64
  %68 = load i8, ptr %4, align 1, !tbaa !93
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 2
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %4) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %283

74:                                               ; preds = %70, %67, %64
  %75 = load i32, ptr %54, align 4, !tbaa !94
  %76 = and i32 %75, 512
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i16, ptr %55, align 8, !tbaa !95
  %80 = sext i16 %79 to i32
  %81 = icmp eq i32 %66, %80
  br i1 %81, label %87, label %283

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 8
  %84 = load i32, ptr %83, align 4, !tbaa !96
  %85 = and i32 %84, 131072
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %283

87:                                               ; preds = %82, %78
  %88 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %89 = tail call ptr %88(i64 noundef 200, ptr noundef nonnull @.str.1) #10
  tail call void @BLI_addtail(ptr noundef nonnull %56, ptr noundef %89) #10
  %90 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 2
  %91 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 2
  %92 = tail call ptr @BLI_strncpy(ptr noundef nonnull %90, ptr noundef nonnull %91, i64 noundef 74) #10
  %93 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 5
  %94 = load i32, ptr %93, align 8, !tbaa !99
  %95 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 3
  store i32 %94, ptr %95, align 4, !tbaa !100
  %96 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 6
  %97 = load i32, ptr %96, align 4, !tbaa !101
  %98 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 4
  store i32 %97, ptr %98, align 8, !tbaa !102
  %99 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !103
  %101 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 5
  store i32 %100, ptr %101, align 4, !tbaa !104
  %102 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 8
  %103 = load i32, ptr %102, align 4, !tbaa !96
  %104 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 6
  store i32 %103, ptr %104, align 8, !tbaa !105
  %105 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 9
  %106 = load i32, ptr %105, align 8, !tbaa !106
  %107 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 7
  store i32 %106, ptr %107, align 4, !tbaa !107
  %108 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 10
  %109 = load i32, ptr %108, align 4, !tbaa !108
  %110 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 8
  store i32 %109, ptr %110, align 8, !tbaa !109
  %111 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !110
  %113 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 10
  store ptr %112, ptr %113, align 8, !tbaa !111
  %114 = getelementptr inbounds %struct.SceneRenderLayer, ptr %65, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !112
  %116 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 9
  store ptr %115, ptr %116, align 8, !tbaa !113
  %117 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 15
  store i32 %9, ptr %117, align 8, !tbaa !114
  %118 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 16
  store i32 %14, ptr %118, align 4, !tbaa !115
  %119 = load i32, ptr %57, align 8, !tbaa !92
  %120 = icmp eq i32 %119, 0
  %121 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !45
  br i1 %120, label %130, label %122

122:                                              ; preds = %87
  %123 = tail call ptr %121(i64 noundef %60, ptr noundef nonnull @.str.2) #10
  %124 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 14
  store ptr %123, ptr %124, align 8, !tbaa !48
  %125 = tail call ptr @IMB_exr_get_handle() #10
  %126 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 17
  store ptr %125, ptr %126, align 8, !tbaa !116
  tail call void @IMB_exr_add_channel(ptr noundef %125, ptr noundef nonnull %90, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %127 = load ptr, ptr %126, align 8, !tbaa !116
  tail call void @IMB_exr_add_channel(ptr noundef %127, ptr noundef nonnull %90, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %128 = load ptr, ptr %126, align 8, !tbaa !116
  tail call void @IMB_exr_add_channel(ptr noundef %128, ptr noundef nonnull %90, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %129 = load ptr, ptr %126, align 8, !tbaa !116
  tail call void @IMB_exr_add_channel(ptr noundef %129, ptr noundef nonnull %90, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  br label %133

130:                                              ; preds = %87
  %131 = tail call ptr %121(i64 noundef %63, ptr noundef nonnull @.str.7) #10
  %132 = getelementptr inbounds %struct.RenderLayer, ptr %89, i64 0, i32 11
  store ptr %131, ptr %132, align 8, !tbaa !43
  br label %133

133:                                              ; preds = %130, %122
  %134 = load i32, ptr %105, align 8, !tbaa !106
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 1, i32 noundef 2)
  br label %138

138:                                              ; preds = %137, %133
  %139 = load i32, ptr %105, align 8, !tbaa !106
  %140 = and i32 %139, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 4, i32 noundef 512)
  br label %143

143:                                              ; preds = %142, %138
  %144 = load i32, ptr %105, align 8, !tbaa !106
  %145 = and i32 %144, 256
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 256)
  br label %148

148:                                              ; preds = %147, %143
  %149 = load i32, ptr %105, align 8, !tbaa !106
  %150 = and i32 %149, 4096
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 4096)
  br label %153

153:                                              ; preds = %152, %148
  %154 = load i32, ptr %105, align 8, !tbaa !106
  %155 = and i32 %154, 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 4, i32 noundef 4)
  br label %158

158:                                              ; preds = %157, %153
  %159 = load i32, ptr %105, align 8, !tbaa !106
  %160 = and i32 %159, 65536
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 65536)
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32, ptr %105, align 8, !tbaa !106
  %165 = and i32 %164, 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 8)
  br label %168

168:                                              ; preds = %167, %163
  %169 = load i32, ptr %105, align 8, !tbaa !106
  %170 = and i32 %169, 16
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 16)
  br label %173

173:                                              ; preds = %172, %168
  %174 = load i32, ptr %105, align 8, !tbaa !106
  %175 = and i32 %174, 64
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 64)
  br label %178

178:                                              ; preds = %177, %173
  %179 = load i32, ptr %105, align 8, !tbaa !106
  %180 = and i32 %179, 131072
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 131072)
  br label %183

183:                                              ; preds = %182, %178
  %184 = load i32, ptr %105, align 8, !tbaa !106
  %185 = and i32 %184, 8192
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 8192)
  br label %188

188:                                              ; preds = %187, %183
  %189 = load i32, ptr %105, align 8, !tbaa !106
  %190 = and i32 %189, 32
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 32)
  br label %193

193:                                              ; preds = %192, %188
  %194 = load i32, ptr %105, align 8, !tbaa !106
  %195 = and i32 %194, 128
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 128)
  br label %198

198:                                              ; preds = %197, %193
  %199 = load i32, ptr %105, align 8, !tbaa !106
  %200 = and i32 %199, 1024
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 1024)
  br label %203

203:                                              ; preds = %202, %198
  %204 = load i32, ptr %105, align 8, !tbaa !106
  %205 = and i32 %204, 2048
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 1, i32 noundef 2048)
  br label %208

208:                                              ; preds = %207, %203
  %209 = load i32, ptr %105, align 8, !tbaa !106
  %210 = and i32 %209, 262144
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 1, i32 noundef 262144)
  br label %213

213:                                              ; preds = %212, %208
  %214 = load i32, ptr %105, align 8, !tbaa !106
  %215 = and i32 %214, 16384
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %213
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 1, i32 noundef 16384)
  br label %218

218:                                              ; preds = %217, %213
  %219 = load i32, ptr %107, align 4, !tbaa !107
  %220 = and i32 %219, 32768
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 4, i32 noundef 32768)
  br label %223

223:                                              ; preds = %222, %218
  %224 = load i32, ptr %105, align 8, !tbaa !106
  %225 = and i32 %224, 524288
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 524288)
  br label %228

228:                                              ; preds = %227, %223
  %229 = load i32, ptr %105, align 8, !tbaa !106
  %230 = and i32 %229, 1048576
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 1048576)
  br label %233

233:                                              ; preds = %232, %228
  %234 = load i32, ptr %105, align 8, !tbaa !106
  %235 = and i32 %234, 2097152
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 2097152)
  br label %238

238:                                              ; preds = %237, %233
  %239 = load i32, ptr %105, align 8, !tbaa !106
  %240 = and i32 %239, 4194304
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 4194304)
  br label %243

243:                                              ; preds = %242, %238
  %244 = load i32, ptr %105, align 8, !tbaa !106
  %245 = and i32 %244, 8388608
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 8388608)
  br label %248

248:                                              ; preds = %247, %243
  %249 = load i32, ptr %105, align 8, !tbaa !106
  %250 = and i32 %249, 16777216
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 16777216)
  br label %253

253:                                              ; preds = %252, %248
  %254 = load i32, ptr %105, align 8, !tbaa !106
  %255 = and i32 %254, 33554432
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %253
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 33554432)
  br label %258

258:                                              ; preds = %257, %253
  %259 = load i32, ptr %105, align 8, !tbaa !106
  %260 = and i32 %259, 67108864
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %258
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 67108864)
  br label %263

263:                                              ; preds = %262, %258
  %264 = load i32, ptr %105, align 8, !tbaa !106
  %265 = and i32 %264, 134217728
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 134217728)
  br label %268

268:                                              ; preds = %267, %263
  %269 = load i32, ptr %105, align 8, !tbaa !106
  %270 = and i32 %269, 268435456
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 268435456)
  br label %273

273:                                              ; preds = %272, %268
  %274 = load i32, ptr %105, align 8, !tbaa !106
  %275 = and i32 %274, 536870912
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 536870912)
  br label %278

278:                                              ; preds = %277, %273
  %279 = load i32, ptr %105, align 8, !tbaa !106
  %280 = and i32 %279, 1073741824
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  tail call fastcc void @render_layer_add_pass(ptr noundef %20, ptr noundef %89, i32 noundef 3, i32 noundef 1073741824)
  br label %283

283:                                              ; preds = %278, %282, %82, %78, %70
  %284 = add nuw nsw i32 %66, 1
  %285 = load ptr, ptr %65, align 8, !tbaa !45
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %64, !llvm.loop !117

287:                                              ; preds = %283, %48
  %288 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 12
  %289 = load ptr, ptr %288, align 8, !tbaa !61
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %326

291:                                              ; preds = %287
  %292 = icmp eq ptr %4, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %291
  %294 = load i8, ptr %4, align 1, !tbaa !93
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %326

296:                                              ; preds = %293, %291
  %297 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %298 = tail call ptr %297(i64 noundef 200, ptr noundef nonnull @.str.1) #10
  tail call void @BLI_addtail(ptr noundef nonnull %288, ptr noundef %298) #10
  %299 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 15
  store i32 %9, ptr %299, align 8, !tbaa !114
  %300 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 16
  store i32 %14, ptr %300, align 4, !tbaa !115
  %301 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 15
  %302 = load i32, ptr %301, align 8, !tbaa !92
  %303 = icmp eq i32 %302, 0
  %304 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !45
  %305 = mul nsw i32 %14, %9
  %306 = sext i32 %305 to i64
  br i1 %303, label %317, label %307

307:                                              ; preds = %296
  %308 = shl nsw i64 %306, 2
  %309 = tail call ptr %304(i64 noundef %308, ptr noundef nonnull @.str.2) #10
  %310 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 14
  store ptr %309, ptr %310, align 8, !tbaa !48
  %311 = tail call ptr @IMB_exr_get_handle() #10
  %312 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 17
  store ptr %311, ptr %312, align 8, !tbaa !116
  %313 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 2
  tail call void @IMB_exr_add_channel(ptr noundef %311, ptr noundef nonnull %313, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %314 = load ptr, ptr %312, align 8, !tbaa !116
  tail call void @IMB_exr_add_channel(ptr noundef %314, ptr noundef nonnull %313, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %315 = load ptr, ptr %312, align 8, !tbaa !116
  tail call void @IMB_exr_add_channel(ptr noundef %315, ptr noundef nonnull %313, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %316 = load ptr, ptr %312, align 8, !tbaa !116
  tail call void @IMB_exr_add_channel(ptr noundef %316, ptr noundef nonnull %313, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  br label %321

317:                                              ; preds = %296
  %318 = shl nsw i64 %306, 4
  %319 = tail call ptr %304(i64 noundef %318, ptr noundef nonnull @.str.7) #10
  %320 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 11
  store ptr %319, ptr %320, align 8, !tbaa !43
  br label %321

321:                                              ; preds = %317, %307
  %322 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 3
  store i32 1048575, ptr %322, align 4, !tbaa !100
  %323 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 6
  store i32 32767, ptr %323, align 8, !tbaa !105
  %324 = getelementptr inbounds %struct.RenderLayer, ptr %298, i64 0, i32 7
  store i32 1, ptr %324, align 4, !tbaa !107
  %325 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  store i16 0, ptr %325, align 8, !tbaa !95
  br label %326

326:                                              ; preds = %321, %293, %287
  %327 = load i32, ptr %30, align 4, !tbaa !64
  %328 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  %329 = load i32, ptr %328, align 4, !tbaa !63
  %330 = add nsw i32 %329, %327
  %331 = sdiv i32 %330, 2
  %332 = add nsw i32 %331, %327
  %333 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %334 = load i32, ptr %333, align 4, !tbaa !118
  %335 = sdiv i32 %334, -2
  %336 = add i32 %332, %335
  %337 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 10
  store i32 %336, ptr %337, align 8, !tbaa !119
  %338 = load i32, ptr %38, align 4, !tbaa !66
  %339 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  %340 = load i32, ptr %339, align 4, !tbaa !65
  %341 = add nsw i32 %340, %338
  %342 = sdiv i32 %341, 2
  %343 = add nsw i32 %342, %338
  %344 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %345 = load i32, ptr %344, align 8, !tbaa !120
  %346 = sdiv i32 %345, -2
  %347 = add i32 %343, %346
  %348 = getelementptr inbounds %struct.RenderResult, ptr %20, i64 0, i32 11
  store i32 %347, ptr %348, align 4, !tbaa !121
  br label %349

349:                                              ; preds = %5, %326
  %350 = phi ptr [ %20, %326 ], [ null, %5 ]
  ret ptr %350
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @IMB_exr_get_handle() local_unnamed_addr #2

declare void @IMB_exr_add_channel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @render_layer_add_pass(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @get_pass_name(i32 noundef %3, i32 noundef 0)
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %7 = tail call ptr %6(i64 noundef 120, ptr noundef nonnull %5) #10
  %8 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %7) #10
  %13 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 2
  store i32 %3, ptr %13, align 8, !tbaa !122
  %14 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 3
  store i32 %2, ptr %14, align 4, !tbaa !123
  %15 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 7
  store i32 %16, ptr %17, align 8, !tbaa !124
  %18 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 16
  %19 = load i32, ptr %18, align 4, !tbaa !115
  %20 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 8
  store i32 %19, ptr %20, align 4, !tbaa !125
  %21 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 4
  %22 = tail call fastcc ptr @get_pass_name(i32 noundef %3, i32 noundef -1)
  %23 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef nonnull %22, i64 noundef 64) #10
  %24 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = icmp sgt i32 %2, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 2
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i32 [ 0, %29 ], [ %35, %31 ]
  %33 = load ptr, ptr %24, align 8, !tbaa !116
  %34 = tail call fastcc ptr @get_pass_name(i32 noundef %3, i32 noundef %32)
  tail call void @IMB_exr_add_channel(ptr noundef %33, ptr noundef nonnull %30, ptr noundef nonnull %34, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %35 = add nuw nsw i32 %32, 1
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %63, label %31, !llvm.loop !126

37:                                               ; preds = %4
  %38 = mul i32 %9, %2
  %39 = mul i32 %38, %11
  %40 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !45
  %41 = sext i32 %39 to i64
  %42 = shl nsw i64 %41, 2
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull %5) #10
  %44 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !50
  switch i32 %3, label %63 [
    i32 512, label %49
    i32 2, label %45
  ]

45:                                               ; preds = %37
  %46 = icmp sgt i32 %39, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = zext nneg i32 %39 to i64
  br label %58

49:                                               ; preds = %37
  %50 = icmp sgt i32 %39, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %49
  %52 = zext nneg i32 %39 to i64
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %52, %51 ], [ %55, %53 ]
  %55 = add nsw i64 %54, -1
  %56 = getelementptr inbounds float, ptr %43, i64 %55
  store float 1.000000e+04, ptr %56, align 4, !tbaa !127
  %57 = icmp sgt i64 %54, 1
  br i1 %57, label %53, label %63, !llvm.loop !128

58:                                               ; preds = %47, %58
  %59 = phi i64 [ %48, %47 ], [ %60, %58 ]
  %60 = add nsw i64 %59, -1
  %61 = getelementptr inbounds float, ptr %43, i64 %60
  store float 0x42374876E0000000, ptr %61, align 4, !tbaa !127
  %62 = icmp sgt i64 %59, 1
  br i1 %62, label %58, label %63, !llvm.loop !129

63:                                               ; preds = %31, %58, %53, %27, %45, %49, %37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @render_result_new_full_sample(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !130
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr %6, align 2, !tbaa !130
  %11 = icmp sgt i16 %10, 0
  br i1 %11, label %14, label %23

12:                                               ; preds = %5
  %13 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null)
  br label %25

14:                                               ; preds = %9, %14
  %15 = phi i32 [ %19, %14 ], [ 0, %9 ]
  %16 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null)
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %16) #10
  %17 = trunc i32 %15 to i16
  %18 = getelementptr inbounds %struct.RenderResult, ptr %16, i64 0, i32 5
  store i16 %17, ptr %18, align 2, !tbaa !131
  %19 = add nuw nsw i32 %15, 1
  %20 = load i16, ptr %6, align 2, !tbaa !130
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %14, label %23, !llvm.loop !132

23:                                               ; preds = %14, %9
  %24 = load ptr, ptr %1, align 8, !tbaa !61
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi ptr [ %13, %12 ], [ %24, %23 ]
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define dso_local ptr @render_result_new_from_exr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %7 = tail call ptr %6(i64 noundef 144, ptr noundef nonnull @__func__.render_result_new_from_exr) #10
  %8 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #10
  %9 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  store i32 %3, ptr %9, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 3
  store i32 %4, ptr %10, align 4, !tbaa !68
  tail call void @IMB_exr_multilayer_convert(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @ml_addlayer_cb, ptr noundef nonnull @ml_addpass_cb) #10
  %11 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %17

14:                                               ; preds = %34, %17
  %15 = load ptr, ptr %18, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17, !llvm.loop !133

17:                                               ; preds = %5, %14
  %18 = phi ptr [ %15, %14 ], [ %12, %5 ]
  %19 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 15
  store i32 %3, ptr %19, align 8, !tbaa !114
  %20 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 16
  store i32 %4, ptr %20, align 4, !tbaa !115
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %24

24:                                               ; preds = %17, %34
  %25 = phi ptr [ %35, %34 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.RenderPass, ptr %25, i64 0, i32 7
  store i32 %3, ptr %26, align 8, !tbaa !124
  %27 = getelementptr inbounds %struct.RenderPass, ptr %25, i64 0, i32 8
  store i32 %4, ptr %27, align 4, !tbaa !125
  %28 = getelementptr inbounds %struct.RenderPass, ptr %25, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !123
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.RenderPass, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  tail call void @IMB_colormanagement_transform(ptr noundef %33, i32 noundef %3, i32 noundef %4, i32 noundef %29, ptr noundef %1, ptr noundef %8, i8 noundef zeroext %2) #10
  br label %34

34:                                               ; preds = %24, %31
  %35 = load ptr, ptr %25, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %14, label %24, !llvm.loop !134

37:                                               ; preds = %14, %5
  ret ptr %7
}

declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #2

declare void @IMB_exr_multilayer_convert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @ml_addlayer_cb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 200, ptr noundef nonnull @.str.1) #10
  %5 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.RenderLayer, ptr %4, i64 0, i32 2
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #10
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal void @ml_addpass_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %8 = tail call ptr %7(i64 noundef 120, ptr noundef nonnull @.str.24) #10
  %9 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 3
  store i32 %4, ptr %10, align 4, !tbaa !123
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.26) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %104, label %13

13:                                               ; preds = %6
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.27) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %104, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.28) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %104, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.29) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %104, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(3) @.str.30) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %104, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.31) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %104, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.32) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %104, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.33) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %104, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.34) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %104, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.35) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %104, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(3) @.str.36) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %104, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.37) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %104, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.38) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %104, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.39) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %104, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.40) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %104, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.41) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %104, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.42) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %104, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.43) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.44) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %104, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.45) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %104, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.46) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %104, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.47) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %104, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.48) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.49) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.50) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %82
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.51) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %85
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.52) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  %92 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(9) @.str.53) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.54) #11
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.55) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.56) #11
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 1073741824, i32 0
  br label %104

104:                                              ; preds = %6, %13, %16, %19, %22, %25, %28, %31, %34, %37, %40, %43, %46, %49, %52, %55, %58, %61, %64, %67, %70, %73, %76, %79, %82, %85, %88, %91, %94, %97, %100
  %105 = phi i32 [ 1, %6 ], [ 2, %13 ], [ 512, %16 ], [ 256, %19 ], [ 4096, %22 ], [ 4, %25 ], [ 65536, %28 ], [ 8, %31 ], [ 16, %34 ], [ 32, %37 ], [ 64, %40 ], [ 131072, %43 ], [ 8192, %46 ], [ 128, %49 ], [ 1024, %52 ], [ 2048, %55 ], [ 262144, %58 ], [ 16384, %61 ], [ 32768, %64 ], [ 524288, %67 ], [ 1048576, %70 ], [ 2097152, %73 ], [ 4194304, %76 ], [ 8388608, %79 ], [ 16777216, %82 ], [ 33554432, %85 ], [ 67108864, %88 ], [ 134217728, %91 ], [ 268435456, %94 ], [ 536870912, %97 ], [ %103, %100 ]
  %106 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 2
  store i32 %105, ptr %106, align 8, !tbaa !122
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %2)
  br label %110

110:                                              ; preds = %108, %104
  %111 = load i32, ptr %106, align 8, !tbaa !122
  %112 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 7
  %113 = load i32, ptr %112, align 4, !tbaa !107
  %114 = or i32 %113, %111
  store i32 %114, ptr %112, align 4, !tbaa !107
  %115 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 4
  %116 = tail call ptr @BLI_strncpy(ptr noundef nonnull %115, ptr noundef %2, i64 noundef 64) #10
  %117 = icmp sgt i32 %4, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = zext nneg i32 %4 to i64
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi i64 [ 0, %118 ], [ %125, %120 ]
  %122 = getelementptr inbounds i8, ptr %5, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !93
  %124 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 5, i64 %121
  store i8 %123, ptr %124, align 1, !tbaa !93
  %125 = add nuw nsw i64 %121, 1
  %126 = icmp eq i64 %125, %119
  br i1 %126, label %127, label %120, !llvm.loop !135

127:                                              ; preds = %120, %110
  %128 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 6
  store ptr %3, ptr %128, align 8, !tbaa !50
  ret void
}

declare void @IMB_colormanagement_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @render_result_merge(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %172, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 4
  %10 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %11 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %12 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %14 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %15 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 3
  %19 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 4
  %20 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %21 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %22 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %24 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %25 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  br label %27

27:                                               ; preds = %6, %169
  %28 = phi ptr [ %4, %6 ], [ %170, %169 ]
  %29 = getelementptr inbounds %struct.RenderLayer, ptr %28, i64 0, i32 2
  %30 = tail call ptr @RE_GetRenderLayer(ptr noundef %1, ptr noundef nonnull %29) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %169, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.RenderLayer, ptr %28, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = icmp eq ptr %34, null
  br i1 %35, label %93, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.RenderLayer, ptr %30, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %93, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 8, !tbaa !67
  %42 = load i32, ptr %8, align 4, !tbaa !68
  %43 = load i16, ptr %9, align 8, !tbaa !71
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %40
  %46 = sext i16 %43 to i32
  %47 = shl i32 %41, 2
  %48 = add i32 %47, 4
  %49 = mul i32 %48, %46
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, ptr %38, i64 %50
  %52 = shl nsw i32 %46, 1
  %53 = sub nsw i32 %41, %52
  %54 = sub nsw i32 %42, %52
  %55 = load i32, ptr %11, align 8, !tbaa !90
  %56 = add nsw i32 %55, %46
  %57 = load i32, ptr %12, align 8, !tbaa !67
  %58 = mul nsw i32 %56, %57
  %59 = load i32, ptr %10, align 8, !tbaa !87
  %60 = add nsw i32 %59, %46
  %61 = add nsw i32 %60, %58
  br label %68

62:                                               ; preds = %40
  %63 = load i32, ptr %14, align 8, !tbaa !90
  %64 = load i32, ptr %15, align 8, !tbaa !67
  %65 = mul nsw i32 %64, %63
  %66 = load i32, ptr %13, align 8, !tbaa !87
  %67 = add nsw i32 %65, %66
  br label %68

68:                                               ; preds = %62, %45
  %69 = phi ptr [ %51, %45 ], [ %38, %62 ]
  %70 = phi i32 [ %61, %45 ], [ %67, %62 ]
  %71 = phi i32 [ %53, %45 ], [ %41, %62 ]
  %72 = phi i32 [ %54, %45 ], [ %42, %62 ]
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load i32, ptr %16, align 8, !tbaa !67
  %76 = shl nsw i32 %75, 2
  %77 = shl nsw i32 %41, 2
  %78 = shl i32 %71, 4
  %79 = shl nsw i32 %70, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %34, i64 %80
  %82 = sext i32 %78 to i64
  %83 = sext i32 %76 to i64
  %84 = sext i32 %77 to i64
  br label %85

85:                                               ; preds = %85, %74
  %86 = phi i32 [ 0, %74 ], [ %91, %85 ]
  %87 = phi ptr [ %81, %74 ], [ %89, %85 ]
  %88 = phi ptr [ %69, %74 ], [ %90, %85 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %87, ptr align 4 %88, i64 %82, i1 false)
  %89 = getelementptr inbounds float, ptr %87, i64 %83
  %90 = getelementptr inbounds float, ptr %88, i64 %84
  %91 = add nuw nsw i32 %86, 1
  %92 = icmp eq i32 %91, %72
  br i1 %92, label %93, label %85, !llvm.loop !136

93:                                               ; preds = %85, %68, %36, %32
  %94 = getelementptr inbounds %struct.RenderLayer, ptr %28, i64 0, i32 18
  %95 = getelementptr inbounds %struct.RenderLayer, ptr %30, i64 0, i32 18
  %96 = load ptr, ptr %95, align 8, !tbaa !45
  %97 = load ptr, ptr %94, align 8, !tbaa !45
  %98 = icmp ne ptr %97, null
  %99 = icmp ne ptr %96, null
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %169

101:                                              ; preds = %93, %163
  %102 = phi ptr [ %165, %163 ], [ %97, %93 ]
  %103 = phi ptr [ %164, %163 ], [ %96, %93 ]
  %104 = getelementptr inbounds %struct.RenderPass, ptr %102, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !50
  %106 = getelementptr inbounds %struct.RenderPass, ptr %103, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !50
  %108 = getelementptr inbounds %struct.RenderPass, ptr %102, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !123
  %110 = load i32, ptr %17, align 8, !tbaa !67
  %111 = load i32, ptr %18, align 4, !tbaa !68
  %112 = load i16, ptr %19, align 8, !tbaa !71
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %101
  %115 = sext i16 %112 to i32
  %116 = add i32 %110, 1
  %117 = mul i32 %116, %109
  %118 = mul i32 %117, %115
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, ptr %107, i64 %119
  %121 = shl nsw i32 %115, 1
  %122 = sub nsw i32 %110, %121
  %123 = sub nsw i32 %111, %121
  %124 = load i32, ptr %21, align 8, !tbaa !90
  %125 = add nsw i32 %124, %115
  %126 = load i32, ptr %22, align 8, !tbaa !67
  %127 = mul nsw i32 %125, %126
  %128 = load i32, ptr %20, align 8, !tbaa !87
  %129 = add nsw i32 %128, %115
  %130 = add nsw i32 %129, %127
  br label %137

131:                                              ; preds = %101
  %132 = load i32, ptr %24, align 8, !tbaa !90
  %133 = load i32, ptr %25, align 8, !tbaa !67
  %134 = mul nsw i32 %133, %132
  %135 = load i32, ptr %23, align 8, !tbaa !87
  %136 = add nsw i32 %134, %135
  br label %137

137:                                              ; preds = %131, %114
  %138 = phi ptr [ %120, %114 ], [ %107, %131 ]
  %139 = phi i32 [ %130, %114 ], [ %136, %131 ]
  %140 = phi i32 [ %122, %114 ], [ %110, %131 ]
  %141 = phi i32 [ %123, %114 ], [ %111, %131 ]
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %137
  %144 = load i32, ptr %26, align 8, !tbaa !67
  %145 = mul nsw i32 %144, %109
  %146 = mul nsw i32 %110, %109
  %147 = shl i32 %109, 2
  %148 = mul i32 %147, %140
  %149 = mul nsw i32 %139, %109
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, ptr %105, i64 %150
  %152 = sext i32 %148 to i64
  %153 = sext i32 %145 to i64
  %154 = sext i32 %146 to i64
  br label %155

155:                                              ; preds = %155, %143
  %156 = phi i32 [ 0, %143 ], [ %161, %155 ]
  %157 = phi ptr [ %151, %143 ], [ %159, %155 ]
  %158 = phi ptr [ %138, %143 ], [ %160, %155 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %157, ptr align 4 %158, i64 %152, i1 false)
  %159 = getelementptr inbounds float, ptr %157, i64 %153
  %160 = getelementptr inbounds float, ptr %158, i64 %154
  %161 = add nuw nsw i32 %156, 1
  %162 = icmp eq i32 %161, %141
  br i1 %162, label %163, label %155, !llvm.loop !136

163:                                              ; preds = %155, %137
  %164 = load ptr, ptr %103, align 8, !tbaa !45
  %165 = load ptr, ptr %102, align 8, !tbaa !45
  %166 = icmp ne ptr %165, null
  %167 = icmp ne ptr %164, null
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %101, label %169, !llvm.loop !137

169:                                              ; preds = %163, %93, %27
  %170 = load ptr, ptr %28, align 8, !tbaa !45
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %27, !llvm.loop !138

172:                                              ; preds = %169, %2
  ret void
}

declare ptr @RE_GetRenderLayer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @RE_WriteRenderResult(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @IMB_exr_get_handle() #10
  tail call void @BLI_make_existing_file(ptr noundef %2) #10
  %6 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = shl nsw i32 %11, 2
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef %12, ptr noundef nonnull %7) #10
  %13 = load i32, ptr %10, align 8, !tbaa !67
  %14 = shl nsw i32 %13, 2
  %15 = load ptr, ptr %6, align 8, !tbaa !58
  %16 = getelementptr inbounds float, ptr %15, i64 1
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %14, ptr noundef nonnull %16) #10
  %17 = load i32, ptr %10, align 8, !tbaa !67
  %18 = shl nsw i32 %17, 2
  %19 = load ptr, ptr %6, align 8, !tbaa !58
  %20 = getelementptr inbounds float, ptr %19, i64 2
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %18, ptr noundef nonnull %20) #10
  %21 = load i32, ptr %10, align 8, !tbaa !67
  %22 = shl nsw i32 %21, 2
  %23 = load ptr, ptr %6, align 8, !tbaa !58
  %24 = getelementptr inbounds float, ptr %23, i64 3
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef %22, ptr noundef nonnull %24) #10
  br label %25

25:                                               ; preds = %9, %4
  %26 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %112, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %31 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %32 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  br label %36

33:                                               ; preds = %66, %59
  %34 = load ptr, ptr %37, align 8, !tbaa !45
  %35 = icmp eq ptr %34, null
  br i1 %35, label %112, label %36, !llvm.loop !139

36:                                               ; preds = %29, %33
  %37 = phi ptr [ %27, %29 ], [ %34, %33 ]
  %38 = getelementptr inbounds %struct.RenderLayer, ptr %37, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = icmp eq ptr %39, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.RenderLayer, ptr %37, i64 0, i32 2
  br label %43

43:                                               ; preds = %41, %51
  %44 = phi i64 [ 0, %41 ], [ %57, %51 ]
  %45 = trunc i64 %44 to i32
  %46 = icmp ult i32 %45, 3
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = and i64 %44, 4294967295
  %49 = getelementptr inbounds [3 x ptr], ptr @switch.table.render_result_exr_file_read_path, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8
  br label %51

51:                                               ; preds = %43, %47
  %52 = phi ptr [ %50, %47 ], [ @.str.6, %43 ]
  %53 = load i32, ptr %30, align 8, !tbaa !67
  %54 = shl nsw i32 %53, 2
  %55 = load ptr, ptr %38, align 8, !tbaa !43
  %56 = getelementptr inbounds float, ptr %55, i64 %44
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull %42, ptr noundef nonnull %52, i32 noundef 4, i32 noundef %54, ptr noundef %56) #10
  %57 = add nuw nsw i64 %44, 1
  %58 = icmp eq i64 %57, 4
  br i1 %58, label %59, label %43, !llvm.loop !140

59:                                               ; preds = %51, %36
  %60 = getelementptr inbounds %struct.RenderLayer, ptr %37, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = icmp eq ptr %61, null
  br i1 %62, label %33, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.RenderLayer, ptr %37, i64 0, i32 2
  %65 = getelementptr inbounds %struct.RenderLayer, ptr %37, i64 0, i32 2
  br label %69

66:                                               ; preds = %109, %69
  %67 = load ptr, ptr %70, align 8, !tbaa !45
  %68 = icmp eq ptr %67, null
  br i1 %68, label %33, label %69, !llvm.loop !141

69:                                               ; preds = %63, %66
  %70 = phi ptr [ %61, %63 ], [ %67, %66 ]
  %71 = getelementptr inbounds %struct.RenderPass, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !123
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %66

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.RenderPass, ptr %70, i64 0, i32 2
  %76 = getelementptr inbounds %struct.RenderPass, ptr %70, i64 0, i32 6
  %77 = getelementptr inbounds %struct.RenderPass, ptr %70, i64 0, i32 4
  %78 = getelementptr inbounds %struct.RenderPass, ptr %70, i64 0, i32 6
  %79 = zext nneg i32 %72 to i64
  br label %80

80:                                               ; preds = %74, %109
  %81 = phi i64 [ 0, %74 ], [ %110, %109 ]
  %82 = load i32, ptr %75, align 8, !tbaa !122
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = trunc i64 %81 to i32
  %86 = tail call fastcc ptr @get_pass_name(i32 noundef %82, i32 noundef %85)
  %87 = load i32, ptr %31, align 8, !tbaa !67
  %88 = mul nsw i32 %87, %72
  %89 = load ptr, ptr %76, align 8, !tbaa !50
  %90 = getelementptr inbounds float, ptr %89, i64 %81
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull %64, ptr noundef nonnull %86, i32 noundef %72, i32 noundef %88, ptr noundef %90) #10
  br label %109

91:                                               ; preds = %80
  %92 = tail call ptr @BLI_strncpy(ptr noundef nonnull @make_pass_name.name, ptr noundef nonnull %77, i64 noundef 64) #10
  %93 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @make_pass_name.name) #11
  %94 = shl i64 %93, 32
  %95 = ashr exact i64 %94, 32
  %96 = getelementptr inbounds [16 x i8], ptr @make_pass_name.name, i64 0, i64 %95
  store i8 46, ptr %96, align 1, !tbaa !93
  %97 = getelementptr inbounds %struct.RenderPass, ptr %70, i64 0, i32 5, i64 %81
  %98 = load i8, ptr %97, align 1, !tbaa !93
  %99 = add i64 %94, 4294967296
  %100 = ashr exact i64 %99, 32
  %101 = getelementptr inbounds [16 x i8], ptr @make_pass_name.name, i64 0, i64 %100
  store i8 %98, ptr %101, align 1, !tbaa !93
  %102 = add i64 %94, 8589934592
  %103 = ashr exact i64 %102, 32
  %104 = getelementptr inbounds [16 x i8], ptr @make_pass_name.name, i64 0, i64 %103
  store i8 0, ptr %104, align 1, !tbaa !93
  %105 = load i32, ptr %32, align 8, !tbaa !67
  %106 = mul nsw i32 %105, %72
  %107 = load ptr, ptr %78, align 8, !tbaa !50
  %108 = getelementptr inbounds float, ptr %107, i64 %81
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull %65, ptr noundef nonnull @make_pass_name.name, i32 noundef %72, i32 noundef %106, ptr noundef %108) #10
  br label %109

109:                                              ; preds = %84, %91
  %110 = add nuw nsw i64 %81, 1
  %111 = icmp eq i64 %110, %79
  br i1 %111, label %66, label %80, !llvm.loop !142

112:                                              ; preds = %33, %25
  %113 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !67
  %115 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 3
  %116 = load i32, ptr %115, align 4, !tbaa !68
  %117 = tail call i32 @IMB_exr_begin_write(ptr noundef %5, ptr noundef %2, i32 noundef %114, i32 noundef %116, i32 noundef %3) #10
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  tail call void @IMB_exr_write_channels(ptr noundef %5) #10
  br label %121

120:                                              ; preds = %112
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.9) #10
  br label %121

121:                                              ; preds = %120, %119
  %122 = phi i8 [ 1, %119 ], [ 0, %120 ]
  tail call void @IMB_exr_close(ptr noundef %5) #10
  ret i8 %122
}

declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @get_pass_name(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  switch i32 %0, label %204 [
    i32 1, label %3
    i32 2, label %6
    i32 512, label %9
    i32 256, label %12
    i32 4096, label %15
    i32 4, label %18
    i32 65536, label %21
    i32 8, label %24
    i32 16, label %27
    i32 32, label %30
    i32 64, label %33
    i32 131072, label %36
    i32 8192, label %39
    i32 128, label %42
    i32 1024, label %45
    i32 2048, label %48
    i32 262144, label %51
    i32 16384, label %54
    i32 32768, label %57
    i32 524288, label %60
    i32 1048576, label %63
    i32 2097152, label %66
    i32 4194304, label %69
    i32 8388608, label %72
    i32 16777216, label %75
    i32 33554432, label %78
    i32 67108864, label %81
    i32 134217728, label %84
    i32 268435456, label %87
    i32 536870912, label %90
    i32 1073741824, label %93
  ]

3:                                                ; preds = %2
  %4 = add i32 %1, 1
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %96, label %204

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, -1
  %8 = select i1 %7, ptr @.str.27, ptr @.str.57
  br label %204

9:                                                ; preds = %2
  %10 = add i32 %1, 1
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %100, label %204

12:                                               ; preds = %2
  %13 = add i32 %1, 1
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %104, label %204

15:                                               ; preds = %2
  %16 = add i32 %1, 1
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %108, label %204

18:                                               ; preds = %2
  %19 = add i32 %1, 1
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %112, label %204

21:                                               ; preds = %2
  %22 = add i32 %1, 1
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %116, label %204

24:                                               ; preds = %2
  %25 = add i32 %1, 1
  %26 = icmp ult i32 %25, 3
  br i1 %26, label %120, label %204

27:                                               ; preds = %2
  %28 = add i32 %1, 1
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %124, label %204

30:                                               ; preds = %2
  %31 = add i32 %1, 1
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %128, label %204

33:                                               ; preds = %2
  %34 = add i32 %1, 1
  %35 = icmp ult i32 %34, 3
  br i1 %35, label %132, label %204

36:                                               ; preds = %2
  %37 = add i32 %1, 1
  %38 = icmp ult i32 %37, 3
  br i1 %38, label %136, label %204

39:                                               ; preds = %2
  %40 = add i32 %1, 1
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %140, label %204

42:                                               ; preds = %2
  %43 = add i32 %1, 1
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %144, label %204

45:                                               ; preds = %2
  %46 = add i32 %1, 1
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %148, label %204

48:                                               ; preds = %2
  %49 = icmp eq i32 %1, -1
  %50 = select i1 %49, ptr @.str.41, ptr @.str.99
  br label %204

51:                                               ; preds = %2
  %52 = icmp eq i32 %1, -1
  %53 = select i1 %52, ptr @.str.42, ptr @.str.100
  br label %204

54:                                               ; preds = %2
  %55 = icmp eq i32 %1, -1
  %56 = select i1 %55, ptr @.str.43, ptr @.str.101
  br label %204

57:                                               ; preds = %2
  %58 = add i32 %1, 1
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %152, label %204

60:                                               ; preds = %2
  %61 = add i32 %1, 1
  %62 = icmp ult i32 %61, 3
  br i1 %62, label %156, label %204

63:                                               ; preds = %2
  %64 = add i32 %1, 1
  %65 = icmp ult i32 %64, 3
  br i1 %65, label %160, label %204

66:                                               ; preds = %2
  %67 = add i32 %1, 1
  %68 = icmp ult i32 %67, 3
  br i1 %68, label %164, label %204

69:                                               ; preds = %2
  %70 = add i32 %1, 1
  %71 = icmp ult i32 %70, 3
  br i1 %71, label %168, label %204

72:                                               ; preds = %2
  %73 = add i32 %1, 1
  %74 = icmp ult i32 %73, 3
  br i1 %74, label %172, label %204

75:                                               ; preds = %2
  %76 = add i32 %1, 1
  %77 = icmp ult i32 %76, 3
  br i1 %77, label %176, label %204

78:                                               ; preds = %2
  %79 = add i32 %1, 1
  %80 = icmp ult i32 %79, 3
  br i1 %80, label %180, label %204

81:                                               ; preds = %2
  %82 = add i32 %1, 1
  %83 = icmp ult i32 %82, 3
  br i1 %83, label %184, label %204

84:                                               ; preds = %2
  %85 = add i32 %1, 1
  %86 = icmp ult i32 %85, 3
  br i1 %86, label %188, label %204

87:                                               ; preds = %2
  %88 = add i32 %1, 1
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %192, label %204

90:                                               ; preds = %2
  %91 = add i32 %1, 1
  %92 = icmp ult i32 %91, 3
  br i1 %92, label %196, label %204

93:                                               ; preds = %2
  %94 = add i32 %1, 1
  %95 = icmp ult i32 %94, 3
  br i1 %95, label %200, label %204

96:                                               ; preds = %3
  %97 = zext nneg i32 %4 to i64
  %98 = shl i64 %97, 2
  %99 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name, i64 %98)
  br label %204

100:                                              ; preds = %9
  %101 = zext nneg i32 %10 to i64
  %102 = shl i64 %101, 2
  %103 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.174, i64 %102)
  br label %204

104:                                              ; preds = %12
  %105 = zext nneg i32 %13 to i64
  %106 = shl i64 %105, 2
  %107 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.175, i64 %106)
  br label %204

108:                                              ; preds = %15
  %109 = zext nneg i32 %16 to i64
  %110 = shl i64 %109, 2
  %111 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.176, i64 %110)
  br label %204

112:                                              ; preds = %18
  %113 = zext nneg i32 %19 to i64
  %114 = shl i64 %113, 2
  %115 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.177, i64 %114)
  br label %204

116:                                              ; preds = %21
  %117 = zext nneg i32 %22 to i64
  %118 = shl i64 %117, 2
  %119 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.178, i64 %118)
  br label %204

120:                                              ; preds = %24
  %121 = zext nneg i32 %25 to i64
  %122 = shl i64 %121, 2
  %123 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.179, i64 %122)
  br label %204

124:                                              ; preds = %27
  %125 = zext nneg i32 %28 to i64
  %126 = shl i64 %125, 2
  %127 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.180, i64 %126)
  br label %204

128:                                              ; preds = %30
  %129 = zext nneg i32 %31 to i64
  %130 = shl i64 %129, 2
  %131 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.181, i64 %130)
  br label %204

132:                                              ; preds = %33
  %133 = zext nneg i32 %34 to i64
  %134 = shl i64 %133, 2
  %135 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.182, i64 %134)
  br label %204

136:                                              ; preds = %36
  %137 = zext nneg i32 %37 to i64
  %138 = shl i64 %137, 2
  %139 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.183, i64 %138)
  br label %204

140:                                              ; preds = %39
  %141 = zext nneg i32 %40 to i64
  %142 = shl i64 %141, 2
  %143 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.184, i64 %142)
  br label %204

144:                                              ; preds = %42
  %145 = zext nneg i32 %43 to i64
  %146 = shl i64 %145, 2
  %147 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.185, i64 %146)
  br label %204

148:                                              ; preds = %45
  %149 = zext nneg i32 %46 to i64
  %150 = shl i64 %149, 2
  %151 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.186, i64 %150)
  br label %204

152:                                              ; preds = %57
  %153 = zext nneg i32 %58 to i64
  %154 = shl i64 %153, 2
  %155 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.187, i64 %154)
  br label %204

156:                                              ; preds = %60
  %157 = zext nneg i32 %61 to i64
  %158 = shl i64 %157, 2
  %159 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.188, i64 %158)
  br label %204

160:                                              ; preds = %63
  %161 = zext nneg i32 %64 to i64
  %162 = shl i64 %161, 2
  %163 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.189, i64 %162)
  br label %204

164:                                              ; preds = %66
  %165 = zext nneg i32 %67 to i64
  %166 = shl i64 %165, 2
  %167 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.190, i64 %166)
  br label %204

168:                                              ; preds = %69
  %169 = zext nneg i32 %70 to i64
  %170 = shl i64 %169, 2
  %171 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.191, i64 %170)
  br label %204

172:                                              ; preds = %72
  %173 = zext nneg i32 %73 to i64
  %174 = shl i64 %173, 2
  %175 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.192, i64 %174)
  br label %204

176:                                              ; preds = %75
  %177 = zext nneg i32 %76 to i64
  %178 = shl i64 %177, 2
  %179 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.193, i64 %178)
  br label %204

180:                                              ; preds = %78
  %181 = zext nneg i32 %79 to i64
  %182 = shl i64 %181, 2
  %183 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.194, i64 %182)
  br label %204

184:                                              ; preds = %81
  %185 = zext nneg i32 %82 to i64
  %186 = shl i64 %185, 2
  %187 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.195, i64 %186)
  br label %204

188:                                              ; preds = %84
  %189 = zext nneg i32 %85 to i64
  %190 = shl i64 %189, 2
  %191 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.196, i64 %190)
  br label %204

192:                                              ; preds = %87
  %193 = zext nneg i32 %88 to i64
  %194 = shl i64 %193, 2
  %195 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.197, i64 %194)
  br label %204

196:                                              ; preds = %90
  %197 = zext nneg i32 %91 to i64
  %198 = shl i64 %197, 2
  %199 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.198, i64 %198)
  br label %204

200:                                              ; preds = %93
  %201 = zext nneg i32 %94 to i64
  %202 = shl i64 %201, 2
  %203 = call ptr @llvm.load.relative.i64(ptr @reltable.get_pass_name.199, i64 %202)
  br label %204

204:                                              ; preds = %93, %200, %90, %196, %87, %192, %84, %188, %81, %184, %78, %180, %75, %176, %72, %172, %69, %168, %66, %164, %63, %160, %60, %156, %57, %152, %45, %148, %42, %144, %39, %140, %36, %136, %33, %132, %30, %128, %27, %124, %24, %120, %21, %116, %18, %112, %15, %108, %12, %104, %9, %100, %3, %96, %2, %54, %51, %48, %6
  %205 = phi ptr [ %8, %6 ], [ %50, %48 ], [ %53, %51 ], [ %56, %54 ], [ @.str.142, %2 ], [ %99, %96 ], [ @.str.6, %3 ], [ %103, %100 ], [ @.str.61, %9 ], [ %107, %104 ], [ @.str.64, %12 ], [ %111, %108 ], [ @.str.67, %15 ], [ %115, %112 ], [ @.str.71, %18 ], [ %119, %116 ], [ @.str.74, %21 ], [ %123, %120 ], [ @.str.77, %24 ], [ %127, %124 ], [ @.str.80, %27 ], [ %131, %128 ], [ @.str.83, %30 ], [ %135, %132 ], [ @.str.86, %33 ], [ %139, %136 ], [ @.str.89, %36 ], [ %143, %140 ], [ @.str.92, %39 ], [ %147, %144 ], [ @.str.95, %42 ], [ %151, %148 ], [ @.str.98, %45 ], [ %155, %152 ], [ @.str.105, %57 ], [ %159, %156 ], [ @.str.108, %60 ], [ %163, %160 ], [ @.str.111, %63 ], [ %167, %164 ], [ @.str.114, %66 ], [ %171, %168 ], [ @.str.117, %69 ], [ %175, %172 ], [ @.str.120, %72 ], [ %179, %176 ], [ @.str.123, %75 ], [ %183, %180 ], [ @.str.126, %78 ], [ %187, %184 ], [ @.str.129, %81 ], [ %191, %188 ], [ @.str.132, %84 ], [ %195, %192 ], [ @.str.135, %87 ], [ %199, %196 ], [ @.str.138, %90 ], [ %203, %200 ], [ @.str.141, %93 ]
  ret ptr %205
}

declare i32 @IMB_exr_begin_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_exr_write_channels(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_exr_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @render_result_single_layer_begin(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  tail call void @RE_FreeRenderResult(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  store ptr %5, ptr %2, align 8, !tbaa !143
  store ptr null, ptr %4, align 8, !tbaa !144
  ret void
}

declare void @RE_FreeRenderResult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @render_result_single_layer_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %56

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !68
  %20 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !68
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  br label %31

31:                                               ; preds = %29, %50
  %32 = phi ptr [ %27, %29 ], [ %52, %50 ]
  %33 = phi i32 [ 0, %29 ], [ %51, %50 ]
  %34 = load i16, ptr %30, align 8, !tbaa !95
  %35 = sext i16 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load ptr, ptr %2, align 8, !tbaa !144
  %39 = getelementptr inbounds %struct.RenderResult, ptr %38, i64 0, i32 12
  tail call void @BLI_addtail(ptr noundef nonnull %39, ptr noundef %25) #10
  br label %50

40:                                               ; preds = %31
  %41 = load ptr, ptr %8, align 8, !tbaa !143
  %42 = getelementptr inbounds %struct.SceneRenderLayer, ptr %32, i64 0, i32 2
  %43 = tail call ptr @RE_GetRenderLayer(ptr noundef %41, ptr noundef nonnull %42) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !tbaa !143
  %47 = getelementptr inbounds %struct.RenderResult, ptr %46, i64 0, i32 12
  tail call void @BLI_remlink(ptr noundef nonnull %47, ptr noundef nonnull %43) #10
  %48 = load ptr, ptr %2, align 8, !tbaa !144
  %49 = getelementptr inbounds %struct.RenderResult, ptr %48, i64 0, i32 12
  tail call void @BLI_addtail(ptr noundef nonnull %49, ptr noundef nonnull %43) #10
  br label %50

50:                                               ; preds = %37, %45, %40
  %51 = add nuw nsw i32 %33, 1
  %52 = load ptr, ptr %32, align 8, !tbaa !45
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %31, !llvm.loop !145

54:                                               ; preds = %50, %23, %17, %11
  %55 = load ptr, ptr %8, align 8, !tbaa !143
  tail call void @RE_FreeRenderResult(ptr noundef %55) #10
  store ptr null, ptr %8, align 8, !tbaa !143
  br label %56

56:                                               ; preds = %7, %54, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @render_result_exr_file_begin(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 23
  br label %13

10:                                               ; preds = %22, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13, !llvm.loop !146

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %4, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 5
  %20 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 2
  %21 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 3
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %16, %18 ], [ %37, %22 ]
  %24 = load ptr, ptr %7, align 8, !tbaa !147
  %25 = getelementptr inbounds %struct.RenderLayer, ptr %23, i64 0, i32 2
  %26 = load i16, ptr %19, align 2, !tbaa !131
  %27 = sext i16 %26 to i32
  call void @render_result_exr_file_path(ptr noundef %24, ptr noundef nonnull %25, i32 noundef %27, ptr noundef nonnull %2)
  %28 = load i32, ptr %20, align 8, !tbaa !67
  %29 = load i32, ptr %21, align 4, !tbaa !68
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %28, i32 noundef %29, ptr noundef nonnull %2)
  %31 = getelementptr inbounds %struct.RenderLayer, ptr %23, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = load i32, ptr %20, align 8, !tbaa !67
  %34 = load i32, ptr %21, align 4, !tbaa !68
  %35 = load i32, ptr %8, align 8, !tbaa !148
  %36 = load i32, ptr %9, align 4, !tbaa !149
  call void @IMB_exrtile_begin_write(ptr noundef %32, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36) #10
  %37 = load ptr, ptr %23, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %10, label %22, !llvm.loop !150

39:                                               ; preds = %10, %1
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @render_result_exr_file_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [488 x i8], align 16
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  %7 = load ptr, ptr @G, align 8, !tbaa !151
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 2
  call void @BLI_split_file_part(ptr noundef nonnull %8, ptr noundef nonnull %6, i64 noundef 256) #10
  %9 = icmp eq i32 %2, 0
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  br i1 %9, label %11, label %13

11:                                               ; preds = %4
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 488, ptr noundef nonnull @.str.12, ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef %1) #10
  br label %15

13:                                               ; preds = %4
  %14 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 488, ptr noundef nonnull @.str.13, ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2) #10
  br label %15

15:                                               ; preds = %13, %11
  %16 = call ptr @BLI_temp_dir_session() #10
  call void @BLI_make_file_string(ptr noundef nonnull @.str.14, ptr noundef %3, ptr noundef %16, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %5) #10
  ret void
}

declare void @IMB_exrtile_begin_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @render_result_exr_file_end(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  br label %15

9:                                                ; preds = %20, %15
  %10 = load ptr, ptr %16, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15, !llvm.loop !153

12:                                               ; preds = %9, %1
  %13 = load ptr, ptr %2, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %52

15:                                               ; preds = %5, %9
  %16 = phi ptr [ %3, %5 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct.RenderResult, ptr %16, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %9, label %23

20:                                               ; preds = %49, %23
  %21 = load ptr, ptr %24, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %9, label %23, !llvm.loop !154

23:                                               ; preds = %15, %20
  %24 = phi ptr [ %21, %20 ], [ %18, %15 ]
  %25 = getelementptr inbounds %struct.RenderLayer, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !116
  tail call void @IMB_exrtile_clear_channels(ptr noundef %26) #10
  %27 = load ptr, ptr %6, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %20, label %29

29:                                               ; preds = %23, %49
  %30 = phi ptr [ %50, %49 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.RenderPart, ptr %30, i64 0, i32 18
  %32 = load i16, ptr %31, align 2, !tbaa !155
  %33 = icmp eq i16 %32, 2
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.RenderPart, ptr %30, i64 0, i32 13
  %36 = getelementptr inbounds %struct.RenderPart, ptr %30, i64 0, i32 13, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !157
  %38 = load i32, ptr %8, align 4, !tbaa !89
  %39 = sub i32 %37, %38
  %40 = getelementptr inbounds %struct.RenderPart, ptr %30, i64 0, i32 17
  %41 = load i16, ptr %40, align 4, !tbaa !158
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %39, %42
  %44 = load i32, ptr %35, align 8, !tbaa !159
  %45 = load i32, ptr %7, align 4, !tbaa !72
  %46 = add i32 %44, %42
  %47 = sub i32 %46, %45
  %48 = load ptr, ptr %25, align 8, !tbaa !116
  tail call void @IMB_exrtile_write_channels(ptr noundef %48, i32 noundef %47, i32 noundef %43, i32 noundef 0) #10
  br label %49

49:                                               ; preds = %34, %29
  %50 = load ptr, ptr %30, align 8, !tbaa !45
  %51 = icmp eq ptr %50, null
  br i1 %51, label %20, label %29, !llvm.loop !160

52:                                               ; preds = %12, %63
  %53 = phi ptr [ %65, %63 ], [ %13, %12 ]
  %54 = getelementptr inbounds %struct.RenderResult, ptr %53, i64 0, i32 12
  %55 = load ptr, ptr %54, align 8, !tbaa !45
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52, %57
  %58 = phi ptr [ %61, %57 ], [ %55, %52 ]
  %59 = getelementptr inbounds %struct.RenderLayer, ptr %58, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !116
  tail call void @IMB_exr_close(ptr noundef %60) #10
  store ptr null, ptr %59, align 8, !tbaa !116
  %61 = load ptr, ptr %58, align 8, !tbaa !45
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %57, !llvm.loop !161

63:                                               ; preds = %57, %52
  %64 = getelementptr inbounds %struct.RenderResult, ptr %53, i64 0, i32 15
  store i32 0, ptr %64, align 8, !tbaa !92
  %65 = load ptr, ptr %53, align 8, !tbaa !45
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %52, !llvm.loop !162

67:                                               ; preds = %63, %12
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 11
  %69 = load ptr, ptr %2, align 8, !tbaa !144
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %67, %77
  %72 = phi ptr [ %73, %77 ], [ %69, %67 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !60
  %74 = load ptr, ptr %68, align 8, !tbaa !61
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void @BLI_remlink(ptr noundef nonnull %68, ptr noundef nonnull %72) #10
  br label %77

77:                                               ; preds = %76, %71
  tail call void @render_result_free(ptr noundef nonnull %72)
  %78 = icmp eq ptr %73, null
  br i1 %78, label %79, label %71, !llvm.loop !62

79:                                               ; preds = %77, %67
  store ptr null, ptr %2, align 8, !tbaa !144
  %80 = tail call i32 @render_result_exr_file_read_sample(ptr noundef %0, i32 noundef 0), !range !163
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @render_result_exr_file_read_sample(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [488 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(488) %3, i8 0, i64 488, i1 false)
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  tail call void @RE_FreeRenderResult(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %7 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %7, ptr %4, align 8, !tbaa !144
  %8 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  br label %13

13:                                               ; preds = %11, %24
  %14 = phi ptr [ %9, %11 ], [ %26, %24 ]
  %15 = phi i8 [ 1, %11 ], [ %25, %24 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !147
  %17 = getelementptr inbounds %struct.RenderLayer, ptr %14, i64 0, i32 2
  call void @render_result_exr_file_path(ptr noundef %16, ptr noundef nonnull %17, i32 noundef %1, ptr noundef nonnull %3)
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %3)
  %19 = load ptr, ptr %4, align 8, !tbaa !144
  %20 = call i32 @render_result_exr_file_read_path(ptr noundef %19, ptr noundef nonnull %14, ptr noundef nonnull %3), !range !163
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %3)
  br label %24

24:                                               ; preds = %13, %22
  %25 = phi i8 [ %15, %13 ], [ 0, %22 ]
  %26 = load ptr, ptr %14, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !164

28:                                               ; preds = %24
  %29 = zext nneg i8 %25 to i32
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i32 [ 1, %2 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %3) #10
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local void @render_result_exr_file_merge(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %122

6:                                                ; preds = %2, %116
  %7 = phi ptr [ %118, %116 ], [ %1, %2 ]
  %8 = phi ptr [ %117, %116 ], [ %0, %2 ]
  tail call void @BLI_lock_thread(i32 noundef 0) #10
  %9 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %93, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 4
  %14 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  %15 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  %16 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  br label %17

17:                                               ; preds = %12, %90
  %18 = phi ptr [ %10, %12 ], [ %91, %90 ]
  %19 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 2
  %20 = tail call ptr @RE_GetRenderLayer(ptr noundef nonnull %8, ptr noundef nonnull %19) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %90, label %22

22:                                               ; preds = %17
  %23 = load i16, ptr %13, align 8, !tbaa !71
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = sext i16 %23 to i32
  %27 = load i32, ptr %14, align 8, !tbaa !67
  %28 = add i32 %27, 1
  %29 = mul i32 %28, %26
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i32 [ %29, %25 ], [ 0, %22 ]
  %32 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.RenderLayer, ptr %20, i64 0, i32 17
  %37 = shl nsw i32 %31, 2
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %35, %48
  %40 = phi i64 [ 0, %35 ], [ %55, %48 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !116
  %42 = trunc i64 %40 to i32
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = and i64 %40, 4294967295
  %46 = getelementptr inbounds [3 x ptr], ptr @switch.table.render_result_exr_file_read_path, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8
  br label %48

48:                                               ; preds = %39, %44
  %49 = phi ptr [ %47, %44 ], [ @.str.6, %39 ]
  %50 = load i32, ptr %15, align 8, !tbaa !67
  %51 = shl nsw i32 %50, 2
  %52 = load ptr, ptr %32, align 8, !tbaa !43
  %53 = getelementptr inbounds float, ptr %52, i64 %40
  %54 = getelementptr inbounds float, ptr %53, i64 %38
  tail call void @IMB_exr_set_channel(ptr noundef %41, ptr noundef nonnull %19, ptr noundef nonnull %49, i32 noundef 4, i32 noundef %51, ptr noundef %54) #10
  %55 = add nuw nsw i64 %40, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %39, !llvm.loop !165

57:                                               ; preds = %48, %30
  %58 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %90, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.RenderLayer, ptr %20, i64 0, i32 17
  br label %66

63:                                               ; preds = %77, %66
  %64 = load ptr, ptr %67, align 8, !tbaa !45
  %65 = icmp eq ptr %64, null
  br i1 %65, label %90, label %66, !llvm.loop !166

66:                                               ; preds = %61, %63
  %67 = phi ptr [ %59, %61 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.RenderPass, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !123
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %63

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.RenderPass, ptr %67, i64 0, i32 2
  %73 = getelementptr inbounds %struct.RenderPass, ptr %67, i64 0, i32 6
  %74 = mul nsw i32 %69, %31
  %75 = sext i32 %74 to i64
  %76 = zext nneg i32 %69 to i64
  br label %77

77:                                               ; preds = %71, %77
  %78 = phi i64 [ 0, %71 ], [ %88, %77 ]
  %79 = load ptr, ptr %62, align 8, !tbaa !116
  %80 = load i32, ptr %72, align 8, !tbaa !122
  %81 = trunc i64 %78 to i32
  %82 = tail call fastcc ptr @get_pass_name(i32 noundef %80, i32 noundef %81)
  %83 = load i32, ptr %16, align 8, !tbaa !67
  %84 = mul nsw i32 %83, %69
  %85 = load ptr, ptr %73, align 8, !tbaa !50
  %86 = getelementptr inbounds float, ptr %85, i64 %78
  %87 = getelementptr inbounds float, ptr %86, i64 %75
  tail call void @IMB_exr_set_channel(ptr noundef %79, ptr noundef nonnull %19, ptr noundef nonnull %82, i32 noundef %69, i32 noundef %84, ptr noundef %87) #10
  %88 = add nuw nsw i64 %78, 1
  %89 = icmp eq i64 %88, %76
  br i1 %89, label %63, label %77, !llvm.loop !167

90:                                               ; preds = %63, %57, %17
  %91 = load ptr, ptr %18, align 8, !tbaa !45
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %17, !llvm.loop !168

93:                                               ; preds = %90, %6
  %94 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 9
  %95 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 9, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !90
  %97 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 4
  %98 = load i16, ptr %97, align 8, !tbaa !71
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 %96, %99
  %101 = load i32, ptr %94, align 8, !tbaa !87
  %102 = add nsw i32 %101, %99
  %103 = load ptr, ptr %9, align 8, !tbaa !45
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %93, %113
  %106 = phi ptr [ %114, %113 ], [ %103, %93 ]
  %107 = getelementptr inbounds %struct.RenderLayer, ptr %106, i64 0, i32 2
  %108 = tail call ptr @RE_GetRenderLayer(ptr noundef nonnull %8, ptr noundef nonnull %107) #10
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.RenderLayer, ptr %108, i64 0, i32 17
  %112 = load ptr, ptr %111, align 8, !tbaa !116
  tail call void @IMB_exrtile_write_channels(ptr noundef %112, i32 noundef %102, i32 noundef %100, i32 noundef 0) #10
  br label %113

113:                                              ; preds = %110, %105
  %114 = load ptr, ptr %106, align 8, !tbaa !45
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %105, !llvm.loop !169

116:                                              ; preds = %113, %93
  tail call void @BLI_unlock_thread(i32 noundef 0) #10
  %117 = load ptr, ptr %8, align 8, !tbaa !60
  %118 = load ptr, ptr %7, align 8, !tbaa !60
  %119 = icmp ne ptr %117, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %6, label %122, !llvm.loop !170

122:                                              ; preds = %116, %2
  ret void
}

declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_temp_dir_session() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @render_result_exr_file_read_path(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @IMB_exr_get_handle() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %7 = call i32 @IMB_exr_begin_read(ptr noundef %6, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %2)
  br label %96

11:                                               ; preds = %3
  %12 = icmp eq ptr %0, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %4, align 4, !tbaa !171
  %15 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !67
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, ptr %5, align 4, !tbaa !171
  %20 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !68
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %11, %18, %13
  %24 = phi ptr [ @str.147, %13 ], [ @str.147, %18 ], [ @str.146, %11 ]
  %25 = call i32 @puts(ptr nonnull dereferenceable(1) %24)
  br label %96

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %95, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %1, null
  br label %32

32:                                               ; preds = %30, %92
  %33 = phi ptr [ %28, %30 ], [ %93, %92 ]
  %34 = icmp eq ptr %33, %1
  %35 = or i1 %31, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.RenderLayer, ptr %33, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.RenderLayer, ptr %33, i64 0, i32 2
  br label %42

42:                                               ; preds = %40, %50
  %43 = phi i64 [ 0, %40 ], [ %56, %50 ]
  %44 = trunc i64 %43 to i32
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = and i64 %43, 4294967295
  %48 = getelementptr inbounds [3 x ptr], ptr @switch.table.render_result_exr_file_read_path, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8
  br label %50

50:                                               ; preds = %42, %46
  %51 = phi ptr [ %49, %46 ], [ @.str.6, %42 ]
  %52 = load i32, ptr %4, align 4, !tbaa !171
  %53 = shl nsw i32 %52, 2
  %54 = load ptr, ptr %37, align 8, !tbaa !43
  %55 = getelementptr inbounds float, ptr %54, i64 %43
  call void @IMB_exr_set_channel(ptr noundef %6, ptr noundef nonnull %41, ptr noundef nonnull %51, i32 noundef 4, i32 noundef %53, ptr noundef %55) #10
  %56 = add nuw nsw i64 %43, 1
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %42, !llvm.loop !172

58:                                               ; preds = %50, %36
  %59 = getelementptr inbounds %struct.RenderLayer, ptr %33, i64 0, i32 18
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = icmp eq ptr %60, null
  br i1 %61, label %92, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.RenderLayer, ptr %33, i64 0, i32 2
  br label %64

64:                                               ; preds = %62, %84
  %65 = phi ptr [ %60, %62 ], [ %90, %84 ]
  %66 = getelementptr inbounds %struct.RenderPass, ptr %65, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !123
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.RenderPass, ptr %65, i64 0, i32 2
  %71 = getelementptr inbounds %struct.RenderPass, ptr %65, i64 0, i32 6
  %72 = zext nneg i32 %67 to i64
  br label %73

73:                                               ; preds = %69, %73
  %74 = phi i64 [ 0, %69 ], [ %82, %73 ]
  %75 = load i32, ptr %70, align 8, !tbaa !122
  %76 = trunc i64 %74 to i32
  %77 = call fastcc ptr @get_pass_name(i32 noundef %75, i32 noundef %76)
  %78 = load i32, ptr %4, align 4, !tbaa !171
  %79 = mul nsw i32 %78, %67
  %80 = load ptr, ptr %71, align 8, !tbaa !50
  %81 = getelementptr inbounds float, ptr %80, i64 %74
  call void @IMB_exr_set_channel(ptr noundef %6, ptr noundef nonnull %63, ptr noundef nonnull %77, i32 noundef %67, i32 noundef %79, ptr noundef %81) #10
  %82 = add nuw nsw i64 %74, 1
  %83 = icmp eq i64 %82, %72
  br i1 %83, label %84, label %73, !llvm.loop !173

84:                                               ; preds = %73, %64
  %85 = getelementptr inbounds %struct.RenderPass, ptr %65, i64 0, i32 4
  %86 = getelementptr inbounds %struct.RenderPass, ptr %65, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !122
  %88 = call fastcc ptr @get_pass_name(i32 noundef %87, i32 noundef -1)
  %89 = call ptr @BLI_strncpy(ptr noundef nonnull %85, ptr noundef nonnull %88, i64 noundef 64) #10
  %90 = load ptr, ptr %65, align 8, !tbaa !45
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %64, !llvm.loop !174

92:                                               ; preds = %84, %58, %32
  %93 = load ptr, ptr %33, align 8, !tbaa !45
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %32, !llvm.loop !175

95:                                               ; preds = %92, %26
  call void @IMB_exr_read_channels(ptr noundef %6) #10
  br label %96

96:                                               ; preds = %95, %23, %9
  %97 = phi i32 [ 0, %9 ], [ 0, %23 ], [ 1, %95 ]
  call void @IMB_exr_close(ptr noundef %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %97
}

declare i32 @IMB_exr_begin_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_exr_set_channel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_exr_read_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @render_result_exr_file_cache_write(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [678 x i8], align 16
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 678, ptr nonnull %2) #10
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  call fastcc void @render_result_exr_file_cache_path(ptr noundef %6, ptr noundef nonnull %2)
  %7 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %2)
  %12 = call zeroext i8 @RE_WriteRenderResult(ptr noundef null, ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0), !range !176
  call void @llvm.lifetime.end.p0(i64 678, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @render_result_exr_file_cache_path(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [1190 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [768 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca [33 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1190, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %7) #10
  %8 = load ptr, ptr @G, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !93
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  call void @BLI_split_dirfile(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 768, i64 noundef 256) #10
  %13 = call zeroext i8 @BLI_replace_extension(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.143) #10
  %14 = load ptr, ptr @G, align 8, !tbaa !151
  %15 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 2
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #11
  %17 = call ptr @md5_buffer(ptr noundef nonnull %15, i64 noundef %16, ptr noundef nonnull %6) #10
  br label %22

18:                                               ; preds = %2
  %19 = tail call ptr @BLI_temp_dir_base() #10
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %19, i64 noundef 768) #10
  %21 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.144, i64 noundef 256) #10
  br label %22

22:                                               ; preds = %18, %12
  %23 = call ptr @md5_to_hexdigest(ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %24 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 8), align 4, !tbaa !93
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call ptr @BLI_temp_dir_base() #10
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 8), %22 ]
  %30 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 1190, ptr noundef nonnull @.str.145, ptr noundef nonnull %4, ptr noundef nonnull %30, ptr noundef nonnull %7) #10
  call void @BLI_make_file_string(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %29, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1190, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @render_result_exr_file_cache_read(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [488 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(488) %2, i8 0, i64 488, i1 false)
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  tail call void @RE_FreeRenderResult(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %6 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store ptr %6, ptr %3, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  call fastcc void @render_result_exr_file_cache_path(ptr noundef %8, ptr noundef nonnull %2)
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %2)
  %10 = load ptr, ptr %3, align 8, !tbaa !144
  %11 = call i32 @render_result_exr_file_read_path(ptr noundef %10, ptr noundef null, ptr noundef nonnull %2), !range !163
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %2)
  br label %15

15:                                               ; preds = %1, %13
  %16 = phi i8 [ 0, %13 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %2) #10
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @render_result_rect_to_ibuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = getelementptr inbounds %struct.ImageFormatData, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 2, !tbaa !177
  %9 = tail call ptr @IMB_allocImBuf(i32 noundef %4, i32 noundef %6, i8 noundef zeroext %8, i32 noundef 0) #10
  %10 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  store ptr %11, ptr %12, align 8, !tbaa !178
  %13 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  store ptr %14, ptr %15, align 8, !tbaa !181
  %16 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 17
  store ptr %17, ptr %18, align 8, !tbaa !182
  %19 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 71
  %20 = load float, ptr %19, align 4, !tbaa !183
  %21 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 18
  store float %20, ptr %21, align 8, !tbaa !184
  %22 = icmp eq ptr %11, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %2
  %24 = load i8, ptr %1, align 8, !tbaa !185
  %25 = tail call zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext %24) #10
  %26 = and i8 %25, 120
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ImageFormatData, ptr %1, i64 0, i32 1
  %30 = load i8, ptr %29, align 1, !tbaa !186
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %15, align 8, !tbaa !181
  br label %35

33:                                               ; preds = %28
  tail call void @IMB_float_from_rect(ptr noundef %9) #10
  br label %35

34:                                               ; preds = %23
  store ptr null, ptr %15, align 8, !tbaa !181
  br label %35

35:                                               ; preds = %34, %33, %32, %2
  %36 = load i8, ptr %7, align 2, !tbaa !177
  %37 = icmp eq i8 %36, 8
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call ptr @IMB_dupImBuf(ptr noundef %9) #10
  tail call void @IMB_color_to_bw(ptr noundef %39) #10
  tail call void @IMB_freeImBuf(ptr noundef %9) #10
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi ptr [ %39, %38 ], [ %9, %35 ]
  ret ptr %41
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_color_to_bw(ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @render_result_rect_from_ibuf(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !67
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 4
  %17 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !68
  %19 = sext i32 %18 to i64
  %20 = mul i64 %16, %19
  %21 = tail call ptr %12(i64 noundef %20, ptr noundef nonnull @.str.22) #10
  store ptr %21, ptr %8, align 8, !tbaa !58
  br label %22

22:                                               ; preds = %11, %7
  %23 = load ptr, ptr %8, align 8, !tbaa !58
  %24 = load ptr, ptr %4, align 8, !tbaa !181
  %25 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !67
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 4
  %29 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !68
  %31 = sext i32 %30 to i64
  %32 = mul i64 %28, %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %23, ptr align 4 %24, i64 %32, i1 false)
  %33 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %72, label %68

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !178
  %39 = icmp eq ptr %38, null
  br i1 %39, label %72, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !67
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 2
  %50 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !68
  %52 = sext i32 %51 to i64
  %53 = mul i64 %49, %52
  %54 = tail call ptr %45(i64 noundef %53, ptr noundef nonnull @.str.23) #10
  store ptr %54, ptr %41, align 8, !tbaa !56
  br label %55

55:                                               ; preds = %44, %40
  %56 = load ptr, ptr %41, align 8, !tbaa !56
  %57 = load ptr, ptr %37, align 8, !tbaa !178
  %58 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !67
  %60 = shl nsw i32 %59, 2
  %61 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !68
  %63 = mul nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %56, ptr align 4 %57, i64 %64, i1 false)
  %65 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %55, %22
  %69 = phi ptr [ %34, %22 ], [ %66, %55 ]
  %70 = phi ptr [ %33, %22 ], [ %65, %55 ]
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %71(ptr noundef nonnull %69) #10
  store ptr null, ptr %70, align 8, !tbaa !45
  br label %72

72:                                               ; preds = %68, %36, %55, %22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @render_result_rect_fill_zero(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 4
  %10 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = sext i32 %11 to i64
  %13 = mul i64 %9, %12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %3, i8 0, i64 %13, i1 false)
  br label %37

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !67
  %21 = shl nsw i32 %20, 2
  %22 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !68
  %24 = mul nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %16, i8 0, i64 %25, i1 false)
  br label %37

26:                                               ; preds = %14
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !67
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !68
  %34 = sext i32 %33 to i64
  %35 = mul i64 %31, %34
  %36 = tail call ptr %27(i64 noundef %35, ptr noundef nonnull @.str.23) #10
  store ptr %36, ptr %15, align 8, !tbaa !56
  br label %37

37:                                               ; preds = %18, %26, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @render_result_rect_get_pixels(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !68
  %17 = sext i32 %16 to i64
  %18 = mul i64 %14, %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 4 %8, i64 %18, i1 false)
  br label %33

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !68
  tail call void @IMB_display_buffer_transform_apply(ptr noundef %1, ptr noundef nonnull %21, i32 noundef %25, i32 noundef %27, i32 noundef 4, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1) #10
  br label %33

28:                                               ; preds = %19
  %29 = sext i32 %2 to i64
  %30 = shl nsw i64 %29, 2
  %31 = sext i32 %3 to i64
  %32 = mul i64 %30, %31
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %32, i1 false)
  br label %33

33:                                               ; preds = %23, %28, %10
  ret void
}

declare void @IMB_display_buffer_transform_apply(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare void @IMB_exrtile_clear_channels(ptr noundef) local_unnamed_addr #2

declare void @IMB_exrtile_write_channels(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @md5_buffer(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_temp_dir_base() local_unnamed_addr #2

declare ptr @md5_to_hexdigest(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 80}
!35 = !{!"RenderResult", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 26, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !39, i64 72, !39, i64 76, !42, i64 80, !41, i64 96, !36, i64 112, !39, i64 120, !39, i64 124, !39, i64 128, !36, i64 136}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!44, !36, i64 136}
!44 = !{!"RenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !36, i64 176, !42, i64 184}
!45 = !{!36, !36, i64 0}
!46 = !{!44, !36, i64 144}
!47 = !{!44, !36, i64 152}
!48 = !{!44, !36, i64 160}
!49 = !{!44, !36, i64 184}
!50 = !{!51, !36, i64 96}
!51 = !{!"RenderPass", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 88, !36, i64 96, !39, i64 104, !39, i64 108, !39, i64 112}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = !{!35, !36, i64 32}
!57 = !{!35, !36, i64 48}
!58 = !{!35, !36, i64 40}
!59 = !{!35, !36, i64 136}
!60 = !{!35, !36, i64 0}
!61 = !{!42, !36, i64 0}
!62 = distinct !{!62, !53, !54}
!63 = !{!41, !39, i64 4}
!64 = !{!41, !39, i64 0}
!65 = !{!41, !39, i64 12}
!66 = !{!41, !39, i64 8}
!67 = !{!35, !39, i64 16}
!68 = !{!35, !39, i64 20}
!69 = !{!35, !39, i64 96}
!70 = !{!35, !39, i64 100}
!71 = !{!35, !40, i64 24}
!72 = !{!73, !39, i64 156}
!73 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !41, i64 156, !74, i64 172, !75, i64 188, !75, i64 192, !75, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !75, i64 216, !75, i64 220, !75, i64 224, !75, i64 228, !75, i64 232, !75, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !75, i64 544, !75, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !76, i64 1104, !83, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !42, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !75, i64 5680, !36, i64 5688, !42, i64 5696, !75, i64 5712, !75, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !42, i64 5752, !42, i64 5768, !42, i64 5784, !36, i64 5800, !42, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !42, i64 5872, !36, i64 5888, !42, i64 5896, !42, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !85, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!74 = !{!"rctf", !75, i64 0, !75, i64 4, !75, i64 8, !75, i64 12}
!75 = !{!"float", !37, i64 0}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !80, i64 264, !81, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !75, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !75, i64 436, !75, i64 440, !75, i64 444, !75, i64 448, !75, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !74, i64 544, !74, i64 560, !41, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !75, i64 612, !75, i64 616, !75, i64 620, !75, i64 624, !39, i64 628, !75, i64 632, !75, i64 636, !75, i64 640, !75, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !75, i64 660, !75, i64 664, !40, i64 668, !40, i64 670, !75, i64 672, !75, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !75, i64 2528, !75, i64 2532, !40, i64 2536, !40, i64 2538, !75, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !75, i64 2560, !75, i64 2564, !36, i64 2568, !39, i64 2576, !75, i64 2580, !37, i64 2584, !82, i64 2616, !39, i64 3976, !39, i64 3980}
!77 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !75, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !75, i64 136, !75, i64 140, !36, i64 144, !36, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!80 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!81 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !75, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!82 = !{!"BakeData", !77, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !75, i64 1280, !75, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!83 = !{!"World", !84, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !75, i64 136, !75, i64 140, !75, i64 144, !75, i64 148, !75, i64 152, !75, i64 156, !75, i64 160, !75, i64 164, !75, i64 168, !75, i64 172, !75, i64 176, !75, i64 180, !75, i64 184, !75, i64 188, !75, i64 192, !75, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !75, i64 216, !75, i64 220, !75, i64 224, !75, i64 228, !75, i64 232, !75, i64 236, !75, i64 240, !75, i64 244, !75, i64 248, !75, i64 252, !75, i64 256, !75, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !75, i64 272, !75, i64 276, !75, i64 280, !75, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !75, i64 296, !75, i64 300, !75, i64 304, !75, i64 308, !75, i64 312, !75, i64 316, !75, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!84 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!85 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !86, i64 48, !86, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !75, i64 144, !75, i64 148}
!86 = !{!"double", !37, i64 0}
!87 = !{!35, !39, i64 56}
!88 = !{!35, !39, i64 60}
!89 = !{!73, !39, i64 164}
!90 = !{!35, !39, i64 64}
!91 = !{!35, !39, i64 68}
!92 = !{!35, !39, i64 120}
!93 = !{!37, !37, i64 0}
!94 = !{!73, !39, i64 1620}
!95 = !{!73, !40, i64 1712}
!96 = !{!97, !39, i64 108}
!97 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !75, i64 124, !98, i64 128}
!98 = !{!"FreestyleConfig", !42, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !75, i64 28, !75, i64 32, !75, i64 36, !42, i64 40}
!99 = !{!97, !39, i64 96}
!100 = !{!44, !39, i64 92}
!101 = !{!97, !39, i64 100}
!102 = !{!44, !39, i64 96}
!103 = !{!97, !39, i64 104}
!104 = !{!44, !39, i64 100}
!105 = !{!44, !39, i64 104}
!106 = !{!97, !39, i64 112}
!107 = !{!44, !39, i64 108}
!108 = !{!97, !39, i64 116}
!109 = !{!44, !39, i64 112}
!110 = !{!97, !36, i64 88}
!111 = !{!44, !36, i64 128}
!112 = !{!97, !36, i64 80}
!113 = !{!44, !36, i64 120}
!114 = !{!44, !39, i64 168}
!115 = !{!44, !39, i64 172}
!116 = !{!44, !36, i64 176}
!117 = distinct !{!117, !53, !54}
!118 = !{!73, !39, i64 148}
!119 = !{!35, !39, i64 72}
!120 = !{!73, !39, i64 152}
!121 = !{!35, !39, i64 76}
!122 = !{!51, !39, i64 16}
!123 = !{!51, !39, i64 20}
!124 = !{!51, !39, i64 104}
!125 = !{!51, !39, i64 108}
!126 = distinct !{!126, !53, !54}
!127 = !{!75, !75, i64 0}
!128 = distinct !{!128, !53, !54}
!129 = distinct !{!129, !53, !54}
!130 = !{!73, !40, i64 98}
!131 = !{!35, !40, i64 26}
!132 = distinct !{!132, !53, !54}
!133 = distinct !{!133, !53, !54}
!134 = distinct !{!134, !53, !54}
!135 = distinct !{!135, !53, !54}
!136 = distinct !{!136, !53, !54}
!137 = distinct !{!137, !53, !54}
!138 = distinct !{!138, !53, !54}
!139 = distinct !{!139, !53, !54}
!140 = distinct !{!140, !53, !54}
!141 = distinct !{!141, !53, !54}
!142 = distinct !{!142, !53, !54}
!143 = !{!73, !36, i64 120}
!144 = !{!73, !36, i64 112}
!145 = distinct !{!145, !53, !54}
!146 = distinct !{!146, !53, !54}
!147 = !{!73, !36, i64 1096}
!148 = !{!73, !39, i64 208}
!149 = !{!73, !39, i64 212}
!150 = distinct !{!150, !53, !54}
!151 = !{!152, !36, i64 0}
!152 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!153 = distinct !{!153, !53, !54}
!154 = distinct !{!154, !53, !54}
!155 = !{!156, !40, i64 142}
!156 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 128, !39, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !36, i64 152}
!157 = !{!156, !39, i64 120}
!158 = !{!156, !40, i64 140}
!159 = !{!156, !39, i64 112}
!160 = distinct !{!160, !53, !54}
!161 = distinct !{!161, !53, !54}
!162 = distinct !{!162, !53, !54}
!163 = !{i32 0, i32 2}
!164 = distinct !{!164, !53, !54}
!165 = distinct !{!165, !53, !54}
!166 = distinct !{!166, !53, !54}
!167 = distinct !{!167, !53, !54}
!168 = distinct !{!168, !53, !54}
!169 = distinct !{!169, !53, !54}
!170 = distinct !{!170, !53, !54}
!171 = !{!39, !39, i64 0}
!172 = distinct !{!172, !53, !54}
!173 = distinct !{!173, !53, !54}
!174 = distinct !{!174, !53, !54}
!175 = distinct !{!175, !53, !54}
!176 = !{i8 0, i8 2}
!177 = !{!76, !37, i64 2}
!178 = !{!179, !36, i64 40}
!179 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !75, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !180, i64 2456}
!180 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!181 = !{!179, !36, i64 48}
!182 = !{!179, !36, i64 104}
!183 = !{!76, !75, i64 644}
!184 = !{!179, !75, i64 112}
!185 = !{!76, !37, i64 0}
!186 = !{!76, !37, i64 1}
