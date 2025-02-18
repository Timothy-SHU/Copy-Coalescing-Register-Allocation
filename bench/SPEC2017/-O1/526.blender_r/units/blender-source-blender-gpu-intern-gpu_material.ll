; ModuleID = 'blender/source/blender/gpu/intern/gpu_material.c'
source_filename = "blender/source/blender/gpu/intern/gpu_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.GPUMaterial = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.GPUVertexAttribs, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ListBase }
%struct.GPUVertexAttribs = type { [32 x %struct.anon], i32 }
%struct.anon = type { i32, i32, i32, i32, [64 x i8] }
%struct.GPULamp = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, float, [3 x float], float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, [3 x float], float, float, float, i32, i32, ptr, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
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
%struct.GPUShadeInput = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.GPUShadeResult = type { ptr, ptr, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.GPUPass = type { ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr }
%struct.GPUInput = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, [32 x i8], [16 x float], ptr, i32, i32, [32 x i8], i32, i32, i32 }
%struct.GPUInputUniform = type { ptr, ptr, [32 x i8], i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.GPUShaderExport = type { %struct.ListBase, %struct.ListBase, ptr, ptr }
%struct.GPUInputAttribute = type { ptr, ptr, [32 x i8], i32, i32, ptr, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"set_rgb\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"shade_norm\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"set_value\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"shade_view\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"vcol_attribute\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"srgb_to_linearrgb\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"texco_refl\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"set_rgb_zero\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"shade_add\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"shade_mul\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"shade_mul_value\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"shade_exposure_correct\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"shade_maddf\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"mtex_alpha_to_col\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"shade_obcolor\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"shade_mist_factor\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"mix_blend\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"shade_world_mix\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"shade_alpha_opaque\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"shade_alpha_obcolor\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"GPUMaterialLink\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"linearrgb_to_srgb\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@defmaterial = external global %struct.Material, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"GPULamp\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"GPULampLink\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"shade_inp\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"shadows_only_vsm\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"shadows_only\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"set_rgb_one\00", align 1
@GPU_shader_export.builtins = internal unnamed_addr constant [7 x %struct.anon.0] [%struct.anon.0 { i32 1, i32 1, i32 7 }, %struct.anon.0 { i32 4, i32 3, i32 7 }, %struct.anon.0 { i32 2, i32 2, i32 7 }, %struct.anon.0 { i32 8, i32 4, i32 7 }, %struct.anon.0 { i32 64, i32 5, i32 5 }, %struct.anon.0 { i32 128, i32 15, i32 2 }, %struct.anon.0 zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [16 x i8] c"GPUShaderExport\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"GPUInputUniform\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [11 x i8] c"RGBApixels\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"GPUFragShader\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"GPUInputAttribute\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"att%d\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"texco_norm\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"texco_orco\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"texco_object\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"texco_global\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"texco_uv\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"mtex_2d_mapping\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"mtex_mapping_size\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"mtex_mapping_ofs\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"mtex_image\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"mtex_rgbtoint\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"mtex_rgb_invert\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"mtex_value_invert\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"mtex_rgb_stencil\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"mtex_value_stencil\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"set_rgba\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"mtex_alpha_from_col\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"set_value_one\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"math_multiply\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"mtex_normal\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"mtex_negate_texnormal\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"vec_math_negate\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"mtex_nspace_tangent\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"mtex_nspace_object\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"mtex_nspace_world\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"mtex_blend_normal\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"mtex_bump_normals_init\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"mtex_bump_init_objspace\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"mtex_bump_init_texturespace\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"mtex_bump_init_viewspace\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"mtex_bump_deriv\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"mtex_bump_tap3\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"mtex_bump_tap5\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"mtex_bump_bicubic\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"mtex_bump_apply_texspace\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"mtex_bump_apply\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"mtex_value_clamp_positive\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"mtex_har_divide\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"mtex_har_multiply_clamp\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"mtex_value_clamp\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"mtex_rgb_blend\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"mtex_rgb_mul\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"mtex_rgb_screen\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"mtex_rgb_overlay\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"mtex_rgb_sub\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"mtex_rgb_add\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"mtex_rgb_div\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"mtex_rgb_diff\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"mtex_rgb_dark\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"mtex_rgb_light\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"mtex_rgb_hue\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"mtex_rgb_sat\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"mtex_rgb_val\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"mtex_rgb_color\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"mtex_rgb_soft\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"mtex_rgb_linear\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"mtex_value_blend\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"mtex_value_mul\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"mtex_value_screen\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"mtex_value_sub\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"mtex_value_add\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"mtex_value_div\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"mtex_value_diff\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"mtex_value_dark\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"mtex_value_light\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"set_value_zero\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"shade_clamp_positive\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"shade_is_no_diffuse\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"shade_is_hemi\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"shade_inp_area\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"shade_diffuse_oren_nayer\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"shade_diffuse_toon\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"shade_diffuse_minnaert\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"shade_diffuse_fresnel\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"shade_cubic\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"shade_visifac\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"shade_mul_value_v3\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"test_shadowbuf_vsm\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"test_shadowbuf\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"shade_only_shadow\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"shade_only_shadow_diffuse\00", align 1
@.str.115 = private unnamed_addr constant [27 x i8] c"shade_only_shadow_specular\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"mix_mult\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"shade_hemi_spec\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"shade_add_spec\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"shade_add_clamped\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"shade_phong_spec\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"shade_cooktorr_spec\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"shade_blinn_spec\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"shade_wardiso_spec\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"shade_toon_spec\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"shade_spec_area_inp\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"shade_spec_t\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"ramp_rgbtobw\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"vec_math_dot\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"shade_madd\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"valtorgb\00", align 1
@reltable.do_colorband_blend = internal unnamed_addr constant [18 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.131 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.116 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.132 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.133 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.134 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.135 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.136 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.137 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.138 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.139 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.140 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.141 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.142 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.143 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.144 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.145 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.146 to i64), i64 ptrtoint (ptr @reltable.do_colorband_blend to i64)) to i32)], align 4
@.str.131 = private unnamed_addr constant [8 x i8] c"mix_add\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"mix_sub\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"mix_screen\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"mix_div\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"mix_diff\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"mix_dark\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"mix_light\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"mix_overlay\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"mix_dodge\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"mix_burn\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"mix_hue\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"mix_sat\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"mix_val\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"mix_color\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"mix_soft\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"mix_linear\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"GPUMaterial\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"material_preview_matcap\00", align 1
@gpu_material_diffuse_bsdf.roughness = internal global float 0.000000e+00, align 4
@.str.149 = private unnamed_addr constant [18 x i8] c"node_bsdf_diffuse\00", align 1
@.str.150 = private unnamed_addr constant [25 x i8] c"lamp_visibility_sun_hemi\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"lamp_visibility_other\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"lamp_falloff_invlinear\00", align 1
@.str.153 = private unnamed_addr constant [23 x i8] c"lamp_falloff_invsquare\00", align 1
@.str.154 = private unnamed_addr constant [21 x i8] c"lamp_falloff_sliders\00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c"lamp_falloff_curve\00", align 1
@.str.156 = private unnamed_addr constant [23 x i8] c"lamp_visibility_sphere\00", align 1
@.str.157 = private unnamed_addr constant [28 x i8] c"lamp_visibility_spot_square\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"lamp_visibility_spot_circle\00", align 1
@.str.159 = private unnamed_addr constant [21 x i8] c"lamp_visibility_spot\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"lamp_visibility_clamp\00", align 1
@.str.161 = private unnamed_addr constant [20 x i8] c"shade_light_texture\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"GPULinkData\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @GPU_material_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 136
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1, %36
  %6 = phi ptr [ %38, %36 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.GPUMaterial, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @GPU_pass_free(ptr noundef nonnull %10) #13
  br label %13

13:                                               ; preds = %12, %5
  %14 = getelementptr inbounds %struct.GPUMaterial, ptr %8, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %20

17:                                               ; preds = %34, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20, !llvm.loop !45

20:                                               ; preds = %13, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %22 = getelementptr inbounds %struct.LinkData, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 44
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %17, label %27

27:                                               ; preds = %20, %34
  %28 = phi ptr [ %29, %34 ], [ %25, %20 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.LinkData, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @BLI_freelinkN(ptr noundef nonnull %24, ptr noundef nonnull %28) #13
  br label %34

34:                                               ; preds = %27, %33
  %35 = icmp eq ptr %29, null
  br i1 %35, label %17, label %27, !llvm.loop !52

36:                                               ; preds = %17, %13
  tail call void @BLI_freelistN(ptr noundef nonnull %14) #13
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef %8) #13
  %38 = load ptr, ptr %6, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !53

40:                                               ; preds = %36, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @GPU_pass_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @GPU_lamp_override_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SceneRenderLayer, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %5, %3
  %10 = icmp eq ptr %2, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 105
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %7, %5 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %16, ptr noundef %18) #13
  br label %20

20:                                               ; preds = %15, %9, %11
  %21 = phi i8 [ 1, %11 ], [ 1, %9 ], [ %19, %15 ]
  ret i8 %21
}

declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_material_bind(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %196, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @GPU_pass_shader(ptr noundef nonnull %10) #13
  %14 = icmp eq i8 %7, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 60
  %18 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 61
  %19 = load i16, ptr %18, align 8, !tbaa !65
  %20 = sext i16 %19 to i32
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %17, i32 noundef %20) #13
  br label %22

22:                                               ; preds = %12, %15
  %23 = phi ptr [ %21, %15 ], [ null, %12 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.SceneRenderLayer, ptr %23, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !85
  %28 = and i32 %27, %2
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %28, %25 ], [ %2, %22 ]
  %31 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %177, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct.SceneRenderLayer, ptr %23, i64 0, i32 4
  %37 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  br label %38

38:                                               ; preds = %34, %174
  %39 = phi ptr [ %32, %34 ], [ %175, %174 ]
  %40 = getelementptr inbounds %struct.LinkData, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !86
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !87
  %48 = and i32 %47, %30
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !88
  %53 = and i32 %52, 4
  %54 = icmp ne i32 %53, 0
  %55 = and i32 %47, %1
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %56, %54
  br i1 %57, label %90, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %35, align 8, !tbaa !89
  br i1 %24, label %63, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %36, align 8, !tbaa !54
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60, %58
  %64 = icmp eq ptr %59, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.Material, ptr %59, i64 0, i32 105
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65, %60
  %70 = phi ptr [ %61, %60 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  %73 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %70, ptr noundef %72) #13
  br label %74

74:                                               ; preds = %69, %63, %65
  %75 = phi i8 [ 1, %65 ], [ 1, %63 ], [ %73, %69 ]
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 10
  %79 = load float, ptr %78, align 8, !tbaa !90
  %80 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 8
  store float %79, ptr %80, align 8, !tbaa !91
  %81 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 9
  %82 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 11
  %83 = load float, ptr %82, align 4, !tbaa !92
  store float %83, ptr %81, align 4, !tbaa !92
  %84 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 11, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !92
  %86 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 9, i64 1
  store float %85, ptr %86, align 4, !tbaa !92
  %87 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 11, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !92
  %89 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 9, i64 2
  store float %88, ptr %89, align 4, !tbaa !92
  br label %92

90:                                               ; preds = %50, %74, %45, %38
  %91 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, i8 0, i64 16, i1 false)
  br label %92

92:                                               ; preds = %90, %77
  %93 = load i32, ptr %37, align 4, !tbaa !93
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %127, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 15
  %98 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 13
  %99 = load float, ptr %98, align 4, !tbaa !92
  store float %99, ptr %97, align 4, !tbaa !92
  %100 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 13, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !92
  %102 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 15, i64 1
  store float %101, ptr %102, align 4, !tbaa !92
  %103 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 13, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !92
  %105 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 15, i64 2
  store float %104, ptr %105, align 4, !tbaa !92
  %106 = fmul float %101, %101
  %107 = tail call float @llvm.fmuladd.f32(float %99, float %99, float %106)
  %108 = tail call float @llvm.fmuladd.f32(float %104, float %104, float %107)
  %109 = fcmp ogt float %108, 0x38AA95A5C0000000
  br i1 %109, label %110, label %119

110:                                              ; preds = %96
  %111 = tail call float @sqrtf(float noundef %108) #13
  %112 = fdiv float 1.000000e+00, %111
  %113 = load float, ptr %97, align 4, !tbaa !92
  %114 = fmul float %113, %112
  store float %114, ptr %97, align 4, !tbaa !92
  %115 = load float, ptr %102, align 4, !tbaa !92
  %116 = fmul float %112, %115
  store float %116, ptr %102, align 4, !tbaa !92
  %117 = load float, ptr %105, align 4, !tbaa !92
  %118 = fmul float %112, %117
  br label %120

119:                                              ; preds = %96
  store float 0.000000e+00, ptr %97, align 4, !tbaa !92
  store float 0.000000e+00, ptr %102, align 4, !tbaa !92
  br label %120

120:                                              ; preds = %110, %119
  %121 = phi float [ 0.000000e+00, %119 ], [ %118, %110 ]
  store float %121, ptr %105, align 4, !tbaa !92
  %122 = load float, ptr %97, align 4, !tbaa !92
  %123 = fneg float %122
  store float %123, ptr %97, align 4, !tbaa !92
  %124 = load float, ptr %102, align 4, !tbaa !92
  %125 = fneg float %124
  store float %125, ptr %102, align 4, !tbaa !92
  %126 = fneg float %121
  store float %126, ptr %105, align 4, !tbaa !92
  tail call void @mul_mat3_m4_v3(ptr noundef %5, ptr noundef nonnull %97) #13
  br label %127

127:                                              ; preds = %120, %92
  %128 = load i32, ptr %37, align 4, !tbaa !93
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 14
  %133 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 12
  %134 = load float, ptr %133, align 4, !tbaa !92
  store float %134, ptr %132, align 4, !tbaa !92
  %135 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 12, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !92
  %137 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 14, i64 1
  store float %136, ptr %137, align 4, !tbaa !92
  %138 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 12, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !92
  %140 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 14, i64 2
  store float %139, ptr %140, align 4, !tbaa !92
  tail call void @mul_m4_v3(ptr noundef %5, ptr noundef nonnull %132) #13
  br label %141

141:                                              ; preds = %131, %127
  %142 = load i32, ptr %37, align 4, !tbaa !93
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 18
  %147 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 17
  tail call void @mul_m4_m4m4(ptr noundef nonnull %146, ptr noundef nonnull %147, ptr noundef %6) #13
  br label %148

148:                                              ; preds = %145, %141
  %149 = load i32, ptr %37, align 4, !tbaa !93
  %150 = and i32 %149, 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %174, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %41, align 8, !tbaa !94
  %154 = getelementptr inbounds %struct.Scene, ptr %153, i64 0, i32 37, i32 18
  %155 = load i32, ptr %154, align 8, !tbaa !95
  %156 = and i32 %155, 320
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 41
  %160 = load ptr, ptr %159, align 8, !tbaa !96
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 39
  %164 = load ptr, ptr %163, align 8, !tbaa !97
  %165 = icmp ne ptr %164, null
  %166 = zext i1 %165 to i8
  br label %167

167:                                              ; preds = %152, %158, %162
  %168 = phi i8 [ 0, %158 ], [ 0, %152 ], [ %166, %162 ]
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  tail call void @GPU_lamp_update_buffer_mats(ptr noundef nonnull %41)
  br label %171

171:                                              ; preds = %170, %167
  %172 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 38
  %173 = getelementptr inbounds %struct.GPULamp, ptr %41, i64 0, i32 37
  tail call void @mul_m4_m4m4(ptr noundef nonnull %172, ptr noundef nonnull %173, ptr noundef %6) #13
  br label %174

174:                                              ; preds = %148, %171
  %175 = load ptr, ptr %39, align 8, !tbaa !34
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %38, !llvm.loop !98

177:                                              ; preds = %174, %29
  %178 = load ptr, ptr %9, align 8, !tbaa !40
  tail call void @GPU_pass_bind(ptr noundef %178, double noundef %3, i32 noundef %4) #13
  %179 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 7
  %180 = load i32, ptr %179, align 8, !tbaa !99
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 11
  %185 = load i32, ptr %184, align 8, !tbaa !100
  tail call void @GPU_shader_uniform_vector(ptr noundef %13, i32 noundef %185, i32 noundef 16, i32 noundef 1, ptr noundef %5) #13
  br label %186

186:                                              ; preds = %183, %177
  %187 = load i32, ptr %179, align 8, !tbaa !99
  %188 = and i32 %187, 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 12
  %192 = load i32, ptr %191, align 4, !tbaa !101
  tail call void @GPU_shader_uniform_vector(ptr noundef %13, i32 noundef %192, i32 noundef 16, i32 noundef 1, ptr noundef %6) #13
  br label %193

193:                                              ; preds = %190, %186
  %194 = load ptr, ptr %9, align 8, !tbaa !40
  tail call void @GPU_pass_update_uniforms(ptr noundef %194) #13
  %195 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 6
  store i32 1, ptr %195, align 4, !tbaa !102
  br label %196

196:                                              ; preds = %193, %8
  ret void
}

declare ptr @GPU_pass_shader(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @GPU_lamp_has_shadow_buffer(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !94
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 37, i32 18
  %4 = load i32, ptr %3, align 8, !tbaa !95
  %5 = and i32 %4, 320
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %11, %7, %1
  %17 = phi i8 [ 0, %7 ], [ 0, %1 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_lamp_update_buffer_mats(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36
  %5 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 16
  %6 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %7 = load float, ptr %4, align 4, !tbaa !92
  %8 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !92
  %10 = fmul float %9, %9
  %11 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %10)
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !92
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %11)
  %15 = fcmp ogt float %14, 0x38AA95A5C0000000
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = tail call float @sqrtf(float noundef %14) #13
  %18 = fdiv float 1.000000e+00, %17
  %19 = load float, ptr %4, align 4, !tbaa !92
  %20 = fmul float %19, %18
  store float %20, ptr %4, align 4, !tbaa !92
  %21 = load float, ptr %8, align 4, !tbaa !92
  %22 = fmul float %18, %21
  store float %22, ptr %8, align 4, !tbaa !92
  %23 = load float, ptr %12, align 4, !tbaa !92
  %24 = fmul float %18, %23
  br label %26

25:                                               ; preds = %1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !92
  store float 0.000000e+00, ptr %8, align 4, !tbaa !92
  br label %26

26:                                               ; preds = %16, %25
  %27 = phi float [ 0.000000e+00, %25 ], [ %24, %16 ]
  store float %27, ptr %12, align 4, !tbaa !92
  %28 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !92
  %30 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !92
  %32 = fmul float %31, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %32)
  %34 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 1, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !92
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %33)
  %37 = fcmp ogt float %36, 0x38AA95A5C0000000
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = tail call float @sqrtf(float noundef %36) #13
  %40 = fdiv float 1.000000e+00, %39
  %41 = load float, ptr %28, align 4, !tbaa !92
  %42 = fmul float %41, %40
  store float %42, ptr %28, align 4, !tbaa !92
  %43 = load float, ptr %30, align 4, !tbaa !92
  %44 = fmul float %40, %43
  store float %44, ptr %30, align 4, !tbaa !92
  %45 = load float, ptr %34, align 4, !tbaa !92
  %46 = fmul float %40, %45
  br label %48

47:                                               ; preds = %26
  store float 0.000000e+00, ptr %28, align 4, !tbaa !92
  store float 0.000000e+00, ptr %30, align 4, !tbaa !92
  br label %48

48:                                               ; preds = %38, %47
  %49 = phi float [ 0.000000e+00, %47 ], [ %46, %38 ]
  store float %49, ptr %34, align 4, !tbaa !92
  %50 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !92
  %52 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !92
  %54 = fmul float %53, %53
  %55 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %54)
  %56 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 2, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !92
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %55)
  %59 = fcmp ogt float %58, 0x38AA95A5C0000000
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = tail call float @sqrtf(float noundef %58) #13
  %62 = fdiv float 1.000000e+00, %61
  %63 = load float, ptr %50, align 4, !tbaa !92
  %64 = fmul float %63, %62
  store float %64, ptr %50, align 4, !tbaa !92
  %65 = load float, ptr %52, align 4, !tbaa !92
  %66 = fmul float %62, %65
  store float %66, ptr %52, align 4, !tbaa !92
  %67 = load float, ptr %56, align 4, !tbaa !92
  %68 = fmul float %62, %67
  br label %70

69:                                               ; preds = %48
  store float 0.000000e+00, ptr %50, align 4, !tbaa !92
  store float 0.000000e+00, ptr %52, align 4, !tbaa !92
  br label %70

70:                                               ; preds = %60, %69
  %71 = phi float [ 0.000000e+00, %69 ], [ %68, %60 ]
  store float %71, ptr %56, align 4, !tbaa !92
  %72 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 35
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %72, ptr noundef nonnull %4) #13
  call void @unit_m4(ptr noundef nonnull %2) #13
  store float 5.000000e-01, ptr %2, align 16, !tbaa !92
  %73 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 1, i64 1
  store float 5.000000e-01, ptr %73, align 4, !tbaa !92
  %74 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 2, i64 2
  store float 5.000000e-01, ptr %74, align 8, !tbaa !92
  %75 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 3
  store float 5.000000e-01, ptr %75, align 16, !tbaa !92
  %76 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 3, i64 1
  store float 5.000000e-01, ptr %76, align 4, !tbaa !92
  %77 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 3, i64 2
  store float 5.000000e-01, ptr %77, align 8, !tbaa !92
  %78 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 37
  call void @mul_m4_m4m4(ptr noundef nonnull %78, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

declare void @GPU_pass_bind(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @GPU_shader_uniform_vector(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_pass_update_uniforms(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_material_bind_uniforms(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x float], align 16
  store float %3, ptr %5, align 4, !tbaa !92
  %8 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @GPU_pass_shader(ptr noundef nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %13 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !99
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !103
  tail call void @GPU_shader_uniform_vector(ptr noundef %12, i32 noundef %19, i32 noundef 16, i32 noundef 1, ptr noundef %1) #13
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, ptr %13, align 8, !tbaa !99
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef %1) #13
  %26 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 14
  %27 = load i32, ptr %26, align 4, !tbaa !104
  call void @GPU_shader_uniform_vector(ptr noundef %12, i32 noundef %27, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %6) #13
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, ptr %13, align 8, !tbaa !99
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %28
  %33 = load float, ptr %2, align 4, !tbaa !92
  store float %33, ptr %7, align 16, !tbaa !92
  %34 = getelementptr inbounds float, ptr %2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !92
  %36 = getelementptr inbounds float, ptr %7, i64 1
  store float %35, ptr %36, align 4, !tbaa !92
  %37 = getelementptr inbounds float, ptr %2, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !92
  %39 = getelementptr inbounds float, ptr %7, i64 2
  store float %38, ptr %39, align 8, !tbaa !92
  %40 = getelementptr inbounds float, ptr %2, i64 3
  %41 = load float, ptr %40, align 4, !tbaa !92
  %42 = getelementptr inbounds float, ptr %7, i64 3
  store float %41, ptr %42, align 4, !tbaa !92
  %43 = fcmp olt float %41, 0.000000e+00
  br i1 %43, label %46, label %44

44:                                               ; preds = %32
  %45 = fcmp ogt float %41, 1.000000e+00
  br i1 %45, label %46, label %48

46:                                               ; preds = %44, %32
  %47 = phi float [ 0.000000e+00, %32 ], [ 1.000000e+00, %44 ]
  store float %47, ptr %42, align 4, !tbaa !92
  br label %48

48:                                               ; preds = %46, %44
  %49 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 15
  %50 = load i32, ptr %49, align 8, !tbaa !105
  call void @GPU_shader_uniform_vector(ptr noundef %12, i32 noundef %50, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %7) #13
  br label %51

51:                                               ; preds = %48, %28
  %52 = load i32, ptr %13, align 8, !tbaa !99
  %53 = and i32 %52, 128
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 16
  %57 = load i32, ptr %56, align 4, !tbaa !106
  call void @GPU_shader_uniform_vector(ptr noundef %12, i32 noundef %57, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %5) #13
  br label %58

58:                                               ; preds = %55, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  br label %59

59:                                               ; preds = %58, %4
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_material_unbind(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 6
  store i32 0, ptr %6, align 4, !tbaa !102
  tail call void @GPU_pass_unbind(ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

declare void @GPU_pass_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_material_bound(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !102
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GPU_material_scene(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPU_material_vertex_attributes(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %1, ptr noundef nonnull align 8 dereferenceable(2564) %3, i64 2564, i1 false), !tbaa.struct !107
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPU_material_output_link(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !110
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GPU_material_enable_alpha(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 8
  store i32 1, ptr %2, align 4, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @GPU_material_alpha_blend(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !111
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !112
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds float, ptr %1, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !92
  %13 = fcmp olt float %12, 1.000000e+00
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %2, %10, %14
  %16 = phi i32 [ 0, %14 ], [ 2, %10 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @gpu_material_add_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %1) #13
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @GPU_material_do_color_management(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 37, i32 18
  %8 = load i32, ptr %7, align 8, !tbaa !95
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i8 [ %11, %5 ], [ 0, %1 ]
  ret i8 %13
}

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @GPU_material_use_new_shading_nodes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %2) #13
  ret i8 %3
}

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shadeinput_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 38
  %7 = load i16, ptr %6, align 8, !tbaa !113
  %8 = sitofp i16 %7 to float
  store float %8, ptr %4, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store float 1.000000e+00, ptr %5, align 4, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  store ptr %0, ptr %2, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %11 = tail call ptr @GPU_uniform(ptr noundef nonnull %10) #13
  %12 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 2
  %13 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %11, ptr noundef nonnull %12) #13
  %14 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 7
  %15 = tail call ptr @GPU_uniform(ptr noundef nonnull %14) #13
  %16 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 3
  %17 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %15, ptr noundef nonnull %16) #13
  %18 = tail call ptr @GPU_builtin(i32 noundef 32) #13
  %19 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 4
  %20 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %18, ptr noundef nonnull %19) #13
  %21 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !111
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 21
  %25 = select i1 %23, ptr %5, ptr %24
  %26 = call ptr @GPU_uniform(ptr noundef nonnull %25) #13
  %27 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 8
  %28 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %26, ptr noundef nonnull %27) #13
  %29 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 22
  %30 = call ptr @GPU_uniform(ptr noundef nonnull %29) #13
  %31 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 9
  %32 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %30, ptr noundef nonnull %31) #13
  %33 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 23
  %34 = call ptr @GPU_uniform(ptr noundef nonnull %33) #13
  %35 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 10
  %36 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %34, ptr noundef nonnull %35) #13
  %37 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 17
  %38 = call ptr @GPU_uniform(ptr noundef nonnull %37) #13
  %39 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 11
  %40 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %38, ptr noundef nonnull %39) #13
  %41 = call ptr @GPU_uniform(ptr noundef nonnull %4) #13
  %42 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 12
  %43 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %41, ptr noundef nonnull %42) #13
  %44 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 16
  %45 = call ptr @GPU_uniform(ptr noundef nonnull %44) #13
  %46 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 13
  %47 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %45, ptr noundef nonnull %46) #13
  %48 = call ptr @GPU_builtin(i32 noundef 16) #13
  %49 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 5
  %50 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %48, ptr noundef nonnull %49) #13
  %51 = call ptr @GPU_attribute(i32 noundef 6, ptr noundef nonnull @.str.5) #13
  %52 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 6
  %53 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %51, ptr noundef nonnull %52) #13
  %54 = load ptr, ptr %0, align 8, !tbaa !64
  %55 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %54) #13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %3
  %58 = load ptr, ptr %0, align 8, !tbaa !64
  %59 = getelementptr inbounds %struct.Scene, ptr %58, i64 0, i32 37, i32 18
  %60 = load i32, ptr %59, align 8, !tbaa !95
  %61 = and i32 %60, 32768
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load ptr, ptr %52, align 8, !tbaa !117
  %65 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %64, ptr noundef nonnull %52) #13
  br label %66

