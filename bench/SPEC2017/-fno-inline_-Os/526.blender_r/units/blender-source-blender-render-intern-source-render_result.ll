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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %13(ptr noundef nonnull %10) #13
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %19(ptr noundef nonnull %16) #13
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %25(ptr noundef nonnull %22) #13
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %28) #13
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
  tail call void %42(ptr noundef nonnull %39) #13
  br label %43

43:                                               ; preds = %41, %36
  tail call void @BLI_remlink(ptr noundef nonnull %33, ptr noundef nonnull %37) #13
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %37) #13
  %45 = load ptr, ptr %33, align 8, !tbaa !49
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %36, !llvm.loop !52

47:                                               ; preds = %43, %32
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %8) #13
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %48(ptr noundef nonnull %8) #13
  %49 = load ptr, ptr %4, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %7, !llvm.loop !54

51:                                               ; preds = %47, %3
  %52 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %56(ptr noundef nonnull %53) #13
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !56
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %62(ptr noundef nonnull %59) #13
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %68(ptr noundef nonnull %65) #13
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !58
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %74(ptr noundef nonnull %71) #13
  br label %75

75:                                               ; preds = %73, %69
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %76(ptr noundef nonnull %0) #13
  br label %77

77:                                               ; preds = %1, %75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_free_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br label %6

6:                                                ; preds = %4, %13
  %7 = phi ptr [ %1, %4 ], [ %8, %13 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  br i1 %5, label %13, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !60
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %7) #13
  br label %13

13:                                               ; preds = %12, %9, %6
  tail call void @render_result_free(ptr noundef nonnull %7) #14
  %14 = icmp eq ptr %8, null
  br i1 %14, label %15, label %6, !llvm.loop !61

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @render_result_new(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #14
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #14
  %8 = icmp slt i32 %6, 1
  %9 = icmp slt i32 %7, 1
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %340, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %13 = tail call ptr %12(i64 noundef 144, ptr noundef nonnull @.str) #13
  %14 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 2
  store i32 %6, ptr %14, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 3
  store i32 %7, ptr %15, align 4, !tbaa !63
  %16 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 13
  store volatile i32 0, ptr %16, align 8, !tbaa !64
  %17 = shl nsw i32 %2, 1
  %18 = sub nsw i32 %6, %17
  %19 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 13, i32 1
  store volatile i32 %18, ptr %19, align 4, !tbaa !65
  %20 = trunc i32 %2 to i16
  %21 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 4
  store i16 %20, ptr %21, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %23 = load i32, ptr %22, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 9
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !82
  %27 = load <4 x i32>, ptr %1, align 4, !tbaa !83
  %28 = insertelement <4 x i32> poison, i32 %23, i64 0
  %29 = insertelement <4 x i32> %28, i32 %26, i64 1
  %30 = shufflevector <4 x i32> %29, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %31 = sub nsw <4 x i32> %27, %30
  store <4 x i32> %31, ptr %24, align 8, !tbaa !83
  %32 = icmp eq i32 %3, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 15
  store i32 1, ptr %34, align 8, !tbaa !84
  br label %35

35:                                               ; preds = %33, %11
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %284, label %39

39:                                               ; preds = %35
  %40 = icmp eq ptr %4, null
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %43 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 12
  %44 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 15
  %45 = mul nsw i32 %7, %6
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 2
  %48 = shl nsw i64 %46, 4
  br label %49

49:                                               ; preds = %39, %280
  %50 = phi ptr [ %37, %39 ], [ %282, %280 ]
  %51 = phi i32 [ 0, %39 ], [ %281, %280 ]
  br i1 %40, label %59, label %52

52:                                               ; preds = %49
  %53 = load i8, ptr %4, align 1, !tbaa !85
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.SceneRenderLayer, ptr %50, i64 0, i32 2
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) %4) #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %280

59:                                               ; preds = %55, %52, %49
  %60 = load i32, ptr %41, align 4, !tbaa !86
  %61 = and i32 %60, 512
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i16, ptr %42, align 8, !tbaa !87
  %65 = sext i16 %64 to i32
  %66 = icmp eq i32 %51, %65
  br i1 %66, label %72, label %280

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.SceneRenderLayer, ptr %50, i64 0, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !88
  %70 = and i32 %69, 131072
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %280

72:                                               ; preds = %67, %63
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %74 = tail call ptr %73(i64 noundef 200, ptr noundef nonnull @.str.1) #13
  tail call void @BLI_addtail(ptr noundef nonnull %43, ptr noundef %74) #13
  %75 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 2
  %76 = getelementptr inbounds %struct.SceneRenderLayer, ptr %50, i64 0, i32 2
  %77 = tail call ptr @BLI_strncpy(ptr noundef nonnull %75, ptr noundef nonnull %76, i64 noundef 74) #13
  %78 = getelementptr inbounds %struct.SceneRenderLayer, ptr %50, i64 0, i32 5
  %79 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 3
  %80 = load <4 x i32>, ptr %78, align 8, !tbaa !83
  store <4 x i32> %80, ptr %79, align 4, !tbaa !83
  %81 = getelementptr inbounds %struct.SceneRenderLayer, ptr %50, i64 0, i32 9
  %82 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 7
  %83 = load <2 x i32>, ptr %81, align 8, !tbaa !83
  store <2 x i32> %83, ptr %82, align 4, !tbaa !83
  %84 = getelementptr inbounds %struct.SceneRenderLayer, ptr %50, i64 0, i32 3
  %85 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 9
  %86 = load <2 x ptr>, ptr %84, align 8, !tbaa !45
  store <2 x ptr> %86, ptr %85, align 8, !tbaa !45
  %87 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 15
  store i32 %6, ptr %87, align 8, !tbaa !91
  %88 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 16
  store i32 %7, ptr %88, align 4, !tbaa !92
  %89 = load i32, ptr %44, align 8, !tbaa !84
  %90 = icmp eq i32 %89, 0
  %91 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !45
  br i1 %90, label %100, label %92

92:                                               ; preds = %72
  %93 = tail call ptr %91(i64 noundef %47, ptr noundef nonnull @.str.2) #13
  %94 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 14
  store ptr %93, ptr %94, align 8, !tbaa !48
  %95 = tail call ptr @IMB_exr_get_handle() #13
  %96 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 17
  store ptr %95, ptr %96, align 8, !tbaa !93
  tail call void @IMB_exr_add_channel(ptr noundef %95, ptr noundef nonnull %75, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %97 = load ptr, ptr %96, align 8, !tbaa !93
  tail call void @IMB_exr_add_channel(ptr noundef %97, ptr noundef nonnull %75, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %98 = load ptr, ptr %96, align 8, !tbaa !93
  tail call void @IMB_exr_add_channel(ptr noundef %98, ptr noundef nonnull %75, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %99 = load ptr, ptr %96, align 8, !tbaa !93
  tail call void @IMB_exr_add_channel(ptr noundef %99, ptr noundef nonnull %75, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  br label %103

100:                                              ; preds = %72
  %101 = tail call ptr %91(i64 noundef %48, ptr noundef nonnull @.str.7) #13
  %102 = getelementptr inbounds %struct.RenderLayer, ptr %74, i64 0, i32 11
  store ptr %101, ptr %102, align 8, !tbaa !43
  br label %103

103:                                              ; preds = %100, %92
  %104 = load i32, ptr %81, align 8, !tbaa !94
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 1, i32 noundef 2) #14
  %108 = load i32, ptr %81, align 8, !tbaa !94
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i32 [ %108, %107 ], [ %104, %103 ]
  %111 = and i32 %110, 512
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 4, i32 noundef 512) #14
  %114 = load i32, ptr %81, align 8, !tbaa !94
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i32 [ %114, %113 ], [ %110, %109 ]
  %117 = and i32 %116, 256
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 256) #14
  %120 = load i32, ptr %81, align 8, !tbaa !94
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi i32 [ %120, %119 ], [ %116, %115 ]
  %123 = and i32 %122, 4096
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 4096) #14
  %126 = load i32, ptr %81, align 8, !tbaa !94
  br label %127

127:                                              ; preds = %125, %121
  %128 = phi i32 [ %126, %125 ], [ %122, %121 ]
  %129 = and i32 %128, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 4, i32 noundef 4) #14
  %132 = load i32, ptr %81, align 8, !tbaa !94
  br label %133

133:                                              ; preds = %131, %127
  %134 = phi i32 [ %132, %131 ], [ %128, %127 ]
  %135 = and i32 %134, 65536
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 65536) #14
  %138 = load i32, ptr %81, align 8, !tbaa !94
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi i32 [ %138, %137 ], [ %134, %133 ]
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 8) #14
  %144 = load i32, ptr %81, align 8, !tbaa !94
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi i32 [ %144, %143 ], [ %140, %139 ]
  %147 = and i32 %146, 16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 16) #14
  %150 = load i32, ptr %81, align 8, !tbaa !94
  br label %151