66:                                               ; preds = %3, %63, %57
  %67 = load ptr, ptr %19, align 8, !tbaa !118
  %68 = load ptr, ptr %49, align 8, !tbaa !119
  %69 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 7
  %70 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %67, ptr noundef %68, ptr noundef nonnull %69) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #2

declare ptr @GPU_builtin(i32 noundef) local_unnamed_addr #2

declare ptr @GPU_attribute(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shaderesult_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca float, align 4
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca ptr, align 8
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = load ptr, ptr %0, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #13
  %53 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = load ptr, ptr %52, align 8, !tbaa !64
  %56 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %49) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %50) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %58 = getelementptr inbounds %struct.Material, ptr %54, i64 0, i32 51
  %59 = load i32, ptr %58, align 4, !tbaa !121
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %2
  %63 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !117
  %65 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !122
  br label %66

66:                                               ; preds = %62, %2
  %67 = load ptr, ptr %53, align 8, !tbaa !116
  %68 = load ptr, ptr %0, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  store ptr null, ptr %18, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #13
  store float 1.000000e+00, ptr %21, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #13
  %69 = call ptr @GPU_uniform(ptr noundef nonnull %21) #13
  %70 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.2, ptr noundef %69, ptr noundef nonnull %12) #13
  %71 = call ptr @GPU_builtin(i32 noundef 32) #13
  %72 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.35, ptr noundef %71, ptr noundef nonnull %14) #13
  %73 = call ptr @GPU_attribute(i32 noundef 14, ptr noundef nonnull @.str.5) #13
  %74 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.36, ptr noundef %73, ptr noundef nonnull %15) #13
  %75 = call ptr @GPU_builtin(i32 noundef 4) #13
  %76 = call ptr @GPU_builtin(i32 noundef 8) #13
  %77 = call ptr @GPU_builtin(i32 noundef 16) #13
  %78 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.37, ptr noundef %75, ptr noundef %76, ptr noundef %77, ptr noundef nonnull %16) #13
  %79 = call ptr @GPU_builtin(i32 noundef 4) #13
  %80 = call ptr @GPU_builtin(i32 noundef 16) #13
  %81 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.38, ptr noundef %79, ptr noundef %80, ptr noundef nonnull %17) #13
  %82 = load ptr, ptr %14, align 8, !tbaa !34
  store ptr %82, ptr %20, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.Material, ptr %67, i64 0, i32 73
  %84 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %85 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 5
  %86 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 7
  %87 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 1
  %88 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 2
  %89 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %90 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %91 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %92 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %93 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %94 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %95 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %96 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %97 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %98 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 9
  %99 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 10
  %100 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 11
  %101 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %102 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 8
  %103 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 13
  br label %104

104:                                              ; preds = %66, %787
  %105 = phi i64 [ 0, %66 ], [ %791, %787 ]
  %106 = phi i32 [ 1, %66 ], [ %790, %787 ]
  %107 = phi i32 [ 0, %66 ], [ %789, %787 ]
  %108 = phi i8 [ 0, %66 ], [ %788, %787 ]
  %109 = load i32, ptr %83, align 8, !tbaa !123
  %110 = trunc i64 %105 to i32
  %111 = shl nuw nsw i32 1, %110
  %112 = and i32 %109, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %787

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.Material, ptr %67, i64 0, i32 102, i64 %105
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %787, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !124
  %121 = icmp eq ptr %120, null
  br i1 %121, label %787, label %122

122:                                              ; preds = %118
  %123 = load i16, ptr %116, align 8, !tbaa !126
  switch i16 %123, label %787 [
    i16 1, label %124
    i16 32, label %126
    i16 4, label %128
    i16 4096, label %130
    i16 8, label %132
    i16 2, label %134
    i16 16, label %139
  ]

124:                                              ; preds = %122
  %125 = load ptr, ptr %15, align 8, !tbaa !34
  store ptr %125, ptr %7, align 8, !tbaa !34
  br label %144

126:                                              ; preds = %122
  %127 = load ptr, ptr %16, align 8, !tbaa !34
  store ptr %127, ptr %7, align 8, !tbaa !34
  br label %144

128:                                              ; preds = %122
  %129 = load ptr, ptr %20, align 8, !tbaa !34
  store ptr %129, ptr %7, align 8, !tbaa !34
  br label %144

130:                                              ; preds = %122
  %131 = load ptr, ptr %16, align 8, !tbaa !34
  store ptr %131, ptr %7, align 8, !tbaa !34
  br label %144

132:                                              ; preds = %122
  %133 = load ptr, ptr %17, align 8, !tbaa !34
  store ptr %133, ptr %7, align 8, !tbaa !34
  br label %144

134:                                              ; preds = %122
  %135 = load ptr, ptr %84, align 8, !tbaa !118
  %136 = load ptr, ptr %85, align 8, !tbaa !119
  %137 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.7, ptr noundef %135, ptr noundef %136, ptr noundef nonnull %86) #13
  %138 = load ptr, ptr %86, align 8, !tbaa !127
  store ptr %138, ptr %7, align 8, !tbaa !34
  br label %144

139:                                              ; preds = %122
  %140 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 6
  %141 = call ptr @GPU_attribute(i32 noundef 5, ptr noundef nonnull %140) #13
  %142 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.39, ptr noundef %141, ptr noundef nonnull %18) #13
  %143 = load ptr, ptr %18, align 8, !tbaa !34
  store ptr %143, ptr %7, align 8, !tbaa !34
  br label %144

144:                                              ; preds = %139, %134, %132, %130, %128, %126, %124
  %145 = load i16, ptr %116, align 8, !tbaa !126
  %146 = icmp eq i16 %145, 16
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %7, align 8, !tbaa !34
  %149 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.40, ptr noundef %148, ptr noundef nonnull %7) #13
  br label %150

150:                                              ; preds = %147, %144
  %151 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 12
  %152 = load float, ptr %151, align 8, !tbaa !92
  %153 = fcmp une float %152, 1.000000e+00
  br i1 %153, label %162, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 12, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !92
  %157 = fcmp une float %156, 1.000000e+00
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 12, i64 2
  %160 = load float, ptr %159, align 8, !tbaa !92
  %161 = fcmp une float %160, 1.000000e+00
  br i1 %161, label %162, label %166

162:                                              ; preds = %158, %154, %150
  %163 = load ptr, ptr %7, align 8, !tbaa !34
  %164 = call ptr @GPU_uniform(ptr noundef nonnull %151) #13
  %165 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.41, ptr noundef %163, ptr noundef %164, ptr noundef nonnull %7) #13
  br label %166

166:                                              ; preds = %162, %158
  %167 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 11
  %168 = load float, ptr %167, align 4, !tbaa !92
  %169 = fadd float %168, 5.000000e-01
  %170 = load float, ptr %151, align 8, !tbaa !92
  %171 = call float @llvm.fmuladd.f32(float %170, float -5.000000e-01, float %169)
  store float %171, ptr %23, align 4, !tbaa !92
  %172 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 11, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !92
  %174 = fadd float %173, 5.000000e-01
  %175 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 12, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !92
  %177 = call float @llvm.fmuladd.f32(float %176, float -5.000000e-01, float %174)
  store float %177, ptr %87, align 4, !tbaa !92
  store float 0.000000e+00, ptr %88, align 4, !tbaa !92
  %178 = fcmp une float %171, 0.000000e+00
  %179 = fcmp une float %177, 0.000000e+00
  %180 = select i1 %178, i1 true, i1 %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %166
  %182 = load ptr, ptr %7, align 8, !tbaa !34
  %183 = call ptr @GPU_uniform(ptr noundef nonnull %23) #13
  %184 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.42, ptr noundef %182, ptr noundef %183, ptr noundef nonnull %7) #13
  br label %185

185:                                              ; preds = %181, %166
  %186 = getelementptr inbounds %struct.Tex, ptr %120, i64 0, i32 32
  %187 = load i16, ptr %186, align 8, !tbaa !128
  %188 = icmp eq i16 %187, 8
  br i1 %188, label %189, label %787

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.Tex, ptr %120, i64 0, i32 54
  %191 = load ptr, ptr %190, align 8, !tbaa !131
  %192 = icmp eq ptr %191, null
  br i1 %192, label %787, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr %7, align 8, !tbaa !34
  %195 = getelementptr inbounds %struct.Tex, ptr %120, i64 0, i32 51
  %196 = call ptr @GPU_image(ptr noundef nonnull %191, ptr noundef nonnull %195, i8 noundef zeroext 0) #13
  %197 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.43, ptr noundef %194, ptr noundef %196, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %198 = getelementptr inbounds %struct.Tex, ptr %120, i64 0, i32 30
  %199 = load i16, ptr %198, align 4, !tbaa !132
  %200 = and i16 %199, 2
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %193
  %203 = load ptr, ptr %190, align 8, !tbaa !131
  %204 = icmp eq ptr %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.Image, ptr %203, i64 0, i32 10
  %207 = load i16, ptr %206, align 2, !tbaa !133
  %208 = and i16 %207, 4096
  %209 = icmp eq i16 %208, 0
  br label %210

210:                                              ; preds = %205, %202, %193
  %211 = phi i1 [ false, %202 ], [ false, %193 ], [ %209, %205 ]
  %212 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 14
  %213 = load i16, ptr %212, align 8, !tbaa !135
  %214 = and i16 %213, 1
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %210
  %217 = load ptr, ptr %9, align 8, !tbaa !34
  %218 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.44, ptr noundef %217, ptr noundef nonnull %8) #13
  br label %219

219:                                              ; preds = %216, %210
  %220 = load i16, ptr %212, align 8, !tbaa !135
  %221 = and i16 %220, 4
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %219
  br i1 %215, label %224, label %227

224:                                              ; preds = %223
  %225 = load ptr, ptr %9, align 8, !tbaa !34
  %226 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.45, ptr noundef %225, ptr noundef nonnull %9) #13
  br label %230

227:                                              ; preds = %223
  %228 = load ptr, ptr %8, align 8, !tbaa !34
  %229 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.46, ptr noundef %228, ptr noundef nonnull %8) #13
  br label %230

230:                                              ; preds = %227, %224, %219
  %231 = load i16, ptr %212, align 8, !tbaa !135
  %232 = and i16 %231, 2
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %12, align 8, !tbaa !34
  br i1 %215, label %236, label %239

236:                                              ; preds = %234
  %237 = load ptr, ptr %9, align 8, !tbaa !34
  %238 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.47, ptr noundef %235, ptr noundef %237, ptr noundef nonnull %12, ptr noundef nonnull %9) #13
  br label %242

239:                                              ; preds = %234
  %240 = load ptr, ptr %8, align 8, !tbaa !34
  %241 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.48, ptr noundef %235, ptr noundef %240, ptr noundef nonnull %12, ptr noundef nonnull %8) #13
  br label %242

242:                                              ; preds = %239, %236, %230
  %243 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 1
  %244 = load i16, ptr %243, align 2, !tbaa !136
  %245 = and i16 %244, 5
  %246 = icmp eq i16 %245, 0
  br i1 %246, label %337, label %247

247:                                              ; preds = %242
  br i1 %215, label %252, label %248

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 22
  %250 = call ptr @GPU_uniform(ptr noundef nonnull %249) #13
  %251 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str, ptr noundef %250, ptr noundef nonnull %11) #13
  br label %267

252:                                              ; preds = %247
  %253 = load ptr, ptr %9, align 8, !tbaa !34
  %254 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.49, ptr noundef %253, ptr noundef nonnull %11) #13
  %255 = load i16, ptr %243, align 2, !tbaa !136
  %256 = and i16 %255, 128
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %252
  %259 = load ptr, ptr %12, align 8, !tbaa !34
  %260 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.2, ptr noundef %259, ptr noundef nonnull %8) #13
  br label %267

261:                                              ; preds = %252
  br i1 %211, label %262, label %265

262:                                              ; preds = %261
  %263 = load ptr, ptr %9, align 8, !tbaa !34
  %264 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.50, ptr noundef %263, ptr noundef nonnull %8) #13
  br label %267

265:                                              ; preds = %261
  %266 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.51, ptr noundef nonnull %8) #13
  br label %267

267:                                              ; preds = %265, %262, %258, %248
  %268 = load i16, ptr %186, align 8, !tbaa !128
  %269 = icmp eq i16 %268, 8
  br i1 %269, label %270, label %287

270:                                              ; preds = %267
  %271 = load ptr, ptr %68, align 8, !tbaa !64
  %272 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %271) #13
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %270
  %275 = load ptr, ptr %68, align 8, !tbaa !64
  %276 = getelementptr inbounds %struct.Scene, ptr %275, i64 0, i32 37, i32 18
  %277 = load i32, ptr %276, align 8, !tbaa !95
  %278 = and i32 %277, 32768
  %279 = icmp eq i32 %278, 0
  %280 = zext i1 %279 to i8
  br label %281

281:                                              ; preds = %274, %270
  %282 = phi i8 [ %280, %274 ], [ 0, %270 ]
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = load ptr, ptr %11, align 8, !tbaa !34
  %286 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.6, ptr noundef %285, ptr noundef nonnull %11) #13
  br label %287

287:                                              ; preds = %284, %281, %267
  %288 = load i16, ptr %243, align 2, !tbaa !136
  %289 = and i16 %288, 1
  %290 = icmp eq i16 %289, 0
  br i1 %290, label %309, label %291

291:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #13
  %292 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 28
  %293 = load float, ptr %292, align 4, !tbaa !137
  %294 = fcmp oeq float %293, 1.000000e+00
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %296, ptr %27, align 8, !tbaa !34
  br label %301

297:                                              ; preds = %291
  %298 = call ptr @GPU_uniform(ptr noundef nonnull %292) #13
  %299 = load ptr, ptr %12, align 8, !tbaa !34
  %300 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %68, ptr noundef nonnull @.str.52, ptr noundef %298, ptr noundef %299, ptr noundef nonnull %27) #13
  br label %301

301:                                              ; preds = %297, %295
  %302 = load ptr, ptr %11, align 8, !tbaa !34
  %303 = load ptr, ptr %89, align 8, !tbaa !122
  %304 = load ptr, ptr %8, align 8, !tbaa !34
  %305 = load ptr, ptr %27, align 8, !tbaa !34
  %306 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 3
  %307 = load i16, ptr %306, align 2, !tbaa !138
  %308 = sext i16 %307 to i32
  call fastcc void @texture_rgb_blend(ptr noundef %68, ptr noundef %302, ptr noundef %303, ptr noundef %304, ptr noundef %305, i32 noundef %308, ptr noundef nonnull %89)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #13
  br label %309

309:                                              ; preds = %301, %287
  %310 = load ptr, ptr %68, align 8, !tbaa !64
  %311 = getelementptr inbounds %struct.Scene, ptr %310, i64 0, i32 37, i32 18
  %312 = load i32, ptr %311, align 8, !tbaa !95
  %313 = and i32 %312, 2048
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %337

315:                                              ; preds = %309
  %316 = load i16, ptr %243, align 2, !tbaa !136
  %317 = and i16 %316, 4
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %337, label %319

319:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #13
  %320 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 33
  %321 = load float, ptr %320, align 8, !tbaa !139
  %322 = fcmp oeq float %321, 1.000000e+00
  br i1 %322, label %323, label %325

323:                                              ; preds = %319
  %324 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %324, ptr %28, align 8, !tbaa !34
  br label %329

325:                                              ; preds = %319
  %326 = call ptr @GPU_uniform(ptr noundef nonnull %320) #13
  %327 = load ptr, ptr %12, align 8, !tbaa !34
  %328 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %326, ptr noundef %327, ptr noundef nonnull %28) #13
  br label %329

329:                                              ; preds = %325, %323
  %330 = load ptr, ptr %11, align 8, !tbaa !34
  %331 = load ptr, ptr %90, align 8, !tbaa !140
  %332 = load ptr, ptr %8, align 8, !tbaa !34
  %333 = load ptr, ptr %28, align 8, !tbaa !34
  %334 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 3
  %335 = load i16, ptr %334, align 2, !tbaa !138
  %336 = sext i16 %335 to i32
  call fastcc void @texture_rgb_blend(ptr noundef nonnull %68, ptr noundef %330, ptr noundef %331, ptr noundef %332, ptr noundef %333, i32 noundef %336, ptr noundef nonnull %90)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #13
  br label %337

337:                                              ; preds = %329, %315, %309, %242
  %338 = load ptr, ptr %68, align 8, !tbaa !64
  %339 = getelementptr inbounds %struct.Scene, ptr %338, i64 0, i32 37, i32 18
  %340 = load i32, ptr %339, align 8, !tbaa !95
  %341 = and i32 %340, 2048
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %594

343:                                              ; preds = %337
  %344 = load i16, ptr %243, align 2, !tbaa !136
  %345 = and i16 %344, 2
  %346 = icmp eq i16 %345, 0
  br i1 %346, label %594, label %347

347:                                              ; preds = %343
  %348 = load i16, ptr %186, align 8, !tbaa !128
  %349 = icmp eq i16 %348, 8
  br i1 %349, label %350, label %588

350:                                              ; preds = %347
  %351 = load i16, ptr %198, align 4, !tbaa !132
  %352 = zext i16 %351 to i32
  %353 = and i32 %352, 2048
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %419, label %355

355:                                              ; preds = %350
  %356 = load ptr, ptr %7, align 8, !tbaa !34
  %357 = load ptr, ptr %190, align 8, !tbaa !131
  %358 = call ptr @GPU_image(ptr noundef %357, ptr noundef nonnull %195, i8 noundef zeroext 1) #13
  %359 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.53, ptr noundef %356, ptr noundef %358, ptr noundef nonnull %10) #13
  %360 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 30
  %361 = load float, ptr %360, align 4, !tbaa !141
  %362 = fcmp olt float %361, 0.000000e+00
  br i1 %362, label %363, label %366

363:                                              ; preds = %355
  %364 = load ptr, ptr %10, align 8, !tbaa !34
  %365 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.54, ptr noundef %364, ptr noundef nonnull %10) #13
  br label %366

366:                                              ; preds = %363, %355
  %367 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 18
  %368 = load i16, ptr %367, align 8, !tbaa !142
  switch i16 %368, label %390 [
    i16 3, label %369
    i16 2, label %383
    i16 1, label %386
  ]

369:                                              ; preds = %366
  %370 = icmp eq i32 %106, 0
  br i1 %370, label %378, label %371

371:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #13
  %372 = call ptr @GPU_builtin(i32 noundef 32) #13
  %373 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.55, ptr noundef %372, ptr noundef nonnull %29) #13
  %374 = call ptr @GPU_attribute(i32 noundef 18, ptr noundef nonnull @.str.5) #13
  %375 = load ptr, ptr %29, align 8, !tbaa !34
  %376 = load ptr, ptr %10, align 8, !tbaa !34
  %377 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.56, ptr noundef %374, ptr noundef %375, ptr noundef %376, ptr noundef nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #13
  br label %392

378:                                              ; preds = %369
  %379 = call ptr @GPU_attribute(i32 noundef 18, ptr noundef nonnull @.str.5) #13
  %380 = load ptr, ptr %91, align 8, !tbaa !118
  %381 = load ptr, ptr %10, align 8, !tbaa !34
  %382 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.56, ptr noundef %379, ptr noundef %380, ptr noundef %381, ptr noundef nonnull %19) #13
  br label %392

383:                                              ; preds = %366
  %384 = load ptr, ptr %10, align 8, !tbaa !34
  %385 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.57, ptr noundef %384, ptr noundef nonnull %19) #13
  br label %392

386:                                              ; preds = %366
  %387 = call ptr @GPU_builtin(i32 noundef 1) #13
  %388 = load ptr, ptr %10, align 8, !tbaa !34
  %389 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.58, ptr noundef %387, ptr noundef %388, ptr noundef nonnull %19) #13
  br label %392

390:                                              ; preds = %366
  %391 = load ptr, ptr %10, align 8, !tbaa !34
  store ptr %391, ptr %19, align 8, !tbaa !34
  br label %392

392:                                              ; preds = %390, %386, %383, %378, %371
  %393 = phi i32 [ 0, %371 ], [ 0, %378 ], [ %106, %383 ], [ %106, %386 ], [ %106, %390 ]
  %394 = load float, ptr %360, align 4, !tbaa !141
  %395 = call float @llvm.fabs.f32(float %394)
  %396 = fcmp olt float %395, 1.000000e+00
  %397 = select i1 %396, float %395, float 1.000000e+00
  store float %397, ptr %22, align 4, !tbaa !92
  %398 = fcmp oeq float %397, 1.000000e+00
  br i1 %398, label %399, label %405

399:                                              ; preds = %392
  %400 = load ptr, ptr %12, align 8, !tbaa !34
  %401 = call i32 @GPU_link_changed(ptr noundef %400) #13
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %399
  %404 = load ptr, ptr %19, align 8, !tbaa !34
  store ptr %404, ptr %93, align 8, !tbaa !118
  br label %588

405:                                              ; preds = %399, %392
  %406 = call ptr @GPU_uniform(ptr noundef nonnull %22) #13
  store ptr %406, ptr %13, align 8, !tbaa !34
  %407 = load ptr, ptr %12, align 8, !tbaa !34
  %408 = call i32 @GPU_link_changed(ptr noundef %407) #13
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %405
  %411 = load ptr, ptr %13, align 8, !tbaa !34
  %412 = load ptr, ptr %12, align 8, !tbaa !34
  %413 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %411, ptr noundef %412, ptr noundef nonnull %13) #13
  br label %414

414:                                              ; preds = %410, %405
  %415 = load ptr, ptr %13, align 8, !tbaa !34
  %416 = load ptr, ptr %92, align 8, !tbaa !118
  %417 = load ptr, ptr %19, align 8, !tbaa !34
  %418 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.59, ptr noundef %415, ptr noundef %416, ptr noundef %417, ptr noundef nonnull %92) #13
  br label %588

419:                                              ; preds = %350
  %420 = and i32 %352, 16384
  %421 = load i16, ptr %212, align 8, !tbaa !135
  %422 = and i16 %421, 8960
  %423 = icmp ne i16 %422, 0
  %424 = icmp ne i32 %420, 0
  %425 = or i1 %424, %423
  br i1 %425, label %426, label %588

426:                                              ; preds = %419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #13
  store float 1.024000e+03, ptr %32, align 4, !tbaa !92
  %427 = call ptr @GPU_builtin(i32 noundef 16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #13
  %428 = load i16, ptr %212, align 8, !tbaa !135
  %429 = and i16 %428, 2048
  %430 = icmp eq i16 %429, 0
  %431 = select i1 %424, float 1.000000e+00, float 0x3FB99999A0000000
  %432 = select i1 %430, float %431, float 1.300000e+01
  %433 = icmp ne i16 %429, 0
  %434 = or i1 %424, %433
  br i1 %434, label %435, label %450

435:                                              ; preds = %426
  %436 = load ptr, ptr %190, align 8, !tbaa !131
  %437 = call ptr @BKE_image_acquire_ibuf(ptr noundef %436, ptr noundef nonnull %195, ptr noundef null) #13
  store float 5.120000e+02, ptr %30, align 4, !tbaa !92
  store float 5.120000e+02, ptr %31, align 4, !tbaa !92
  %438 = icmp eq ptr %437, null
  br i1 %438, label %447, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.ImBuf, ptr %437, i64 0, i32 2
  %441 = load i32, ptr %440, align 8, !tbaa !143
  %442 = sitofp i32 %441 to float
  store float %442, ptr %30, align 4, !tbaa !92
  %443 = getelementptr inbounds %struct.ImBuf, ptr %437, i64 0, i32 3
  %444 = load i32, ptr %443, align 4, !tbaa !146
  %445 = sitofp i32 %444 to float
  store float %445, ptr %31, align 4, !tbaa !92
  %446 = fdiv float %445, %442
  br label %447

447:                                              ; preds = %439, %435
  %448 = phi float [ %446, %439 ], [ 1.000000e+00, %435 ]
  %449 = load ptr, ptr %190, align 8, !tbaa !131
  call void @BKE_image_release_ibuf(ptr noundef %449, ptr noundef %437, ptr noundef null) #13
  br label %450

450:                                              ; preds = %447, %426
  %451 = phi float [ %448, %447 ], [ 1.000000e+00, %426 ]
  %452 = fneg float %432
  %453 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 30
  %454 = load float, ptr %453, align 4, !tbaa !141
  %455 = fmul float %454, %452
  store float %455, ptr %22, align 4, !tbaa !92
  br i1 %424, label %456, label %470

456:                                              ; preds = %450
  %457 = load float, ptr %30, align 4, !tbaa !92
  %458 = load float, ptr %151, align 8, !tbaa !92
  %459 = fmul float %457, %458
  %460 = load float, ptr %31, align 4, !tbaa !92
  %461 = fmul float %459, %460
  %462 = load float, ptr %175, align 4, !tbaa !92
  %463 = fmul float %461, %462
  %464 = call float @llvm.fabs.f32(float %463)
  %465 = call float @sqrtf(float noundef %464) #13
  %466 = fcmp ogt float %465, 0x3E80000000000000
  %467 = select i1 %466, float %465, float 0x3E80000000000000
  %468 = load float, ptr %22, align 4, !tbaa !92
  %469 = fdiv float %468, %467
  store float %469, ptr %22, align 4, !tbaa !92
  br label %470

470:                                              ; preds = %456, %450
  %471 = call ptr @GPU_uniform(ptr noundef nonnull %22) #13
  store ptr %471, ptr %13, align 8, !tbaa !34
  br i1 %424, label %472, label %475

472:                                              ; preds = %470
  %473 = call ptr @GPU_builtin(i32 noundef 128) #13
  %474 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %471, ptr noundef %473, ptr noundef nonnull %13) #13
  br label %475

475:                                              ; preds = %472, %470
  %476 = load ptr, ptr %12, align 8, !tbaa !34
  %477 = call i32 @GPU_link_changed(ptr noundef %476) #13
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %483, label %479

479:                                              ; preds = %475
  %480 = load ptr, ptr %13, align 8, !tbaa !34
  %481 = load ptr, ptr %12, align 8, !tbaa !34
  %482 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %480, ptr noundef %481, ptr noundef nonnull %13) #13
  br label %483

483:                                              ; preds = %479, %475
  %484 = icmp eq i8 %108, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %483
  %486 = load ptr, ptr %94, align 8, !tbaa !118
  %487 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.60, ptr noundef %486, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26) #13
  br label %488

488:                                              ; preds = %485, %483
  %489 = phi i32 [ %107, %483 ], [ 0, %485 ]
  %490 = load i16, ptr %212, align 8, !tbaa !135
  %491 = zext i16 %490 to i32
  %492 = and i32 %491, 1024
  %493 = icmp eq i32 %492, 0
  %494 = and i32 %491, 2048
  %495 = icmp eq i32 %494, 0
  %496 = select i1 %495, i32 4, i32 2
  %497 = select i1 %493, i32 %496, i32 1
  %498 = icmp eq i32 %489, %497
  br i1 %498, label %516, label %499

499:                                              ; preds = %488
  %500 = load ptr, ptr %24, align 8, !tbaa !34
  br i1 %493, label %509, label %501

501:                                              ; preds = %499
  %502 = call ptr @GPU_builtin(i32 noundef 1) #13
  %503 = call ptr @GPU_builtin(i32 noundef 4) #13
  %504 = call ptr @GPU_builtin(i32 noundef 2) #13
  %505 = call ptr @GPU_builtin(i32 noundef 8) #13
  %506 = load ptr, ptr %26, align 8, !tbaa !34
  %507 = load ptr, ptr %25, align 8, !tbaa !34
  %508 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.61, ptr noundef %427, ptr noundef %500, ptr noundef %502, ptr noundef %503, ptr noundef %504, ptr noundef %505, ptr noundef %506, ptr noundef %507, ptr noundef nonnull %26, ptr noundef nonnull %25, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %37) #13
  br label %516

509:                                              ; preds = %499
  %510 = load ptr, ptr %26, align 8, !tbaa !34
  %511 = load ptr, ptr %25, align 8, !tbaa !34
  br i1 %495, label %514, label %512

512:                                              ; preds = %509
  %513 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.62, ptr noundef %427, ptr noundef %500, ptr noundef %510, ptr noundef %511, ptr noundef nonnull %26, ptr noundef nonnull %25, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %37) #13
  br label %516

514:                                              ; preds = %509
  %515 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.63, ptr noundef %427, ptr noundef %500, ptr noundef %510, ptr noundef %511, ptr noundef nonnull %26, ptr noundef nonnull %25, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %37) #13
  br label %516

516:                                              ; preds = %514, %512, %501, %488
  %517 = phi i32 [ %489, %488 ], [ %497, %512 ], [ %497, %514 ], [ %497, %501 ]
  br i1 %424, label %518, label %526

518:                                              ; preds = %516
  %519 = load ptr, ptr %7, align 8, !tbaa !34
  %520 = load ptr, ptr %190, align 8, !tbaa !131
  %521 = call ptr @GPU_image(ptr noundef %520, ptr noundef nonnull %195, i8 noundef zeroext 1) #13
  %522 = call ptr @GPU_uniform(ptr noundef nonnull %30) #13
  %523 = call ptr @GPU_uniform(ptr noundef nonnull %31) #13
  %524 = load ptr, ptr %13, align 8, !tbaa !34
  %525 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.64, ptr noundef %519, ptr noundef %521, ptr noundef %522, ptr noundef %523, ptr noundef %524, ptr noundef nonnull %35, ptr noundef nonnull %36) #13
  br label %560

526:                                              ; preds = %516
  %527 = load i16, ptr %212, align 8, !tbaa !135
  %528 = zext i16 %527 to i32
  %529 = and i32 %528, 256
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %537, label %531

531:                                              ; preds = %526
  %532 = load ptr, ptr %7, align 8, !tbaa !34
  %533 = load ptr, ptr %190, align 8, !tbaa !131
  %534 = call ptr @GPU_image(ptr noundef %533, ptr noundef nonnull %195, i8 noundef zeroext 1) #13
  %535 = load ptr, ptr %13, align 8, !tbaa !34
  %536 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.65, ptr noundef %532, ptr noundef %534, ptr noundef %535, ptr noundef nonnull %35, ptr noundef nonnull %36) #13
  br label %560

537:                                              ; preds = %526
  %538 = and i32 %528, 512
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %546, label %540

540:                                              ; preds = %537
  %541 = load ptr, ptr %7, align 8, !tbaa !34
  %542 = load ptr, ptr %190, align 8, !tbaa !131
  %543 = call ptr @GPU_image(ptr noundef %542, ptr noundef nonnull %195, i8 noundef zeroext 1) #13
  %544 = load ptr, ptr %13, align 8, !tbaa !34
  %545 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.66, ptr noundef %541, ptr noundef %543, ptr noundef %544, ptr noundef nonnull %35, ptr noundef nonnull %36) #13
  br label %560

546:                                              ; preds = %537
  %547 = and i32 %528, 8192
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %560, label %549

549:                                              ; preds = %546
  %550 = call i32 @GPU_bicubic_bump_support() #13
  %551 = icmp eq i32 %550, 0
  %552 = load ptr, ptr %7, align 8, !tbaa !34
  %553 = load ptr, ptr %190, align 8, !tbaa !131
  %554 = call ptr @GPU_image(ptr noundef %553, ptr noundef nonnull %195, i8 noundef zeroext 1) #13
  %555 = load ptr, ptr %13, align 8, !tbaa !34
  br i1 %551, label %558, label %556

556:                                              ; preds = %549
  %557 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.67, ptr noundef %552, ptr noundef %554, ptr noundef %555, ptr noundef nonnull %35, ptr noundef nonnull %36) #13
  br label %560

558:                                              ; preds = %549
  %559 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.66, ptr noundef %552, ptr noundef %554, ptr noundef %555, ptr noundef nonnull %35, ptr noundef nonnull %36) #13
  br label %560

560:                                              ; preds = %558, %556, %546, %540, %531, %518
  %561 = load i16, ptr %212, align 8, !tbaa !135
  %562 = and i16 %561, 2048
  %563 = icmp eq i16 %562, 0
  br i1 %563, label %579, label %564

564:                                              ; preds = %560
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #13
  %565 = load float, ptr %32, align 4, !tbaa !92
  %566 = fmul float %451, %565
  store float %566, ptr %38, align 4, !tbaa !92
  %567 = load ptr, ptr %37, align 8, !tbaa !34
  %568 = load ptr, ptr %35, align 8, !tbaa !34
  %569 = load ptr, ptr %36, align 8, !tbaa !34
  %570 = load ptr, ptr %33, align 8, !tbaa !34
  %571 = load ptr, ptr %34, align 8, !tbaa !34
  %572 = load ptr, ptr %190, align 8, !tbaa !131
  %573 = call ptr @GPU_image(ptr noundef %572, ptr noundef nonnull %195, i8 noundef zeroext 1) #13
  %574 = load ptr, ptr %7, align 8, !tbaa !34
  %575 = call ptr @GPU_uniform(ptr noundef nonnull %32) #13
  %576 = call ptr @GPU_uniform(ptr noundef nonnull %38) #13
  %577 = load ptr, ptr %25, align 8, !tbaa !34
  %578 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.68, ptr noundef %567, ptr noundef %568, ptr noundef %569, ptr noundef %570, ptr noundef %571, ptr noundef %573, ptr noundef %574, ptr noundef %575, ptr noundef %576, ptr noundef %577, ptr noundef nonnull %25, ptr noundef nonnull %95) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #13
  br label %587

579:                                              ; preds = %560
  %580 = load ptr, ptr %37, align 8, !tbaa !34
  %581 = load ptr, ptr %35, align 8, !tbaa !34
  %582 = load ptr, ptr %36, align 8, !tbaa !34
  %583 = load ptr, ptr %33, align 8, !tbaa !34
  %584 = load ptr, ptr %34, align 8, !tbaa !34
  %585 = load ptr, ptr %25, align 8, !tbaa !34
  %586 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.69, ptr noundef %580, ptr noundef %581, ptr noundef %582, ptr noundef %583, ptr noundef %584, ptr noundef %585, ptr noundef nonnull %25, ptr noundef nonnull %96) #13
  br label %587

587:                                              ; preds = %579, %564
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #13
  br label %588

588:                                              ; preds = %587, %419, %414, %403, %347
  %589 = phi i8 [ %108, %414 ], [ %108, %403 ], [ 1, %587 ], [ %108, %419 ], [ %108, %347 ]
  %590 = phi i32 [ %107, %414 ], [ %107, %403 ], [ %517, %587 ], [ %107, %419 ], [ %107, %347 ]
  %591 = phi i32 [ %393, %414 ], [ %393, %403 ], [ %106, %587 ], [ %106, %419 ], [ %106, %347 ]
  %592 = load ptr, ptr %97, align 8, !tbaa !118
  %593 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.55, ptr noundef %592, ptr noundef nonnull %20) #13
  br label %594

594:                                              ; preds = %588, %343, %337
  %595 = phi i8 [ %108, %337 ], [ %589, %588 ], [ %108, %343 ]
  %596 = phi i32 [ %107, %337 ], [ %590, %588 ], [ %107, %343 ]
  %597 = phi i32 [ %106, %337 ], [ %591, %588 ], [ %106, %343 ]
  %598 = load i16, ptr %243, align 2, !tbaa !136
  %599 = icmp ult i16 %598, 16
  br i1 %599, label %787, label %600

600:                                              ; preds = %594
  br i1 %215, label %601, label %605

601:                                              ; preds = %600
  %602 = load ptr, ptr %9, align 8, !tbaa !34
  %603 = select i1 %211, ptr @.str.50, ptr @.str.44
  %604 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull %603, ptr noundef %602, ptr noundef nonnull %8) #13
  br label %605

605:                                              ; preds = %601, %600
  %606 = load ptr, ptr %68, align 8, !tbaa !64
  %607 = getelementptr inbounds %struct.Scene, ptr %606, i64 0, i32 37, i32 18
  %608 = load i32, ptr %607, align 8, !tbaa !95
  %609 = and i32 %608, 2048
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %636

611:                                              ; preds = %605
  %612 = load i16, ptr %243, align 2, !tbaa !136
  %613 = and i16 %612, 16
  %614 = icmp eq i16 %613, 0
  br i1 %614, label %636, label %615

615:                                              ; preds = %611
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #13
  %616 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 36
  %617 = load float, ptr %616, align 4, !tbaa !147
  %618 = fcmp oeq float %617, 1.000000e+00
  br i1 %618, label %619, label %621

619:                                              ; preds = %615
  %620 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %620, ptr %39, align 8, !tbaa !34
  br label %625

621:                                              ; preds = %615
  %622 = call ptr @GPU_uniform(ptr noundef nonnull %616) #13
  %623 = load ptr, ptr %12, align 8, !tbaa !34
  %624 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %622, ptr noundef %623, ptr noundef nonnull %39) #13
  br label %625

625:                                              ; preds = %621, %619
  %626 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 26
  %627 = call ptr @GPU_uniform(ptr noundef nonnull %626) #13
  %628 = load ptr, ptr %98, align 8, !tbaa !148
  %629 = load ptr, ptr %8, align 8, !tbaa !34
  %630 = load ptr, ptr %39, align 8, !tbaa !34
  %631 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 3
  %632 = load i16, ptr %631, align 2, !tbaa !138
  %633 = sext i16 %632 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %68, ptr noundef %627, ptr noundef %628, ptr noundef %629, ptr noundef %630, i32 noundef %633, ptr noundef nonnull %98)
  %634 = load ptr, ptr %98, align 8, !tbaa !148
  %635 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.70, ptr noundef %634, ptr noundef nonnull %98) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #13
  br label %636

636:                                              ; preds = %625, %611, %605
  %637 = load ptr, ptr %68, align 8, !tbaa !64
  %638 = getelementptr inbounds %struct.Scene, ptr %637, i64 0, i32 37, i32 18
  %639 = load i32, ptr %638, align 8, !tbaa !95
  %640 = and i32 %639, 2048
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %667

642:                                              ; preds = %636
  %643 = load i16, ptr %243, align 2, !tbaa !136
  %644 = and i16 %643, 32
  %645 = icmp eq i16 %644, 0
  br i1 %645, label %667, label %646

646:                                              ; preds = %642
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #13
  %647 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 37
  %648 = load float, ptr %647, align 8, !tbaa !149
  %649 = fcmp oeq float %648, 1.000000e+00
  br i1 %649, label %650, label %652

650:                                              ; preds = %646
  %651 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %651, ptr %40, align 8, !tbaa !34
  br label %656

652:                                              ; preds = %646
  %653 = call ptr @GPU_uniform(ptr noundef nonnull %647) #13
  %654 = load ptr, ptr %12, align 8, !tbaa !34
  %655 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %653, ptr noundef %654, ptr noundef nonnull %40) #13
  br label %656

656:                                              ; preds = %652, %650
  %657 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 26
  %658 = call ptr @GPU_uniform(ptr noundef nonnull %657) #13
  %659 = load ptr, ptr %99, align 8, !tbaa !150
  %660 = load ptr, ptr %8, align 8, !tbaa !34
  %661 = load ptr, ptr %40, align 8, !tbaa !34
  %662 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 3
  %663 = load i16, ptr %662, align 2, !tbaa !138
  %664 = sext i16 %663 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %68, ptr noundef %658, ptr noundef %659, ptr noundef %660, ptr noundef %661, i32 noundef %664, ptr noundef nonnull %99)
  %665 = load ptr, ptr %99, align 8, !tbaa !150
  %666 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.70, ptr noundef %665, ptr noundef nonnull %99) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #13
  br label %667

667:                                              ; preds = %656, %642, %636
  %668 = load ptr, ptr %68, align 8, !tbaa !64
  %669 = getelementptr inbounds %struct.Scene, ptr %668, i64 0, i32 37, i32 18
  %670 = load i32, ptr %669, align 8, !tbaa !95
  %671 = and i32 %670, 2048
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %698

673:                                              ; preds = %667
  %674 = load i16, ptr %243, align 2, !tbaa !136
  %675 = and i16 %674, 64
  %676 = icmp eq i16 %675, 0
  br i1 %676, label %698, label %677

677:                                              ; preds = %673
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #13
  %678 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 38
  %679 = load float, ptr %678, align 4, !tbaa !151
  %680 = fcmp oeq float %679, 1.000000e+00
  br i1 %680, label %681, label %683

681:                                              ; preds = %677
  %682 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %682, ptr %41, align 8, !tbaa !34
  br label %687

683:                                              ; preds = %677
  %684 = call ptr @GPU_uniform(ptr noundef nonnull %678) #13
  %685 = load ptr, ptr %12, align 8, !tbaa !34
  %686 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %684, ptr noundef %685, ptr noundef nonnull %41) #13
  br label %687

687:                                              ; preds = %683, %681
  %688 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 26
  %689 = call ptr @GPU_uniform(ptr noundef nonnull %688) #13
  %690 = load ptr, ptr %100, align 8, !tbaa !152
  %691 = load ptr, ptr %8, align 8, !tbaa !34
  %692 = load ptr, ptr %41, align 8, !tbaa !34
  %693 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 3
  %694 = load i16, ptr %693, align 2, !tbaa !138
  %695 = sext i16 %694 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %68, ptr noundef %689, ptr noundef %690, ptr noundef %691, ptr noundef %692, i32 noundef %695, ptr noundef nonnull %100)
  %696 = load ptr, ptr %100, align 8, !tbaa !152
  %697 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.70, ptr noundef %696, ptr noundef nonnull %100) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #13
  br label %698

698:                                              ; preds = %687, %673, %667
  %699 = load ptr, ptr %68, align 8, !tbaa !64
  %700 = getelementptr inbounds %struct.Scene, ptr %699, i64 0, i32 37, i32 18
  %701 = load i32, ptr %700, align 8, !tbaa !95
  %702 = and i32 %701, 2048
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %731

704:                                              ; preds = %698
  %705 = load i16, ptr %243, align 2, !tbaa !136
  %706 = and i16 %705, 256
  %707 = icmp eq i16 %706, 0
  br i1 %707, label %731, label %708

708:                                              ; preds = %704
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #13
  %709 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 39
  %710 = load float, ptr %709, align 8, !tbaa !153
  %711 = fcmp oeq float %710, 1.000000e+00
  br i1 %711, label %712, label %714

712:                                              ; preds = %708
  %713 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %713, ptr %42, align 8, !tbaa !34
  br label %718

714:                                              ; preds = %708
  %715 = call ptr @GPU_uniform(ptr noundef nonnull %709) #13
  %716 = load ptr, ptr %12, align 8, !tbaa !34
  %717 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %715, ptr noundef %716, ptr noundef nonnull %42) #13
  br label %718

718:                                              ; preds = %714, %712
  %719 = load ptr, ptr %101, align 8, !tbaa !154
  %720 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.71, ptr noundef %719, ptr noundef nonnull %101) #13
  %721 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 26
  %722 = call ptr @GPU_uniform(ptr noundef nonnull %721) #13
  %723 = load ptr, ptr %101, align 8, !tbaa !154
  %724 = load ptr, ptr %8, align 8, !tbaa !34
  %725 = load ptr, ptr %42, align 8, !tbaa !34
  %726 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 3
  %727 = load i16, ptr %726, align 2, !tbaa !138
  %728 = sext i16 %727 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %68, ptr noundef %722, ptr noundef %723, ptr noundef %724, ptr noundef %725, i32 noundef %728, ptr noundef nonnull %101)
  %729 = load ptr, ptr %101, align 8, !tbaa !154
  %730 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.72, ptr noundef %729, ptr noundef nonnull %101) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #13
  br label %731

731:                                              ; preds = %718, %704, %698
  %732 = load i16, ptr %243, align 2, !tbaa !136
  %733 = and i16 %732, 128
  %734 = icmp eq i16 %733, 0
  br i1 %734, label %756, label %735

735:                                              ; preds = %731
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #13
  %736 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 35
  %737 = load float, ptr %736, align 8, !tbaa !155
  %738 = fcmp oeq float %737, 1.000000e+00
  br i1 %738, label %739, label %741

739:                                              ; preds = %735
  %740 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %740, ptr %43, align 8, !tbaa !34
  br label %745

741:                                              ; preds = %735
  %742 = call ptr @GPU_uniform(ptr noundef nonnull %736) #13
  %743 = load ptr, ptr %12, align 8, !tbaa !34
  %744 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %742, ptr noundef %743, ptr noundef nonnull %43) #13
  br label %745

745:                                              ; preds = %741, %739
  %746 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 26
  %747 = call ptr @GPU_uniform(ptr noundef nonnull %746) #13
  %748 = load ptr, ptr %102, align 8, !tbaa !156
  %749 = load ptr, ptr %8, align 8, !tbaa !34
  %750 = load ptr, ptr %43, align 8, !tbaa !34
  %751 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 3
  %752 = load i16, ptr %751, align 2, !tbaa !138
  %753 = sext i16 %752 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %68, ptr noundef %747, ptr noundef %748, ptr noundef %749, ptr noundef %750, i32 noundef %753, ptr noundef nonnull %102)
  %754 = load ptr, ptr %102, align 8, !tbaa !156
  %755 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.73, ptr noundef %754, ptr noundef nonnull %102) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #13
  br label %756

756:                                              ; preds = %745, %731
  %757 = load ptr, ptr %68, align 8, !tbaa !64
  %758 = getelementptr inbounds %struct.Scene, ptr %757, i64 0, i32 37, i32 18
  %759 = load i32, ptr %758, align 8, !tbaa !95
  %760 = and i32 %759, 2048
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %787

762:                                              ; preds = %756
  %763 = load i16, ptr %243, align 2, !tbaa !136
  %764 = and i16 %763, 2048
  %765 = icmp eq i16 %764, 0
  br i1 %765, label %787, label %766

766:                                              ; preds = %762
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #13
  %767 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 42
  %768 = load float, ptr %767, align 4, !tbaa !157
  %769 = fcmp oeq float %768, 1.000000e+00
  br i1 %769, label %770, label %772

770:                                              ; preds = %766
  %771 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %771, ptr %44, align 8, !tbaa !34
  br label %776

772:                                              ; preds = %766
  %773 = call ptr @GPU_uniform(ptr noundef nonnull %767) #13
  %774 = load ptr, ptr %12, align 8, !tbaa !34
  %775 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.52, ptr noundef %773, ptr noundef %774, ptr noundef nonnull %44) #13
  br label %776

776:                                              ; preds = %772, %770
  %777 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 26
  %778 = call ptr @GPU_uniform(ptr noundef nonnull %777) #13
  %779 = load ptr, ptr %103, align 8, !tbaa !158
  %780 = load ptr, ptr %8, align 8, !tbaa !34
  %781 = load ptr, ptr %44, align 8, !tbaa !34
  %782 = getelementptr inbounds %struct.MTex, ptr %116, i64 0, i32 3
  %783 = load i16, ptr %782, align 2, !tbaa !138
  %784 = sext i16 %783 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %68, ptr noundef %778, ptr noundef %779, ptr noundef %780, ptr noundef %781, i32 noundef %784, ptr noundef nonnull %103)
  %785 = load ptr, ptr %103, align 8, !tbaa !158
  %786 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %68, ptr noundef nonnull @.str.73, ptr noundef %785, ptr noundef nonnull %103) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #13
  br label %787

787:                                              ; preds = %776, %762, %756, %594, %189, %185, %122, %118, %114, %104
  %788 = phi i8 [ %108, %104 ], [ %108, %118 ], [ %595, %756 ], [ %595, %776 ], [ %595, %762 ], [ %595, %594 ], [ %108, %189 ], [ %108, %185 ], [ %108, %114 ], [ %108, %122 ]
  %789 = phi i32 [ %107, %104 ], [ %107, %118 ], [ %596, %756 ], [ %596, %776 ], [ %596, %762 ], [ %596, %594 ], [ %107, %189 ], [ %107, %185 ], [ %107, %114 ], [ %107, %122 ]
  %790 = phi i32 [ %106, %104 ], [ %106, %118 ], [ %597, %756 ], [ %597, %776 ], [ %597, %762 ], [ %597, %594 ], [ %106, %189 ], [ %106, %185 ], [ %106, %114 ], [ %106, %122 ]
  %791 = add nuw nsw i64 %105, 1
  %792 = icmp eq i64 %791, 18
  br i1 %792, label %793, label %104, !llvm.loop !159

793:                                              ; preds = %787
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %794 = load ptr, ptr %52, align 8, !tbaa !64
  %795 = getelementptr inbounds %struct.Scene, ptr %794, i64 0, i32 37, i32 18
  %796 = load i32, ptr %795, align 8, !tbaa !95
  %797 = and i32 %796, 64
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %803

799:                                              ; preds = %793
  %800 = load i32, ptr %58, align 4, !tbaa !121
  %801 = and i32 %800, 4
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %815, label %803

803:                                              ; preds = %799, %793
  %804 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %805 = load ptr, ptr %804, align 8, !tbaa !122
  %806 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str, ptr noundef %805, ptr noundef %1) #13
  %807 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %808 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.8, ptr noundef nonnull %807) #13
  %809 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 8
  %810 = load ptr, ptr %809, align 8, !tbaa !156
  %811 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 3
  %812 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.2, ptr noundef %810, ptr noundef nonnull %811) #13
  %813 = load ptr, ptr %1, align 8, !tbaa !160
  %814 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 2
  store ptr %813, ptr %814, align 8, !tbaa !162
  br label %1048

815:                                              ; preds = %799
  %816 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 11
  %817 = load ptr, ptr %816, align 8, !tbaa !152
  %818 = call i32 @GPU_link_changed(ptr noundef %817) #13
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %824

820:                                              ; preds = %815
  %821 = getelementptr inbounds %struct.Material, ptr %54, i64 0, i32 17
  %822 = load float, ptr %821, align 8, !tbaa !163
  %823 = fcmp une float %822, 0.000000e+00
  br i1 %823, label %824, label %841

824:                                              ; preds = %820, %815
  %825 = load i32, ptr %58, align 4, !tbaa !121
  %826 = and i32 %825, 144
  %827 = icmp eq i32 %826, 16
  %828 = load ptr, ptr %816, align 8, !tbaa !152
  br i1 %827, label %829, label %837

829:                                              ; preds = %824
  %830 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 6
  %831 = load ptr, ptr %830, align 8, !tbaa !117
  %832 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.9, ptr noundef %828, ptr noundef %831, ptr noundef nonnull %45) #13
  %833 = load ptr, ptr %45, align 8, !tbaa !34
  %834 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %835 = load ptr, ptr %834, align 8, !tbaa !122
  %836 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.10, ptr noundef %833, ptr noundef %835, ptr noundef %1) #13
  br label %843

837:                                              ; preds = %824
  %838 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %839 = load ptr, ptr %838, align 8, !tbaa !122
  %840 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.11, ptr noundef %828, ptr noundef %839, ptr noundef %1) #13
  br label %843

841:                                              ; preds = %820
  %842 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.8, ptr noundef %1) #13
  br label %843