151:                                              ; preds = %149, %145
  %152 = phi i32 [ %150, %149 ], [ %146, %145 ]
  %153 = and i32 %152, 64
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 64) #14
  %156 = load i32, ptr %81, align 8, !tbaa !94
  br label %157

157:                                              ; preds = %155, %151
  %158 = phi i32 [ %156, %155 ], [ %152, %151 ]
  %159 = and i32 %158, 131072
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 131072) #14
  %162 = load i32, ptr %81, align 8, !tbaa !94
  br label %163

163:                                              ; preds = %161, %157
  %164 = phi i32 [ %162, %161 ], [ %158, %157 ]
  %165 = and i32 %164, 8192
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 8192) #14
  %168 = load i32, ptr %81, align 8, !tbaa !94
  br label %169

169:                                              ; preds = %167, %163
  %170 = phi i32 [ %168, %167 ], [ %164, %163 ]
  %171 = and i32 %170, 32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 32) #14
  %174 = load i32, ptr %81, align 8, !tbaa !94
  br label %175

175:                                              ; preds = %173, %169
  %176 = phi i32 [ %174, %173 ], [ %170, %169 ]
  %177 = and i32 %176, 128
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 128) #14
  %180 = load i32, ptr %81, align 8, !tbaa !94
  br label %181

181:                                              ; preds = %179, %175
  %182 = phi i32 [ %180, %179 ], [ %176, %175 ]
  %183 = and i32 %182, 1024
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 1024) #14
  %186 = load i32, ptr %81, align 8, !tbaa !94
  br label %187

187:                                              ; preds = %185, %181
  %188 = phi i32 [ %186, %185 ], [ %182, %181 ]
  %189 = and i32 %188, 2048
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 1, i32 noundef 2048) #14
  %192 = load i32, ptr %81, align 8, !tbaa !94
  br label %193

193:                                              ; preds = %191, %187
  %194 = phi i32 [ %192, %191 ], [ %188, %187 ]
  %195 = and i32 %194, 262144
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 1, i32 noundef 262144) #14
  %198 = load i32, ptr %81, align 8, !tbaa !94
  br label %199

199:                                              ; preds = %197, %193
  %200 = phi i32 [ %198, %197 ], [ %194, %193 ]
  %201 = and i32 %200, 16384
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 1, i32 noundef 16384) #14
  br label %204

204:                                              ; preds = %203, %199
  %205 = load i32, ptr %82, align 4, !tbaa !95
  %206 = and i32 %205, 32768
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 4, i32 noundef 32768) #14
  br label %209

209:                                              ; preds = %208, %204
  %210 = load i32, ptr %81, align 8, !tbaa !94
  %211 = and i32 %210, 524288
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 524288) #14
  %214 = load i32, ptr %81, align 8, !tbaa !94
  br label %215

215:                                              ; preds = %213, %209
  %216 = phi i32 [ %214, %213 ], [ %210, %209 ]
  %217 = and i32 %216, 1048576
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 1048576) #14
  %220 = load i32, ptr %81, align 8, !tbaa !94
  br label %221

221:                                              ; preds = %219, %215
  %222 = phi i32 [ %220, %219 ], [ %216, %215 ]
  %223 = and i32 %222, 2097152
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 2097152) #14
  %226 = load i32, ptr %81, align 8, !tbaa !94
  br label %227

227:                                              ; preds = %225, %221
  %228 = phi i32 [ %226, %225 ], [ %222, %221 ]
  %229 = and i32 %228, 4194304
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %227
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 4194304) #14
  %232 = load i32, ptr %81, align 8, !tbaa !94
  br label %233

233:                                              ; preds = %231, %227
  %234 = phi i32 [ %232, %231 ], [ %228, %227 ]
  %235 = and i32 %234, 8388608
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 8388608) #14
  %238 = load i32, ptr %81, align 8, !tbaa !94
  br label %239

239:                                              ; preds = %237, %233
  %240 = phi i32 [ %238, %237 ], [ %234, %233 ]
  %241 = and i32 %240, 16777216
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 16777216) #14
  %244 = load i32, ptr %81, align 8, !tbaa !94
  br label %245

245:                                              ; preds = %243, %239
  %246 = phi i32 [ %244, %243 ], [ %240, %239 ]
  %247 = and i32 %246, 33554432
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 33554432) #14
  %250 = load i32, ptr %81, align 8, !tbaa !94
  br label %251

251:                                              ; preds = %249, %245
  %252 = phi i32 [ %250, %249 ], [ %246, %245 ]
  %253 = and i32 %252, 67108864
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 67108864) #14
  %256 = load i32, ptr %81, align 8, !tbaa !94
  br label %257

257:                                              ; preds = %255, %251
  %258 = phi i32 [ %256, %255 ], [ %252, %251 ]
  %259 = and i32 %258, 134217728
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 134217728) #14
  %262 = load i32, ptr %81, align 8, !tbaa !94
  br label %263

263:                                              ; preds = %261, %257
  %264 = phi i32 [ %262, %261 ], [ %258, %257 ]
  %265 = and i32 %264, 268435456
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 268435456) #14
  %268 = load i32, ptr %81, align 8, !tbaa !94
  br label %269

269:                                              ; preds = %267, %263
  %270 = phi i32 [ %268, %267 ], [ %264, %263 ]
  %271 = and i32 %270, 536870912
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %269
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 536870912) #14
  %274 = load i32, ptr %81, align 8, !tbaa !94
  br label %275

275:                                              ; preds = %273, %269
  %276 = phi i32 [ %274, %273 ], [ %270, %269 ]
  %277 = and i32 %276, 1073741824
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %275
  tail call fastcc void @render_layer_add_pass(ptr noundef nonnull %13, ptr noundef nonnull %74, i32 noundef 3, i32 noundef 1073741824) #14
  br label %280

280:                                              ; preds = %275, %279, %67, %63, %55
  %281 = add nuw nsw i32 %51, 1
  %282 = load ptr, ptr %50, align 8, !tbaa !45
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %49, !llvm.loop !96

284:                                              ; preds = %280, %35
  %285 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 12
  %286 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %285) #14, !range !97
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %323, label %288

288:                                              ; preds = %284
  %289 = icmp eq ptr %4, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %288
  %291 = load i8, ptr %4, align 1, !tbaa !85
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %323

293:                                              ; preds = %290, %288
  %294 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %295 = tail call ptr %294(i64 noundef 200, ptr noundef nonnull @.str.1) #13
  tail call void @BLI_addtail(ptr noundef nonnull %285, ptr noundef %295) #13
  %296 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 15
  store i32 %6, ptr %296, align 8, !tbaa !91
  %297 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 16
  store i32 %7, ptr %297, align 4, !tbaa !92
  %298 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 15
  %299 = load i32, ptr %298, align 8, !tbaa !84
  %300 = icmp eq i32 %299, 0
  %301 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !45
  %302 = mul nsw i32 %7, %6
  %303 = sext i32 %302 to i64
  br i1 %300, label %314, label %304