843:                                              ; preds = %829, %837, %841
  %844 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %845 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.8, ptr noundef nonnull %844) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %846 = load ptr, ptr %0, align 8, !tbaa !114
  %847 = load ptr, ptr %846, align 8, !tbaa !64
  store ptr %847, ptr %5, align 8, !tbaa !34
  %848 = call ptr @_setlooper_base_step(ptr noundef nonnull %5, ptr noundef null) #13
  %849 = icmp eq ptr %848, null
  br i1 %849, label %900, label %850

850:                                              ; preds = %843, %897
  %851 = phi ptr [ %898, %897 ], [ %848, %843 ]
  %852 = getelementptr inbounds %struct.Base, ptr %851, i64 0, i32 7
  %853 = load ptr, ptr %852, align 8, !tbaa !164
  %854 = getelementptr inbounds %struct.Object, ptr %853, i64 0, i32 3
  %855 = load i16, ptr %854, align 8, !tbaa !166
  %856 = icmp eq i16 %855, 10
  br i1 %856, label %857, label %863

857:                                              ; preds = %850
  %858 = load ptr, ptr %0, align 8, !tbaa !114
  %859 = load ptr, ptr %858, align 8, !tbaa !64
  %860 = call ptr @GPU_lamp_from_blender(ptr noundef %859, ptr noundef %853, ptr noundef null)
  %861 = icmp eq ptr %860, null
  br i1 %861, label %863, label %862

862:                                              ; preds = %857
  call fastcc void @shade_one_light(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %860)
  br label %863

863:                                              ; preds = %862, %857, %850
  %864 = getelementptr inbounds %struct.Object, ptr %853, i64 0, i32 55
  %865 = load i16, ptr %864, align 8, !tbaa !169
  %866 = and i16 %865, 2840
  %867 = icmp eq i16 %866, 0
  br i1 %867, label %897, label %868

868:                                              ; preds = %863
  %869 = load ptr, ptr @G, align 8, !tbaa !170
  %870 = getelementptr inbounds %struct.Main, ptr %869, i64 0, i32 46
  %871 = load ptr, ptr %870, align 8, !tbaa !172
  %872 = load ptr, ptr %0, align 8, !tbaa !114
  %873 = load ptr, ptr %872, align 8, !tbaa !64
  %874 = call ptr @object_duplilist(ptr noundef %871, ptr noundef %873, ptr noundef %853) #13
  %875 = load ptr, ptr %874, align 8, !tbaa !34
  %876 = icmp eq ptr %875, null
  br i1 %876, label %896, label %877

877:                                              ; preds = %868, %893
  %878 = phi ptr [ %894, %893 ], [ %875, %868 ]
  %879 = getelementptr inbounds %struct.DupliObject, ptr %878, i64 0, i32 2
  %880 = load ptr, ptr %879, align 8, !tbaa !174
  %881 = getelementptr inbounds %struct.Object, ptr %880, i64 0, i32 3
  %882 = load i16, ptr %881, align 8, !tbaa !166
  %883 = icmp eq i16 %882, 10
  br i1 %883, label %884, label %893

884:                                              ; preds = %877
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %885 = getelementptr inbounds %struct.Object, ptr %880, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %885) #13
  %886 = getelementptr inbounds %struct.DupliObject, ptr %878, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %885, ptr noundef nonnull %886) #13
  %887 = load ptr, ptr %0, align 8, !tbaa !114
  %888 = load ptr, ptr %887, align 8, !tbaa !64
  %889 = call ptr @GPU_lamp_from_blender(ptr noundef %888, ptr noundef %880, ptr noundef %853)
  %890 = icmp eq ptr %889, null
  br i1 %890, label %892, label %891

891:                                              ; preds = %884
  call fastcc void @shade_one_light(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %889)
  br label %892

892:                                              ; preds = %891, %884
  call void @copy_m4_m4(ptr noundef nonnull %885, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  br label %893

893:                                              ; preds = %892, %877
  %894 = load ptr, ptr %878, align 8, !tbaa !34
  %895 = icmp eq ptr %894, null
  br i1 %895, label %896, label %877, !llvm.loop !176

896:                                              ; preds = %893, %868
  call void @free_object_duplilist(ptr noundef nonnull %874) #13
  br label %897

897:                                              ; preds = %896, %863
  %898 = call ptr @_setlooper_base_step(ptr noundef nonnull %5, ptr noundef nonnull %851) #13
  %899 = icmp eq ptr %898, null
  br i1 %899, label %900, label %850, !llvm.loop !177

900:                                              ; preds = %897, %843
  %901 = load ptr, ptr %0, align 8, !tbaa !114
  %902 = load ptr, ptr %844, align 8, !tbaa !178
  %903 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %901, ptr noundef nonnull @.str.100, ptr noundef %902, ptr noundef nonnull %844) #13
  %904 = load ptr, ptr %0, align 8, !tbaa !114
  %905 = load ptr, ptr %1, align 8, !tbaa !160
  %906 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %904, ptr noundef nonnull @.str.100, ptr noundef %905, ptr noundef nonnull %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %907 = load ptr, ptr %1, align 8, !tbaa !160
  %908 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 2
  store ptr %907, ptr %908, align 8, !tbaa !162
  %909 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 8
  %910 = load ptr, ptr %909, align 8, !tbaa !156
  %911 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 3
  %912 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.2, ptr noundef %910, ptr noundef nonnull %911) #13
  %913 = icmp eq ptr %57, null
  br i1 %913, label %971, label %914

914:                                              ; preds = %900
  %915 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 16
  %916 = load float, ptr %915, align 8, !tbaa !179
  %917 = fcmp une float %916, 0.000000e+00
  br i1 %917, label %922, label %918

918:                                              ; preds = %914
  %919 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 17
  %920 = load float, ptr %919, align 4, !tbaa !181
  %921 = fcmp une float %920, 1.000000e+00
  br i1 %921, label %922, label %944

922:                                              ; preds = %918, %914
  %923 = call float @llvm.fmuladd.f32(float %916, float 2.000000e+00, float 5.000000e-01)
  %924 = call float @powf(float noundef %923, float noundef -1.000000e+01) #13
  %925 = fadd float %924, 1.000000e+00
  store float %925, ptr %49, align 4, !tbaa !92
  %926 = fadd float %925, -1.000000e+00
  %927 = fdiv float %926, %925
  %928 = call float @logf(float noundef %927) #13
  %929 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 17
  %930 = load float, ptr %929, align 4, !tbaa !181
  %931 = fdiv float %928, %930
  store float %931, ptr %50, align 4, !tbaa !92
  %932 = call ptr @GPU_uniform(ptr noundef nonnull %49) #13
  %933 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.2, ptr noundef %932, ptr noundef nonnull %46) #13
  %934 = call ptr @GPU_uniform(ptr noundef nonnull %50) #13
  %935 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.2, ptr noundef %934, ptr noundef nonnull %47) #13
  %936 = load ptr, ptr %908, align 8, !tbaa !162
  %937 = load ptr, ptr %46, align 8, !tbaa !34
  %938 = load ptr, ptr %47, align 8, !tbaa !34
  %939 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.12, ptr noundef %936, ptr noundef %937, ptr noundef %938, ptr noundef nonnull %908) #13
  %940 = load ptr, ptr %844, align 8, !tbaa !178
  %941 = load ptr, ptr %46, align 8, !tbaa !34
  %942 = load ptr, ptr %47, align 8, !tbaa !34
  %943 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.12, ptr noundef %940, ptr noundef %941, ptr noundef %942, ptr noundef nonnull %844) #13
  br label %944

944:                                              ; preds = %922, %918
  %945 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 12
  %946 = load float, ptr %945, align 8, !tbaa !182
  %947 = fcmp une float %946, 0.000000e+00
  br i1 %947, label %956, label %948

948:                                              ; preds = %944
  %949 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 13
  %950 = load float, ptr %949, align 4, !tbaa !183
  %951 = fcmp une float %950, 0.000000e+00
  br i1 %951, label %956, label %952

952:                                              ; preds = %948
  %953 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 14
  %954 = load float, ptr %953, align 8, !tbaa !184
  %955 = fcmp une float %954, 0.000000e+00
  br i1 %955, label %956, label %971

956:                                              ; preds = %952, %948, %944
  %957 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 13
  %958 = load ptr, ptr %957, align 8, !tbaa !158
  %959 = call i32 @GPU_link_changed(ptr noundef %958) #13
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %965

961:                                              ; preds = %956
  %962 = getelementptr inbounds %struct.Material, ptr %54, i64 0, i32 16
  %963 = load float, ptr %962, align 4, !tbaa !185
  %964 = fcmp une float %963, 0.000000e+00
  br i1 %964, label %965, label %971

965:                                              ; preds = %961, %956
  %966 = load ptr, ptr %908, align 8, !tbaa !162
  %967 = getelementptr inbounds %struct.Material, ptr %54, i64 0, i32 16
  %968 = call ptr @GPU_uniform(ptr noundef nonnull %967) #13
  %969 = call ptr @GPU_uniform(ptr noundef nonnull %945) #13
  %970 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.13, ptr noundef %966, ptr noundef %968, ptr noundef %969, ptr noundef nonnull %908) #13
  br label %971

971:                                              ; preds = %952, %965, %961, %900
  %972 = load i32, ptr %58, align 4, !tbaa !121
  %973 = and i32 %972, 1048576
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1003, label %975

975:                                              ; preds = %971
  %976 = load ptr, ptr %53, align 8, !tbaa !116
  %977 = load ptr, ptr %0, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %978 = load ptr, ptr %977, align 8, !tbaa !64
  %979 = getelementptr inbounds %struct.Scene, ptr %978, i64 0, i32 37, i32 18
  %980 = load i32, ptr %979, align 8, !tbaa !95
  %981 = and i32 %980, 512
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %1002

983:                                              ; preds = %975
  %984 = getelementptr inbounds %struct.Material, ptr %976, i64 0, i32 92
  %985 = load ptr, ptr %984, align 8, !tbaa !186
  %986 = icmp eq ptr %985, null
  br i1 %986, label %1002, label %987

987:                                              ; preds = %983
  %988 = getelementptr inbounds %struct.Material, ptr %976, i64 0, i32 94
  %989 = load i8, ptr %988, align 8, !tbaa !187
  %990 = icmp eq i8 %989, 3
  br i1 %990, label %991, label %1002

991:                                              ; preds = %987
  %992 = load ptr, ptr %908, align 8, !tbaa !34
  %993 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %977, ptr noundef nonnull @.str.127, ptr noundef %992, ptr noundef nonnull %4) #13
  %994 = load ptr, ptr %984, align 8, !tbaa !186
  %995 = load ptr, ptr %4, align 8, !tbaa !34
  %996 = getelementptr inbounds %struct.Material, ptr %976, i64 0, i32 100
  %997 = load float, ptr %996, align 8, !tbaa !188
  %998 = getelementptr inbounds %struct.Material, ptr %976, i64 0, i32 96
  %999 = load i8, ptr %998, align 2, !tbaa !189
  %1000 = zext i8 %999 to i32
  %1001 = load ptr, ptr %908, align 8, !tbaa !34
  call fastcc void @do_colorband_blend(ptr noundef nonnull %977, ptr noundef %994, ptr noundef %995, float noundef %997, i32 noundef %1000, ptr noundef %1001, ptr noundef nonnull %908)
  br label %1002

1002:                                             ; preds = %975, %983, %987, %991
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %1003

1003:                                             ; preds = %1002, %971
  %1004 = load i32, ptr %58, align 4, !tbaa !121
  %1005 = and i32 %1004, 2097152
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1035, label %1007

1007:                                             ; preds = %1003
  %1008 = load ptr, ptr %53, align 8, !tbaa !116
  %1009 = load ptr, ptr %0, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %1010 = load ptr, ptr %1009, align 8, !tbaa !64
  %1011 = getelementptr inbounds %struct.Scene, ptr %1010, i64 0, i32 37, i32 18
  %1012 = load i32, ptr %1011, align 8, !tbaa !95
  %1013 = and i32 %1012, 512
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1034

1015:                                             ; preds = %1007
  %1016 = getelementptr inbounds %struct.Material, ptr %1008, i64 0, i32 93
  %1017 = load ptr, ptr %1016, align 8, !tbaa !190
  %1018 = icmp eq ptr %1017, null
  br i1 %1018, label %1034, label %1019

1019:                                             ; preds = %1015
  %1020 = getelementptr inbounds %struct.Material, ptr %1008, i64 0, i32 95
  %1021 = load i8, ptr %1020, align 1, !tbaa !191
  %1022 = icmp eq i8 %1021, 3
  br i1 %1022, label %1023, label %1034

1023:                                             ; preds = %1019
  %1024 = load ptr, ptr %844, align 8, !tbaa !34
  %1025 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %1009, ptr noundef nonnull @.str.127, ptr noundef %1024, ptr noundef nonnull %3) #13
  %1026 = load ptr, ptr %1016, align 8, !tbaa !190
  %1027 = load ptr, ptr %3, align 8, !tbaa !34
  %1028 = getelementptr inbounds %struct.Material, ptr %1008, i64 0, i32 101
  %1029 = load float, ptr %1028, align 4, !tbaa !192
  %1030 = getelementptr inbounds %struct.Material, ptr %1008, i64 0, i32 97
  %1031 = load i8, ptr %1030, align 1, !tbaa !193
  %1032 = zext i8 %1031 to i32
  %1033 = load ptr, ptr %844, align 8, !tbaa !34
  call fastcc void @do_colorband_blend(ptr noundef nonnull %1009, ptr noundef %1026, ptr noundef %1027, float noundef %1029, i32 noundef %1032, ptr noundef %1033, ptr noundef nonnull %844)
  br label %1034

1034:                                             ; preds = %1007, %1015, %1019, %1023
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %1035

1035:                                             ; preds = %1034, %1003
  %1036 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 10
  %1037 = load ptr, ptr %1036, align 8, !tbaa !150
  %1038 = call i32 @GPU_link_changed(ptr noundef %1037) #13
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1040, label %1044

1040:                                             ; preds = %1035
  %1041 = getelementptr inbounds %struct.Material, ptr %54, i64 0, i32 23
  %1042 = load float, ptr %1041, align 8, !tbaa !194
  %1043 = fcmp une float %1042, 0.000000e+00
  br i1 %1043, label %1044, label %1048

1044:                                             ; preds = %1040, %1035
  %1045 = load ptr, ptr %908, align 8, !tbaa !162
  %1046 = load ptr, ptr %844, align 8, !tbaa !178
  %1047 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.9, ptr noundef %1045, ptr noundef %1046, ptr noundef nonnull %908) #13
  br label %1048

1048:                                             ; preds = %1040, %1044, %803
  %1049 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 2
  %1050 = load ptr, ptr %1049, align 8, !tbaa !162
  %1051 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 3
  %1052 = load ptr, ptr %1051, align 8, !tbaa !195
  %1053 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.14, ptr noundef %1050, ptr noundef %1052, ptr noundef nonnull %1049) #13
  %1054 = getelementptr inbounds %struct.Material, ptr %54, i64 0, i32 50
  %1055 = load i16, ptr %1054, align 2, !tbaa !196
  %1056 = and i16 %1055, 2
  %1057 = icmp eq i16 %1056, 0
  br i1 %1057, label %1062, label %1058

1058:                                             ; preds = %1048
  %1059 = load ptr, ptr %1049, align 8, !tbaa !162
  %1060 = call ptr @GPU_builtin(i32 noundef 64) #13
  %1061 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.15, ptr noundef %1059, ptr noundef %1060, ptr noundef nonnull %1049) #13
  br label %1062

1062:                                             ; preds = %1058, %1048
  %1063 = icmp eq ptr %57, null
  br i1 %1063, label %1091, label %1064

1064:                                             ; preds = %1062
  %1065 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 23
  %1066 = load i16, ptr %1065, align 2, !tbaa !197
  %1067 = and i16 %1066, 1
  %1068 = icmp eq i16 %1067, 0
  br i1 %1068, label %1091, label %1069

1069:                                             ; preds = %1064
  %1070 = load i32, ptr %58, align 4, !tbaa !121
  %1071 = and i32 %1070, 16384
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1073, label %1091

1073:                                             ; preds = %1069
  %1074 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 5
  %1075 = load i16, ptr %1074, align 2, !tbaa !198
  %1076 = sitofp i16 %1075 to float
  store float %1076, ptr %51, align 4, !tbaa !92
  %1077 = call ptr @GPU_builtin(i32 noundef 16) #13
  %1078 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 31
  %1079 = call ptr @GPU_uniform(ptr noundef nonnull %1078) #13
  %1080 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 32
  %1081 = call ptr @GPU_uniform(ptr noundef nonnull %1080) #13
  %1082 = call ptr @GPU_uniform(ptr noundef nonnull %51) #13
  %1083 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 30
  %1084 = call ptr @GPU_uniform(ptr noundef nonnull %1083) #13
  %1085 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.16, ptr noundef %1077, ptr noundef %1079, ptr noundef %1081, ptr noundef %1082, ptr noundef %1084, ptr noundef nonnull %48) #13
  %1086 = load ptr, ptr %48, align 8, !tbaa !34
  %1087 = load ptr, ptr %1049, align 8, !tbaa !162
  %1088 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 6
  %1089 = call ptr @GPU_uniform(ptr noundef nonnull %1088) #13
  %1090 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.17, ptr noundef %1086, ptr noundef %1087, ptr noundef %1089, ptr noundef nonnull %1049) #13
  br label %1091

1091:                                             ; preds = %1073, %1069, %1064, %1062
  %1092 = getelementptr inbounds %struct.GPUMaterial, ptr %52, i64 0, i32 8
  %1093 = load i32, ptr %1092, align 4, !tbaa !111
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1095, label %1112

1095:                                             ; preds = %1091
  br i1 %1063, label %1109, label %1096

1096:                                             ; preds = %1095
  %1097 = load ptr, ptr %1051, align 8, !tbaa !195
  %1098 = call i32 @GPU_link_changed(ptr noundef %1097) #13
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1104

1100:                                             ; preds = %1096
  %1101 = getelementptr inbounds %struct.Material, ptr %54, i64 0, i32 21
  %1102 = load float, ptr %1101, align 8, !tbaa !199
  %1103 = fcmp une float %1102, 1.000000e+00
  br i1 %1103, label %1104, label %1109

1104:                                             ; preds = %1100, %1096
  %1105 = getelementptr inbounds %struct.World, ptr %57, i64 0, i32 6
  %1106 = call ptr @GPU_uniform(ptr noundef nonnull %1105) #13
  %1107 = load ptr, ptr %1049, align 8, !tbaa !162
  %1108 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.18, ptr noundef %1106, ptr noundef %1107, ptr noundef nonnull %1049) #13
  br label %1109

1109:                                             ; preds = %1104, %1100, %1095
  %1110 = load ptr, ptr %1049, align 8, !tbaa !162
  %1111 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.19, ptr noundef %1110, ptr noundef nonnull %1049) #13
  br label %1112

1112:                                             ; preds = %1109, %1091
  %1113 = load i16, ptr %1054, align 2, !tbaa !196
  %1114 = and i16 %1113, 2
  %1115 = icmp eq i16 %1114, 0
  br i1 %1115, label %1121, label %1116

1116:                                             ; preds = %1112
  %1117 = getelementptr inbounds %struct.GPUMaterial, ptr %52, i64 0, i32 9
  store i32 1, ptr %1117, align 8, !tbaa !112
  %1118 = load ptr, ptr %1049, align 8, !tbaa !162
  %1119 = call ptr @GPU_builtin(i32 noundef 64) #13
  %1120 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %52, ptr noundef nonnull @.str.20, ptr noundef %1118, ptr noundef %1119, ptr noundef nonnull %1049) #13
  br label %1121

1121:                                             ; preds = %1116, %1112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %50) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #13
  ret void
}

declare i32 @GPU_link_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @logf(float noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPU_material_matcap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 136
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %52, label %6, !llvm.loop !200

15:                                               ; preds = %6
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 2672, ptr noundef nonnull @.str.147) #13
  %18 = getelementptr inbounds %struct.GPUMaterial, ptr %17, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !89
  store ptr %0, ptr %17, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 106
  %20 = load ptr, ptr %19, align 8, !tbaa !201
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.PreviewImage, ptr %20, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %27 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %28 = tail call ptr @GPU_uniform(ptr noundef nonnull %27) #13
  %29 = load ptr, ptr %19, align 8, !tbaa !201
  %30 = tail call ptr @GPU_image_preview(ptr noundef %29) #13
  %31 = tail call ptr @GPU_opengl_builtin(i32 noundef 1) #13
  %32 = tail call ptr @GPU_opengl_builtin(i32 noundef 2) #13
  %33 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %17, ptr noundef nonnull @.str.148, ptr noundef %28, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef nonnull %4) #13
  %34 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %42

35:                                               ; preds = %22, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %36 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %37 = tail call ptr @GPU_uniform(ptr noundef nonnull %36) #13
  %38 = tail call ptr @GPU_uniform(ptr noundef nonnull @gpu_material_diffuse_bsdf.roughness) #13
  %39 = tail call ptr @GPU_builtin(i32 noundef 32) #13
  %40 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %17, ptr noundef nonnull @.str.149, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef nonnull %3) #13
  %41 = load ptr, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %42

42:                                               ; preds = %35, %26
  %43 = phi ptr [ %34, %26 ], [ %41, %35 ]
  %44 = getelementptr inbounds %struct.GPUMaterial, ptr %17, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !110
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store ptr %43, ptr %44, align 8, !tbaa !110
  br label %48

48:                                               ; preds = %42, %47
  call fastcc void @GPU_material_construct_end(ptr noundef nonnull %17)
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %50 = call ptr %49(i64 noundef 24, ptr noundef nonnull @.str.21) #13
  %51 = getelementptr inbounds %struct.LinkData, ptr %50, i64 0, i32 2
  store ptr %17, ptr %51, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %50) #13
  br label %52

52:                                               ; preds = %10, %48
  %53 = phi ptr [ %17, %48 ], [ %12, %10 ]
  ret ptr %53
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GPU_material_construct_end(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = icmp eq ptr %4, null
  br i1 %5, label %97, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %13 = tail call ptr @GPU_generate_pass(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %12) #13
  %14 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !40
  %15 = icmp eq ptr %13, null
  br i1 %15, label %97, label %16

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  %17 = tail call ptr @GPU_pass_shader(ptr noundef nonnull %13) #13
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5, i32 1
  br i1 %18, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %19, align 4, !tbaa !202
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %24, label %44

23:                                               ; preds = %16
  store i32 0, ptr %19, align 4, !tbaa !202
  br label %47

24:                                               ; preds = %20, %38
  %25 = phi i64 [ %40, %38 ], [ 0, %20 ]
  %26 = phi i32 [ %39, %38 ], [ 0, %20 ]
  %27 = getelementptr inbounds [32 x %struct.anon], ptr %8, i64 0, i64 %25, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !203
  %29 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %28) #13
  %30 = call i32 @GPU_shader_get_attribute(ptr noundef nonnull %17, ptr noundef nonnull %2) #13
  %31 = getelementptr inbounds [32 x %struct.anon], ptr %8, i64 0, i64 %25, i32 1
  store i32 %30, ptr %31, align 4, !tbaa !205
  %32 = icmp sgt i32 %30, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = getelementptr inbounds [32 x %struct.anon], ptr %8, i64 0, i64 %25
  %35 = sext i32 %26 to i64
  %36 = getelementptr inbounds [32 x %struct.anon], ptr %8, i64 0, i64 %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %36, ptr noundef nonnull align 4 dereferenceable(80) %34, i64 80, i1 false), !tbaa.struct !206
  %37 = add nsw i32 %26, 1
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi i32 [ %37, %33 ], [ %26, %24 ]
  %40 = add nuw nsw i64 %25, 1
  %41 = load i32, ptr %19, align 4, !tbaa !202
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %24, label %44, !llvm.loop !207

44:                                               ; preds = %38, %20
  %45 = phi i32 [ 0, %20 ], [ %39, %38 ]
  %46 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5, i32 1
  store i32 %45, ptr %46, align 4, !tbaa !202
  br label %47

47:                                               ; preds = %23, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  %48 = load ptr, ptr %14, align 8, !tbaa !40
  %49 = call ptr @GPU_pass_shader(ptr noundef %48) #13
  %50 = load i32, ptr %9, align 8, !tbaa !99
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = call ptr @GPU_builtin_name(i32 noundef 1) #13
  %55 = call i32 @GPU_shader_get_uniform(ptr noundef %49, ptr noundef %54) #13
  %56 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 11
  store i32 %55, ptr %56, align 8, !tbaa !100
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, ptr %9, align 8, !tbaa !99
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = call ptr @GPU_builtin_name(i32 noundef 4) #13
  %63 = call i32 @GPU_shader_get_uniform(ptr noundef %49, ptr noundef %62) #13
  %64 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 12
  store i32 %63, ptr %64, align 4, !tbaa !101
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, ptr %9, align 8, !tbaa !99
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = call ptr @GPU_builtin_name(i32 noundef 2) #13
  %71 = call i32 @GPU_shader_get_uniform(ptr noundef %49, ptr noundef %70) #13
  %72 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 13
  store i32 %71, ptr %72, align 8, !tbaa !103
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, ptr %9, align 8, !tbaa !99
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = call ptr @GPU_builtin_name(i32 noundef 8) #13
  %79 = call i32 @GPU_shader_get_uniform(ptr noundef %49, ptr noundef %78) #13
  %80 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 14
  store i32 %79, ptr %80, align 4, !tbaa !104
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, ptr %9, align 8, !tbaa !99
  %83 = and i32 %82, 64
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = call ptr @GPU_builtin_name(i32 noundef 64) #13
  %87 = call i32 @GPU_shader_get_uniform(ptr noundef %49, ptr noundef %86) #13
  %88 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 15
  store i32 %87, ptr %88, align 8, !tbaa !105
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, ptr %9, align 8, !tbaa !99
  %91 = and i32 %90, 128
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = call ptr @GPU_builtin_name(i32 noundef 128) #13
  %95 = call i32 @GPU_shader_get_uniform(ptr noundef %49, ptr noundef %94) #13
  %96 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 16
  store i32 %95, ptr %96, align 4, !tbaa !106
  br label %97