304:                                              ; preds = %293
  %305 = shl nsw i64 %303, 2
  %306 = tail call ptr %301(i64 noundef %305, ptr noundef nonnull @.str.2) #13
  %307 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 14
  store ptr %306, ptr %307, align 8, !tbaa !48
  %308 = tail call ptr @IMB_exr_get_handle() #13
  %309 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 17
  store ptr %308, ptr %309, align 8, !tbaa !93
  %310 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 2
  tail call void @IMB_exr_add_channel(ptr noundef %308, ptr noundef nonnull %310, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %311 = load ptr, ptr %309, align 8, !tbaa !93
  tail call void @IMB_exr_add_channel(ptr noundef %311, ptr noundef nonnull %310, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %312 = load ptr, ptr %309, align 8, !tbaa !93
  tail call void @IMB_exr_add_channel(ptr noundef %312, ptr noundef nonnull %310, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %313 = load ptr, ptr %309, align 8, !tbaa !93
  tail call void @IMB_exr_add_channel(ptr noundef %313, ptr noundef nonnull %310, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  br label %318

314:                                              ; preds = %293
  %315 = shl nsw i64 %303, 4
  %316 = tail call ptr %301(i64 noundef %315, ptr noundef nonnull @.str.7) #13
  %317 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 11
  store ptr %316, ptr %317, align 8, !tbaa !43
  br label %318

318:                                              ; preds = %314, %304
  %319 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 3
  store i32 1048575, ptr %319, align 4, !tbaa !98
  %320 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 6
  store i32 32767, ptr %320, align 8, !tbaa !99
  %321 = getelementptr inbounds %struct.RenderLayer, ptr %295, i64 0, i32 7
  store i32 1, ptr %321, align 4, !tbaa !95
  %322 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  store i16 0, ptr %322, align 8, !tbaa !87
  br label %323

323:                                              ; preds = %318, %290, %284
  %324 = load i32, ptr %22, align 4, !tbaa !67
  %325 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %22) #14, !range !100
  %326 = add nsw i32 %325, %324
  %327 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %328 = load i32, ptr %327, align 4, !tbaa !101
  %329 = sdiv i32 %328, -2
  %330 = add i32 %326, %329
  %331 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 10
  store i32 %330, ptr %331, align 8, !tbaa !102
  %332 = load i32, ptr %25, align 4, !tbaa !82
  %333 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %22) #14, !range !100
  %334 = add nsw i32 %333, %332
  %335 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %336 = load i32, ptr %335, align 8, !tbaa !103
  %337 = sdiv i32 %336, -2
  %338 = add i32 %334, %337
  %339 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 11
  store i32 %338, ptr %339, align 4, !tbaa !104
  br label %340

340:                                              ; preds = %5, %323
  %341 = phi ptr [ %13, %323 ], [ null, %5 ]
  ret ptr %341
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !105 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !106
  %4 = load i32, ptr %0, align 4, !tbaa !107
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !109
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_exr_get_handle() local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_exr_add_channel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_layer_add_pass(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !111 {
  %5 = tail call fastcc ptr @get_pass_name(i32 noundef %3, i32 noundef 0) #14
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %7 = tail call ptr %6(i64 noundef 120, ptr noundef nonnull %5) #13
  %8 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !63
  %12 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %7) #13
  %13 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 2
  store i32 %3, ptr %13, align 8, !tbaa !112
  %14 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 3
  store i32 %2, ptr %14, align 4, !tbaa !113
  %15 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 15
  %16 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 7
  %17 = load <2 x i32>, ptr %15, align 8, !tbaa !83
  store <2 x i32> %17, ptr %16, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 4
  %19 = tail call fastcc ptr @get_pass_name(i32 noundef %3, i32 noundef -1) #14
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 64) #13
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %4
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 2
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i32 [ 0, %26 ], [ %32, %28 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !93
  %31 = tail call fastcc ptr @get_pass_name(i32 noundef %3, i32 noundef %29) #14
  tail call void @IMB_exr_add_channel(ptr noundef %30, ptr noundef nonnull %27, ptr noundef nonnull %31, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %32 = add nuw nsw i32 %29, 1
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %60, label %28, !llvm.loop !114

34:                                               ; preds = %4
  %35 = mul i32 %9, %2
  %36 = mul i32 %35, %11
  %37 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !45
  %38 = sext i32 %36 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull %5) #13
  %41 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 6
  store ptr %40, ptr %41, align 8, !tbaa !50
  switch i32 %3, label %60 [
    i32 512, label %46
    i32 2, label %42
  ]

42:                                               ; preds = %34
  %43 = icmp sgt i32 %36, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %42
  %45 = zext nneg i32 %36 to i64
  br label %55

46:                                               ; preds = %34
  %47 = icmp sgt i32 %36, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %46
  %49 = zext nneg i32 %36 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ %49, %48 ], [ %52, %50 ]
  %52 = add nsw i64 %51, -1
  %53 = getelementptr inbounds float, ptr %40, i64 %52
  store float 1.000000e+04, ptr %53, align 4, !tbaa !115
  %54 = icmp ugt i64 %51, 1
  br i1 %54, label %50, label %60, !llvm.loop !116

55:                                               ; preds = %44, %55
  %56 = phi i64 [ %45, %44 ], [ %57, %55 ]
  %57 = add nsw i64 %56, -1
  %58 = getelementptr inbounds float, ptr %40, i64 %57
  store float 0x42374876E0000000, ptr %58, align 4, !tbaa !115
  %59 = icmp ugt i64 %56, 1
  br i1 %59, label %55, label %60, !llvm.loop !117

60:                                               ; preds = %28, %55, %50, %24, %42, %46, %34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !118 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !119 {
  %2 = load i32, ptr %0, align 4, !tbaa !107
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !106
  %5 = add nsw i32 %4, %2
  %6 = sdiv i32 %5, 2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !110
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !109
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @render_result_new_full_sample(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i16 %7, 0
  br i1 %10, label %13, label %22

11:                                               ; preds = %5
  %12 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #14
  br label %24

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %18, %13 ], [ 0, %9 ]
  %15 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #14
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %15) #13
  %16 = trunc i32 %14 to i16
  %17 = getelementptr inbounds %struct.RenderResult, ptr %15, i64 0, i32 5
  store i16 %16, ptr %17, align 2, !tbaa !122
  %18 = add nuw nsw i32 %14, 1
  %19 = load i16, ptr %6, align 2, !tbaa !121
  %20 = sext i16 %19 to i32
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %13, label %22, !llvm.loop !123

22:                                               ; preds = %13, %9
  %23 = load ptr, ptr %1, align 8, !tbaa !60
  br label %24

24:                                               ; preds = %22, %11
  %25 = phi ptr [ %12, %11 ], [ %23, %22 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @render_result_new_from_exr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %7 = tail call ptr %6(i64 noundef 144, ptr noundef nonnull @__func__.render_result_new_from_exr) #13
  %8 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #13
  %9 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  store i32 %3, ptr %9, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 3
  store i32 %4, ptr %10, align 4, !tbaa !63
  tail call void @IMB_exr_multilayer_convert(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @ml_addlayer_cb, ptr noundef nonnull @ml_addpass_cb) #13
  %11 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %17

14:                                               ; preds = %34, %17
  %15 = load ptr, ptr %18, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17, !llvm.loop !124

17:                                               ; preds = %5, %14
  %18 = phi ptr [ %15, %14 ], [ %12, %5 ]
  %19 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 15
  store i32 %3, ptr %19, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 16
  store i32 %4, ptr %20, align 4, !tbaa !92
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %24

24:                                               ; preds = %17, %34
  %25 = phi ptr [ %35, %34 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.RenderPass, ptr %25, i64 0, i32 7
  store i32 %3, ptr %26, align 8, !tbaa !125
  %27 = getelementptr inbounds %struct.RenderPass, ptr %25, i64 0, i32 8
  store i32 %4, ptr %27, align 4, !tbaa !126
  %28 = getelementptr inbounds %struct.RenderPass, ptr %25, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !113
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.RenderPass, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  tail call void @IMB_colormanagement_transform(ptr noundef %33, i32 noundef %3, i32 noundef %4, i32 noundef %29, ptr noundef %1, ptr noundef %8, i8 noundef zeroext %2) #13
  br label %34

34:                                               ; preds = %24, %31
  %35 = load ptr, ptr %25, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %14, label %24, !llvm.loop !127

37:                                               ; preds = %14, %5
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_exr_multilayer_convert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @ml_addlayer_cb(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !128 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 200, ptr noundef nonnull @.str.1) #13
  %5 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.RenderLayer, ptr %4, i64 0, i32 2
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ml_addpass_cb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !129 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %8 = tail call ptr %7(i64 noundef 120, ptr noundef nonnull @.str.24) #13
  %9 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #13
  %10 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 3
  store i32 %4, ptr %10, align 4, !tbaa !113
  %11 = tail call fastcc i32 @passtype_from_name(ptr noundef %2) #14, !range !130
  %12 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 2
  store i32 %11, ptr %12, align 8, !tbaa !112
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %2) #14
  %16 = load i32, ptr %12, align 8, !tbaa !112
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %16, %14 ], [ %11, %6 ]
  %19 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !95
  %21 = or i32 %20, %18
  store i32 %21, ptr %19, align 4, !tbaa !95
  %22 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 4
  %23 = tail call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef %2, i64 noundef 64) #13
  %24 = icmp sgt i32 %4, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = zext nneg i32 %4 to i64
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ 0, %25 ], [ %32, %27 ]
  %29 = getelementptr inbounds i8, ptr %5, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !85
  %31 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 5, i64 %28
  store i8 %30, ptr %31, align 1, !tbaa !85
  %32 = add nuw nsw i64 %28, 1
  %33 = icmp eq i64 %32, %26
  br i1 %33, label %34, label %27, !llvm.loop !131