97:                                               ; preds = %1, %6, %93, %89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPU_material_from_blender(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.GPUShadeInput, align 8
  %5 = alloca %struct.GPUShadeResult, align 8
  %6 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 136
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %84, label %7, !llvm.loop !208

16:                                               ; preds = %7
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 2672, ptr noundef nonnull @.str.147) #13
  %19 = getelementptr inbounds %struct.GPUMaterial, ptr %18, i64 0, i32 1
  store ptr %1, ptr %19, align 8, !tbaa !89
  store ptr %0, ptr %18, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 51
  %21 = load i32, ptr %20, align 4, !tbaa !121
  %22 = and i32 %21, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.GPUMaterial, ptr %18, i64 0, i32 8
  store i32 1, ptr %25, align 4, !tbaa !111
  br label %26

26:                                               ; preds = %24, %16
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 37, i32 18
  %28 = load i32, ptr %27, align 8, !tbaa !95
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %33 = load ptr, ptr %32, align 8, !tbaa !209
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 77
  %37 = load i8, ptr %36, align 1, !tbaa !210
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #13
  %41 = icmp eq i8 %40, 0
  %42 = load ptr, ptr %32, align 8, !tbaa !209
  br i1 %41, label %44, label %43

43:                                               ; preds = %39
  tail call void @ntreeGPUMaterialNodes(ptr noundef %42, ptr noundef nonnull %18, i16 noundef signext 2) #13
  br label %64

44:                                               ; preds = %39
  tail call void @ntreeGPUMaterialNodes(ptr noundef %42, ptr noundef nonnull %18, i16 noundef signext 1) #13
  br label %64

45:                                               ; preds = %35, %31, %26
  %46 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %49 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %50 = tail call ptr @GPU_uniform(ptr noundef nonnull %49) #13
  %51 = tail call ptr @GPU_uniform(ptr noundef nonnull @gpu_material_diffuse_bsdf.roughness) #13
  %52 = tail call ptr @GPU_builtin(i32 noundef 32) #13
  %53 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %18, ptr noundef nonnull @.str.149, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef nonnull %3) #13
  %54 = load ptr, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %58

55:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @GPU_shadeinput_set(ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull %4)
  call void @GPU_shaderesult_set(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %56 = getelementptr inbounds %struct.GPUShadeResult, ptr %5, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #13
  br label %58

58:                                               ; preds = %55, %48
  %59 = phi ptr [ %54, %48 ], [ %57, %55 ]
  %60 = getelementptr inbounds %struct.GPUMaterial, ptr %18, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !110
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store ptr %59, ptr %60, align 8, !tbaa !110
  br label %64

64:                                               ; preds = %63, %58, %43, %44
  %65 = load ptr, ptr %18, align 8, !tbaa !64
  %66 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %65) #13
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %18, align 8, !tbaa !64
  %70 = getelementptr inbounds %struct.Scene, ptr %69, i64 0, i32 37, i32 18
  %71 = load i32, ptr %70, align 8, !tbaa !95
  %72 = and i32 %71, 32768
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.GPUMaterial, ptr %18, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !110
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %18, ptr noundef nonnull @.str.22, ptr noundef nonnull %76, ptr noundef nonnull %75) #13
  br label %80

80:                                               ; preds = %64, %74, %78, %68
  call fastcc void @GPU_material_construct_end(ptr noundef nonnull %18)
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %82 = call ptr %81(i64 noundef 24, ptr noundef nonnull @.str.21) #13
  %83 = getelementptr inbounds %struct.LinkData, ptr %82, i64 0, i32 2
  store ptr %18, ptr %83, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %82) #13
  br label %84

84:                                               ; preds = %11, %80
  %85 = phi ptr [ %18, %80 ], [ %13, %11 ]
  ret ptr %85
}

declare void @ntreeGPUMaterialNodes(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_materials_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !170
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @GPU_material_free(ptr noundef nonnull %6)
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !211

9:                                                ; preds = %5, %0
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial)
  %10 = load ptr, ptr @G, align 8, !tbaa !170
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %9, %41
  %15 = phi ptr [ %42, %41 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 125
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %14, %37
  %20 = phi ptr [ %39, %37 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.LinkData, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 44
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %19, %34
  %27 = phi ptr [ %35, %34 ], [ %24, %19 ]
  %28 = getelementptr inbounds %struct.LinkData, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  tail call void @BLI_freelinkN(ptr noundef nonnull %23, ptr noundef nonnull %27) #13
  %30 = getelementptr inbounds %struct.Material, ptr %29, i64 0, i32 136
  %31 = load ptr, ptr %30, align 8, !tbaa !212
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  tail call void @GPU_material_free(ptr noundef %29)
  br label %34

34:                                               ; preds = %33, %26
  %35 = load ptr, ptr %23, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %26, !llvm.loop !213

37:                                               ; preds = %34, %19
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef %22)
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %38(ptr noundef %22) #13
  %39 = load ptr, ptr %20, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %19, !llvm.loop !214

41:                                               ; preds = %37, %14
  tail call void @BLI_freelistN(ptr noundef nonnull %16) #13
  %42 = load ptr, ptr %15, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %14, !llvm.loop !215

44:                                               ; preds = %41, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_lamp_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 125
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1, %23
  %6 = phi ptr [ %25, %23 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.GPULamp, ptr %8, i64 0, i32 44
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %5, %20
  %13 = phi ptr [ %21, %20 ], [ %10, %5 ]
  %14 = getelementptr inbounds %struct.LinkData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %13) #13
  %16 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 136
  %17 = load ptr, ptr %16, align 8, !tbaa !212
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  tail call void @GPU_material_free(ptr noundef %15)
  br label %20

20:                                               ; preds = %19, %12
  %21 = load ptr, ptr %9, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !213

23:                                               ; preds = %20, %5
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef %8)
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef %8) #13
  %25 = load ptr, ptr %6, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !214

27:                                               ; preds = %23, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_lamp_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 6
  store i32 %1, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 7
  store i32 %2, ptr %7, align 4, !tbaa !86
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef %3) #13
  call void @normalize_m4(ptr noundef nonnull %5) #13
  %8 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  %10 = load float, ptr %9, align 16, !tbaa !92
  store float %10, ptr %8, align 4, !tbaa !92
  %11 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !92
  %13 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 13, i64 1
  store float %12, ptr %13, align 4, !tbaa !92
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  %15 = load float, ptr %14, align 8, !tbaa !92
  %16 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 13, i64 2
  store float %15, ptr %16, align 4, !tbaa !92
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %19 = load float, ptr %18, align 16, !tbaa !92
  store float %19, ptr %17, align 4, !tbaa !92
  %20 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !92
  %22 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 12, i64 1
  store float %21, ptr %22, align 4, !tbaa !92
  %23 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %24 = load float, ptr %23, align 8, !tbaa !92
  %25 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 12, i64 2
  store float %24, ptr %25, align 4, !tbaa !92
  %26 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 16
  call void @copy_m4_m4(ptr noundef nonnull %26, ptr noundef nonnull %5) #13
  %27 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 17
  %28 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %27, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret void
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPU_lamp_update_colors(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 10
  store float %4, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !88
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = fneg float %4
  store float %12, ptr %6, align 8, !tbaa !90
  br label %13

13:                                               ; preds = %11, %5
  %14 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 11
  store float %1, ptr %14, align 4, !tbaa !92
  %15 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 11, i64 1
  store float %2, ptr %15, align 4, !tbaa !92
  %16 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 11, i64 2
  store float %3, ptr %16, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GPU_lamp_update_distance(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 25
  store float %1, ptr %5, align 8, !tbaa !216
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 26
  store float %2, ptr %6, align 4, !tbaa !217
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 27
  store float %3, ptr %7, align 8, !tbaa !218
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_lamp_update_spot(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fmul float %1, 5.000000e-01
  %5 = tail call float @cosf(float noundef %4) #13
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 19
  store float %5, ptr %6, align 8, !tbaa !219
  %7 = fsub float 1.000000e+00, %5
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 20
  store float %8, ptr %9, align 4, !tbaa !220
  tail call fastcc void @gpu_lamp_calc_winmat(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_lamp_calc_winmat(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !221
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 65
  %9 = load float, ptr %8, align 8, !tbaa !223
  %10 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 35
  %11 = fneg float %9
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 30
  %13 = load float, ptr %12, align 4, !tbaa !225
  %14 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 31
  %15 = load float, ptr %14, align 8, !tbaa !226
  tail call void @orthographic_m4(ptr noundef nonnull %10, float noundef %11, float noundef %9, float noundef %11, float noundef %9, float noundef %13, float noundef %15) #13
  br label %45

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 19
  %18 = load float, ptr %17, align 8, !tbaa !219
  %19 = fcmp ugt float %18, -1.000000e+00
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = fcmp ult float %18, 1.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = tail call float @acosf(float noundef %18) #13
  br label %24

24:                                               ; preds = %16, %20, %22
  %25 = phi float [ %23, %22 ], [ 0x400921FB60000000, %16 ], [ 0.000000e+00, %20 ]
  %26 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 32
  %27 = load i32, ptr %26, align 4, !tbaa !227
  %28 = sitofp i32 %27 to float
  %29 = fmul float %28, 5.000000e-01
  %30 = tail call float @cosf(float noundef %25) #13
  %31 = fmul float %30, %29
  %32 = tail call float @sinf(float noundef %25) #13
  %33 = fdiv float %31, %32
  %34 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 30
  %35 = load float, ptr %34, align 4, !tbaa !225
  %36 = fdiv float %35, %33
  %37 = fmul float %36, 5.000000e-01
  %38 = load i32, ptr %26, align 4, !tbaa !227
  %39 = sitofp i32 %38 to float
  %40 = fmul float %37, %39
  %41 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 35
  %42 = fneg float %40
  %43 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 31
  %44 = load float, ptr %43, align 8, !tbaa !226
  tail call void @perspective_m4(ptr noundef nonnull %41, float noundef %42, float noundef %40, float noundef %42, float noundef %40, float noundef %35, float noundef %44) #13
  br label %45

45:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_lamp_from_blender(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %18
  %9 = phi ptr [ %19, %18 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.GPULamp, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !228
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 8, !tbaa !94
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %219, label %18

18:                                               ; preds = %8, %15
  %19 = load ptr, ptr %9, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !229

21:                                               ; preds = %18, %3
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 712, ptr noundef nonnull @.str.23) #13
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %25 = tail call ptr %24(i64 noundef 24, ptr noundef nonnull @.str.24) #13
  %26 = getelementptr inbounds %struct.LinkData, ptr %25, i64 0, i32 2
  store ptr %23, ptr %26, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !230
  store ptr %0, ptr %23, align 8, !tbaa !94
  %29 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 1
  store ptr %1, ptr %29, align 8, !tbaa !63
  %30 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 2
  store ptr %2, ptr %30, align 8, !tbaa !228
  %31 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 3
  store ptr %28, ptr %31, align 8, !tbaa !222
  %32 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !231
  %34 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 5
  store i32 %33, ptr %34, align 4, !tbaa !88
  %35 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !232
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 4
  store i32 %37, ptr %38, align 8, !tbaa !221
  %39 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 15
  %40 = load float, ptr %39, align 4, !tbaa !233
  %41 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 10
  %42 = and i32 %33, 16
  %43 = icmp eq i32 %42, 0
  %44 = fneg float %40
  %45 = select i1 %43, float %40, float %44
  store float %45, ptr %41, align 8, !tbaa !90
  %46 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 7
  %47 = load float, ptr %46, align 4, !tbaa !234
  %48 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 11
  store float %47, ptr %48, align 4, !tbaa !92
  %49 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 8
  %50 = load float, ptr %49, align 8, !tbaa !235
  %51 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 11, i64 1
  store float %50, ptr %51, align 4, !tbaa !92
  %52 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 9
  %53 = load float, ptr %52, align 4, !tbaa !236
  %54 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 11, i64 2
  store float %53, ptr %54, align 4, !tbaa !92
  %55 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %56 = load i32, ptr %55, align 8, !tbaa !237
  %57 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 102
  %58 = load i8, ptr %57, align 8, !tbaa !238
  %59 = and i8 %58, 4
  %60 = zext nneg i8 %59 to i32
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %62 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 6
  store i32 %56, ptr %62, align 8, !tbaa !87
  %63 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 7
  store i32 %60, ptr %63, align 4, !tbaa !86
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %61) #13
  call void @normalize_m4(ptr noundef nonnull %4) #13
  %64 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 13
  %65 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  %66 = load float, ptr %65, align 16, !tbaa !92
  store float %66, ptr %64, align 4, !tbaa !92
  %67 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !92
  %69 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 13, i64 1
  store float %68, ptr %69, align 4, !tbaa !92
  %70 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 2
  %71 = load float, ptr %70, align 8, !tbaa !92
  %72 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 13, i64 2
  store float %71, ptr %72, align 4, !tbaa !92
  %73 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 12
  %74 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %75 = load float, ptr %74, align 16, !tbaa !92
  store float %75, ptr %73, align 4, !tbaa !92
  %76 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !92
  %78 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 12, i64 1
  store float %77, ptr %78, align 4, !tbaa !92
  %79 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %80 = load float, ptr %79, align 8, !tbaa !92
  %81 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 12, i64 2
  store float %80, ptr %81, align 4, !tbaa !92
  %82 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 16
  call void @copy_m4_m4(ptr noundef nonnull %82, ptr noundef nonnull %4) #13
  %83 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 17
  %84 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %83, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  %85 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 17
  %86 = load float, ptr %85, align 4, !tbaa !239
  %87 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 19
  store float %86, ptr %87, align 8, !tbaa !219
  %88 = load i32, ptr %34, align 4, !tbaa !88
  %89 = and i32 %88, 2
  %90 = icmp ne i32 %89, 0
  %91 = fcmp ogt float %86, 0x4007BC89C0000000
  %92 = select i1 %90, i1 %91, i1 false
  %93 = fmul float %86, 5.000000e-01
  %94 = select i1 %92, float 0x3FF7BC89C0000000, float %93
  %95 = call float @cosf(float noundef %94) #13
  store float %95, ptr %87, align 8, !tbaa !219
  %96 = fsub float 1.000000e+00, %95
  %97 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 18
  %98 = load float, ptr %97, align 8, !tbaa !240
  %99 = fmul float %96, %98
  %100 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 20
  store float %99, ptr %100, align 4, !tbaa !220
  %101 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 10
  %102 = load float, ptr %101, align 8, !tbaa !241
  %103 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 21
  store float %102, ptr %103, align 8, !tbaa !242
  %104 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 16
  %105 = load float, ptr %104, align 8, !tbaa !243
  %106 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 25
  store float %105, ptr %106, align 8, !tbaa !216
  %107 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 23
  %108 = load i16, ptr %107, align 8, !tbaa !244
  %109 = sext i16 %108 to i32
  %110 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 33
  store i32 %109, ptr %110, align 8, !tbaa !245
  %111 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 20
  %112 = load float, ptr %111, align 8, !tbaa !246
  %113 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 26
  store float %112, ptr %113, align 4, !tbaa !217
  %114 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 21
  %115 = load float, ptr %114, align 4, !tbaa !247
  %116 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 27
  store float %115, ptr %116, align 8, !tbaa !218
  %117 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 22
  %118 = load ptr, ptr %117, align 8, !tbaa !248
  %119 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 34
  store ptr %118, ptr %119, align 8, !tbaa !249
  %120 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 27
  %121 = load float, ptr %120, align 4, !tbaa !250
  %122 = fmul float %121, 0x3F947AE140000000
  %123 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 29
  store float %122, ptr %123, align 8, !tbaa !251
  %124 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 32
  %125 = load i16, ptr %124, align 8, !tbaa !252
  %126 = sext i16 %125 to i32
  %127 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 32
  store i32 %126, ptr %127, align 4, !tbaa !227
  %128 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 25
  %129 = load float, ptr %128, align 4, !tbaa !253
  %130 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 30
  store float %129, ptr %130, align 4, !tbaa !225
  %131 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 26
  %132 = load float, ptr %131, align 8, !tbaa !254
  %133 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 31
  store float %132, ptr %133, align 8, !tbaa !226
  %134 = fmul float %122, 2.500000e-01
  store float %134, ptr %123, align 8, !tbaa !251
  call fastcc void @gpu_lamp_calc_winmat(ptr noundef nonnull %23)
  %135 = load i16, ptr %35, align 8, !tbaa !232
  switch i16 %135, label %215 [
    i16 2, label %136
    i16 1, label %142
  ]

136:                                              ; preds = %21
  %137 = load i32, ptr %32, align 4, !tbaa !231
  %138 = and i32 %137, 8193
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = icmp eq i16 %135, 1
  br i1 %141, label %142, label %215

142:                                              ; preds = %21, %140
  %143 = load i32, ptr %32, align 4, !tbaa !231
  %144 = and i32 %143, 8192
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %215, label %146

146:                                              ; preds = %142, %136
  %147 = call ptr @GPU_framebuffer_create() #13
  %148 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 39
  store ptr %147, ptr %148, align 8, !tbaa !97
  %149 = icmp eq ptr %147, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

151:                                              ; preds = %146
  %152 = load ptr, ptr %31, align 8, !tbaa !222
  %153 = getelementptr inbounds %struct.Lamp, ptr %152, i64 0, i32 48
  %154 = load i16, ptr %153, align 2, !tbaa !255
  %155 = icmp eq i16 %154, 1
  %156 = load i32, ptr %127, align 4, !tbaa !227
  %157 = call ptr @GPU_texture_create_depth(i32 noundef %156, i32 noundef %156, ptr noundef null) #13
  %158 = icmp eq ptr %157, null
  br i1 %155, label %159, label %197

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 42
  store ptr %157, ptr %160, align 8, !tbaa !256
  br i1 %158, label %161, label %162

161:                                              ; preds = %159
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

162:                                              ; preds = %159
  %163 = load ptr, ptr %148, align 8, !tbaa !97
  %164 = call i32 @GPU_framebuffer_texture_attach(ptr noundef %163, ptr noundef nonnull %157, ptr noundef null) #13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

167:                                              ; preds = %162
  %168 = load i32, ptr %127, align 4, !tbaa !227
  %169 = call ptr @GPU_texture_create_vsm_shadow_map(i32 noundef %168, ptr noundef null) #13
  %170 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 41
  store ptr %169, ptr %170, align 8, !tbaa !96
  %171 = icmp eq ptr %169, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

173:                                              ; preds = %167
  %174 = load ptr, ptr %148, align 8, !tbaa !97
  %175 = call i32 @GPU_framebuffer_texture_attach(ptr noundef %174, ptr noundef nonnull %169, ptr noundef null) #13
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

178:                                              ; preds = %173
  %179 = call ptr @GPU_framebuffer_create() #13
  %180 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 40
  store ptr %179, ptr %180, align 8, !tbaa !257
  %181 = icmp eq ptr %179, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

183:                                              ; preds = %178
  %184 = load i32, ptr %127, align 4, !tbaa !227
  %185 = sitofp i32 %184 to double
  %186 = fmul double %185, 5.000000e-01
  %187 = fptosi double %186 to i32
  %188 = call ptr @GPU_texture_create_vsm_shadow_map(i32 noundef %187, ptr noundef null) #13
  %189 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 43
  store ptr %188, ptr %189, align 8, !tbaa !258
  %190 = icmp eq ptr %188, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

192:                                              ; preds = %183
  %193 = load ptr, ptr %180, align 8, !tbaa !257
  %194 = call i32 @GPU_framebuffer_texture_attach(ptr noundef %193, ptr noundef nonnull %188, ptr noundef null) #13
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

197:                                              ; preds = %151
  %198 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 41
  store ptr %157, ptr %198, align 8, !tbaa !96
  br i1 %158, label %199, label %200

199:                                              ; preds = %197
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

200:                                              ; preds = %197
  %201 = load ptr, ptr %148, align 8, !tbaa !97
  %202 = call i32 @GPU_framebuffer_texture_attach(ptr noundef %201, ptr noundef nonnull %157, ptr noundef null) #13
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  call fastcc void @gpu_lamp_shadow_free(ptr noundef %23)
  br label %219

205:                                              ; preds = %200, %192
  call void @GPU_framebuffer_restore() #13
  %206 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 11
  %207 = load float, ptr %206, align 4, !tbaa !259
  %208 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 28
  store float %207, ptr %208, align 4, !tbaa !92
  %209 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 12
  %210 = load float, ptr %209, align 8, !tbaa !260
  %211 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 28, i64 1
  store float %210, ptr %211, align 4, !tbaa !92
  %212 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 13
  %213 = load float, ptr %212, align 4, !tbaa !261
  %214 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 28, i64 2
  store float %213, ptr %214, align 4, !tbaa !92
  br label %219

215:                                              ; preds = %21, %142, %140
  %216 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 28
  store float 1.000000e+00, ptr %216, align 4, !tbaa !92
  %217 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 28, i64 1
  store float 1.000000e+00, ptr %217, align 4, !tbaa !92
  %218 = getelementptr inbounds %struct.GPULamp, ptr %23, i64 0, i32 28, i64 2
  store float 1.000000e+00, ptr %218, align 4, !tbaa !92
  br label %219

219:                                              ; preds = %15, %205, %215, %204, %199, %196, %191, %182, %177, %172, %166, %161, %150
  %220 = phi ptr [ %23, %196 ], [ %23, %191 ], [ %23, %182 ], [ %23, %177 ], [ %23, %172 ], [ %23, %166 ], [ %23, %161 ], [ %23, %204 ], [ %23, %199 ], [ %23, %150 ], [ %23, %215 ], [ %23, %205 ], [ %11, %15 ]
  ret ptr %220
}

declare ptr @GPU_framebuffer_create() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_lamp_shadow_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @GPU_texture_free(ptr noundef nonnull %3) #13
  store ptr null, ptr %2, align 8, !tbaa !96
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 42
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @GPU_texture_free(ptr noundef nonnull %8) #13
  store ptr null, ptr %7, align 8, !tbaa !256
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %13) #13
  store ptr null, ptr %12, align 8, !tbaa !97
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 43
  %18 = load ptr, ptr %17, align 8, !tbaa !258
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @GPU_texture_free(ptr noundef nonnull %18) #13
  store ptr null, ptr %17, align 8, !tbaa !258
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !257
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %23) #13
  store ptr null, ptr %22, align 8, !tbaa !257
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

declare ptr @GPU_texture_create_depth(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GPU_framebuffer_texture_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GPU_texture_create_vsm_shadow_map(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_framebuffer_restore() local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_lamp_shadow_buffer_bind(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @GPU_lamp_update_buffer_mats(ptr noundef %0)
  tail call void @glDisable(i32 noundef 3089) #13
  %5 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = tail call i32 @GPU_texture_opengl_width(ptr noundef %8) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !96
  %11 = tail call i32 @GPU_texture_opengl_height(ptr noundef %10) #13
  tail call void @GPU_framebuffer_texture_bind(ptr noundef %6, ptr noundef %8, i32 noundef %9, i32 noundef %11) #13
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !222
  %14 = getelementptr inbounds %struct.Lamp, ptr %13, i64 0, i32 48
  %15 = load i16, ptr %14, align 2, !tbaa !255
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = tail call ptr @GPU_shader_get_builtin_shader(i32 noundef 1) #13
  tail call void @GPU_shader_bind(ptr noundef %18) #13
  br label %19

19:                                               ; preds = %17, %4
  %20 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %20) #13
  %21 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 35
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %21) #13
  %22 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 32
  %23 = load i32, ptr %22, align 4, !tbaa !227
  store i32 %23, ptr %2, align 4, !tbaa !109
  ret void
}

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @GPU_framebuffer_texture_bind(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GPU_texture_opengl_width(ptr noundef) local_unnamed_addr #2

declare i32 @GPU_texture_opengl_height(ptr noundef) local_unnamed_addr #2

declare void @GPU_shader_bind(ptr noundef) local_unnamed_addr #2

declare ptr @GPU_shader_get_builtin_shader(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_lamp_shadow_buffer_unbind(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 48
  %5 = load i16, ptr %4, align 2, !tbaa !255
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  tail call void @GPU_shader_unbind() #13
  %8 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 40
  %13 = load ptr, ptr %12, align 8, !tbaa !257
  %14 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 43
  %15 = load ptr, ptr %14, align 8, !tbaa !258
  tail call void @GPU_framebuffer_blur(ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15) #13
  br label %16

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  %19 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  tail call void @GPU_framebuffer_texture_unbind(ptr noundef %18, ptr noundef %20) #13
  tail call void @GPU_framebuffer_restore() #13
  tail call void @glEnable(i32 noundef 3089) #13
  ret void
}

declare void @GPU_shader_unbind() local_unnamed_addr #2

declare void @GPU_framebuffer_blur(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_framebuffer_texture_unbind(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_lamp_shadow_buffer_type(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 48
  %5 = load i16, ptr %4, align 2, !tbaa !255
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_lamp_shadow_layer(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !88
  %12 = and i32 %11, 32772
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !87
  br label %17

17:                                               ; preds = %1, %5, %9, %14
  %18 = phi i32 [ %16, %14 ], [ -1, %9 ], [ -1, %5 ], [ -1, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_lamp_get_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 9
  %10 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = tail call ptr @GPU_dynamic_uniform(ptr noundef nonnull %9, i32 noundef 11, ptr noundef %11) #13
  store ptr %12, ptr %2, align 8, !tbaa !34
  %13 = tail call fastcc ptr @lamp_get_visibility(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4)
  tail call fastcc void @shade_light_textures(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  %14 = load ptr, ptr %1, align 8, !tbaa !94
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 37, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !95
  %17 = and i32 %16, 320
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 41
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 39
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = icmp eq ptr %25, null
  br i1 %26, label %65, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %28 = tail call ptr @GPU_builtin(i32 noundef 32) #13
  %29 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %28, ptr noundef nonnull %7) #13
  %30 = load ptr, ptr %7, align 8, !tbaa !34
  %31 = load ptr, ptr %3, align 8, !tbaa !34
  %32 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %30, ptr noundef %31, ptr noundef nonnull %8) #13
  %33 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !93
  %35 = or i32 %34, 8
  store i32 %35, ptr %33, align 4, !tbaa !93
  %36 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !222
  %38 = getelementptr inbounds %struct.Lamp, ptr %37, i64 0, i32 48
  %39 = load i16, ptr %38, align 2, !tbaa !255
  %40 = icmp eq i16 %39, 1
  %41 = call ptr @GPU_builtin(i32 noundef 16) #13
  %42 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 41
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = load ptr, ptr %10, align 8, !tbaa !63
  %45 = call ptr @GPU_dynamic_texture(ptr noundef %43, i32 noundef 14, ptr noundef %44) #13
  %46 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 38
  %47 = load ptr, ptr %10, align 8, !tbaa !63
  %48 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %46, i32 noundef 9, ptr noundef %47) #13
  %49 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 29
  %50 = call ptr @GPU_uniform(ptr noundef nonnull %49) #13
  br i1 %40, label %51, label %59

51:                                               ; preds = %27
  %52 = load ptr, ptr %36, align 8, !tbaa !222
  %53 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 30
  %54 = call ptr @GPU_uniform(ptr noundef nonnull %53) #13
  %55 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 28
  %56 = call ptr @GPU_uniform(ptr noundef nonnull %55) #13
  %57 = load ptr, ptr %8, align 8, !tbaa !34
  %58 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %41, ptr noundef %45, ptr noundef %48, ptr noundef %50, ptr noundef %54, ptr noundef %56, ptr noundef %57, ptr noundef %5) #13
  br label %64

59:                                               ; preds = %27
  %60 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 28
  %61 = call ptr @GPU_uniform(ptr noundef nonnull %60) #13
  %62 = load ptr, ptr %8, align 8, !tbaa !34
  %63 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %41, ptr noundef %45, ptr noundef %48, ptr noundef %50, ptr noundef %61, ptr noundef %62, ptr noundef %5) #13
  br label %64

64:                                               ; preds = %59, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %67

65:                                               ; preds = %19, %6, %23
  %66 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %5) #13
  br label %67

67:                                               ; preds = %65, %64
  %68 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 17
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %70 = call ptr %69(i64 noundef 24, ptr noundef nonnull @.str.162) #13
  %71 = getelementptr inbounds %struct.LinkData, ptr %70, i64 0, i32 2
  store ptr %1, ptr %71, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %68, ptr noundef %70) #13
  %72 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 44
  %73 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !89
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %76 = call ptr %75(i64 noundef 24, ptr noundef nonnull @.str.162) #13
  %77 = getelementptr inbounds %struct.LinkData, ptr %76, i64 0, i32 2
  store ptr %74, ptr %77, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %72, ptr noundef %76) #13
  ret ptr %13
}

declare ptr @GPU_dynamic_uniform(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lamp_get_visibility(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %9 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !221
  switch i32 %10, label %20 [
    i32 1, label %11
    i32 3, label %11
  ]

11:                                               ; preds = %4, %4
  %12 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !93
  %14 = or i32 %13, 2
  store i32 %14, ptr %12, align 4, !tbaa !93
  %15 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 15
  %16 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = tail call ptr @GPU_dynamic_uniform(ptr noundef nonnull %15, i32 noundef 6, ptr noundef %17) #13
  %19 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %18, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #13
  br label %120

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !93
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !93
  %24 = tail call ptr @GPU_builtin(i32 noundef 16) #13
  %25 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 14
  %26 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = tail call ptr @GPU_dynamic_uniform(ptr noundef nonnull %25, i32 noundef 7, ptr noundef %27) #13
  %29 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.151, ptr noundef %24, ptr noundef %28, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #13
  %30 = load i32, ptr %9, align 8, !tbaa !221
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %120, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 33
  %34 = load i32, ptr %33, align 8, !tbaa !245
  switch i32 %34, label %71 [
    i32 3, label %59
    i32 1, label %35
    i32 2, label %41
    i32 4, label %47
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %37 = load ptr, ptr %26, align 8, !tbaa !63
  %38 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %36, i32 noundef 16, ptr noundef %37) #13
  %39 = load ptr, ptr %3, align 8, !tbaa !34
  %40 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.152, ptr noundef %38, ptr noundef %39, ptr noundef nonnull %5) #13
  br label %71

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %43 = load ptr, ptr %26, align 8, !tbaa !63
  %44 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %42, i32 noundef 16, ptr noundef %43) #13
  %45 = load ptr, ptr %3, align 8, !tbaa !34
  %46 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.153, ptr noundef %44, ptr noundef %45, ptr noundef nonnull %5) #13
  br label %71

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %49 = load ptr, ptr %26, align 8, !tbaa !63
  %50 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %48, i32 noundef 16, ptr noundef %49) #13
  %51 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 26
  %52 = load ptr, ptr %26, align 8, !tbaa !63
  %53 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %51, i32 noundef 17, ptr noundef %52) #13
  %54 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 27
  %55 = load ptr, ptr %26, align 8, !tbaa !63
  %56 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %54, i32 noundef 18, ptr noundef %55) #13
  %57 = load ptr, ptr %3, align 8, !tbaa !34
  %58 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.154, ptr noundef %50, ptr noundef %53, ptr noundef %56, ptr noundef %57, ptr noundef nonnull %5) #13
  br label %71

59:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %60 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 34
  %61 = load ptr, ptr %60, align 8, !tbaa !249
  call void @curvemapping_initialize(ptr noundef %61) #13
  %62 = load ptr, ptr %60, align 8, !tbaa !249
  call void @curvemapping_table_RGBA(ptr noundef %62, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %63 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %64 = load ptr, ptr %26, align 8, !tbaa !63
  %65 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %63, i32 noundef 16, ptr noundef %64) #13
  %66 = load i32, ptr %8, align 4, !tbaa !109
  %67 = load ptr, ptr %7, align 8, !tbaa !34
  %68 = call ptr @GPU_texture(i32 noundef %66, ptr noundef %67) #13
  %69 = load ptr, ptr %3, align 8, !tbaa !34
  %70 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.155, ptr noundef %65, ptr noundef %68, ptr noundef %69, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %71

71:                                               ; preds = %32, %59, %47, %41, %35
  %72 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !88
  %74 = and i32 %73, 64
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %78 = load ptr, ptr %26, align 8, !tbaa !63
  %79 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %77, i32 noundef 16, ptr noundef %78) #13
  %80 = load ptr, ptr %3, align 8, !tbaa !34
  %81 = load ptr, ptr %5, align 8, !tbaa !34
  %82 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef nonnull %5) #13
  br label %83

83:                                               ; preds = %76, %71
  %84 = load i32, ptr %9, align 8, !tbaa !221
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %117

86:                                               ; preds = %83
  %87 = load i32, ptr %72, align 4, !tbaa !88
  %88 = and i32 %87, 128
  %89 = icmp eq i32 %88, 0
  %90 = load i32, ptr %21, align 4, !tbaa !93
  %91 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 15
  br i1 %89, label %101, label %92

92:                                               ; preds = %86
  %93 = or i32 %90, 6
  store i32 %93, ptr %21, align 4, !tbaa !93
  %94 = load ptr, ptr %26, align 8, !tbaa !63
  %95 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %91, i32 noundef 6, ptr noundef %94) #13
  %96 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 18
  %97 = load ptr, ptr %26, align 8, !tbaa !63
  %98 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %96, i32 noundef 8, ptr noundef %97) #13
  %99 = load ptr, ptr %2, align 8, !tbaa !34
  %100 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef %95, ptr noundef %98, ptr noundef %99, ptr noundef nonnull %6) #13
  br label %107

101:                                              ; preds = %86
  %102 = or i32 %90, 2
  store i32 %102, ptr %21, align 4, !tbaa !93
  %103 = load ptr, ptr %26, align 8, !tbaa !63
  %104 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %91, i32 noundef 6, ptr noundef %103) #13
  %105 = load ptr, ptr %2, align 8, !tbaa !34
  %106 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.158, ptr noundef %104, ptr noundef %105, ptr noundef nonnull %6) #13
  br label %107

107:                                              ; preds = %101, %92
  %108 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 19
  %109 = load ptr, ptr %26, align 8, !tbaa !63
  %110 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %108, i32 noundef 19, ptr noundef %109) #13
  %111 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 20
  %112 = load ptr, ptr %26, align 8, !tbaa !63
  %113 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %111, i32 noundef 19, ptr noundef %112) #13
  %114 = load ptr, ptr %6, align 8, !tbaa !34
  %115 = load ptr, ptr %5, align 8, !tbaa !34
  %116 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.159, ptr noundef %110, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef nonnull %5) #13
  br label %117

117:                                              ; preds = %107, %83
  %118 = load ptr, ptr %5, align 8, !tbaa !34
  %119 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.160, ptr noundef %118, ptr noundef nonnull %5) #13
  br label %120

120:                                              ; preds = %20, %117, %11
  %121 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %121
}

; Function Attrs: nounwind uwtable
define internal fastcc void @shade_light_textures(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store float 1.000000e+00, ptr %5, align 4, !tbaa !92
  %6 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 38
  %9 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 1
  br label %10

10:                                               ; preds = %3, %47
  %11 = phi i64 [ 0, %3 ], [ %48, %47 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.Lamp, ptr %12, i64 0, i32 69, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = getelementptr inbounds %struct.Tex, ptr %18, i64 0, i32 32
  %20 = load i16, ptr %19, align 8, !tbaa !128
  %21 = and i16 %20, 8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Tex, ptr %18, i64 0, i32 54
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %7, align 4, !tbaa !93
  %29 = or i32 %28, 8
  store i32 %29, ptr %7, align 4, !tbaa !93
  %30 = call ptr @GPU_builtin(i32 noundef 16) #13
  %31 = load ptr, ptr %17, align 8, !tbaa !124
  %32 = getelementptr inbounds %struct.Tex, ptr %31, i64 0, i32 54
  %33 = load ptr, ptr %32, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.Tex, ptr %31, i64 0, i32 51
  %35 = call ptr @GPU_image(ptr noundef %33, ptr noundef nonnull %34, i8 noundef zeroext 0) #13
  %36 = load ptr, ptr %9, align 8, !tbaa !63
  %37 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %8, i32 noundef 9, ptr noundef %36) #13
  %38 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.161, ptr noundef %30, ptr noundef %35, ptr noundef %37, ptr noundef nonnull %4) #13
  %39 = load ptr, ptr %4, align 8, !tbaa !34
  %40 = load ptr, ptr %2, align 8, !tbaa !34
  %41 = call ptr @GPU_uniform(ptr noundef nonnull %5) #13
  %42 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 28
  %43 = call ptr @GPU_uniform(ptr noundef nonnull %42) #13
  %44 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !138
  %46 = sext i16 %45 to i32
  call fastcc void @texture_rgb_blend(ptr noundef %0, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %43, i32 noundef %46, ptr noundef nonnull %2)
  br label %47

47:                                               ; preds = %10, %16, %23, %27
  %48 = add nuw nsw i64 %11, 1
  %49 = icmp eq i64 %48, 18
  br i1 %49, label %50, label %10, !llvm.loop !262

50:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

declare ptr @GPU_dynamic_texture(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_shader_export(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = tail call i32 @GPU_glsl_support() #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %226, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @GPU_material_from_blender(ptr noundef %0, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.GPUMaterial, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %226, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.GPUPass, ptr %13, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !263
  %18 = icmp eq ptr %17, null
  br i1 %18, label %226, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.GPUPass, ptr %13, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !265
  %22 = icmp eq ptr %21, null
  br i1 %22, label %226, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %25 = tail call ptr %24(i64 noundef 48, ptr noundef nonnull @.str.29) #13
  %26 = getelementptr inbounds %struct.GPUPass, ptr %13, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %119, %23
  %30 = getelementptr inbounds %struct.GPUMaterial, ptr %7, i64 0, i32 7
  br label %122

31:                                               ; preds = %23, %119
  %32 = phi ptr [ %120, %119 ], [ %27, %23 ]
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = call ptr %33(i64 noundef 96, ptr noundef nonnull @.str.30) #13
  %35 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !266
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 3
  store i32 13, ptr %39, align 8, !tbaa !268
  %40 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 4
  store i32 1, ptr %40, align 4, !tbaa !270
  %41 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 6
  store ptr %36, ptr %41, align 8, !tbaa !271
  %42 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !272
  %44 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 7
  store i32 %43, ptr %44, align 8, !tbaa !273
  %45 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 2
  %46 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 21
  %47 = call ptr @BLI_strncpy(ptr noundef nonnull %45, ptr noundef nonnull %46, i64 noundef 32) #13
  br label %112

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !274
  %51 = icmp eq ptr %50, null
  br i1 %51, label %87, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 6
  %54 = load i32, ptr %53, align 4, !tbaa !272
  %55 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 7
  store i32 %54, ptr %55, align 8, !tbaa !273
  %56 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 4
  store i32 1, ptr %56, align 4, !tbaa !270
  %57 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 2
  %58 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 21
  %59 = call ptr @BLI_strncpy(ptr noundef nonnull %57, ptr noundef nonnull %58, i64 noundef 32) #13
  %60 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 11
  %61 = load i32, ptr %60, align 8, !tbaa !275
  switch i32 %61, label %112 [
    i32 1003, label %62
    i32 1002, label %67
  ]

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 3
  store i32 14, ptr %63, align 8, !tbaa !268
  %64 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !276
  %66 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 5
  store ptr %65, ptr %66, align 8, !tbaa !277
  br label %112

67:                                               ; preds = %52
  %68 = load ptr, ptr %49, align 8, !tbaa !274
  %69 = call i32 @GPU_texture_opengl_bindcode(ptr noundef %68) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %112, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 3
  store i32 12, ptr %72, align 8, !tbaa !268
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %3) #13
  %73 = load ptr, ptr %49, align 8, !tbaa !274
  %74 = call i32 @GPU_texture_opengl_bindcode(ptr noundef %73) #13
  call void @glBindTexture(i32 noundef 3553, i32 noundef %74) #13
  %75 = load ptr, ptr %49, align 8, !tbaa !274
  %76 = call i32 @GPU_texture_opengl_width(ptr noundef %75) #13
  %77 = load ptr, ptr %49, align 8, !tbaa !274
  %78 = call i32 @GPU_texture_opengl_height(ptr noundef %77) #13
  %79 = mul nsw i32 %78, %76
  %80 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 9
  store i32 %79, ptr %80, align 8, !tbaa !278
  %81 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %82 = shl nsw i32 %79, 2
  %83 = sext i32 %82 to i64
  %84 = call ptr %81(i64 noundef %83, ptr noundef nonnull @.str.31) #13
  %85 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 8
  store ptr %84, ptr %85, align 8, !tbaa !279
  call void @glGetTexImage(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %84) #13
  %86 = load i32, ptr %3, align 4, !tbaa !109
  call void @glBindTexture(i32 noundef 3553, i32 noundef %86) #13
  br label %112

87:                                               ; preds = %48
  %88 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 17
  %89 = load i32, ptr %88, align 8, !tbaa !280
  %90 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 3
  store i32 %89, ptr %90, align 8, !tbaa !268
  %91 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 2
  %92 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 21
  %93 = call ptr @BLI_strncpy(ptr noundef nonnull %91, ptr noundef nonnull %92, i64 noundef 32) #13
  %94 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !281
  switch i32 %95, label %104 [
    i32 1, label %101
    i32 2, label %96
    i32 3, label %97
    i32 4, label %98
    i32 9, label %99
    i32 16, label %100
  ]

96:                                               ; preds = %87
  br label %101

97:                                               ; preds = %87
  br label %101

98:                                               ; preds = %87
  br label %101

99:                                               ; preds = %87
  br label %101

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %87, %96, %97, %98, %99, %100
  %102 = phi i32 [ 7, %100 ], [ 6, %99 ], [ 5, %98 ], [ 4, %97 ], [ 3, %96 ], [ 2, %87 ]
  %103 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 4
  store i32 %102, ptr %103, align 4, !tbaa !270
  br label %104

104:                                              ; preds = %101, %87
  %105 = load i32, ptr %90, align 8, !tbaa !268
  %106 = add i32 %105, -6
  %107 = icmp ult i32 %106, 6
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 18
  %110 = load ptr, ptr %109, align 8, !tbaa !276
  %111 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 5
  store ptr %110, ptr %111, align 8, !tbaa !277
  br label %112

112:                                              ; preds = %67, %71, %52, %62, %108, %104, %38
  %113 = getelementptr inbounds %struct.GPUInputUniform, ptr %34, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !268
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  call void @BLI_addtail(ptr noundef %25, ptr noundef %34) #13
  br label %119

117:                                              ; preds = %112
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %118(ptr noundef %34) #13
  br label %119

119:                                              ; preds = %116, %117
  %120 = load ptr, ptr %32, align 8, !tbaa !34
  %121 = icmp eq ptr %120, null
  br i1 %121, label %29, label %31, !llvm.loop !282

122:                                              ; preds = %29, %140
  %123 = phi i64 [ 0, %29 ], [ %141, %140 ]
  %124 = phi i32 [ 1, %29 ], [ %143, %140 ]
  %125 = load i32, ptr %30, align 8, !tbaa !99
  %126 = and i32 %125, %124
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %130 = call ptr %129(i64 noundef 96, ptr noundef nonnull @.str.30) #13
  %131 = getelementptr inbounds [7 x %struct.anon.0], ptr @GPU_shader_export.builtins, i64 0, i64 %123, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !283
  %133 = getelementptr inbounds %struct.GPUInputUniform, ptr %130, i64 0, i32 3
  store i32 %132, ptr %133, align 8, !tbaa !268
  %134 = getelementptr inbounds [7 x %struct.anon.0], ptr @GPU_shader_export.builtins, i64 0, i64 %123, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !285
  %136 = getelementptr inbounds %struct.GPUInputUniform, ptr %130, i64 0, i32 4
  store i32 %135, ptr %136, align 4, !tbaa !270
  %137 = getelementptr inbounds %struct.GPUInputUniform, ptr %130, i64 0, i32 2
  %138 = call ptr @GPU_builtin_name(i32 noundef %124) #13
  %139 = call ptr @BLI_strncpy(ptr noundef nonnull %137, ptr noundef %138, i64 noundef 32) #13
  call void @BLI_addtail(ptr noundef %25, ptr noundef %130) #13
  br label %140

140:                                              ; preds = %122, %128
  %141 = add nuw nsw i64 %123, 1
  %142 = getelementptr inbounds [7 x %struct.anon.0], ptr @GPU_shader_export.builtins, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !286
  %144 = icmp eq i64 %141, 6
  br i1 %144, label %145, label %122, !llvm.loop !287

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.GPUPass, ptr %13, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !288
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %147) #14
  %151 = trunc i64 %150 to i32
  br label %152

152:                                              ; preds = %145, %149
  %153 = phi i32 [ %151, %149 ], [ 0, %145 ]
  %154 = load ptr, ptr %16, align 8, !tbaa !263
  %155 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %154) #14
  %156 = trunc i64 %155 to i32
  %157 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %158 = add nsw i32 %153, %156
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = call ptr %157(i64 noundef %160, ptr noundef nonnull @.str.32) #13
  %162 = getelementptr inbounds %struct.GPUShaderExport, ptr %25, i64 0, i32 3
  store ptr %161, ptr %162, align 8, !tbaa !289
  %163 = load ptr, ptr %146, align 8, !tbaa !288
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %152
  %166 = sext i32 %153 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %161, ptr nonnull align 1 %163, i64 %166, i1 false)
  br label %167

167:                                              ; preds = %165, %152
  %168 = load ptr, ptr %162, align 8, !tbaa !289
  %169 = sext i32 %153 to i64
  %170 = getelementptr inbounds i8, ptr %168, i64 %169
  %171 = load ptr, ptr %16, align 8, !tbaa !263
  %172 = shl i64 %155, 32
  %173 = ashr exact i64 %172, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %170, ptr align 1 %171, i64 %173, i1 false)
  %174 = load ptr, ptr %162, align 8, !tbaa !289
  %175 = sext i32 %158 to i64
  %176 = getelementptr inbounds i8, ptr %174, i64 %175
  store i8 0, ptr %176, align 1, !tbaa !108
  %177 = getelementptr inbounds %struct.GPUMaterial, ptr %7, i64 0, i32 5, i32 1
  %178 = load i32, ptr %177, align 8, !tbaa !291
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %222

180:                                              ; preds = %167
  %181 = getelementptr inbounds %struct.GPUMaterial, ptr %7, i64 0, i32 5
  %182 = getelementptr inbounds %struct.GPUShaderExport, ptr %25, i64 0, i32 1
  br label %183

183:                                              ; preds = %180, %217
  %184 = phi i64 [ 0, %180 ], [ %218, %217 ]
  %185 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %186 = call ptr %185(i64 noundef 72, ptr noundef nonnull @.str.33) #13
  %187 = getelementptr inbounds [32 x %struct.anon], ptr %181, i64 0, i64 %184
  %188 = load i32, ptr %187, align 8, !tbaa !292
  %189 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 3
  store i32 %188, ptr %189, align 8, !tbaa !293
  %190 = getelementptr inbounds [32 x %struct.anon], ptr %181, i64 0, i64 %184, i32 1
  %191 = load i32, ptr %190, align 4, !tbaa !205
  %192 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 6
  store i32 %191, ptr %192, align 8, !tbaa !295
  %193 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 2
  %194 = getelementptr inbounds [32 x %struct.anon], ptr %181, i64 0, i64 %184, i32 3
  %195 = load i32, ptr %194, align 4, !tbaa !203
  %196 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %193, i64 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %195) #13
  %197 = load i32, ptr %189, align 8, !tbaa !293
  switch i32 %197, label %210 [
    i32 18, label %198
    i32 5, label %200
    i32 6, label %204
    i32 14, label %208
  ]

198:                                              ; preds = %183
  %199 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 4
  store i32 5, ptr %199, align 4, !tbaa !296
  br label %210

200:                                              ; preds = %183
  %201 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 4
  store i32 3, ptr %201, align 4, !tbaa !296
  %202 = getelementptr inbounds [32 x %struct.anon], ptr %181, i64 0, i64 %184, i32 4
  %203 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 5
  store ptr %202, ptr %203, align 8, !tbaa !297
  br label %210

204:                                              ; preds = %183
  %205 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 4
  store i32 8, ptr %205, align 4, !tbaa !296
  %206 = getelementptr inbounds [32 x %struct.anon], ptr %181, i64 0, i64 %184, i32 4
  %207 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 5
  store ptr %206, ptr %207, align 8, !tbaa !297
  br label %210

208:                                              ; preds = %183
  %209 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 4
  store i32 4, ptr %209, align 4, !tbaa !296
  br label %210

210:                                              ; preds = %183, %208, %204, %200, %198
  %211 = getelementptr inbounds %struct.GPUInputAttribute, ptr %186, i64 0, i32 4
  %212 = load i32, ptr %211, align 4, !tbaa !296
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  call void @BLI_addtail(ptr noundef nonnull %182, ptr noundef %186) #13
  br label %217

215:                                              ; preds = %210
  %216 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %216(ptr noundef %186) #13
  br label %217

217:                                              ; preds = %214, %215
  %218 = add nuw nsw i64 %184, 1
  %219 = load i32, ptr %177, align 8, !tbaa !291
  %220 = sext i32 %219 to i64
  %221 = icmp slt i64 %218, %220
  br i1 %221, label %183, label %222, !llvm.loop !298

222:                                              ; preds = %217, %167
  %223 = load ptr, ptr %20, align 8, !tbaa !265
  %224 = call ptr @BLI_strdup(ptr noundef %223) #13
  %225 = getelementptr inbounds %struct.GPUShaderExport, ptr %25, i64 0, i32 2
  store ptr %224, ptr %225, align 8, !tbaa !299
  br label %226

226:                                              ; preds = %12, %15, %19, %222, %2
  %227 = phi ptr [ null, %2 ], [ %25, %222 ], [ null, %19 ], [ null, %15 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %227
}

declare i32 @GPU_glsl_support() local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GPU_texture_opengl_bindcode(ptr noundef) local_unnamed_addr #2

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glGetTexImage(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GPU_builtin_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_free_shader_export(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3, %13
  %7 = phi ptr [ %14, %13 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.GPUInputUniform, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !279
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #13
  br label %13

13:                                               ; preds = %6, %11
  %14 = load ptr, ptr %7, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !llvm.loop !300

16:                                               ; preds = %13, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #13
  %17 = getelementptr inbounds %struct.GPUShaderExport, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %17) #13
  %18 = getelementptr inbounds %struct.GPUShaderExport, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !299
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #13
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %struct.GPUShaderExport, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !289
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %25) #13
  br label %29

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %0) #13
  br label %31