34:                                               ; preds = %27, %17
  %35 = getelementptr inbounds %struct.RenderPass, ptr %8, i64 0, i32 6
  store ptr %3, ptr %35, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_transform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_merge(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2, %42
  %7 = phi ptr [ %43, %42 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.RenderLayer, ptr %7, i64 0, i32 2
  %9 = tail call ptr @RE_GetRenderLayer(ptr noundef %1, ptr noundef nonnull %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.RenderLayer, ptr %7, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.RenderLayer, ptr %9, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @do_merge_tile(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %17, i32 noundef 4) #14
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %7, i64 0, i32 18
  %22 = getelementptr inbounds %struct.RenderLayer, ptr %9, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = load ptr, ptr %21, align 8, !tbaa !45
  %25 = icmp ne ptr %24, null
  %26 = icmp ne ptr %23, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %42

28:                                               ; preds = %20, %28
  %29 = phi ptr [ %38, %28 ], [ %24, %20 ]
  %30 = phi ptr [ %37, %28 ], [ %23, %20 ]
  %31 = getelementptr inbounds %struct.RenderPass, ptr %29, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.RenderPass, ptr %30, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.RenderPass, ptr %29, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !113
  tail call fastcc void @do_merge_tile(ptr noundef %0, ptr noundef %1, ptr noundef %32, ptr noundef %34, i32 noundef %36) #14
  %37 = load ptr, ptr %30, align 8, !tbaa !45
  %38 = load ptr, ptr %29, align 8, !tbaa !45
  %39 = icmp ne ptr %38, null
  %40 = icmp ne ptr %37, null
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %28, label %42, !llvm.loop !132

42:                                               ; preds = %28, %20, %6
  %43 = load ptr, ptr %7, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %6, !llvm.loop !133

45:                                               ; preds = %42, %2
  ret void
}

; Function Attrs: optsize
declare ptr @RE_GetRenderLayer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_merge_tile(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #5 !PGOFuncName !134 {
  %6 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !66
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %5
  %14 = sext i16 %11 to i32
  %15 = add i32 %7, 1
  %16 = mul i32 %15, %4
  %17 = mul i32 %16, %14
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr %3, i64 %18
  %20 = shl nsw i32 %14, 1
  %21 = sub nsw i32 %7, %20
  %22 = sub nsw i32 %9, %20
  %23 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %24 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !135
  %26 = add nsw i32 %25, %14
  %27 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !62
  %29 = mul nsw i32 %26, %28
  %30 = load i32, ptr %23, align 8, !tbaa !136
  %31 = add nsw i32 %30, %14
  %32 = add nsw i32 %31, %29
  br label %42

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %35 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !135
  %37 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !62
  %39 = mul nsw i32 %38, %36
  %40 = load i32, ptr %34, align 8, !tbaa !136
  %41 = add nsw i32 %39, %40
  br label %42

42:                                               ; preds = %33, %13
  %43 = phi i32 [ %28, %13 ], [ %38, %33 ]
  %44 = phi ptr [ %19, %13 ], [ %3, %33 ]
  %45 = phi i32 [ %32, %13 ], [ %41, %33 ]
  %46 = phi i32 [ %21, %13 ], [ %7, %33 ]
  %47 = phi i32 [ %22, %13 ], [ %9, %33 ]
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = mul nsw i32 %43, %4
  %51 = mul nsw i32 %7, %4
  %52 = shl i32 %4, 2
  %53 = mul i32 %52, %46
  %54 = mul nsw i32 %45, %4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr %2, i64 %55
  %57 = sext i32 %53 to i64
  %58 = sext i32 %50 to i64
  %59 = sext i32 %51 to i64
  br label %60

60:                                               ; preds = %49, %60
  %61 = phi i32 [ 0, %49 ], [ %66, %60 ]
  %62 = phi ptr [ %56, %49 ], [ %64, %60 ]
  %63 = phi ptr [ %44, %49 ], [ %65, %60 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %62, ptr align 4 %63, i64 %57, i1 false)
  %64 = getelementptr inbounds float, ptr %62, i64 %58
  %65 = getelementptr inbounds float, ptr %63, i64 %59
  %66 = add nuw nsw i32 %61, 1
  %67 = icmp eq i32 %66, %47
  br i1 %67, label %68, label %60, !llvm.loop !137

68:                                               ; preds = %60, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RE_WriteRenderResult(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @IMB_exr_get_handle() #13
  tail call void @BLI_make_existing_file(ptr noundef %2) #13
  %6 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !62
  %12 = shl nsw i32 %11, 2
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef %12, ptr noundef nonnull %7) #13
  %13 = load i32, ptr %10, align 8, !tbaa !62
  %14 = shl nsw i32 %13, 2
  %15 = load ptr, ptr %6, align 8, !tbaa !57
  %16 = getelementptr inbounds float, ptr %15, i64 1
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %14, ptr noundef nonnull %16) #13
  %17 = load i32, ptr %10, align 8, !tbaa !62
  %18 = shl nsw i32 %17, 2
  %19 = load ptr, ptr %6, align 8, !tbaa !57
  %20 = getelementptr inbounds float, ptr %19, i64 2
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %18, ptr noundef nonnull %20) #13
  %21 = load i32, ptr %10, align 8, !tbaa !62
  %22 = shl nsw i32 %21, 2
  %23 = load ptr, ptr %6, align 8, !tbaa !57
  %24 = getelementptr inbounds float, ptr %23, i64 3
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef %22, ptr noundef nonnull %24) #13
  br label %25

25:                                               ; preds = %9, %4
  %26 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %85, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  br label %34

31:                                               ; preds = %57, %51
  %32 = load ptr, ptr %35, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %85, label %34, !llvm.loop !138

34:                                               ; preds = %29, %31
  %35 = phi ptr [ %27, %29 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.RenderLayer, ptr %35, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.RenderLayer, ptr %35, i64 0, i32 2
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %49, %41 ]
  %43 = trunc i64 %42 to i32
  %44 = tail call fastcc ptr @get_pass_name(i32 noundef 1, i32 noundef %43) #14
  %45 = load i32, ptr %30, align 8, !tbaa !62
  %46 = shl nsw i32 %45, 2
  %47 = load ptr, ptr %36, align 8, !tbaa !43
  %48 = getelementptr inbounds float, ptr %47, i64 %42
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull %40, ptr noundef nonnull %44, i32 noundef 4, i32 noundef %46, ptr noundef %48) #13
  %49 = add nuw nsw i64 %42, 1
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %41, !llvm.loop !139

51:                                               ; preds = %41, %34
  %52 = getelementptr inbounds %struct.RenderLayer, ptr %35, i64 0, i32 18
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = icmp eq ptr %53, null
  br i1 %54, label %31, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.RenderLayer, ptr %35, i64 0, i32 2
  br label %60

57:                                               ; preds = %77, %60
  %58 = load ptr, ptr %61, align 8, !tbaa !45
  %59 = icmp eq ptr %58, null
  br i1 %59, label %31, label %60, !llvm.loop !140

60:                                               ; preds = %55, %57
  %61 = phi ptr [ %53, %55 ], [ %58, %57 ]
  %62 = getelementptr inbounds %struct.RenderPass, ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !113
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %57

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.RenderPass, ptr %61, i64 0, i32 2
  %67 = getelementptr inbounds %struct.RenderPass, ptr %61, i64 0, i32 6
  %68 = zext nneg i32 %63 to i64
  br label %69

69:                                               ; preds = %65, %77
  %70 = phi i64 [ 0, %65 ], [ %83, %77 ]
  %71 = load i32, ptr %66, align 8, !tbaa !112
  %72 = icmp eq i32 %71, 0
  %73 = trunc i64 %70 to i32
  br i1 %72, label %76, label %74

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @get_pass_name(i32 noundef %71, i32 noundef %73) #14
  br label %77

76:                                               ; preds = %69
  tail call fastcc void @make_pass_name(ptr noundef nonnull %61, i32 noundef %73) #14
  br label %77

77:                                               ; preds = %74, %76
  %78 = phi ptr [ %75, %74 ], [ @make_pass_name.name, %76 ]
  %79 = load i32, ptr %30, align 8, !tbaa !62
  %80 = mul nsw i32 %79, %63
  %81 = load ptr, ptr %67, align 8, !tbaa !50
  %82 = getelementptr inbounds float, ptr %81, i64 %70
  tail call void @IMB_exr_add_channel(ptr noundef %5, ptr noundef nonnull %56, ptr noundef nonnull %78, i32 noundef %63, i32 noundef %80, ptr noundef %82) #13
  %83 = add nuw nsw i64 %70, 1
  %84 = icmp eq i64 %83, %68
  br i1 %84, label %57, label %69, !llvm.loop !141

85:                                               ; preds = %31, %25
  %86 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !62
  %88 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !63
  %90 = tail call i32 @IMB_exr_begin_write(ptr noundef %5, ptr noundef %2, i32 noundef %87, i32 noundef %89, i32 noundef %3) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  tail call void @IMB_exr_write_channels(ptr noundef %5) #13
  br label %94

93:                                               ; preds = %85
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.9) #13
  br label %94

94:                                               ; preds = %93, %92
  %95 = phi i8 [ 1, %92 ], [ 0, %93 ]
  tail call void @IMB_exr_close(ptr noundef %5) #13
  ret i8 %95
}

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @get_pass_name(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !142 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_pass_name(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !143 {
  %3 = getelementptr inbounds %struct.RenderPass, ptr %0, i64 0, i32 4
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull @make_pass_name.name, ptr noundef nonnull %3, i64 noundef 64) #13
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @make_pass_name.name) #15
  %6 = shl i64 %5, 32
  %7 = ashr exact i64 %6, 32
  %8 = getelementptr inbounds [16 x i8], ptr @make_pass_name.name, i64 0, i64 %7
  store i8 46, ptr %8, align 1, !tbaa !85
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.RenderPass, ptr %0, i64 0, i32 5, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !85
  %12 = add i64 %6, 4294967296
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds [16 x i8], ptr @make_pass_name.name, i64 0, i64 %13
  store i8 %11, ptr %14, align 1, !tbaa !85
  %15 = add i64 %6, 8589934592
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds [16 x i8], ptr @make_pass_name.name, i64 0, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare i32 @IMB_exr_begin_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_exr_write_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_exr_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_single_layer_begin(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  tail call void @RE_FreeRenderResult(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  store ptr %5, ptr %2, align 8, !tbaa !144
  store ptr null, ptr %4, align 8, !tbaa !145
  ret void
}

; Function Attrs: optsize
declare void @RE_FreeRenderResult(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_single_layer_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %56

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !62
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.RenderResult, ptr %9, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !63
  %20 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !63
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef %25) #13
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
  %34 = load i16, ptr %30, align 8, !tbaa !87
  %35 = sext i16 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load ptr, ptr %2, align 8, !tbaa !145
  %39 = getelementptr inbounds %struct.RenderResult, ptr %38, i64 0, i32 12
  tail call void @BLI_addtail(ptr noundef nonnull %39, ptr noundef %25) #13
  br label %50

40:                                               ; preds = %31
  %41 = load ptr, ptr %8, align 8, !tbaa !144
  %42 = getelementptr inbounds %struct.SceneRenderLayer, ptr %32, i64 0, i32 2
  %43 = tail call ptr @RE_GetRenderLayer(ptr noundef %41, ptr noundef nonnull %42) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !tbaa !144
  %47 = getelementptr inbounds %struct.RenderResult, ptr %46, i64 0, i32 12
  tail call void @BLI_remlink(ptr noundef nonnull %47, ptr noundef nonnull %43) #13
  %48 = load ptr, ptr %2, align 8, !tbaa !145
  %49 = getelementptr inbounds %struct.RenderResult, ptr %48, i64 0, i32 12
  tail call void @BLI_addtail(ptr noundef nonnull %49, ptr noundef nonnull %43) #13
  br label %50

50:                                               ; preds = %37, %45, %40
  %51 = add nuw nsw i32 %33, 1
  %52 = load ptr, ptr %32, align 8, !tbaa !45
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %31, !llvm.loop !146

54:                                               ; preds = %50, %23, %17, %11
  %55 = load ptr, ptr %8, align 8, !tbaa !144
  tail call void @RE_FreeRenderResult(ptr noundef %55) #13
  store ptr null, ptr %8, align 8, !tbaa !144
  br label %56

56:                                               ; preds = %7, %54, %5
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_exr_file_begin(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #16
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
  br i1 %12, label %39, label %13, !llvm.loop !147

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
  %24 = load ptr, ptr %7, align 8, !tbaa !148
  %25 = getelementptr inbounds %struct.RenderLayer, ptr %23, i64 0, i32 2
  %26 = load i16, ptr %19, align 2, !tbaa !122
  %27 = sext i16 %26 to i32
  call void @render_result_exr_file_path(ptr noundef %24, ptr noundef nonnull %25, i32 noundef %27, ptr noundef nonnull %2) #14
  %28 = load i32, ptr %20, align 8, !tbaa !62
  %29 = load i32, ptr %21, align 4, !tbaa !63
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %28, i32 noundef %29, ptr noundef nonnull %2) #14
  %31 = getelementptr inbounds %struct.RenderLayer, ptr %23, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  %33 = load i32, ptr %20, align 8, !tbaa !62
  %34 = load i32, ptr %21, align 4, !tbaa !63
  %35 = load i32, ptr %8, align 8, !tbaa !149
  %36 = load i32, ptr %9, align 4, !tbaa !150
  call void @IMB_exrtile_begin_write(ptr noundef %32, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36) #13
  %37 = load ptr, ptr %23, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %10, label %22, !llvm.loop !151

39:                                               ; preds = %10, %1
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_exr_file_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [488 x i8], align 16
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #16
  %7 = load ptr, ptr @G, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 2
  call void @BLI_split_file_part(ptr noundef nonnull %8, ptr noundef nonnull %6, i64 noundef 256) #13
  %9 = icmp eq i32 %2, 0
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  br i1 %9, label %11, label %13

11:                                               ; preds = %4
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 488, ptr noundef nonnull @.str.12, ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef %1) #13
  br label %15

13:                                               ; preds = %4
  %14 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 488, ptr noundef nonnull @.str.13, ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2) #13
  br label %15