31:                                               ; preds = %1, %29
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare ptr @GPU_image(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @texture_rgb_blend(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  store ptr %6, ptr %8, align 8, !tbaa !34
  switch i32 %5, label %41 [
    i32 0, label %9
    i32 1, label %11
    i32 8, label %13
    i32 9, label %15
    i32 3, label %17
    i32 2, label %19
    i32 4, label %21
    i32 6, label %23
    i32 5, label %25
    i32 7, label %27
    i32 10, label %29
    i32 11, label %31
    i32 12, label %33
    i32 13, label %35
    i32 15, label %37
    i32 16, label %39
  ]

9:                                                ; preds = %7
  %10 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

11:                                               ; preds = %7
  %12 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

13:                                               ; preds = %7
  %14 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

15:                                               ; preds = %7
  %16 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

17:                                               ; preds = %7
  %18 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

19:                                               ; preds = %7
  %20 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

21:                                               ; preds = %7
  %22 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

23:                                               ; preds = %7
  %24 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.81, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

25:                                               ; preds = %7
  %26 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.82, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

27:                                               ; preds = %7
  %28 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

29:                                               ; preds = %7
  %30 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

31:                                               ; preds = %7
  %32 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

33:                                               ; preds = %7
  %34 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.86, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

35:                                               ; preds = %7
  %36 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.87, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

37:                                               ; preds = %7
  %38 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

39:                                               ; preds = %7
  %40 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.89, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %43

41:                                               ; preds = %7
  %42 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #13
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GPU_bicubic_bump_support() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @texture_value_blend(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  store ptr %6, ptr %8, align 8, !tbaa !34
  switch i32 %5, label %27 [
    i32 0, label %9
    i32 1, label %11
    i32 8, label %13
    i32 3, label %15
    i32 2, label %17
    i32 4, label %19
    i32 6, label %21
    i32 5, label %23
    i32 7, label %25
  ]

9:                                                ; preds = %7
  %10 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

11:                                               ; preds = %7
  %12 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

13:                                               ; preds = %7
  %14 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

15:                                               ; preds = %7
  %16 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

17:                                               ; preds = %7
  %18 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

19:                                               ; preds = %7
  %20 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

21:                                               ; preds = %7
  %22 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

23:                                               ; preds = %7
  %24 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

25:                                               ; preds = %7
  %26 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #13
  br label %29

27:                                               ; preds = %7
  %28 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.99, ptr noundef nonnull %8) #13
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  ret void
}

declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @shade_one_light(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca float, align 4
  %20 = alloca [4 x [4 x float]], align 16
  %21 = alloca float, align 4
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !116
  %27 = load ptr, ptr %0, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  store ptr null, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #13
  store float 1.000000e+00, ptr %19, align 4, !tbaa !92
  %28 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !88
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 51
  %34 = load i32, ptr %33, align 4, !tbaa !121
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %475, label %37

37:                                               ; preds = %32, %3
  %38 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !118
  %40 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !119
  %42 = call fastcc ptr @lamp_get_visibility(ptr noundef %27, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %43 = load ptr, ptr %9, align 8, !tbaa !34
  %44 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %27, ptr noundef nonnull @.str.25, ptr noundef %39, ptr noundef %43, ptr noundef nonnull %12) #13
  %45 = load i32, ptr %28, align 4, !tbaa !88
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  %49 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %27, ptr noundef nonnull @.str.101, ptr noundef nonnull %11) #13
  br label %106

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !221
  switch i32 %52, label %73 [
    i32 3, label %53
    i32 4, label %56
  ]

53:                                               ; preds = %50
  %54 = load ptr, ptr %12, align 8, !tbaa !34
  %55 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %27, ptr noundef nonnull @.str.102, ptr noundef %54, ptr noundef nonnull %11) #13
  br label %106

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %20, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #13
  store float 0.000000e+00, ptr %21, align 4, !tbaa !92
  %57 = getelementptr inbounds %struct.GPUMaterial, ptr %27, i64 0, i32 10
  %58 = load i32, ptr %57, align 4, !tbaa !93
  %59 = or i32 %58, 3
  store i32 %59, ptr %57, align 4, !tbaa !93
  %60 = call ptr @GPU_builtin(i32 noundef 16) #13
  %61 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 14
  %62 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !63
  %64 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %61, i32 noundef 7, ptr noundef %63) #13
  %65 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 15
  %66 = load ptr, ptr %62, align 8, !tbaa !63
  %67 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %65, i32 noundef 6, ptr noundef %66) #13
  %68 = call ptr @GPU_uniform(ptr noundef nonnull %20) #13
  %69 = call ptr @GPU_uniform(ptr noundef nonnull %21) #13
  %70 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 21
  %71 = call ptr @GPU_uniform(ptr noundef nonnull %70) #13
  %72 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %27, ptr noundef nonnull @.str.103, ptr noundef %60, ptr noundef %64, ptr noundef %67, ptr noundef %39, ptr noundef %68, ptr noundef %69, ptr noundef %71, ptr noundef nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #13
  br label %73

73:                                               ; preds = %50, %56
  %74 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %74, ptr %11, align 8, !tbaa !34
  %75 = load ptr, ptr %27, align 8, !tbaa !64
  %76 = getelementptr inbounds %struct.Scene, ptr %75, i64 0, i32 37, i32 18
  %77 = load i32, ptr %76, align 8, !tbaa !95
  %78 = and i32 %77, 128
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 83
  %82 = load i16, ptr %81, align 8, !tbaa !301
  switch i16 %82, label %106 [
    i16 1, label %83
    i16 2, label %88
    i16 3, label %95
    i16 4, label %99
  ]

83:                                               ; preds = %80
  %84 = load ptr, ptr %9, align 8, !tbaa !34
  %85 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 85
  %86 = call ptr @GPU_uniform(ptr noundef nonnull %85) #13
  %87 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.104, ptr noundef %74, ptr noundef %39, ptr noundef %84, ptr noundef %41, ptr noundef %86, ptr noundef nonnull %11) #13
  br label %106

88:                                               ; preds = %80
  %89 = load ptr, ptr %9, align 8, !tbaa !34
  %90 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 87
  %91 = call ptr @GPU_uniform(ptr noundef nonnull %90) #13
  %92 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 87, i64 1
  %93 = call ptr @GPU_uniform(ptr noundef nonnull %92) #13
  %94 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.105, ptr noundef %39, ptr noundef %89, ptr noundef %41, ptr noundef %91, ptr noundef %93, ptr noundef nonnull %11) #13
  br label %106

95:                                               ; preds = %80
  %96 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 89
  %97 = call ptr @GPU_uniform(ptr noundef nonnull %96) #13
  %98 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.106, ptr noundef %74, ptr noundef %39, ptr noundef %41, ptr noundef %97, ptr noundef nonnull %11) #13
  br label %106

99:                                               ; preds = %80
  %100 = load ptr, ptr %9, align 8, !tbaa !34
  %101 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 87
  %102 = call ptr @GPU_uniform(ptr noundef nonnull %101) #13
  %103 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 87, i64 1
  %104 = call ptr @GPU_uniform(ptr noundef nonnull %103) #13
  %105 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.107, ptr noundef %39, ptr noundef %100, ptr noundef %41, ptr noundef %102, ptr noundef %104, ptr noundef nonnull %11) #13
  br label %106

106:                                              ; preds = %80, %53, %83, %95, %99, %88, %73, %48
  %107 = load ptr, ptr %27, align 8, !tbaa !64
  %108 = getelementptr inbounds %struct.Scene, ptr %107, i64 0, i32 37, i32 18
  %109 = load i32, ptr %108, align 8, !tbaa !95
  %110 = and i32 %109, 128
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 50
  %114 = load i16, ptr %113, align 2, !tbaa !196
  %115 = and i16 %114, 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %11, align 8, !tbaa !34
  %119 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.108, ptr noundef %118, ptr noundef nonnull %11) #13
  br label %120

120:                                              ; preds = %112, %117, %106
  %121 = load ptr, ptr %11, align 8, !tbaa !34
  store ptr %121, ptr %13, align 8, !tbaa !34
  %122 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !148
  %124 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.109, ptr noundef %121, ptr noundef %42, ptr noundef %123, ptr noundef nonnull %13) #13
  %125 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 9
  %126 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !63
  %128 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %125, i32 noundef 11, ptr noundef %127) #13
  %129 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str, ptr noundef %128, ptr noundef nonnull %18) #13
  call fastcc void @shade_light_textures(ptr noundef nonnull %27, ptr noundef %2, ptr noundef nonnull %18)
  %130 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 8
  %131 = load ptr, ptr %126, align 8, !tbaa !63
  %132 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %130, i32 noundef 10, ptr noundef %131) #13
  %133 = load ptr, ptr %18, align 8, !tbaa !34
  %134 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.110, ptr noundef %132, ptr noundef %133, ptr noundef nonnull %18) #13
  %135 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 51
  %136 = load i32, ptr %135, align 4, !tbaa !121
  %137 = and i32 %136, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %235, label %139

139:                                              ; preds = %120
  %140 = load ptr, ptr %2, align 8, !tbaa !94
  %141 = getelementptr inbounds %struct.Scene, ptr %140, i64 0, i32 37, i32 18
  %142 = load i32, ptr %141, align 8, !tbaa !95
  %143 = and i32 %142, 320
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 41
  %147 = load ptr, ptr %146, align 8, !tbaa !96
  %148 = icmp eq ptr %147, null
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 39
  %151 = load ptr, ptr %150, align 8, !tbaa !97
  %152 = icmp ne ptr %151, null
  %153 = zext i1 %152 to i8
  br label %154

154:                                              ; preds = %139, %145, %149
  %155 = phi i8 [ 0, %145 ], [ 0, %139 ], [ %153, %149 ]
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %235, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %27, align 8, !tbaa !64
  %159 = getelementptr inbounds %struct.Scene, ptr %158, i64 0, i32 37, i32 18
  %160 = load i32, ptr %159, align 8, !tbaa !95
  %161 = and i32 %160, 256
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %260

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.GPUMaterial, ptr %27, i64 0, i32 10
  %165 = load i32, ptr %164, align 4, !tbaa !93
  %166 = or i32 %165, 8
  store i32 %166, ptr %164, align 4, !tbaa !93
  %167 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !222
  %169 = getelementptr inbounds %struct.Lamp, ptr %168, i64 0, i32 48
  %170 = load i16, ptr %169, align 2, !tbaa !255
  %171 = icmp eq i16 %170, 1
  %172 = call ptr @GPU_builtin(i32 noundef 16) #13
  %173 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 41
  %174 = load ptr, ptr %173, align 8, !tbaa !96
  %175 = load ptr, ptr %126, align 8, !tbaa !63
  %176 = call ptr @GPU_dynamic_texture(ptr noundef %174, i32 noundef 14, ptr noundef %175) #13
  %177 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 38
  %178 = load ptr, ptr %126, align 8, !tbaa !63
  %179 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %177, i32 noundef 9, ptr noundef %178) #13
  %180 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 29
  %181 = call ptr @GPU_uniform(ptr noundef nonnull %180) #13
  br i1 %171, label %182, label %188

182:                                              ; preds = %163
  %183 = load ptr, ptr %167, align 8, !tbaa !222
  %184 = getelementptr inbounds %struct.Lamp, ptr %183, i64 0, i32 30
  %185 = call ptr @GPU_uniform(ptr noundef nonnull %184) #13
  %186 = load ptr, ptr %12, align 8, !tbaa !34
  %187 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.111, ptr noundef %172, ptr noundef %176, ptr noundef %179, ptr noundef %181, ptr noundef %185, ptr noundef %186, ptr noundef nonnull %17) #13
  br label %191

188:                                              ; preds = %163
  %189 = load ptr, ptr %12, align 8, !tbaa !34
  %190 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.112, ptr noundef %172, ptr noundef %176, ptr noundef %179, ptr noundef %181, ptr noundef %189, ptr noundef nonnull %17) #13
  br label %191

191:                                              ; preds = %188, %182
  %192 = load i32, ptr %28, align 4, !tbaa !88
  %193 = and i32 %192, 32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %260, label %195

195:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #13
  %196 = load ptr, ptr %13, align 8, !tbaa !34
  %197 = load ptr, ptr %17, align 8, !tbaa !34
  %198 = load ptr, ptr %126, align 8, !tbaa !63
  %199 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %130, i32 noundef 10, ptr noundef %198) #13
  %200 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 28
  %201 = call ptr @GPU_uniform(ptr noundef nonnull %200) #13
  %202 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.113, ptr noundef %196, ptr noundef %197, ptr noundef %199, ptr noundef %201, ptr noundef nonnull %22) #13
  %203 = load i32, ptr %28, align 4, !tbaa !88
  %204 = and i32 %203, 2048
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %195
  %207 = load ptr, ptr %22, align 8, !tbaa !34
  %208 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !122
  %210 = load ptr, ptr %1, align 8, !tbaa !160
  %211 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.114, ptr noundef %207, ptr noundef %209, ptr noundef %210, ptr noundef nonnull %1) #13
  br label %212

212:                                              ; preds = %206, %195
  %213 = load i32, ptr %28, align 4, !tbaa !88
  %214 = and i32 %213, 4096
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %212
  %217 = load ptr, ptr %22, align 8, !tbaa !34
  %218 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !140
  %220 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !178
  %222 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.115, ptr noundef %217, ptr noundef %219, ptr noundef %221, ptr noundef nonnull %220) #13
  br label %223

223:                                              ; preds = %216, %212
  %224 = getelementptr inbounds %struct.GPUMaterial, ptr %27, i64 0, i32 17
  %225 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %226 = call ptr %225(i64 noundef 24, ptr noundef nonnull @.str.162) #13
  %227 = getelementptr inbounds %struct.LinkData, ptr %226, i64 0, i32 2
  store ptr %2, ptr %227, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %224, ptr noundef %226) #13
  %228 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 44
  %229 = load ptr, ptr %0, align 8, !tbaa !114
  %230 = getelementptr inbounds %struct.GPUMaterial, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !89
  %232 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %233 = call ptr %232(i64 noundef 24, ptr noundef nonnull @.str.162) #13
  %234 = getelementptr inbounds %struct.LinkData, ptr %233, i64 0, i32 2
  store ptr %231, ptr %234, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %228, ptr noundef %233) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  br label %475

235:                                              ; preds = %154, %120
  %236 = load ptr, ptr %27, align 8, !tbaa !64
  %237 = getelementptr inbounds %struct.Scene, ptr %236, i64 0, i32 37, i32 18
  %238 = load i32, ptr %237, align 8, !tbaa !95
  %239 = and i32 %238, 256
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %257, label %241

241:                                              ; preds = %235
  %242 = load i32, ptr %28, align 4, !tbaa !88
  %243 = and i32 %242, 32
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %257, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.GPUMaterial, ptr %27, i64 0, i32 17
  %247 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %248 = call ptr %247(i64 noundef 24, ptr noundef nonnull @.str.162) #13
  %249 = getelementptr inbounds %struct.LinkData, ptr %248, i64 0, i32 2
  store ptr %2, ptr %249, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %246, ptr noundef %248) #13
  %250 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 44
  %251 = load ptr, ptr %0, align 8, !tbaa !114
  %252 = getelementptr inbounds %struct.GPUMaterial, ptr %251, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !89
  %254 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %255 = call ptr %254(i64 noundef 24, ptr noundef nonnull @.str.162) #13
  %256 = getelementptr inbounds %struct.LinkData, ptr %255, i64 0, i32 2
  store ptr %253, ptr %256, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %250, ptr noundef %255) #13
  br label %475

257:                                              ; preds = %241, %235
  %258 = call ptr @GPU_uniform(ptr noundef nonnull %19) #13
  %259 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.2, ptr noundef %258, ptr noundef nonnull %17) #13
  br label %260

260:                                              ; preds = %157, %191, %257
  %261 = load ptr, ptr %122, align 8, !tbaa !148
  %262 = call i32 @GPU_link_changed(ptr noundef %261) #13
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 22
  %266 = load float, ptr %265, align 4, !tbaa !302
  %267 = fcmp une float %266, 0.000000e+00
  br i1 %267, label %268, label %332

268:                                              ; preds = %264, %260
  %269 = load i32, ptr %28, align 4, !tbaa !88
  %270 = and i32 %269, 2048
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %332

272:                                              ; preds = %268
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #13
  %273 = load ptr, ptr %13, align 8, !tbaa !34
  %274 = load ptr, ptr %18, align 8, !tbaa !34
  %275 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.11, ptr noundef %273, ptr noundef %274, ptr noundef nonnull %23) #13
  %276 = load ptr, ptr %17, align 8, !tbaa !34
  %277 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.46, ptr noundef %276, ptr noundef nonnull %17) #13
  %278 = load ptr, ptr %17, align 8, !tbaa !34
  %279 = load ptr, ptr %23, align 8, !tbaa !34
  %280 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 28
  %281 = call ptr @GPU_uniform(ptr noundef nonnull %280) #13
  %282 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.116, ptr noundef %278, ptr noundef %279, ptr noundef %281, ptr noundef nonnull %23) #13
  %283 = load ptr, ptr %17, align 8, !tbaa !34
  %284 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.46, ptr noundef %283, ptr noundef nonnull %17) #13
  %285 = load ptr, ptr %11, align 8, !tbaa !34
  %286 = load ptr, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %287 = load ptr, ptr %27, align 8, !tbaa !64
  %288 = getelementptr inbounds %struct.Scene, ptr %287, i64 0, i32 37, i32 18
  %289 = load i32, ptr %288, align 8, !tbaa !95
  %290 = and i32 %289, 512
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %325

292:                                              ; preds = %272
  %293 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 92
  %294 = load ptr, ptr %293, align 8, !tbaa !186
  %295 = icmp eq ptr %294, null
  br i1 %295, label %325, label %296

296:                                              ; preds = %292
  %297 = load i32, ptr %135, align 4, !tbaa !121
  %298 = and i32 %297, 1048576
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %325, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 94
  %302 = load i8, ptr %301, align 8, !tbaa !187
  switch i8 %302, label %313 [
    i8 3, label %303
    i8 1, label %306
    i8 0, label %308
    i8 2, label %309
  ]

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !122
  store ptr %305, ptr %8, align 8, !tbaa !34
  br label %328

306:                                              ; preds = %300
  %307 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.127, ptr noundef %286, ptr noundef nonnull %6) #13
  br label %315

308:                                              ; preds = %300
  store ptr %285, ptr %6, align 8, !tbaa !34
  br label %315

309:                                              ; preds = %300
  %310 = load ptr, ptr %40, align 8, !tbaa !119
  %311 = load ptr, ptr %38, align 8, !tbaa !118
  %312 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.128, ptr noundef %310, ptr noundef %311, ptr noundef nonnull %7, ptr noundef nonnull %6) #13
  br label %315

313:                                              ; preds = %300
  %314 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.99, ptr noundef nonnull %6) #13
  br label %315

315:                                              ; preds = %313, %309, %308, %306
  %316 = load ptr, ptr %293, align 8, !tbaa !186
  %317 = load ptr, ptr %6, align 8, !tbaa !34
  %318 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 100
  %319 = load float, ptr %318, align 8, !tbaa !188
  %320 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 96
  %321 = load i8, ptr %320, align 2, !tbaa !189
  %322 = zext i8 %321 to i32
  %323 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !122
  call fastcc void @do_colorband_blend(ptr noundef nonnull %27, ptr noundef %316, ptr noundef %317, float noundef %319, i32 noundef %322, ptr noundef %324, ptr noundef nonnull %8)
  br label %328

325:                                              ; preds = %296, %292, %272
  %326 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !122
  store ptr %327, ptr %8, align 8, !tbaa !34
  br label %328

328:                                              ; preds = %303, %315, %325
  %329 = load ptr, ptr %1, align 8, !tbaa !34
  %330 = load ptr, ptr %8, align 8, !tbaa !34
  %331 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.129, ptr noundef %329, ptr noundef %286, ptr noundef %330, ptr noundef nonnull %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #13
  br label %332

332:                                              ; preds = %268, %328, %264
  %333 = load ptr, ptr %27, align 8, !tbaa !64
  %334 = getelementptr inbounds %struct.Scene, ptr %333, i64 0, i32 37, i32 18
  %335 = load i32, ptr %334, align 8, !tbaa !95
  %336 = and i32 %335, 128
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %463

338:                                              ; preds = %332
  %339 = load i32, ptr %28, align 4, !tbaa !88
  %340 = and i32 %339, 4128
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %463

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 10
  %344 = load ptr, ptr %343, align 8, !tbaa !150
  %345 = call i32 @GPU_link_changed(ptr noundef %344) #13
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 23
  %349 = load float, ptr %348, align 8, !tbaa !194
  %350 = fcmp une float %349, 0.000000e+00
  br i1 %350, label %351, label %463

351:                                              ; preds = %347, %342
  %352 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 4
  %353 = load i32, ptr %352, align 8, !tbaa !221
  %354 = icmp eq i32 %353, 3
  br i1 %354, label %355, label %371

355:                                              ; preds = %351
  %356 = load ptr, ptr %9, align 8, !tbaa !34
  %357 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 23
  %358 = call ptr @GPU_uniform(ptr noundef nonnull %357) #13
  %359 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %360 = load ptr, ptr %359, align 8, !tbaa !154
  %361 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.117, ptr noundef %39, ptr noundef %356, ptr noundef %41, ptr noundef %358, ptr noundef %360, ptr noundef %42, ptr noundef nonnull %16) #13
  %362 = load ptr, ptr %16, align 8, !tbaa !34
  %363 = load ptr, ptr %18, align 8, !tbaa !34
  %364 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %365 = load ptr, ptr %364, align 8, !tbaa !140
  %366 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.118, ptr noundef %362, ptr noundef %363, ptr noundef %365, ptr noundef nonnull %14) #13
  %367 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !178
  %369 = load ptr, ptr %14, align 8, !tbaa !34
  %370 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.119, ptr noundef %368, ptr noundef %369, ptr noundef nonnull %367) #13
  br label %463

371:                                              ; preds = %351
  %372 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 84
  %373 = load i16, ptr %372, align 2, !tbaa !303
  %374 = load ptr, ptr %9, align 8, !tbaa !34
  switch i16 %373, label %393 [
    i16 1, label %375
    i16 0, label %379
    i16 2, label %383
    i16 4, label %389
  ]

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %377 = load ptr, ptr %376, align 8, !tbaa !154
  %378 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.120, ptr noundef %39, ptr noundef %374, ptr noundef %41, ptr noundef %377, ptr noundef nonnull %15) #13
  br label %399

379:                                              ; preds = %371
  %380 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %381 = load ptr, ptr %380, align 8, !tbaa !154
  %382 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.121, ptr noundef %39, ptr noundef %374, ptr noundef %41, ptr noundef %381, ptr noundef nonnull %15) #13
  br label %399

383:                                              ; preds = %371
  %384 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 86
  %385 = call ptr @GPU_uniform(ptr noundef nonnull %384) #13
  %386 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %387 = load ptr, ptr %386, align 8, !tbaa !154
  %388 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.122, ptr noundef %39, ptr noundef %374, ptr noundef %41, ptr noundef %385, ptr noundef %387, ptr noundef nonnull %15) #13
  br label %399

389:                                              ; preds = %371
  %390 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 88
  %391 = call ptr @GPU_uniform(ptr noundef nonnull %390) #13
  %392 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.123, ptr noundef %39, ptr noundef %374, ptr noundef %41, ptr noundef %391, ptr noundef nonnull %15) #13
  br label %399

393:                                              ; preds = %371
  %394 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 87, i64 2
  %395 = call ptr @GPU_uniform(ptr noundef nonnull %394) #13
  %396 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 87, i64 3
  %397 = call ptr @GPU_uniform(ptr noundef nonnull %396) #13
  %398 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.124, ptr noundef %39, ptr noundef %374, ptr noundef %41, ptr noundef %395, ptr noundef %397, ptr noundef nonnull %15) #13
  br label %399

399:                                              ; preds = %379, %389, %393, %383, %375
  %400 = load i32, ptr %352, align 8, !tbaa !221
  %401 = icmp eq i32 %400, 4
  br i1 %401, label %402, label %406

402:                                              ; preds = %399
  %403 = load ptr, ptr %15, align 8, !tbaa !34
  %404 = load ptr, ptr %12, align 8, !tbaa !34
  %405 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.125, ptr noundef %403, ptr noundef %404, ptr noundef nonnull %15) #13
  br label %406

406:                                              ; preds = %402, %399
  %407 = load ptr, ptr %17, align 8, !tbaa !34
  %408 = load ptr, ptr %343, align 8, !tbaa !150
  %409 = load ptr, ptr %15, align 8, !tbaa !34
  %410 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.126, ptr noundef %407, ptr noundef %408, ptr noundef %42, ptr noundef %409, ptr noundef nonnull %16) #13
  %411 = load i32, ptr %135, align 4, !tbaa !121
  %412 = and i32 %411, 2097152
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %453, label %414

414:                                              ; preds = %406
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #13
  %415 = load ptr, ptr %15, align 8, !tbaa !34
  %416 = load ptr, ptr %16, align 8, !tbaa !34
  %417 = load ptr, ptr %25, align 8, !tbaa !116
  %418 = load ptr, ptr %0, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %419 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %420 = load ptr, ptr %419, align 8, !tbaa !140
  store ptr %420, ptr %24, align 8, !tbaa !34
  %421 = getelementptr inbounds %struct.Material, ptr %417, i64 0, i32 93
  %422 = load ptr, ptr %421, align 8, !tbaa !190
  %423 = icmp eq ptr %422, null
  br i1 %423, label %444, label %424

424:                                              ; preds = %414
  %425 = getelementptr inbounds %struct.Material, ptr %417, i64 0, i32 95
  %426 = load i8, ptr %425, align 1, !tbaa !191
  switch i8 %426, label %433 [
    i8 3, label %444
    i8 1, label %427
    i8 0, label %428
    i8 2, label %429
  ]

427:                                              ; preds = %424
  store ptr %416, ptr %4, align 8, !tbaa !34
  br label %435

428:                                              ; preds = %424
  store ptr %415, ptr %4, align 8, !tbaa !34
  br label %435

429:                                              ; preds = %424
  %430 = load ptr, ptr %40, align 8, !tbaa !119
  %431 = load ptr, ptr %38, align 8, !tbaa !118
  %432 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %418, ptr noundef nonnull @.str.128, ptr noundef %430, ptr noundef %431, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %435

433:                                              ; preds = %424
  %434 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %418, ptr noundef nonnull @.str.99, ptr noundef nonnull %4) #13
  br label %435

435:                                              ; preds = %433, %429, %428, %427
  %436 = load ptr, ptr %421, align 8, !tbaa !190
  %437 = load ptr, ptr %4, align 8, !tbaa !34
  %438 = getelementptr inbounds %struct.Material, ptr %417, i64 0, i32 101
  %439 = load float, ptr %438, align 4, !tbaa !192
  %440 = getelementptr inbounds %struct.Material, ptr %417, i64 0, i32 97
  %441 = load i8, ptr %440, align 1, !tbaa !193
  %442 = zext i8 %441 to i32
  %443 = load ptr, ptr %24, align 8, !tbaa !34
  call fastcc void @do_colorband_blend(ptr noundef %418, ptr noundef %436, ptr noundef %437, float noundef %439, i32 noundef %442, ptr noundef %443, ptr noundef nonnull %24)
  br label %444

444:                                              ; preds = %414, %424, %435
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %445 = load ptr, ptr %16, align 8, !tbaa !34
  %446 = load ptr, ptr %18, align 8, !tbaa !34
  %447 = load ptr, ptr %24, align 8, !tbaa !34
  %448 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.118, ptr noundef %445, ptr noundef %446, ptr noundef %447, ptr noundef nonnull %14) #13
  %449 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !178
  %451 = load ptr, ptr %14, align 8, !tbaa !34
  %452 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.119, ptr noundef %450, ptr noundef %451, ptr noundef nonnull %449) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #13
  br label %463

453:                                              ; preds = %406
  %454 = load ptr, ptr %16, align 8, !tbaa !34
  %455 = load ptr, ptr %18, align 8, !tbaa !34
  %456 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %457 = load ptr, ptr %456, align 8, !tbaa !140
  %458 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.118, ptr noundef %454, ptr noundef %455, ptr noundef %457, ptr noundef nonnull %14) #13
  %459 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !178
  %461 = load ptr, ptr %14, align 8, !tbaa !34
  %462 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %27, ptr noundef nonnull @.str.119, ptr noundef %460, ptr noundef %461, ptr noundef nonnull %459) #13
  br label %463