15:                                               ; preds = %13, %11
  %16 = call ptr @BLI_temp_dir_session() #13
  call void @BLI_make_file_string(ptr noundef nonnull @.str.14, ptr noundef %3, ptr noundef %16, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare void @IMB_exrtile_begin_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_exr_file_end(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @save_empty_result_tiles(ptr noundef %0) #14
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %18, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.RenderLayer, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  tail call void @IMB_exr_close(ptr noundef %13) #13
  store ptr null, ptr %12, align 8, !tbaa !93
  %14 = load ptr, ptr %11, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !154

16:                                               ; preds = %10, %5
  %17 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 15
  store i32 0, ptr %17, align 8, !tbaa !84
  %18 = load ptr, ptr %6, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5, !llvm.loop !155

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8, !tbaa !145
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %21, %20 ], [ null, %1 ]
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 11
  tail call void @render_result_free_list(ptr noundef nonnull %24, ptr noundef %23) #14
  store ptr null, ptr %2, align 8, !tbaa !145
  %25 = tail call i32 @render_result_exr_file_read_sample(ptr noundef nonnull %0, i32 noundef 0) #14, !range !156
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_empty_result_tiles(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !157 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  br label %12

9:                                                ; preds = %17, %12
  %10 = load ptr, ptr %13, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12, !llvm.loop !158

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %3, %5 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %20

17:                                               ; preds = %46, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %9, label %20, !llvm.loop !159

20:                                               ; preds = %12, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %12 ]
  %22 = getelementptr inbounds %struct.RenderLayer, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  tail call void @IMB_exrtile_clear_channels(ptr noundef %23) #13
  %24 = load ptr, ptr %6, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %17, label %26

26:                                               ; preds = %20, %46
  %27 = phi ptr [ %47, %46 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.RenderPart, ptr %27, i64 0, i32 18
  %29 = load i16, ptr %28, align 2, !tbaa !160
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.RenderPart, ptr %27, i64 0, i32 13
  %33 = getelementptr inbounds %struct.RenderPart, ptr %27, i64 0, i32 13, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !162
  %35 = load i32, ptr %8, align 4, !tbaa !82
  %36 = sub i32 %34, %35
  %37 = getelementptr inbounds %struct.RenderPart, ptr %27, i64 0, i32 17
  %38 = load i16, ptr %37, align 4, !tbaa !163
  %39 = sext i16 %38 to i32
  %40 = add nsw i32 %36, %39
  %41 = load i32, ptr %32, align 8, !tbaa !164
  %42 = load i32, ptr %7, align 4, !tbaa !67
  %43 = add i32 %41, %39
  %44 = sub i32 %43, %42
  %45 = load ptr, ptr %22, align 8, !tbaa !93
  tail call void @IMB_exrtile_write_channels(ptr noundef %45, i32 noundef %44, i32 noundef %40, i32 noundef 0) #13
  br label %46

46:                                               ; preds = %26, %31
  %47 = load ptr, ptr %27, align 8, !tbaa !45
  %48 = icmp eq ptr %47, null
  br i1 %48, label %17, label %26, !llvm.loop !165

49:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @render_result_exr_file_read_sample(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [488 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(488) %3, i8 0, i64 488, i1 false)
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  tail call void @RE_FreeRenderResult(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %7 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  store ptr %7, ptr %4, align 8, !tbaa !145
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
  %16 = load ptr, ptr %12, align 8, !tbaa !148
  %17 = getelementptr inbounds %struct.RenderLayer, ptr %14, i64 0, i32 2
  call void @render_result_exr_file_path(ptr noundef %16, ptr noundef nonnull %17, i32 noundef %1, ptr noundef nonnull %3) #14
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %3) #14
  %19 = load ptr, ptr %4, align 8, !tbaa !145
  %20 = call i32 @render_result_exr_file_read_path(ptr noundef %19, ptr noundef nonnull %14, ptr noundef nonnull %3) #14, !range !156
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %3) #14
  br label %24

24:                                               ; preds = %13, %22
  %25 = phi i8 [ %15, %13 ], [ 0, %22 ]
  %26 = load ptr, ptr %14, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !166

28:                                               ; preds = %24
  %29 = zext nneg i8 %25 to i32
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i32 [ 1, %2 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %3) #16
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_exr_file_merge(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %1, %2 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %2 ]
  tail call fastcc void @save_render_result_tile(ptr noundef nonnull %8, ptr noundef nonnull %7) #14
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %7, align 8, !tbaa !59
  %11 = icmp ne ptr %9, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %6, label %14, !llvm.loop !167

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_render_result_tile(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !168 {
  tail call void @BLI_lock_thread(i32 noundef 0) #13
  %3 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %102, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 4
  %8 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  br label %9

9:                                                ; preds = %6, %76
  %10 = phi ptr [ %4, %6 ], [ %77, %76 ]
  %11 = getelementptr inbounds %struct.RenderLayer, ptr %10, i64 0, i32 2
  %12 = tail call ptr @RE_GetRenderLayer(ptr noundef %0, ptr noundef nonnull %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %76, label %14

14:                                               ; preds = %9
  %15 = load i16, ptr %7, align 8, !tbaa !66
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = sext i16 %15 to i32
  %19 = load i32, ptr %8, align 8, !tbaa !62
  %20 = add i32 %19, 1
  %21 = mul i32 %20, %18
  br label %22

22:                                               ; preds = %14, %17
  %23 = phi i32 [ %21, %17 ], [ 0, %14 ]
  %24 = getelementptr inbounds %struct.RenderLayer, ptr %10, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.RenderLayer, ptr %12, i64 0, i32 17
  %29 = shl nsw i32 %23, 2
  %30 = sext i32 %29 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ 0, %27 ], [ %41, %31 ]
  %33 = load ptr, ptr %28, align 8, !tbaa !93
  %34 = trunc i64 %32 to i32
  %35 = tail call fastcc ptr @get_pass_name(i32 noundef 1, i32 noundef %34) #14
  %36 = load i32, ptr %8, align 8, !tbaa !62
  %37 = shl nsw i32 %36, 2
  %38 = load ptr, ptr %24, align 8, !tbaa !43
  %39 = getelementptr inbounds float, ptr %38, i64 %32
  %40 = getelementptr inbounds float, ptr %39, i64 %30
  tail call void @IMB_exr_set_channel(ptr noundef %33, ptr noundef nonnull %11, ptr noundef nonnull %35, i32 noundef 4, i32 noundef %37, ptr noundef %40) #13
  %41 = add nuw nsw i64 %32, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %31, !llvm.loop !169

43:                                               ; preds = %31, %22
  %44 = getelementptr inbounds %struct.RenderLayer, ptr %10, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %76, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.RenderLayer, ptr %12, i64 0, i32 17
  br label %52

49:                                               ; preds = %63, %52
  %50 = load ptr, ptr %53, align 8, !tbaa !45
  %51 = icmp eq ptr %50, null
  br i1 %51, label %76, label %52, !llvm.loop !170

52:                                               ; preds = %47, %49
  %53 = phi ptr [ %45, %47 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.RenderPass, ptr %53, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !113
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %49

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.RenderPass, ptr %53, i64 0, i32 2
  %59 = getelementptr inbounds %struct.RenderPass, ptr %53, i64 0, i32 6
  %60 = mul nsw i32 %55, %23
  %61 = sext i32 %60 to i64
  %62 = zext nneg i32 %55 to i64
  br label %63

63:                                               ; preds = %57, %63
  %64 = phi i64 [ 0, %57 ], [ %74, %63 ]
  %65 = load ptr, ptr %48, align 8, !tbaa !93
  %66 = load i32, ptr %58, align 8, !tbaa !112
  %67 = trunc i64 %64 to i32
  %68 = tail call fastcc ptr @get_pass_name(i32 noundef %66, i32 noundef %67) #14
  %69 = load i32, ptr %8, align 8, !tbaa !62
  %70 = mul nsw i32 %69, %55
  %71 = load ptr, ptr %59, align 8, !tbaa !50
  %72 = getelementptr inbounds float, ptr %71, i64 %64
  %73 = getelementptr inbounds float, ptr %72, i64 %61
  tail call void @IMB_exr_set_channel(ptr noundef %65, ptr noundef nonnull %11, ptr noundef nonnull %68, i32 noundef %55, i32 noundef %70, ptr noundef %73) #13
  %74 = add nuw nsw i64 %64, 1
  %75 = icmp eq i64 %74, %62
  br i1 %75, label %49, label %63, !llvm.loop !171

76:                                               ; preds = %49, %43, %9
  %77 = load ptr, ptr %10, align 8, !tbaa !45
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %9, !llvm.loop !172

79:                                               ; preds = %76
  %80 = load ptr, ptr %3, align 8, !tbaa !45
  %81 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %82 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !135
  %84 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 4
  %85 = load i16, ptr %84, align 8, !tbaa !66
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %83, %86
  %88 = load i32, ptr %81, align 8, !tbaa !136
  %89 = add nsw i32 %88, %86
  %90 = icmp eq ptr %80, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %79, %99
  %92 = phi ptr [ %100, %99 ], [ %80, %79 ]
  %93 = getelementptr inbounds %struct.RenderLayer, ptr %92, i64 0, i32 2
  %94 = tail call ptr @RE_GetRenderLayer(ptr noundef %0, ptr noundef nonnull %93) #13
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.RenderLayer, ptr %94, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !93
  tail call void @IMB_exrtile_write_channels(ptr noundef %98, i32 noundef %89, i32 noundef %87, i32 noundef 0) #13
  br label %99

99:                                               ; preds = %91, %96
  %100 = load ptr, ptr %92, align 8, !tbaa !45
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %91, !llvm.loop !173

102:                                              ; preds = %99, %2, %79
  tail call void @BLI_unlock_thread(i32 noundef 0) #13
  ret void
}

; Function Attrs: optsize
declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_temp_dir_session() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @render_result_exr_file_read_path(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @IMB_exr_get_handle() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %7 = call i32 @IMB_exr_begin_read(ptr noundef %6, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %2) #14
  br label %90

11:                                               ; preds = %3
  %12 = icmp eq ptr %0, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %4, align 4, !tbaa !83
  %15 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !62
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, ptr %5, align 4, !tbaa !83
  %20 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !63
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %11, %18, %13
  %24 = phi ptr [ @str.147, %13 ], [ @str.147, %18 ], [ @str.146, %11 ]
  %25 = call i32 @puts(ptr nonnull dereferenceable(1) %24)
  br label %90

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %89, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %1, null
  br label %32

32:                                               ; preds = %30, %86
  %33 = phi ptr [ %28, %30 ], [ %87, %86 ]
  %34 = icmp eq ptr %33, %1
  %35 = or i1 %31, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.RenderLayer, ptr %33, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.RenderLayer, ptr %33, i64 0, i32 2
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %50, %42 ]
  %44 = trunc i64 %43 to i32
  %45 = call fastcc ptr @get_pass_name(i32 noundef 1, i32 noundef %44) #14
  %46 = load i32, ptr %4, align 4, !tbaa !83
  %47 = shl nsw i32 %46, 2
  %48 = load ptr, ptr %37, align 8, !tbaa !43
  %49 = getelementptr inbounds float, ptr %48, i64 %43
  call void @IMB_exr_set_channel(ptr noundef %6, ptr noundef nonnull %41, ptr noundef nonnull %45, i32 noundef 4, i32 noundef %47, ptr noundef %49) #13
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %52, label %42, !llvm.loop !174

52:                                               ; preds = %42, %36
  %53 = getelementptr inbounds %struct.RenderLayer, ptr %33, i64 0, i32 18
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = icmp eq ptr %54, null
  br i1 %55, label %86, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.RenderLayer, ptr %33, i64 0, i32 2
  br label %58

58:                                               ; preds = %56, %78
  %59 = phi ptr [ %54, %56 ], [ %84, %78 ]
  %60 = getelementptr inbounds %struct.RenderPass, ptr %59, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !113
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.RenderPass, ptr %59, i64 0, i32 2
  %65 = getelementptr inbounds %struct.RenderPass, ptr %59, i64 0, i32 6
  %66 = zext nneg i32 %61 to i64
  br label %67

67:                                               ; preds = %63, %67
  %68 = phi i64 [ 0, %63 ], [ %76, %67 ]
  %69 = load i32, ptr %64, align 8, !tbaa !112
  %70 = trunc i64 %68 to i32
  %71 = call fastcc ptr @get_pass_name(i32 noundef %69, i32 noundef %70) #14
  %72 = load i32, ptr %4, align 4, !tbaa !83
  %73 = mul nsw i32 %72, %61
  %74 = load ptr, ptr %65, align 8, !tbaa !50
  %75 = getelementptr inbounds float, ptr %74, i64 %68
  call void @IMB_exr_set_channel(ptr noundef %6, ptr noundef nonnull %57, ptr noundef nonnull %71, i32 noundef %61, i32 noundef %73, ptr noundef %75) #13
  %76 = add nuw nsw i64 %68, 1
  %77 = icmp eq i64 %76, %66
  br i1 %77, label %78, label %67, !llvm.loop !175

78:                                               ; preds = %67, %58
  %79 = getelementptr inbounds %struct.RenderPass, ptr %59, i64 0, i32 4
  %80 = getelementptr inbounds %struct.RenderPass, ptr %59, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !112
  %82 = call fastcc ptr @get_pass_name(i32 noundef %81, i32 noundef -1) #14
  %83 = call ptr @BLI_strncpy(ptr noundef nonnull %79, ptr noundef nonnull %82, i64 noundef 64) #13
  %84 = load ptr, ptr %59, align 8, !tbaa !45
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %58, !llvm.loop !176

86:                                               ; preds = %78, %52, %32
  %87 = load ptr, ptr %33, align 8, !tbaa !45
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %32, !llvm.loop !177

89:                                               ; preds = %86, %26
  call void @IMB_exr_read_channels(ptr noundef %6) #13
  br label %90

90:                                               ; preds = %89, %23, %9
  %91 = phi i32 [ 0, %9 ], [ 0, %23 ], [ 1, %89 ]
  call void @IMB_exr_close(ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %91
}

; Function Attrs: optsize
declare i32 @IMB_exr_begin_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_exr_set_channel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_exr_read_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_exr_file_cache_write(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [678 x i8], align 16
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 678, ptr nonnull %2) #16
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  call fastcc void @render_result_exr_file_cache_path(ptr noundef %6, ptr noundef nonnull %2) #14
  %7 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !63
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %2) #14
  %12 = call zeroext i8 @RE_WriteRenderResult(ptr noundef null, ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0) #14, !range !97
  call void @llvm.lifetime.end.p0(i64 678, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_result_exr_file_cache_path(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !178 {
  %3 = alloca [1190 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [768 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca [33 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1190, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %7) #16
  %8 = load ptr, ptr @G, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !85
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  call void @BLI_split_dirfile(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 768, i64 noundef 256) #13
  %13 = call zeroext i8 @BLI_replace_extension(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.143) #13
  %14 = load ptr, ptr @G, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 2
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #15
  %17 = call ptr @md5_buffer(ptr noundef nonnull %15, i64 noundef %16, ptr noundef nonnull %6) #13
  br label %22

18:                                               ; preds = %2
  %19 = tail call ptr @BLI_temp_dir_base() #13
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %19, i64 noundef 768) #13
  %21 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.144, i64 noundef 256) #13
  br label %22

22:                                               ; preds = %18, %12
  %23 = call ptr @md5_to_hexdigest(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %24 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 8), align 4, !tbaa !85
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call ptr @BLI_temp_dir_base() #13
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 8), %22 ]
  %30 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 1190, ptr noundef nonnull @.str.145, ptr noundef nonnull %4, ptr noundef nonnull %30, ptr noundef nonnull %7) #13
  call void @BLI_make_file_string(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %29, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1190, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @render_result_exr_file_cache_read(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [488 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(488) %2, i8 0, i64 488, i1 false)
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  tail call void @RE_FreeRenderResult(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %6 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  store ptr %6, ptr %3, align 8, !tbaa !145
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %8 = load ptr, ptr %7, align 8, !tbaa !148
  call fastcc void @render_result_exr_file_cache_path(ptr noundef %8, ptr noundef nonnull %2) #14
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %2) #14
  %10 = load ptr, ptr %3, align 8, !tbaa !145
  %11 = call i32 @render_result_exr_file_read_path(ptr noundef %10, ptr noundef null, ptr noundef nonnull %2) #14, !range !156
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %2) #14
  br label %15

15:                                               ; preds = %1, %13
  %16 = phi i8 [ 0, %13 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %2) #16
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @render_result_rect_to_ibuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !63
  %7 = getelementptr inbounds %struct.ImageFormatData, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 2, !tbaa !179
  %9 = tail call ptr @IMB_allocImBuf(i32 noundef %4, i32 noundef %6, i8 noundef zeroext %8, i32 noundef 0) #13
  %10 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  store ptr %11, ptr %12, align 8, !tbaa !180
  %13 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  store ptr %14, ptr %15, align 8, !tbaa !183
  %16 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 17
  store ptr %17, ptr %18, align 8, !tbaa !184
  %19 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 71
  %20 = load float, ptr %19, align 4, !tbaa !185
  %21 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 18
  store float %20, ptr %21, align 8, !tbaa !186
  %22 = icmp eq ptr %11, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %2
  %24 = load i8, ptr %1, align 8, !tbaa !187
  %25 = tail call zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext %24) #13
  %26 = and i8 %25, 120
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ImageFormatData, ptr %1, i64 0, i32 1
  %30 = load i8, ptr %29, align 1, !tbaa !188
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %15, align 8, !tbaa !183
  br label %35

33:                                               ; preds = %28
  tail call void @IMB_float_from_rect(ptr noundef nonnull %9) #13
  br label %35

34:                                               ; preds = %23
  store ptr null, ptr %15, align 8, !tbaa !183
  br label %35

35:                                               ; preds = %34, %33, %32, %2
  %36 = load i8, ptr %7, align 2, !tbaa !179
  %37 = icmp eq i8 %36, 8
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %9) #13
  tail call void @IMB_color_to_bw(ptr noundef %39) #13
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #13
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi ptr [ %39, %38 ], [ %9, %35 ]
  ret ptr %41
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_color_to_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_rect_from_ibuf(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 4
  %17 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = sext i32 %18 to i64
  %20 = mul i64 %16, %19
  %21 = tail call ptr %12(i64 noundef %20, ptr noundef nonnull @.str.22) #13
  store ptr %21, ptr %8, align 8, !tbaa !57
  %22 = load ptr, ptr %4, align 8, !tbaa !183
  br label %23

23:                                               ; preds = %11, %7
  %24 = phi ptr [ %22, %11 ], [ %5, %7 ]
  %25 = phi ptr [ %21, %11 ], [ %9, %7 ]
  %26 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !62
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 4
  %30 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !63
  %32 = sext i32 %31 to i64
  %33 = mul i64 %29, %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %24, i64 %33, i1 false)
  %34 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = icmp eq ptr %35, null
  br i1 %36, label %74, label %70

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !180
  %40 = icmp eq ptr %39, null
  br i1 %40, label %74, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !62
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 2
  %51 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !63
  %53 = sext i32 %52 to i64
  %54 = mul i64 %50, %53
  %55 = tail call ptr %46(i64 noundef %54, ptr noundef nonnull @.str.23) #13
  store ptr %55, ptr %42, align 8, !tbaa !55
  %56 = load ptr, ptr %38, align 8, !tbaa !180
  br label %57

57:                                               ; preds = %45, %41
  %58 = phi ptr [ %56, %45 ], [ %39, %41 ]
  %59 = phi ptr [ %55, %45 ], [ %43, %41 ]
  %60 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !62
  %62 = shl nsw i32 %61, 2
  %63 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !63
  %65 = mul nsw i32 %62, %64
  %66 = sext i32 %65 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 4 %58, i64 %66, i1 false)
  %67 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %57, %23
  %71 = phi ptr [ %35, %23 ], [ %68, %57 ]
  %72 = phi ptr [ %34, %23 ], [ %67, %57 ]
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %73(ptr noundef nonnull %71) #13
  store ptr null, ptr %72, align 8, !tbaa !45
  br label %74

74:                                               ; preds = %70, %37, %57, %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_rect_fill_zero(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 4
  %10 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !63
  %12 = sext i32 %11 to i64
  %13 = mul i64 %9, %12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %3, i8 0, i64 %13, i1 false)
  br label %37

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !62
  %21 = shl nsw i32 %20, 2
  %22 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !63
  %24 = mul nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %16, i8 0, i64 %25, i1 false)
  br label %37

26:                                               ; preds = %14
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !62
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !63
  %34 = sext i32 %33 to i64
  %35 = mul i64 %31, %34
  %36 = tail call ptr %27(i64 noundef %35, ptr noundef nonnull @.str.23) #13
  store ptr %36, ptr %15, align 8, !tbaa !55
  br label %37

37:                                               ; preds = %18, %26, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_result_rect_get_pixels(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !63
  %17 = sext i32 %16 to i64
  %18 = mul i64 %14, %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 4 %8, i64 %18, i1 false)
  br label %33

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !63
  tail call void @IMB_display_buffer_transform_apply(ptr noundef %1, ptr noundef nonnull %21, i32 noundef %25, i32 noundef %27, i32 noundef 4, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1) #13
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

; Function Attrs: optsize
declare void @IMB_display_buffer_transform_apply(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @passtype_from_name(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !189 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.26) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %95, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.27) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %95, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %95, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.29) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %95, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.30) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %95, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.31) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %95, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.32) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %95, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.33) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %95, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.34) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %95, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.35) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %95, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.36) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %95, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.37) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %95, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.38) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %95, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.39) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %95, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.40) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %95, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.41) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %95, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.42) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %95, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.43) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %95, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.44) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %95, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.45) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.46) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %95, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.47) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.48) #15
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %95, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.49) #15
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.50) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.51) #15
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.52) #15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.53) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.54) #15
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.55) #15
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.56) #15
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 1073741824, i32 0
  br label %95