463:                                              ; preds = %338, %347, %444, %453, %355, %332
  %464 = getelementptr inbounds %struct.GPUMaterial, ptr %27, i64 0, i32 17
  %465 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %466 = call ptr %465(i64 noundef 24, ptr noundef nonnull @.str.162) #13
  %467 = getelementptr inbounds %struct.LinkData, ptr %466, i64 0, i32 2
  store ptr %2, ptr %467, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %464, ptr noundef %466) #13
  %468 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 44
  %469 = load ptr, ptr %0, align 8, !tbaa !114
  %470 = getelementptr inbounds %struct.GPUMaterial, ptr %469, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !89
  %472 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %473 = call ptr %472(i64 noundef 24, ptr noundef nonnull @.str.162) #13
  %474 = getelementptr inbounds %struct.LinkData, ptr %473, i64 0, i32 2
  store ptr %471, ptr %474, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef nonnull %468, ptr noundef %473) #13
  br label %475

475:                                              ; preds = %32, %463, %245, %223
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  ret void
}

declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_colorband_blend(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca float, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %2, ptr %8, align 8, !tbaa !34
  store float %3, ptr %9, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #13
  call void @colorband_table_RGBA(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %14) #13
  %15 = load ptr, ptr %8, align 8, !tbaa !34
  %16 = load i32, ptr %14, align 4, !tbaa !109
  %17 = load ptr, ptr %13, align 8, !tbaa !34
  %18 = call ptr @GPU_texture(i32 noundef %16, ptr noundef %17) #13
  %19 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.130, ptr noundef %15, ptr noundef %18, ptr noundef nonnull %12, ptr noundef nonnull %10) #13
  %20 = load ptr, ptr %12, align 8, !tbaa !34
  %21 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %20, ptr noundef nonnull %11) #13
  %22 = load ptr, ptr %11, align 8, !tbaa !34
  %23 = call ptr @GPU_uniform(ptr noundef nonnull %9) #13
  %24 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %22, ptr noundef %23, ptr noundef nonnull %8) #13
  %25 = load ptr, ptr %8, align 8, !tbaa !34
  %26 = load ptr, ptr %12, align 8, !tbaa !34
  %27 = zext nneg i32 %4 to i64
  %28 = shl i64 %27, 2
  %29 = call ptr @llvm.load.relative.i64(ptr @reltable.do_colorband_blend, i64 %28)
  %30 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef %29, ptr noundef %25, ptr noundef %5, ptr noundef %26, ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  ret void
}

declare void @colorband_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GPU_texture(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GPU_image_preview(ptr noundef) local_unnamed_addr #2

declare ptr @GPU_opengl_builtin(i32 noundef) local_unnamed_addr #2

declare ptr @GPU_generate_pass(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GPU_shader_get_uniform(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GPU_shader_get_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #2

declare void @GPU_framebuffer_free(ptr noundef) local_unnamed_addr #2

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

declare void @curvemapping_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !35, i64 16}
!39 = !{!"LinkData", !35, i64 0, !35, i64 8, !35, i64 16}
!40 = !{!41, !35, i64 40}
!41 = !{!"GPUMaterial", !35, i64 0, !35, i64 8, !42, i64 16, !35, i64 32, !35, i64 40, !43, i64 48, !44, i64 2612, !44, i64 2616, !44, i64 2620, !44, i64 2624, !44, i64 2628, !44, i64 2632, !44, i64 2636, !44, i64 2640, !44, i64 2644, !44, i64 2648, !44, i64 2652, !42, i64 2656}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"GPUVertexAttribs", !36, i64 0, !44, i64 2560}
!44 = !{!"int", !36, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!49, !35, i64 696}
!49 = !{!"GPULamp", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !50, i64 48, !36, i64 52, !50, i64 64, !36, i64 68, !36, i64 80, !36, i64 92, !36, i64 104, !36, i64 116, !36, i64 128, !36, i64 192, !36, i64 256, !50, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !50, i64 340, !50, i64 344, !50, i64 348, !50, i64 352, !36, i64 356, !50, i64 368, !50, i64 372, !50, i64 376, !44, i64 380, !44, i64 384, !35, i64 392, !36, i64 400, !36, i64 464, !36, i64 528, !36, i64 592, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !42, i64 696}
!50 = !{!"float", !36, i64 0}
!51 = !{!39, !35, i64 0}
!52 = distinct !{!52, !46, !47}
!53 = distinct !{!53, !46, !47}
!54 = !{!55, !35, i64 88}
!55 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !50, i64 124, !56, i64 128}
!56 = !{!"FreestyleConfig", !42, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !42, i64 40}
!57 = !{!58, !35, i64 784}
!58 = !{!"Material", !59, i64 0, !35, i64 120, !60, i64 128, !60, i64 130, !50, i64 132, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !50, i64 200, !50, i64 204, !50, i64 208, !50, i64 212, !50, i64 216, !50, i64 220, !61, i64 224, !62, i64 312, !50, i64 328, !50, i64 332, !50, i64 336, !50, i64 340, !50, i64 344, !50, i64 348, !50, i64 352, !60, i64 356, !60, i64 358, !60, i64 360, !36, i64 362, !36, i64 363, !50, i64 364, !50, i64 368, !60, i64 372, !60, i64 374, !50, i64 376, !50, i64 380, !50, i64 384, !50, i64 388, !60, i64 392, !60, i64 394, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !60, i64 412, !60, i64 414, !60, i64 416, !60, i64 418, !50, i64 420, !50, i64 424, !50, i64 428, !50, i64 432, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !50, i64 456, !36, i64 460, !50, i64 524, !50, i64 528, !50, i64 532, !44, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !60, i64 544, !60, i64 546, !60, i64 548, !36, i64 550, !36, i64 551, !60, i64 552, !60, i64 554, !50, i64 556, !50, i64 560, !36, i64 564, !50, i64 580, !50, i64 584, !60, i64 588, !60, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !60, i64 612, !60, i64 614, !50, i64 616, !50, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !50, i64 800, !50, i64 804, !50, i64 808, !50, i64 812, !50, i64 816, !60, i64 820, !60, i64 822, !36, i64 824, !36, i64 836, !50, i64 848, !50, i64 852, !50, i64 856, !50, i64 860, !50, i64 864, !50, i64 868, !50, i64 872, !60, i64 876, !60, i64 878, !44, i64 880, !60, i64 884, !60, i64 886, !36, i64 888, !60, i64 904, !60, i64 906, !60, i64 908, !60, i64 910, !60, i64 912, !36, i64 914, !35, i64 920, !42, i64 928}
!59 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !60, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!60 = !{!"short", !36, i64 0}
!61 = !{!"VolumeSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !50, i64 52, !50, i64 56, !50, i64 60, !60, i64 64, !60, i64 66, !60, i64 68, !60, i64 70, !50, i64 72, !50, i64 76, !50, i64 80, !50, i64 84}
!62 = !{!"GameSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!63 = !{!49, !35, i64 8}
!64 = !{!41, !35, i64 0}
!65 = !{!66, !60, i64 888}
!66 = !{!"Scene", !59, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !60, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !67, i64 280, !76, i64 4264, !42, i64 4296, !42, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !60, i64 4376, !60, i64 4378, !44, i64 4380, !42, i64 4384, !77, i64 4400, !78, i64 4416, !81, i64 4600, !35, i64 4608, !82, i64 4616, !35, i64 4640, !83, i64 4648, !83, i64 4656, !69, i64 4664, !70, i64 4824, !84, i64 4888, !35, i64 4952}
!67 = !{!"RenderData", !68, i64 0, !35, i64 248, !35, i64 256, !71, i64 264, !72, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !50, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !60, i64 432, !60, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !60, i64 456, !60, i64 458, !60, i64 460, !60, i64 462, !60, i64 464, !60, i64 466, !44, i64 468, !60, i64 472, !60, i64 474, !60, i64 476, !60, i64 478, !60, i64 480, !60, i64 482, !44, i64 484, !44, i64 488, !60, i64 492, !60, i64 494, !44, i64 496, !44, i64 500, !60, i64 504, !60, i64 506, !60, i64 508, !60, i64 510, !60, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !60, i64 528, !60, i64 530, !60, i64 532, !60, i64 534, !60, i64 536, !60, i64 538, !60, i64 540, !60, i64 542, !73, i64 544, !73, i64 560, !74, i64 576, !42, i64 592, !60, i64 608, !60, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !44, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !60, i64 648, !60, i64 650, !60, i64 652, !60, i64 654, !60, i64 656, !60, i64 658, !50, i64 660, !50, i64 664, !60, i64 668, !60, i64 670, !50, i64 672, !50, i64 676, !36, i64 680, !44, i64 1704, !60, i64 1708, !60, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !60, i64 2524, !60, i64 2526, !50, i64 2528, !50, i64 2532, !60, i64 2536, !60, i64 2538, !50, i64 2540, !60, i64 2544, !60, i64 2546, !44, i64 2548, !60, i64 2552, !60, i64 2554, !60, i64 2556, !60, i64 2558, !50, i64 2560, !50, i64 2564, !35, i64 2568, !44, i64 2576, !50, i64 2580, !36, i64 2584, !75, i64 2616, !44, i64 3976, !44, i64 3980}
!68 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !60, i64 8, !60, i64 10, !50, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !69, i64 24, !70, i64 184}
!69 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !50, i64 136, !50, i64 140, !35, i64 144, !35, i64 152}
!70 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!71 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !60, i64 48, !60, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!72 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !50, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!73 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!74 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!75 = !{!"BakeData", !68, i64 0, !36, i64 248, !60, i64 1272, !60, i64 1274, !60, i64 1276, !60, i64 1278, !50, i64 1280, !50, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!76 = !{!"AudioData", !44, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !44, i64 16, !60, i64 20, !60, i64 22, !50, i64 24, !50, i64 28}
!77 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!78 = !{!"GameData", !77, i64 0, !60, i64 16, !60, i64 18, !60, i64 20, !60, i64 22, !60, i64 24, !60, i64 26, !60, i64 28, !60, i64 30, !60, i64 32, !36, i64 34, !79, i64 40, !60, i64 64, !60, i64 66, !50, i64 68, !80, i64 72, !50, i64 128, !50, i64 132, !44, i64 136, !60, i64 140, !60, i64 142, !60, i64 144, !60, i64 146, !60, i64 148, !60, i64 150, !60, i64 152, !60, i64 154, !60, i64 156, !60, i64 158, !60, i64 160, !60, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!79 = !{!"GameDome", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6, !50, i64 8, !50, i64 12, !35, i64 16}
!80 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !44, i64 40, !50, i64 44, !50, i64 48, !60, i64 52, !60, i64 54}
!81 = !{!"UnitSettings", !50, i64 0, !36, i64 4, !36, i64 5, !60, i64 6}
!82 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!83 = !{!"long", !36, i64 0}
!84 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!85 = !{!55, !44, i64 96}
!86 = !{!49, !44, i64 44}
!87 = !{!49, !44, i64 40}
!88 = !{!49, !44, i64 36}
!89 = !{!41, !35, i64 8}
!90 = !{!49, !50, i64 64}
!91 = !{!49, !50, i64 48}
!92 = !{!50, !50, i64 0}
!93 = !{!41, !44, i64 2628}
!94 = !{!49, !35, i64 0}
!95 = !{!66, !44, i64 4552}
!96 = !{!49, !35, i64 672}
!97 = !{!49, !35, i64 656}
!98 = distinct !{!98, !46, !47}
!99 = !{!41, !44, i64 2616}
!100 = !{!41, !44, i64 2632}
!101 = !{!41, !44, i64 2636}
!102 = !{!41, !44, i64 2612}
!103 = !{!41, !44, i64 2640}
!104 = !{!41, !44, i64 2644}
!105 = !{!41, !44, i64 2648}
!106 = !{!41, !44, i64 2652}
!107 = !{i64 0, i64 2560, !108, i64 2560, i64 4, !109}
!108 = !{!36, !36, i64 0}
!109 = !{!44, !44, i64 0}
!110 = !{!41, !35, i64 32}
!111 = !{!41, !44, i64 2620}
!112 = !{!41, !44, i64 2624}
!113 = !{!58, !60, i64 360}
!114 = !{!115, !35, i64 0}
!115 = !{!"GPUShadeInput", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104}
!116 = !{!115, !35, i64 8}
!117 = !{!115, !35, i64 48}
!118 = !{!115, !35, i64 32}
!119 = !{!115, !35, i64 40}
!120 = !{!66, !35, i64 136}
!121 = !{!58, !44, i64 396}
!122 = !{!115, !35, i64 16}
!123 = !{!58, !44, i64 536}
!124 = !{!125, !35, i64 16}
!125 = !{!"MTex", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !50, i64 116, !60, i64 120, !60, i64 122, !60, i64 124, !60, i64 126, !60, i64 128, !60, i64 130, !36, i64 132, !36, i64 133, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !50, i64 200, !50, i64 204, !50, i64 208, !50, i64 212, !50, i64 216, !50, i64 220, !50, i64 224, !50, i64 228, !50, i64 232, !50, i64 236, !50, i64 240, !50, i64 244, !50, i64 248, !50, i64 252, !50, i64 256, !50, i64 260, !50, i64 264, !50, i64 268, !50, i64 272, !50, i64 276, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308}
!126 = !{!125, !60, i64 0}
!127 = !{!115, !35, i64 56}
!128 = !{!129, !60, i64 232}
!129 = !{!"Tex", !59, i64 0, !35, i64 120, !50, i64 128, !50, i64 132, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !50, i64 200, !50, i64 204, !50, i64 208, !50, i64 212, !60, i64 216, !60, i64 218, !60, i64 220, !60, i64 222, !60, i64 224, !60, i64 226, !60, i64 228, !60, i64 230, !60, i64 232, !60, i64 234, !50, i64 236, !50, i64 240, !50, i64 244, !50, i64 248, !44, i64 252, !44, i64 256, !60, i64 260, !60, i64 262, !60, i64 264, !60, i64 266, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !130, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!130 = !{!"ImageUser", !35, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !60, i64 28, !60, i64 30, !60, i64 32, !60, i64 34, !44, i64 36}
!131 = !{!129, !35, i64 352}
!132 = !{!129, !60, i64 228}
!133 = !{!134, !60, i64 1246}
!134 = !{!"Image", !59, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !60, i64 1240, !60, i64 1242, !60, i64 1244, !60, i64 1246, !60, i64 1248, !60, i64 1250, !44, i64 1252, !60, i64 1256, !60, i64 1258, !60, i64 1260, !60, i64 1262, !60, i64 1264, !60, i64 1266, !44, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !50, i64 1296, !44, i64 1300, !60, i64 1304, !60, i64 1306, !44, i64 1308, !44, i64 1312, !36, i64 1316, !36, i64 1317, !60, i64 1318, !36, i64 1320, !50, i64 1336, !50, i64 1340, !84, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!135 = !{!125, !60, i64 120}
!136 = !{!125, !60, i64 2}
!137 = !{!125, !50, i64 164}
!138 = !{!125, !60, i64 6}
!139 = !{!125, !50, i64 184}
!140 = !{!115, !35, i64 24}
!141 = !{!125, !50, i64 172}
!142 = !{!125, !60, i64 128}
!143 = !{!144, !44, i64 16}
!144 = !{!"ImBuf", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !36, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !50, i64 112, !36, i64 120, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !35, i64 296, !35, i64 304, !44, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !44, i64 2376, !35, i64 2384, !44, i64 2392, !44, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !44, i64 2432, !74, i64 2436, !145, i64 2456}
!145 = !{!"DDSData", !44, i64 0, !44, i64 4, !35, i64 8, !44, i64 16}
!146 = !{!144, !44, i64 20}
!147 = !{!125, !50, i64 196}
!148 = !{!115, !35, i64 72}
!149 = !{!125, !50, i64 200}
!150 = !{!115, !35, i64 80}
!151 = !{!125, !50, i64 204}
!152 = !{!115, !35, i64 88}
!153 = !{!125, !50, i64 208}
!154 = !{!115, !35, i64 96}
!155 = !{!125, !50, i64 192}
!156 = !{!115, !35, i64 64}
!157 = !{!125, !50, i64 220}
!158 = !{!115, !35, i64 104}
!159 = distinct !{!159, !46, !47}
!160 = !{!161, !35, i64 0}
!161 = !{!"GPUShadeResult", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!162 = !{!161, !35, i64 16}
!163 = !{!58, !50, i64 184}
!164 = !{!165, !35, i64 32}
!165 = !{!"Base", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !60, i64 28, !60, i64 30, !35, i64 32}
!166 = !{!167, !60, i64 136}
!167 = !{!"Object", !59, i64 0, !35, i64 120, !35, i64 128, !60, i64 136, !60, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !168, i64 312, !35, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !44, i64 432, !44, i64 436, !35, i64 440, !35, i64 448, !44, i64 456, !44, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !50, i64 616, !50, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !44, i64 944, !60, i64 948, !60, i64 950, !60, i64 952, !60, i64 954, !60, i64 956, !60, i64 958, !60, i64 960, !60, i64 962, !60, i64 964, !36, i64 966, !36, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !60, i64 1036, !60, i64 1038, !60, i64 1040, !36, i64 1042, !36, i64 1043, !60, i64 1044, !36, i64 1046, !36, i64 1047, !50, i64 1048, !50, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !50, i64 1120, !60, i64 1124, !60, i64 1126, !36, i64 1128, !44, i64 1144, !44, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !60, i64 1162, !36, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !60, i64 1266, !50, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !83, i64 1304, !83, i64 1312, !44, i64 1320, !44, i64 1324, !42, i64 1328, !42, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !42, i64 1400, !35, i64 1416}
!168 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !60, i64 16, !60, i64 18, !60, i64 20, !60, i64 22, !60, i64 24, !60, i64 26, !60, i64 28, !60, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!169 = !{!167, !60, i64 952}
!170 = !{!171, !35, i64 0}
!171 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !42, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !60, i64 2084, !60, i64 2086, !60, i64 2088, !36, i64 2090, !60, i64 2092, !44, i64 2096, !44, i64 2100, !36, i64 2104, !44, i64 2108, !44, i64 2112, !36, i64 2116}
!172 = !{!173, !35, i64 1888}
!173 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !60, i64 1040, !60, i64 1042, !60, i64 1044, !60, i64 1046, !83, i64 1048, !36, i64 1056, !60, i64 1072, !35, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!174 = !{!175, !35, i64 16}
!175 = !{!"DupliObject", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !60, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !35, i64 144}
!176 = distinct !{!176, !46, !47}
!177 = distinct !{!177, !46, !47}
!178 = !{!161, !35, i64 8}
!179 = !{!180, !50, i64 176}
!180 = !{!"World", !59, i64 0, !35, i64 120, !60, i64 128, !60, i64 130, !60, i64 132, !60, i64 134, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !60, i64 200, !60, i64 202, !60, i64 204, !60, i64 206, !60, i64 208, !60, i64 210, !60, i64 212, !60, i64 214, !50, i64 216, !50, i64 220, !50, i64 224, !50, i64 228, !50, i64 232, !50, i64 236, !50, i64 240, !50, i64 244, !50, i64 248, !50, i64 252, !50, i64 256, !50, i64 260, !60, i64 264, !60, i64 266, !60, i64 268, !60, i64 270, !50, i64 272, !50, i64 276, !50, i64 280, !50, i64 284, !60, i64 288, !60, i64 290, !60, i64 292, !60, i64 294, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !60, i64 324, !60, i64 326, !60, i64 328, !60, i64 330, !60, i64 332, !60, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !60, i64 504, !60, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!181 = !{!180, !50, i64 180}
!182 = !{!180, !50, i64 160}
!183 = !{!180, !50, i64 164}
!184 = !{!180, !50, i64 168}
!185 = !{!58, !50, i64 180}
!186 = !{!58, !35, i64 592}
!187 = !{!58, !36, i64 608}
!188 = !{!58, !50, i64 616}
!189 = !{!58, !36, i64 610}
!190 = !{!58, !35, i64 600}
!191 = !{!58, !36, i64 609}
!192 = !{!58, !50, i64 620}
!193 = !{!58, !36, i64 611}
!194 = !{!58, !50, i64 208}
!195 = !{!161, !35, i64 24}
!196 = !{!58, !60, i64 394}
!197 = !{!180, !60, i64 202}
!198 = !{!180, !60, i64 134}
!199 = !{!58, !50, i64 200}
!200 = distinct !{!200, !46, !47}
!201 = !{!58, !35, i64 792}
!202 = !{!43, !44, i64 2560}
!203 = !{!204, !44, i64 12}
!204 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !36, i64 16}
!205 = !{!204, !44, i64 4}
!206 = !{i64 0, i64 4, !109, i64 4, i64 4, !109, i64 8, i64 4, !109, i64 12, i64 4, !109, i64 16, i64 64, !108}
!207 = distinct !{!207, !46, !47}
!208 = distinct !{!208, !46, !47}
!209 = !{!58, !35, i64 768}
!210 = !{!58, !36, i64 543}
!211 = distinct !{!211, !46, !47}
!212 = !{!58, !35, i64 928}
!213 = distinct !{!213, !46, !47}
!214 = distinct !{!214, !46, !47}
!215 = distinct !{!215, !46, !47}
!216 = !{!49, !50, i64 344}
!217 = !{!49, !50, i64 348}
!218 = !{!49, !50, i64 352}
!219 = !{!49, !50, i64 320}
!220 = !{!49, !50, i64 324}
!221 = !{!49, !44, i64 32}
!222 = !{!49, !35, i64 24}
!223 = !{!224, !50, i64 336}
!224 = !{!"Lamp", !59, i64 0, !35, i64 120, !60, i64 128, !60, i64 130, !44, i64 132, !60, i64 136, !60, i64 138, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !35, i64 200, !60, i64 208, !60, i64 210, !50, i64 212, !50, i64 216, !50, i64 220, !50, i64 224, !50, i64 228, !50, i64 232, !50, i64 236, !60, i64 240, !60, i64 242, !60, i64 244, !60, i64 246, !36, i64 248, !36, i64 249, !60, i64 250, !60, i64 252, !60, i64 254, !60, i64 256, !60, i64 258, !50, i64 260, !50, i64 264, !50, i64 268, !50, i64 272, !60, i64 276, !60, i64 278, !60, i64 280, !60, i64 282, !60, i64 284, !60, i64 286, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !60, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !60, i64 496, !60, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!225 = !{!49, !50, i64 372}
!226 = !{!49, !50, i64 376}
!227 = !{!49, !44, i64 380}
!228 = !{!49, !35, i64 16}
!229 = distinct !{!229, !46, !47}
!230 = !{!167, !35, i64 296}
!231 = !{!224, !44, i64 132}
!232 = !{!224, !60, i64 128}
!233 = !{!224, !50, i64 172}
!234 = !{!224, !50, i64 140}
!235 = !{!224, !50, i64 144}
!236 = !{!224, !50, i64 148}
!237 = !{!167, !44, i64 944}
!238 = !{!167, !36, i64 1160}
!239 = !{!224, !50, i64 180}
!240 = !{!224, !50, i64 184}
!241 = !{!224, !50, i64 152}
!242 = !{!49, !50, i64 328}
!243 = !{!224, !50, i64 176}
!244 = !{!224, !60, i64 208}
!245 = !{!49, !44, i64 384}
!246 = !{!224, !50, i64 192}
!247 = !{!224, !50, i64 196}
!248 = !{!224, !35, i64 200}
!249 = !{!49, !35, i64 392}
!250 = !{!224, !50, i64 220}
!251 = !{!49, !50, i64 368}
!252 = !{!224, !60, i64 240}
!253 = !{!224, !50, i64 212}
!254 = !{!224, !50, i64 216}
!255 = !{!224, !60, i64 278}
!256 = !{!49, !35, i64 680}
!257 = !{!49, !35, i64 664}
!258 = !{!49, !35, i64 688}
!259 = !{!224, !50, i64 156}
!260 = !{!224, !50, i64 160}
!261 = !{!224, !50, i64 164}
!262 = distinct !{!262, !46, !47}
!263 = !{!264, !35, i64 48}
!264 = !{!"GPUPass", !35, i64 0, !35, i64 8, !42, i64 16, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!265 = !{!264, !35, i64 56}
!266 = !{!267, !35, i64 64}
!267 = !{!"GPUInput", !35, i64 0, !35, i64 8, !35, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !44, i64 88, !35, i64 96, !44, i64 104, !35, i64 112, !35, i64 120, !44, i64 128, !36, i64 132, !36, i64 164, !35, i64 232, !44, i64 240, !44, i64 244, !36, i64 248, !44, i64 280, !44, i64 284, !44, i64 288}
!268 = !{!269, !44, i64 48}
!269 = !{!"GPUInputUniform", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 48, !44, i64 52, !35, i64 56, !35, i64 64, !44, i64 72, !35, i64 80, !44, i64 88}
!270 = !{!269, !44, i64 52}
!271 = !{!269, !35, i64 64}
!272 = !{!267, !44, i64 36}
!273 = !{!269, !44, i64 72}
!274 = !{!267, !35, i64 120}
!275 = !{!267, !44, i64 56}
!276 = !{!267, !35, i64 112}
!277 = !{!269, !35, i64 56}
!278 = !{!269, !44, i64 88}
!279 = !{!269, !35, i64 80}
!280 = !{!267, !44, i64 104}
!281 = !{!267, !44, i64 24}
!282 = distinct !{!282, !46, !47}
!283 = !{!284, !44, i64 4}
!284 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8}
!285 = !{!284, !44, i64 8}
!286 = !{!284, !44, i64 0}
!287 = distinct !{!287, !46, !47}
!288 = !{!264, !35, i64 64}
!289 = !{!290, !35, i64 40}
!290 = !{!"GPUShaderExport", !42, i64 0, !42, i64 16, !35, i64 32, !35, i64 40}
!291 = !{!41, !44, i64 2608}
!292 = !{!204, !44, i64 0}
!293 = !{!294, !44, i64 48}
!294 = !{!"GPUInputAttribute", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 48, !44, i64 52, !35, i64 56, !44, i64 64}
!295 = !{!294, !44, i64 64}
!296 = !{!294, !44, i64 52}
!297 = !{!294, !35, i64 56}
!298 = distinct !{!298, !46, !47}
!299 = !{!290, !35, i64 32}
!300 = distinct !{!300, !46, !47}
!301 = !{!58, !60, i64 552}
!302 = !{!58, !50, i64 204}
!303 = !{!58, !60, i64 554}