95:                                               ; preds = %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %96 = phi i32 [ 1, %1 ], [ 2, %4 ], [ 512, %7 ], [ 256, %10 ], [ 4096, %13 ], [ 4, %16 ], [ 65536, %19 ], [ 8, %22 ], [ 16, %25 ], [ 32, %28 ], [ 64, %31 ], [ 131072, %34 ], [ 8192, %37 ], [ 128, %40 ], [ 1024, %43 ], [ 2048, %46 ], [ 262144, %49 ], [ 16384, %52 ], [ 32768, %55 ], [ 524288, %58 ], [ 1048576, %61 ], [ 2097152, %64 ], [ 4194304, %67 ], [ 8388608, %70 ], [ 16777216, %73 ], [ 33554432, %76 ], [ 67108864, %79 ], [ 134217728, %82 ], [ 268435456, %85 ], [ 536870912, %88 ], [ %94, %91 ]
  ret i32 %96
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @IMB_exrtile_clear_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_exrtile_write_channels(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @md5_buffer(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_temp_dir_base() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @md5_to_hexdigest(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize willreturn memory(read) }
attributes #16 = { nounwind }

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
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{!35, !36, i64 32}
!56 = !{!35, !36, i64 48}
!57 = !{!35, !36, i64 40}
!58 = !{!35, !36, i64 136}
!59 = !{!35, !36, i64 0}
!60 = !{!42, !36, i64 0}
!61 = distinct !{!61, !53}
!62 = !{!35, !39, i64 16}
!63 = !{!35, !39, i64 20}
!64 = !{!35, !39, i64 96}
!65 = !{!35, !39, i64 100}
!66 = !{!35, !40, i64 24}
!67 = !{!68, !39, i64 156}
!68 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !41, i64 156, !69, i64 172, !70, i64 188, !70, i64 192, !70, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !70, i64 216, !70, i64 220, !70, i64 224, !70, i64 228, !70, i64 232, !70, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !70, i64 544, !70, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !71, i64 1104, !78, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !42, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !70, i64 5680, !36, i64 5688, !42, i64 5696, !70, i64 5712, !70, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !42, i64 5752, !42, i64 5768, !42, i64 5784, !36, i64 5800, !42, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !42, i64 5872, !36, i64 5888, !42, i64 5896, !42, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !80, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!69 = !{!"rctf", !70, i64 0, !70, i64 4, !70, i64 8, !70, i64 12}
!70 = !{!"float", !37, i64 0}
!71 = !{!"RenderData", !72, i64 0, !36, i64 248, !36, i64 256, !75, i64 264, !76, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !70, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !70, i64 436, !70, i64 440, !70, i64 444, !70, i64 448, !70, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !69, i64 544, !69, i64 560, !41, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !70, i64 612, !70, i64 616, !70, i64 620, !70, i64 624, !39, i64 628, !70, i64 632, !70, i64 636, !70, i64 640, !70, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !70, i64 660, !70, i64 664, !40, i64 668, !40, i64 670, !70, i64 672, !70, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !70, i64 2528, !70, i64 2532, !40, i64 2536, !40, i64 2538, !70, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !70, i64 2560, !70, i64 2564, !36, i64 2568, !39, i64 2576, !70, i64 2580, !37, i64 2584, !77, i64 2616, !39, i64 3976, !39, i64 3980}
!72 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !70, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !73, i64 24, !74, i64 184}
!73 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !70, i64 136, !70, i64 140, !36, i64 144, !36, i64 152}
!74 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!75 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!76 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !70, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!77 = !{!"BakeData", !72, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !70, i64 1280, !70, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!78 = !{!"World", !79, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !70, i64 136, !70, i64 140, !70, i64 144, !70, i64 148, !70, i64 152, !70, i64 156, !70, i64 160, !70, i64 164, !70, i64 168, !70, i64 172, !70, i64 176, !70, i64 180, !70, i64 184, !70, i64 188, !70, i64 192, !70, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !70, i64 216, !70, i64 220, !70, i64 224, !70, i64 228, !70, i64 232, !70, i64 236, !70, i64 240, !70, i64 244, !70, i64 248, !70, i64 252, !70, i64 256, !70, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !70, i64 272, !70, i64 276, !70, i64 280, !70, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !70, i64 296, !70, i64 300, !70, i64 304, !70, i64 308, !70, i64 312, !70, i64 316, !70, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!79 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!80 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !81, i64 48, !81, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !70, i64 144, !70, i64 148}
!81 = !{!"double", !37, i64 0}
!82 = !{!68, !39, i64 164}
!83 = !{!39, !39, i64 0}
!84 = !{!35, !39, i64 120}
!85 = !{!37, !37, i64 0}
!86 = !{!68, !39, i64 1620}
!87 = !{!68, !40, i64 1712}
!88 = !{!89, !39, i64 108}
!89 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !70, i64 124, !90, i64 128}
!90 = !{!"FreestyleConfig", !42, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !70, i64 28, !70, i64 32, !70, i64 36, !42, i64 40}
!91 = !{!44, !39, i64 168}
!92 = !{!44, !39, i64 172}
!93 = !{!44, !36, i64 176}
!94 = !{!89, !39, i64 112}
!95 = !{!44, !39, i64 108}
!96 = distinct !{!96, !53}
!97 = !{i8 0, i8 2}
!98 = !{!44, !39, i64 92}
!99 = !{!44, !39, i64 104}
!100 = !{i32 -1073741824, i32 1073741824}
!101 = !{!68, !39, i64 148}
!102 = !{!35, !39, i64 72}
!103 = !{!68, !39, i64 152}
!104 = !{!35, !39, i64 76}
!105 = !{!"render_result.c:BLI_rcti_size_x"}
!106 = !{!41, !39, i64 4}
!107 = !{!41, !39, i64 0}
!108 = !{!"render_result.c:BLI_rcti_size_y"}
!109 = !{!41, !39, i64 12}
!110 = !{!41, !39, i64 8}
!111 = !{!"render_result.c:render_layer_add_pass"}
!112 = !{!51, !39, i64 16}
!113 = !{!51, !39, i64 20}
!114 = distinct !{!114, !53}
!115 = !{!70, !70, i64 0}
!116 = distinct !{!116, !53}
!117 = distinct !{!117, !53}
!118 = !{!"render_result.c:BLI_listbase_is_empty"}
!119 = !{!"render_result.c:BLI_rcti_cent_x"}
!120 = !{!"render_result.c:BLI_rcti_cent_y"}
!121 = !{!68, !40, i64 98}
!122 = !{!35, !40, i64 26}
!123 = distinct !{!123, !53}
!124 = distinct !{!124, !53}
!125 = !{!51, !39, i64 104}
!126 = !{!51, !39, i64 108}
!127 = distinct !{!127, !53}
!128 = !{!"render_result.c:ml_addlayer_cb"}
!129 = !{!"render_result.c:ml_addpass_cb"}
!130 = !{i32 0, i32 1073741825}
!131 = distinct !{!131, !53}
!132 = distinct !{!132, !53}
!133 = distinct !{!133, !53}
!134 = !{!"render_result.c:do_merge_tile"}
!135 = !{!35, !39, i64 64}
!136 = !{!35, !39, i64 56}
!137 = distinct !{!137, !53}
!138 = distinct !{!138, !53}
!139 = distinct !{!139, !53}
!140 = distinct !{!140, !53}
!141 = distinct !{!141, !53}
!142 = !{!"render_result.c:get_pass_name"}
!143 = !{!"render_result.c:make_pass_name"}
!144 = !{!68, !36, i64 120}
!145 = !{!68, !36, i64 112}
!146 = distinct !{!146, !53}
!147 = distinct !{!147, !53}
!148 = !{!68, !36, i64 1096}
!149 = !{!68, !39, i64 208}
!150 = !{!68, !39, i64 212}
!151 = distinct !{!151, !53}
!152 = !{!153, !36, i64 0}
!153 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!154 = distinct !{!154, !53}
!155 = distinct !{!155, !53}
!156 = !{i32 0, i32 2}
!157 = !{!"render_result.c:save_empty_result_tiles"}
!158 = distinct !{!158, !53}
!159 = distinct !{!159, !53}
!160 = !{!161, !40, i64 142}
!161 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 128, !39, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !36, i64 152}
!162 = !{!161, !39, i64 120}
!163 = !{!161, !40, i64 140}
!164 = !{!161, !39, i64 112}
!165 = distinct !{!165, !53}
!166 = distinct !{!166, !53}
!167 = distinct !{!167, !53}
!168 = !{!"render_result.c:save_render_result_tile"}
!169 = distinct !{!169, !53}
!170 = distinct !{!170, !53}
!171 = distinct !{!171, !53}
!172 = distinct !{!172, !53}
!173 = distinct !{!173, !53}
!174 = distinct !{!174, !53}
!175 = distinct !{!175, !53}
!176 = distinct !{!176, !53}
!177 = distinct !{!177, !53}
!178 = !{!"render_result.c:render_result_exr_file_cache_path"}
!179 = !{!71, !37, i64 2}
!180 = !{!181, !36, i64 40}
!181 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !70, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !182, i64 2456}
!182 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!183 = !{!181, !36, i64 48}
!184 = !{!181, !36, i64 104}
!185 = !{!71, !70, i64 644}
!186 = !{!181, !70, i64 112}
!187 = !{!71, !37, i64 0}
!188 = !{!71, !37, i64 1}
!189 = !{!"render_result.c:passtype_from_name"}
