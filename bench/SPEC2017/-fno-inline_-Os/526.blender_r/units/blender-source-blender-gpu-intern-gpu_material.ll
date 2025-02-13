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
%struct.GPUShadeResult = type { ptr, ptr, ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
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
@reltable.ramp_blend = internal unnamed_addr constant [18 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.131 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.116 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.132 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.133 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.134 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.135 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.136 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.137 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.138 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.139 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.140 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.141 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.142 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.143 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.144 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.145 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.146 to i64), i64 ptrtoint (ptr @reltable.ramp_blend to i64)) to i32)], align 4
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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @GPU_pass_free(ptr noundef nonnull %10) #17
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
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %17, label %27

27:                                               ; preds = %20, %34
  %28 = phi ptr [ %29, %34 ], [ %25, %20 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.LinkData, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @BLI_freelinkN(ptr noundef nonnull %24, ptr noundef nonnull %28) #17
  br label %34

34:                                               ; preds = %27, %33
  %35 = icmp eq ptr %29, null
  br i1 %35, label %17, label %27, !llvm.loop !51

36:                                               ; preds = %17, %13
  tail call void @BLI_freelistN(ptr noundef nonnull %14) #17
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef %8) #17
  %38 = load ptr, ptr %6, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !52

40:                                               ; preds = %36, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @GPU_pass_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @GPU_lamp_override_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SceneRenderLayer, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %5, %3
  %10 = icmp eq ptr %2, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 105
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %7, %5 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %16, ptr noundef %18) #17
  br label %20

20:                                               ; preds = %15, %9, %11
  %21 = phi i8 [ 1, %11 ], [ 1, %9 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_material_bind(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %126, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @GPU_pass_shader(ptr noundef nonnull %10) #17
  %14 = icmp eq i8 %7, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 60
  %18 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 61
  %19 = load i16, ptr %18, align 8, !tbaa !64
  %20 = sext i16 %19 to i32
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %17, i32 noundef %20) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.SceneRenderLayer, ptr %21, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !84
  %26 = and i32 %25, %2
  br label %27

27:                                               ; preds = %12, %23, %15
  %28 = phi ptr [ %21, %23 ], [ null, %15 ], [ null, %12 ]
  %29 = phi i32 [ %26, %23 ], [ %2, %15 ], [ %2, %12 ]
  %30 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %106, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  br label %36

36:                                               ; preds = %33, %103
  %37 = phi ptr [ %31, %33 ], [ %104, %103 ]
  %38 = getelementptr inbounds %struct.LinkData, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  %40 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !85
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !86
  %46 = and i32 %45, %29
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !87
  %51 = and i32 %50, 4
  %52 = icmp ne i32 %51, 0
  %53 = and i32 %45, %1
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %54, %52
  br i1 %55, label %66, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %34, align 8, !tbaa !88
  %58 = tail call zeroext i8 @GPU_lamp_override_visible(ptr noundef nonnull %39, ptr noundef %28, ptr noundef %57) #18
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 10
  %62 = load float, ptr %61, align 8, !tbaa !89
  %63 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 8
  store float %62, ptr %63, align 8, !tbaa !90
  %64 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 9
  %65 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 11
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %64, ptr noundef nonnull %65) #18
  br label %68

66:                                               ; preds = %48, %56, %43, %36
  %67 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32, ptr %35, align 4, !tbaa !91
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 15
  %74 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 13
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %73, ptr noundef nonnull %74) #18
  tail call fastcc void @normalize_v3(ptr noundef nonnull %73) #18
  tail call fastcc void @negate_v3(ptr noundef nonnull %73) #18
  tail call void @mul_mat3_m4_v3(ptr noundef %5, ptr noundef nonnull %73) #17
  %75 = load i32, ptr %35, align 4, !tbaa !91
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %75, %72 ], [ %69, %68 ]
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 14
  %82 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %81, ptr noundef nonnull %82) #18
  tail call void @mul_m4_v3(ptr noundef %5, ptr noundef nonnull %81) #17
  %83 = load i32, ptr %35, align 4, !tbaa !91
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %83, %80 ], [ %77, %76 ]
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 18
  %90 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 17
  tail call void @mul_m4_m4m4(ptr noundef nonnull %89, ptr noundef nonnull %90, ptr noundef %6) #17
  %91 = load i32, ptr %35, align 4, !tbaa !91
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %91, %88 ], [ %85, %84 ]
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = tail call zeroext i8 @GPU_lamp_has_shadow_buffer(ptr noundef nonnull %39) #18, !range !92
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  tail call void @GPU_lamp_update_buffer_mats(ptr noundef nonnull %39) #18
  br label %100

100:                                              ; preds = %99, %96
  %101 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 38
  %102 = getelementptr inbounds %struct.GPULamp, ptr %39, i64 0, i32 37
  tail call void @mul_m4_m4m4(ptr noundef nonnull %101, ptr noundef nonnull %102, ptr noundef %6) #17
  br label %103

103:                                              ; preds = %92, %100
  %104 = load ptr, ptr %37, align 8, !tbaa !34
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %36, !llvm.loop !93

106:                                              ; preds = %103, %27
  %107 = load ptr, ptr %9, align 8, !tbaa !40
  tail call void @GPU_pass_bind(ptr noundef %107, double noundef %3, i32 noundef %4) #17
  %108 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 7
  %109 = load i32, ptr %108, align 8, !tbaa !94
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 11
  %114 = load i32, ptr %113, align 8, !tbaa !95
  tail call void @GPU_shader_uniform_vector(ptr noundef %13, i32 noundef %114, i32 noundef 16, i32 noundef 1, ptr noundef %5) #17
  %115 = load i32, ptr %108, align 8, !tbaa !94
  br label %116

116:                                              ; preds = %112, %106
  %117 = phi i32 [ %115, %112 ], [ %109, %106 ]
  %118 = and i32 %117, 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 12
  %122 = load i32, ptr %121, align 4, !tbaa !96
  tail call void @GPU_shader_uniform_vector(ptr noundef %13, i32 noundef %122, i32 noundef 16, i32 noundef 1, ptr noundef %6) #17
  br label %123

123:                                              ; preds = %120, %116
  %124 = load ptr, ptr %9, align 8, !tbaa !40
  tail call void @GPU_pass_update_uniforms(ptr noundef %124) #17
  %125 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 6
  store i32 1, ptr %125, align 4, !tbaa !97
  br label %126

126:                                              ; preds = %123, %8
  ret void
}

; Function Attrs: optsize
declare ptr @GPU_pass_shader(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !98 {
  %3 = load float, ptr %1, align 4, !tbaa !99
  store float %3, ptr %0, align 4, !tbaa !99
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !100 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !101 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !99
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !99
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @GPU_lamp_has_shadow_buffer(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 37, i32 18
  %4 = load i32, ptr %3, align 8, !tbaa !103
  %5 = and i32 %4, 320
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %11, %7, %1
  %17 = phi i8 [ 0, %7 ], [ 0, %1 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_lamp_update_buffer_mats(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36
  %5 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 16
  %6 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  tail call fastcc void @normalize_v3(ptr noundef nonnull %4) #18
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 1
  tail call fastcc void @normalize_v3(ptr noundef nonnull %7) #18
  %8 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36, i64 2
  tail call fastcc void @normalize_v3(ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 35
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %4) #17
  call void @unit_m4(ptr noundef nonnull %2) #17
  store float 5.000000e-01, ptr %2, align 16, !tbaa !99
  %10 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 1, i64 1
  store float 5.000000e-01, ptr %10, align 4, !tbaa !99
  %11 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 2, i64 2
  store float 5.000000e-01, ptr %11, align 8, !tbaa !99
  %12 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 3
  store <2 x float> <float 5.000000e-01, float 5.000000e-01>, ptr %12, align 16, !tbaa !99
  %13 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 3, i64 2
  store float 5.000000e-01, ptr %13, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 37
  call void @mul_m4_m4m4(ptr noundef nonnull %14, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @GPU_pass_bind(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_shader_uniform_vector(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_pass_update_uniforms(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_material_bind_uniforms(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x float], align 16
  store float %3, ptr %5, align 4, !tbaa !99
  %8 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @GPU_pass_shader(ptr noundef nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  %13 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !94
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !106
  tail call void @GPU_shader_uniform_vector(ptr noundef %12, i32 noundef %19, i32 noundef 16, i32 noundef 1, ptr noundef %1) #17
  %20 = load i32, ptr %13, align 8, !tbaa !94
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %20, %17 ], [ %14, %11 ]
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef %1) #17
  %27 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 14
  %28 = load i32, ptr %27, align 4, !tbaa !107
  call void @GPU_shader_uniform_vector(ptr noundef %12, i32 noundef %28, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %6) #17
  %29 = load i32, ptr %13, align 8, !tbaa !94
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %29, %25 ], [ %22, %21 ]
  %32 = and i32 %31, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  call fastcc void @copy_v4_v4(ptr noundef nonnull %7, ptr noundef %2) #18
  %35 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !99
  %37 = fcmp olt float %36, 0.000000e+00
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = fcmp ogt float %36, 1.000000e+00
  br i1 %39, label %40, label %42

40:                                               ; preds = %38, %34
  %41 = phi float [ 0.000000e+00, %34 ], [ 1.000000e+00, %38 ]
  store float %41, ptr %35, align 4, !tbaa !99
  br label %42

42:                                               ; preds = %40, %38
  %43 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 15
  %44 = load i32, ptr %43, align 8, !tbaa !108
  call void @GPU_shader_uniform_vector(ptr noundef %12, i32 noundef %44, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %7) #17
  %45 = load i32, ptr %13, align 8, !tbaa !94
  br label %46

46:                                               ; preds = %42, %30
  %47 = phi i32 [ %45, %42 ], [ %31, %30 ]
  %48 = and i32 %47, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !109
  call void @GPU_shader_uniform_vector(ptr noundef %12, i32 noundef %52, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %5) #17
  br label %53

53:                                               ; preds = %50, %46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  br label %54

54:                                               ; preds = %53, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !110 {
  %3 = load float, ptr %1, align 4, !tbaa !99
  store float %3, ptr %0, align 4, !tbaa !99
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !99
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !99
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_material_unbind(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 6
  store i32 0, ptr %6, align 4, !tbaa !97
  tail call void @GPU_pass_unbind(ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @GPU_pass_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_material_bound(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !97
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GPU_material_scene(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPU_material_vertex_attributes(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %1, ptr noundef nonnull align 8 dereferenceable(2564) %3, i64 2564, i1 false), !tbaa.struct !111
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPU_material_output_link(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !114
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @GPU_material_enable_alpha(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 8
  store i32 1, ptr %2, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @GPU_material_alpha_blend(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !115
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !116
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds float, ptr %1, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !99
  %13 = fcmp olt float %12, 1.000000e+00
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %2, %10, %14
  %16 = phi i32 [ 0, %14 ], [ 2, %10 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpu_material_add_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @GPU_material_do_color_management(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 37, i32 18
  %8 = load i32, ptr %7, align 8, !tbaa !103
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i8 [ %11, %5 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @GPU_material_use_new_shading_nodes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %2) #17
  ret i8 %3
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shadeinput_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %6 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 38
  %7 = load i16, ptr %6, align 8, !tbaa !117
  %8 = sitofp i16 %7 to float
  store float %8, ptr %4, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store float 1.000000e+00, ptr %5, align 4, !tbaa !99
  %9 = getelementptr inbounds i8, ptr %2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 96, i1 false)
  store ptr %0, ptr %2, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !120
  %11 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %12 = tail call ptr @GPU_uniform(ptr noundef nonnull %11) #17
  %13 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 2
  %14 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %12, ptr noundef nonnull %13) #17
  %15 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 7
  %16 = tail call ptr @GPU_uniform(ptr noundef nonnull %15) #17
  %17 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 3
  %18 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %16, ptr noundef nonnull %17) #17
  %19 = tail call ptr @GPU_builtin(i32 noundef 32) #17
  %20 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 4
  %21 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %19, ptr noundef nonnull %20) #17
  %22 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !115
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 21
  %27 = tail call ptr @GPU_uniform(ptr noundef nonnull %26) #17
  %28 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 8
  %29 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %27, ptr noundef nonnull %28) #17
  br label %34

30:                                               ; preds = %3
  %31 = call ptr @GPU_uniform(ptr noundef nonnull %5) #17
  %32 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 8
  %33 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %31, ptr noundef nonnull %32) #17
  br label %34

34:                                               ; preds = %30, %25
  %35 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 22
  %36 = call ptr @GPU_uniform(ptr noundef nonnull %35) #17
  %37 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 9
  %38 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %36, ptr noundef nonnull %37) #17
  %39 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 23
  %40 = call ptr @GPU_uniform(ptr noundef nonnull %39) #17
  %41 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 10
  %42 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %40, ptr noundef nonnull %41) #17
  %43 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 17
  %44 = call ptr @GPU_uniform(ptr noundef nonnull %43) #17
  %45 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 11
  %46 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %44, ptr noundef nonnull %45) #17
  %47 = call ptr @GPU_uniform(ptr noundef nonnull %4) #17
  %48 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 12
  %49 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %47, ptr noundef nonnull %48) #17
  %50 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 16
  %51 = call ptr @GPU_uniform(ptr noundef nonnull %50) #17
  %52 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 13
  %53 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %51, ptr noundef nonnull %52) #17
  %54 = call ptr @GPU_builtin(i32 noundef 16) #17
  %55 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 5
  %56 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef %54, ptr noundef nonnull %55) #17
  %57 = call ptr @GPU_attribute(i32 noundef 6, ptr noundef nonnull @.str.5) #17
  %58 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 6
  %59 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %57, ptr noundef nonnull %58) #17
  %60 = call zeroext i8 @GPU_material_do_color_management(ptr noundef nonnull %0) #18, !range !92
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %34
  %63 = load ptr, ptr %58, align 8, !tbaa !121
  %64 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %63, ptr noundef nonnull %58) #17
  br label %65

65:                                               ; preds = %62, %34
  %66 = load ptr, ptr %20, align 8, !tbaa !122
  %67 = load ptr, ptr %55, align 8, !tbaa !123
  %68 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 7
  %69 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %66, ptr noundef %67, ptr noundef nonnull %68) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_builtin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_attribute(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shaderesult_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %11 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = load ptr, ptr %10, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %16 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 51
  %17 = load i32, ptr %16, align 4, !tbaa !125
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !126
  br label %24

24:                                               ; preds = %20, %2
  tail call fastcc void @do_material_tex(ptr noundef nonnull %0) #18
  %25 = load ptr, ptr %10, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 37, i32 18
  %27 = load i32, ptr %26, align 8, !tbaa !103
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, ptr %16, align 4, !tbaa !125
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30, %24
  %35 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  %37 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str, ptr noundef %36, ptr noundef nonnull %1) #17
  %38 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %39 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.8, ptr noundef nonnull %38) #17
  %40 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !127
  %42 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 3
  %43 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.2, ptr noundef %41, ptr noundef nonnull %42) #17
  %44 = load ptr, ptr %1, align 8, !tbaa !128
  %45 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !130
  br label %165

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !131
  %49 = tail call i32 @GPU_link_changed(ptr noundef %48) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 17
  %53 = load float, ptr %52, align 8, !tbaa !132
  %54 = fcmp une float %53, 0.000000e+00
  br i1 %54, label %55, label %72

55:                                               ; preds = %51, %46
  %56 = load i32, ptr %16, align 4, !tbaa !125
  %57 = and i32 %56, 144
  %58 = icmp eq i32 %57, 16
  %59 = load ptr, ptr %47, align 8, !tbaa !131
  br i1 %58, label %60, label %68

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !121
  %63 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.9, ptr noundef %59, ptr noundef %62, ptr noundef nonnull %3) #17
  %64 = load ptr, ptr %3, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !126
  %67 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.10, ptr noundef %64, ptr noundef %66, ptr noundef nonnull %1) #17
  br label %74

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !126
  %71 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.11, ptr noundef %59, ptr noundef %70, ptr noundef nonnull %1) #17
  br label %74

72:                                               ; preds = %51
  %73 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #17
  br label %74

74:                                               ; preds = %60, %68, %72
  %75 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %76 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.8, ptr noundef nonnull %75) #17
  call fastcc void @material_lights(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  %77 = load ptr, ptr %1, align 8, !tbaa !128
  %78 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 2
  store ptr %77, ptr %78, align 8, !tbaa !130
  %79 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !127
  %81 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 3
  %82 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.2, ptr noundef %80, ptr noundef nonnull %81) #17
  %83 = icmp eq ptr %15, null
  br i1 %83, label %141, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 16
  %86 = load float, ptr %85, align 8, !tbaa !133
  %87 = fcmp une float %86, 0.000000e+00
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 17
  %90 = load float, ptr %89, align 4, !tbaa !135
  %91 = fcmp une float %90, 1.000000e+00
  br i1 %91, label %92, label %114

92:                                               ; preds = %88, %84
  %93 = call float @llvm.fmuladd.f32(float %86, float 2.000000e+00, float 5.000000e-01)
  %94 = call float @powf(float noundef %93, float noundef -1.000000e+01) #17
  %95 = fadd float %94, 1.000000e+00
  store float %95, ptr %7, align 4, !tbaa !99
  %96 = fadd float %95, -1.000000e+00
  %97 = fdiv float %96, %95
  %98 = call float @logf(float noundef %97) #17
  %99 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 17
  %100 = load float, ptr %99, align 4, !tbaa !135
  %101 = fdiv float %98, %100
  store float %101, ptr %8, align 4, !tbaa !99
  %102 = call ptr @GPU_uniform(ptr noundef nonnull %7) #17
  %103 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.2, ptr noundef %102, ptr noundef nonnull %4) #17
  %104 = call ptr @GPU_uniform(ptr noundef nonnull %8) #17
  %105 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.2, ptr noundef %104, ptr noundef nonnull %5) #17
  %106 = load ptr, ptr %78, align 8, !tbaa !130
  %107 = load ptr, ptr %4, align 8, !tbaa !34
  %108 = load ptr, ptr %5, align 8, !tbaa !34
  %109 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.12, ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef nonnull %78) #17
  %110 = load ptr, ptr %75, align 8, !tbaa !136
  %111 = load ptr, ptr %4, align 8, !tbaa !34
  %112 = load ptr, ptr %5, align 8, !tbaa !34
  %113 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.12, ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef nonnull %75) #17
  br label %114

114:                                              ; preds = %92, %88
  %115 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 12
  %116 = load float, ptr %115, align 8, !tbaa !137
  %117 = fcmp une float %116, 0.000000e+00
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 13
  %120 = load float, ptr %119, align 4, !tbaa !138
  %121 = fcmp une float %120, 0.000000e+00
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 14
  %124 = load float, ptr %123, align 8, !tbaa !139
  %125 = fcmp une float %124, 0.000000e+00
  br i1 %125, label %126, label %141

126:                                              ; preds = %122, %118, %114
  %127 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 13
  %128 = load ptr, ptr %127, align 8, !tbaa !140
  %129 = call i32 @GPU_link_changed(ptr noundef %128) #17
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 16
  %133 = load float, ptr %132, align 4, !tbaa !141
  %134 = fcmp une float %133, 0.000000e+00
  br i1 %134, label %135, label %141

135:                                              ; preds = %131, %126
  %136 = load ptr, ptr %78, align 8, !tbaa !130
  %137 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 16
  %138 = call ptr @GPU_uniform(ptr noundef nonnull %137) #17
  %139 = call ptr @GPU_uniform(ptr noundef nonnull %115) #17
  %140 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.13, ptr noundef %136, ptr noundef %138, ptr noundef %139, ptr noundef nonnull %78) #17
  br label %141

141:                                              ; preds = %122, %135, %131, %74
  %142 = load i32, ptr %16, align 4, !tbaa !125
  %143 = and i32 %142, 1048576
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  call fastcc void @ramp_diffuse_result(ptr noundef nonnull %0, ptr noundef nonnull %78) #18
  %146 = load i32, ptr %16, align 4, !tbaa !125
  br label %147

147:                                              ; preds = %145, %141
  %148 = phi i32 [ %146, %145 ], [ %142, %141 ]
  %149 = and i32 %148, 2097152
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  call fastcc void @ramp_spec_result(ptr noundef nonnull %0, ptr noundef nonnull %75) #18
  br label %152

152:                                              ; preds = %151, %147
  %153 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 10
  %154 = load ptr, ptr %153, align 8, !tbaa !142
  %155 = call i32 @GPU_link_changed(ptr noundef %154) #17
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 23
  %159 = load float, ptr %158, align 8, !tbaa !143
  %160 = fcmp une float %159, 0.000000e+00
  br i1 %160, label %161, label %165

161:                                              ; preds = %157, %152
  %162 = load ptr, ptr %78, align 8, !tbaa !130
  %163 = load ptr, ptr %75, align 8, !tbaa !136
  %164 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.9, ptr noundef %162, ptr noundef %163, ptr noundef nonnull %78) #17
  br label %165

165:                                              ; preds = %157, %161, %34
  %166 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !130
  %168 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !144
  %170 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.14, ptr noundef %167, ptr noundef %169, ptr noundef nonnull %166) #17
  %171 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 50
  %172 = load i16, ptr %171, align 2, !tbaa !145
  %173 = and i16 %172, 2
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %165
  %176 = load ptr, ptr %166, align 8, !tbaa !130
  %177 = call ptr @GPU_builtin(i32 noundef 64) #17
  %178 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.15, ptr noundef %176, ptr noundef %177, ptr noundef nonnull %166) #17
  br label %179

179:                                              ; preds = %175, %165
  %180 = icmp eq ptr %15, null
  br i1 %180, label %212, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 23
  %183 = load i16, ptr %182, align 2, !tbaa !146
  %184 = and i16 %183, 1
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %208, label %186

186:                                              ; preds = %181
  %187 = load i32, ptr %16, align 4, !tbaa !125
  %188 = and i32 %187, 16384
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %208

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 5
  %192 = load i16, ptr %191, align 2, !tbaa !147
  %193 = sitofp i16 %192 to float
  store float %193, ptr %9, align 4, !tbaa !99
  %194 = call ptr @GPU_builtin(i32 noundef 16) #17
  %195 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 31
  %196 = call ptr @GPU_uniform(ptr noundef nonnull %195) #17
  %197 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 32
  %198 = call ptr @GPU_uniform(ptr noundef nonnull %197) #17
  %199 = call ptr @GPU_uniform(ptr noundef nonnull %9) #17
  %200 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 30
  %201 = call ptr @GPU_uniform(ptr noundef nonnull %200) #17
  %202 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.16, ptr noundef %194, ptr noundef %196, ptr noundef %198, ptr noundef %199, ptr noundef %201, ptr noundef nonnull %6) #17
  %203 = load ptr, ptr %6, align 8, !tbaa !34
  %204 = load ptr, ptr %166, align 8, !tbaa !130
  %205 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 6
  %206 = call ptr @GPU_uniform(ptr noundef nonnull %205) #17
  %207 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.17, ptr noundef %203, ptr noundef %204, ptr noundef %206, ptr noundef nonnull %166) #17
  br label %208

208:                                              ; preds = %190, %186, %181
  %209 = getelementptr inbounds %struct.GPUMaterial, ptr %10, i64 0, i32 8
  %210 = load i32, ptr %209, align 4, !tbaa !115
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %216, label %232

212:                                              ; preds = %179
  %213 = getelementptr inbounds %struct.GPUMaterial, ptr %10, i64 0, i32 8
  %214 = load i32, ptr %213, align 4, !tbaa !115
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %229, label %232

216:                                              ; preds = %208
  %217 = load ptr, ptr %168, align 8, !tbaa !144
  %218 = call i32 @GPU_link_changed(ptr noundef %217) #17
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 21
  %222 = load float, ptr %221, align 8, !tbaa !148
  %223 = fcmp une float %222, 1.000000e+00
  br i1 %223, label %224, label %229

224:                                              ; preds = %220, %216
  %225 = getelementptr inbounds %struct.World, ptr %15, i64 0, i32 6
  %226 = call ptr @GPU_uniform(ptr noundef nonnull %225) #17
  %227 = load ptr, ptr %166, align 8, !tbaa !130
  %228 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.18, ptr noundef %226, ptr noundef %227, ptr noundef nonnull %166) #17
  br label %229

229:                                              ; preds = %212, %224, %220
  %230 = load ptr, ptr %166, align 8, !tbaa !130
  %231 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.19, ptr noundef %230, ptr noundef nonnull %166) #17
  br label %232

232:                                              ; preds = %212, %229, %208
  %233 = load i16, ptr %171, align 2, !tbaa !145
  %234 = and i16 %233, 2
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.GPUMaterial, ptr %10, i64 0, i32 9
  store i32 1, ptr %237, align 8, !tbaa !116
  %238 = load ptr, ptr %166, align 8, !tbaa !130
  %239 = call ptr @GPU_builtin(i32 noundef 64) #17
  %240 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %10, ptr noundef nonnull @.str.20, ptr noundef %238, ptr noundef %239, ptr noundef nonnull %166) #17
  br label %241

241:                                              ; preds = %236, %232
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_material_tex(ptr noundef %0) unnamed_addr #0 !PGOFuncName !149 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
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
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [3 x float], align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca float, align 4
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !120
  %42 = load ptr, ptr %0, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  store ptr null, ptr %13, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #19
  store float 1.000000e+00, ptr %16, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #19
  %43 = call ptr @GPU_uniform(ptr noundef nonnull %16) #17
  %44 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef %43, ptr noundef nonnull %7) #17
  %45 = call ptr @GPU_builtin(i32 noundef 32) #17
  %46 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.35, ptr noundef %45, ptr noundef nonnull %9) #17
  %47 = call ptr @GPU_attribute(i32 noundef 14, ptr noundef nonnull @.str.5) #17
  %48 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.36, ptr noundef %47, ptr noundef nonnull %10) #17
  %49 = call ptr @GPU_builtin(i32 noundef 4) #17
  %50 = call ptr @GPU_builtin(i32 noundef 8) #17
  %51 = call ptr @GPU_builtin(i32 noundef 16) #17
  %52 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.37, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef nonnull %11) #17
  %53 = call ptr @GPU_builtin(i32 noundef 4) #17
  %54 = call ptr @GPU_builtin(i32 noundef 16) #17
  %55 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.38, ptr noundef %53, ptr noundef %54, ptr noundef nonnull %12) #17
  %56 = load ptr, ptr %9, align 8, !tbaa !34
  store ptr %56, ptr %15, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.Material, ptr %41, i64 0, i32 73
  %58 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %59 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 5
  %60 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 7
  %61 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  %62 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %63 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 9
  %65 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 10
  %66 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 11
  %67 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %68 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 8
  %69 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 13
  br label %70

70:                                               ; preds = %1, %764
  %71 = phi i64 [ 0, %1 ], [ %768, %764 ]
  %72 = phi i32 [ 1, %1 ], [ %767, %764 ]
  %73 = phi i32 [ 0, %1 ], [ %766, %764 ]
  %74 = phi i8 [ 0, %1 ], [ %765, %764 ]
  %75 = load i32, ptr %57, align 8, !tbaa !150
  %76 = trunc i64 %71 to i32
  %77 = shl nuw nsw i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %764

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.Material, ptr %41, i64 0, i32 102, i64 %71
  %82 = load ptr, ptr %81, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %764, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !151
  %87 = icmp eq ptr %86, null
  br i1 %87, label %764, label %88

88:                                               ; preds = %84
  %89 = load i16, ptr %82, align 8, !tbaa !153
  switch i16 %89, label %764 [
    i16 1, label %90
    i16 32, label %92
    i16 4, label %94
    i16 4096, label %96
    i16 8, label %98
    i16 2, label %100
    i16 16, label %104
  ]

90:                                               ; preds = %88
  %91 = load ptr, ptr %10, align 8, !tbaa !34
  store ptr %91, ptr %2, align 8, !tbaa !34
  br label %113

92:                                               ; preds = %88
  %93 = load ptr, ptr %11, align 8, !tbaa !34
  store ptr %93, ptr %2, align 8, !tbaa !34
  br label %113

94:                                               ; preds = %88
  %95 = load ptr, ptr %15, align 8, !tbaa !34
  store ptr %95, ptr %2, align 8, !tbaa !34
  br label %113

96:                                               ; preds = %88
  %97 = load ptr, ptr %11, align 8, !tbaa !34
  store ptr %97, ptr %2, align 8, !tbaa !34
  br label %113

98:                                               ; preds = %88
  %99 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %99, ptr %2, align 8, !tbaa !34
  br label %113

100:                                              ; preds = %88
  %101 = load ptr, ptr %58, align 8, !tbaa !122
  %102 = load ptr, ptr %59, align 8, !tbaa !123
  %103 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.7, ptr noundef %101, ptr noundef %102, ptr noundef nonnull %60) #17
  br label %108

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 6
  %106 = call ptr @GPU_attribute(i32 noundef 5, ptr noundef nonnull %105) #17
  %107 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.39, ptr noundef %106, ptr noundef nonnull %13) #17
  br label %108

108:                                              ; preds = %100, %104
  %109 = phi ptr [ %13, %104 ], [ %60, %100 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !34
  store ptr %110, ptr %2, align 8, !tbaa !34
  %111 = load i16, ptr %82, align 8, !tbaa !153
  %112 = icmp eq i16 %111, 16
  br i1 %112, label %116, label %113

113:                                              ; preds = %90, %94, %98, %96, %92, %108
  %114 = phi ptr [ %91, %90 ], [ %95, %94 ], [ %99, %98 ], [ %97, %96 ], [ %93, %92 ], [ %110, %108 ]
  %115 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.40, ptr noundef %114, ptr noundef nonnull %2) #17
  br label %116

116:                                              ; preds = %113, %108
  %117 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 12
  %118 = load float, ptr %117, align 8, !tbaa !99
  %119 = fcmp une float %118, 1.000000e+00
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 12, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !99
  %123 = fcmp une float %122, 1.000000e+00
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 12, i64 2
  %126 = load float, ptr %125, align 8, !tbaa !99
  %127 = fcmp une float %126, 1.000000e+00
  br i1 %127, label %128, label %133

128:                                              ; preds = %124, %120, %116
  %129 = load ptr, ptr %2, align 8, !tbaa !34
  %130 = call ptr @GPU_uniform(ptr noundef nonnull %117) #17
  %131 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.41, ptr noundef %129, ptr noundef %130, ptr noundef nonnull %2) #17
  %132 = load <2 x float>, ptr %117, align 8, !tbaa !99
  br label %133

133:                                              ; preds = %128, %124
  %134 = phi <2 x float> [ %132, %128 ], [ <float 1.000000e+00, float 1.000000e+00>, %124 ]
  %135 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 11
  %136 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 12, i64 1
  %137 = load <2 x float>, ptr %135, align 4, !tbaa !99
  %138 = fadd <2 x float> %137, <float 5.000000e-01, float 5.000000e-01>
  %139 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %134, <2 x float> <float -5.000000e-01, float -5.000000e-01>, <2 x float> %138)
  store <2 x float> %139, ptr %18, align 8, !tbaa !99
  store float 0.000000e+00, ptr %61, align 8, !tbaa !99
  %140 = extractelement <2 x float> %139, i64 0
  %141 = fcmp une float %140, 0.000000e+00
  %142 = extractelement <2 x float> %139, i64 1
  %143 = fcmp une float %142, 0.000000e+00
  %144 = select i1 %141, i1 true, i1 %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %133
  %146 = load ptr, ptr %2, align 8, !tbaa !34
  %147 = call ptr @GPU_uniform(ptr noundef nonnull %18) #17
  %148 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.42, ptr noundef %146, ptr noundef %147, ptr noundef nonnull %2) #17
  br label %149

149:                                              ; preds = %145, %133
  %150 = getelementptr inbounds %struct.Tex, ptr %86, i64 0, i32 32
  %151 = load i16, ptr %150, align 8, !tbaa !154
  %152 = icmp eq i16 %151, 8
  br i1 %152, label %153, label %764

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.Tex, ptr %86, i64 0, i32 54
  %155 = load ptr, ptr %154, align 8, !tbaa !157
  %156 = icmp eq ptr %155, null
  br i1 %156, label %764, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %2, align 8, !tbaa !34
  %159 = getelementptr inbounds %struct.Tex, ptr %86, i64 0, i32 51
  %160 = call ptr @GPU_image(ptr noundef nonnull %155, ptr noundef nonnull %159, i8 noundef zeroext 0) #17
  %161 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.43, ptr noundef %158, ptr noundef %160, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %162 = getelementptr inbounds %struct.Tex, ptr %86, i64 0, i32 30
  %163 = load i16, ptr %162, align 4, !tbaa !158
  %164 = and i16 %163, 2
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %157
  %167 = load ptr, ptr %154, align 8, !tbaa !157
  %168 = icmp eq ptr %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.Image, ptr %167, i64 0, i32 10
  %171 = load i16, ptr %170, align 2, !tbaa !159
  %172 = and i16 %171, 4096
  %173 = icmp eq i16 %172, 0
  br label %174

174:                                              ; preds = %157, %166, %169
  %175 = phi i1 [ false, %166 ], [ false, %157 ], [ %173, %169 ]
  %176 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 14
  %177 = load i16, ptr %176, align 8, !tbaa !161
  %178 = and i16 %177, 1
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = and i16 %177, 4
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %195, label %189

183:                                              ; preds = %174
  %184 = load ptr, ptr %4, align 8, !tbaa !34
  %185 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.44, ptr noundef %184, ptr noundef nonnull %3) #17
  %186 = load i16, ptr %176, align 8, !tbaa !161
  %187 = and i16 %186, 4
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %195, label %192

189:                                              ; preds = %180
  %190 = load ptr, ptr %4, align 8, !tbaa !34
  %191 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.45, ptr noundef %190, ptr noundef nonnull %4) #17
  br label %195

192:                                              ; preds = %183
  %193 = load ptr, ptr %3, align 8, !tbaa !34
  %194 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.46, ptr noundef %193, ptr noundef nonnull %3) #17
  br label %195

195:                                              ; preds = %183, %189, %192, %180
  %196 = load i16, ptr %176, align 8, !tbaa !161
  %197 = and i16 %196, 2
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %7, align 8, !tbaa !34
  %201 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 1
  br i1 %179, label %207, label %213

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 1
  %204 = load i16, ptr %203, align 2, !tbaa !162
  %205 = and i16 %204, 5
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %303, label %219

207:                                              ; preds = %199
  %208 = load ptr, ptr %4, align 8, !tbaa !34
  %209 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.47, ptr noundef %200, ptr noundef %208, ptr noundef nonnull %7, ptr noundef nonnull %4) #17
  %210 = load i16, ptr %201, align 2, !tbaa !162
  %211 = and i16 %210, 5
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %303, label %225

213:                                              ; preds = %199
  %214 = load ptr, ptr %3, align 8, !tbaa !34
  %215 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.48, ptr noundef %200, ptr noundef %214, ptr noundef nonnull %7, ptr noundef nonnull %3) #17
  %216 = load i16, ptr %201, align 2, !tbaa !162
  %217 = and i16 %216, 5
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %303, label %220

219:                                              ; preds = %202
  br i1 %179, label %225, label %220

220:                                              ; preds = %213, %219
  %221 = phi ptr [ %203, %219 ], [ %201, %213 ]
  %222 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 22
  %223 = call ptr @GPU_uniform(ptr noundef nonnull %222) #17
  %224 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str, ptr noundef %223, ptr noundef nonnull %6) #17
  br label %241

225:                                              ; preds = %207, %219
  %226 = phi ptr [ %203, %219 ], [ %201, %207 ]
  %227 = load ptr, ptr %4, align 8, !tbaa !34
  %228 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.49, ptr noundef %227, ptr noundef nonnull %6) #17
  %229 = load i16, ptr %226, align 2, !tbaa !162
  %230 = and i16 %229, 128
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %225
  %233 = load ptr, ptr %7, align 8, !tbaa !34
  %234 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef %233, ptr noundef nonnull %3) #17
  br label %241

235:                                              ; preds = %225
  br i1 %175, label %236, label %239

236:                                              ; preds = %235
  %237 = load ptr, ptr %4, align 8, !tbaa !34
  %238 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.50, ptr noundef %237, ptr noundef nonnull %3) #17
  br label %241

239:                                              ; preds = %235
  %240 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.51, ptr noundef nonnull %3) #17
  br label %241

241:                                              ; preds = %232, %239, %236, %220
  %242 = phi ptr [ %226, %232 ], [ %226, %239 ], [ %226, %236 ], [ %221, %220 ]
  %243 = load i16, ptr %150, align 8, !tbaa !154
  %244 = icmp eq i16 %243, 8
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = call zeroext i8 @GPU_material_do_color_management(ptr noundef %42) #18, !range !92
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %6, align 8, !tbaa !34
  %250 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.6, ptr noundef %249, ptr noundef nonnull %6) #17
  br label %251

251:                                              ; preds = %245, %248, %241
  %252 = load i16, ptr %242, align 2, !tbaa !162
  %253 = and i16 %252, 1
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %274, label %255

255:                                              ; preds = %251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #19
  %256 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 28
  %257 = load float, ptr %256, align 4, !tbaa !163
  %258 = fcmp oeq float %257, 1.000000e+00
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %260, ptr %22, align 8, !tbaa !34
  br label %266

261:                                              ; preds = %255
  %262 = call ptr @GPU_uniform(ptr noundef nonnull %256) #17
  %263 = load ptr, ptr %7, align 8, !tbaa !34
  %264 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %42, ptr noundef nonnull @.str.52, ptr noundef %262, ptr noundef %263, ptr noundef nonnull %22) #17
  %265 = load ptr, ptr %22, align 8, !tbaa !34
  br label %266

266:                                              ; preds = %261, %259
  %267 = phi ptr [ %265, %261 ], [ %260, %259 ]
  %268 = load ptr, ptr %6, align 8, !tbaa !34
  %269 = load ptr, ptr %62, align 8, !tbaa !126
  %270 = load ptr, ptr %3, align 8, !tbaa !34
  %271 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 3
  %272 = load i16, ptr %271, align 2, !tbaa !164
  %273 = sext i16 %272 to i32
  call fastcc void @texture_rgb_blend(ptr noundef %42, ptr noundef %268, ptr noundef %269, ptr noundef %270, ptr noundef %267, i32 noundef %273, ptr noundef nonnull %62) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #19
  br label %274

274:                                              ; preds = %266, %251
  %275 = load ptr, ptr %42, align 8, !tbaa !63
  %276 = getelementptr inbounds %struct.Scene, ptr %275, i64 0, i32 37, i32 18
  %277 = load i32, ptr %276, align 8, !tbaa !103
  %278 = and i32 %277, 2048
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %303

280:                                              ; preds = %274
  %281 = load i16, ptr %242, align 2, !tbaa !162
  %282 = and i16 %281, 4
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %303, label %284

284:                                              ; preds = %280
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #19
  %285 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 33
  %286 = load float, ptr %285, align 8, !tbaa !165
  %287 = fcmp oeq float %286, 1.000000e+00
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %289, ptr %23, align 8, !tbaa !34
  br label %295

290:                                              ; preds = %284
  %291 = call ptr @GPU_uniform(ptr noundef nonnull %285) #17
  %292 = load ptr, ptr %7, align 8, !tbaa !34
  %293 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %291, ptr noundef %292, ptr noundef nonnull %23) #17
  %294 = load ptr, ptr %23, align 8, !tbaa !34
  br label %295

295:                                              ; preds = %290, %288
  %296 = phi ptr [ %294, %290 ], [ %289, %288 ]
  %297 = load ptr, ptr %6, align 8, !tbaa !34
  %298 = load ptr, ptr %63, align 8, !tbaa !166
  %299 = load ptr, ptr %3, align 8, !tbaa !34
  %300 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 3
  %301 = load i16, ptr %300, align 2, !tbaa !164
  %302 = sext i16 %301 to i32
  call fastcc void @texture_rgb_blend(ptr noundef nonnull %42, ptr noundef %297, ptr noundef %298, ptr noundef %299, ptr noundef %296, i32 noundef %302, ptr noundef nonnull %63) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #19
  br label %303

303:                                              ; preds = %207, %213, %274, %280, %295, %202
  %304 = phi ptr [ %201, %213 ], [ %242, %274 ], [ %242, %280 ], [ %242, %295 ], [ %203, %202 ], [ %201, %207 ]
  %305 = load ptr, ptr %42, align 8, !tbaa !63
  %306 = getelementptr inbounds %struct.Scene, ptr %305, i64 0, i32 37, i32 18
  %307 = load i32, ptr %306, align 8, !tbaa !103
  %308 = and i32 %307, 2048
  %309 = icmp ne i32 %308, 0
  %310 = load i16, ptr %304, align 2, !tbaa !162
  %311 = and i16 %310, 2
  %312 = icmp eq i16 %311, 0
  %313 = select i1 %309, i1 true, i1 %312
  br i1 %313, label %564, label %314

314:                                              ; preds = %303
  %315 = load i16, ptr %150, align 8, !tbaa !154
  %316 = icmp eq i16 %315, 8
  br i1 %316, label %317, label %557

317:                                              ; preds = %314
  %318 = load i16, ptr %162, align 4, !tbaa !158
  %319 = zext i16 %318 to i32
  %320 = and i32 %319, 2048
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %385, label %322

322:                                              ; preds = %317
  %323 = load ptr, ptr %2, align 8, !tbaa !34
  %324 = load ptr, ptr %154, align 8, !tbaa !157
  %325 = call ptr @GPU_image(ptr noundef %324, ptr noundef nonnull %159, i8 noundef zeroext 1) #17
  %326 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.53, ptr noundef %323, ptr noundef %325, ptr noundef nonnull %5) #17
  %327 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 30
  %328 = load float, ptr %327, align 4, !tbaa !167
  %329 = fcmp olt float %328, 0.000000e+00
  br i1 %329, label %330, label %333

330:                                              ; preds = %322
  %331 = load ptr, ptr %5, align 8, !tbaa !34
  %332 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.54, ptr noundef %331, ptr noundef nonnull %5) #17
  br label %333

333:                                              ; preds = %330, %322
  %334 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 18
  %335 = load i16, ptr %334, align 8, !tbaa !168
  switch i16 %335, label %357 [
    i16 3, label %336
    i16 2, label %350
    i16 1, label %353
  ]

336:                                              ; preds = %333
  %337 = icmp eq i32 %72, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %336
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #19
  %339 = call ptr @GPU_builtin(i32 noundef 32) #17
  %340 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.55, ptr noundef %339, ptr noundef nonnull %24) #17
  %341 = call ptr @GPU_attribute(i32 noundef 18, ptr noundef nonnull @.str.5) #17
  %342 = load ptr, ptr %24, align 8, !tbaa !34
  %343 = load ptr, ptr %5, align 8, !tbaa !34
  %344 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.56, ptr noundef %341, ptr noundef %342, ptr noundef %343, ptr noundef nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  br label %359

345:                                              ; preds = %336
  %346 = call ptr @GPU_attribute(i32 noundef 18, ptr noundef nonnull @.str.5) #17
  %347 = load ptr, ptr %58, align 8, !tbaa !122
  %348 = load ptr, ptr %5, align 8, !tbaa !34
  %349 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.56, ptr noundef %346, ptr noundef %347, ptr noundef %348, ptr noundef nonnull %14) #17
  br label %359

350:                                              ; preds = %333
  %351 = load ptr, ptr %5, align 8, !tbaa !34
  %352 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.57, ptr noundef %351, ptr noundef nonnull %14) #17
  br label %359

353:                                              ; preds = %333
  %354 = call ptr @GPU_builtin(i32 noundef 1) #17
  %355 = load ptr, ptr %5, align 8, !tbaa !34
  %356 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.58, ptr noundef %354, ptr noundef %355, ptr noundef nonnull %14) #17
  br label %359

357:                                              ; preds = %333
  %358 = load ptr, ptr %5, align 8, !tbaa !34
  store ptr %358, ptr %14, align 8, !tbaa !34
  br label %359

359:                                              ; preds = %350, %357, %353, %338, %345
  %360 = phi i32 [ 0, %338 ], [ 0, %345 ], [ %72, %350 ], [ %72, %353 ], [ %72, %357 ]
  %361 = load float, ptr %327, align 4, !tbaa !167
  %362 = call float @llvm.fabs.f32(float %361)
  %363 = call fastcc float @min_ff(float noundef %362) #18
  store float %363, ptr %17, align 4, !tbaa !99
  %364 = fcmp oeq float %363, 1.000000e+00
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = load ptr, ptr %7, align 8, !tbaa !34
  %367 = call i32 @GPU_link_changed(ptr noundef %366) #17
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %365
  %370 = load ptr, ptr %14, align 8, !tbaa !34
  store ptr %370, ptr %58, align 8, !tbaa !122
  br label %557

371:                                              ; preds = %365, %359
  %372 = call ptr @GPU_uniform(ptr noundef nonnull %17) #17
  store ptr %372, ptr %8, align 8, !tbaa !34
  %373 = load ptr, ptr %7, align 8, !tbaa !34
  %374 = call i32 @GPU_link_changed(ptr noundef %373) #17
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %380, label %376

376:                                              ; preds = %371
  %377 = load ptr, ptr %8, align 8, !tbaa !34
  %378 = load ptr, ptr %7, align 8, !tbaa !34
  %379 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %377, ptr noundef %378, ptr noundef nonnull %8) #17
  br label %380

380:                                              ; preds = %376, %371
  %381 = load ptr, ptr %8, align 8, !tbaa !34
  %382 = load ptr, ptr %58, align 8, !tbaa !122
  %383 = load ptr, ptr %14, align 8, !tbaa !34
  %384 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.59, ptr noundef %381, ptr noundef %382, ptr noundef %383, ptr noundef nonnull %58) #17
  br label %557

385:                                              ; preds = %317
  %386 = and i32 %319, 16384
  %387 = load i16, ptr %176, align 8, !tbaa !161
  %388 = and i16 %387, 8960
  %389 = icmp ne i16 %388, 0
  %390 = icmp ne i32 %386, 0
  %391 = or i1 %390, %389
  br i1 %391, label %392, label %557

392:                                              ; preds = %385
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #19
  store float 1.024000e+03, ptr %27, align 4, !tbaa !99
  %393 = call ptr @GPU_builtin(i32 noundef 16) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #19
  %394 = load i16, ptr %176, align 8, !tbaa !161
  %395 = and i16 %394, 2048
  %396 = icmp eq i16 %395, 0
  %397 = select i1 %390, float 1.000000e+00, float 0x3FB99999A0000000
  %398 = select i1 %396, float %397, float 1.300000e+01
  %399 = icmp ne i16 %395, 0
  %400 = or i1 %390, %399
  br i1 %400, label %406, label %401

401:                                              ; preds = %392
  %402 = fneg float %397
  %403 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 30
  %404 = load float, ptr %403, align 4, !tbaa !167
  %405 = fmul float %404, %402
  store float %405, ptr %17, align 4, !tbaa !99
  br label %424

406:                                              ; preds = %392
  %407 = load ptr, ptr %154, align 8, !tbaa !157
  %408 = call ptr @BKE_image_acquire_ibuf(ptr noundef %407, ptr noundef nonnull %159, ptr noundef null) #17
  store float 5.120000e+02, ptr %25, align 4, !tbaa !99
  store float 5.120000e+02, ptr %26, align 4, !tbaa !99
  %409 = icmp eq ptr %408, null
  br i1 %409, label %417, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.ImBuf, ptr %408, i64 0, i32 2
  %412 = load <2 x i32>, ptr %411, align 8, !tbaa !113
  %413 = sitofp <2 x i32> %412 to <2 x float>
  %414 = extractelement <2 x float> %413, i64 0
  store float %414, ptr %25, align 4, !tbaa !99
  %415 = extractelement <2 x float> %413, i64 1
  store float %415, ptr %26, align 4, !tbaa !99
  %416 = fdiv float %415, %414
  br label %417

417:                                              ; preds = %406, %410
  %418 = phi float [ %416, %410 ], [ 1.000000e+00, %406 ]
  %419 = load ptr, ptr %154, align 8, !tbaa !157
  call void @BKE_image_release_ibuf(ptr noundef %419, ptr noundef %408, ptr noundef null) #17
  %420 = fneg float %398
  %421 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 30
  %422 = load float, ptr %421, align 4, !tbaa !167
  %423 = fmul float %422, %420
  store float %423, ptr %17, align 4, !tbaa !99
  br i1 %390, label %427, label %424

424:                                              ; preds = %401, %417
  %425 = phi float [ %418, %417 ], [ 1.000000e+00, %401 ]
  %426 = call ptr @GPU_uniform(ptr noundef nonnull %17) #17
  store ptr %426, ptr %8, align 8, !tbaa !34
  br label %443

427:                                              ; preds = %417
  %428 = load float, ptr %25, align 4, !tbaa !99
  %429 = load float, ptr %117, align 8, !tbaa !99
  %430 = fmul float %428, %429
  %431 = load float, ptr %26, align 4, !tbaa !99
  %432 = fmul float %430, %431
  %433 = load float, ptr %136, align 4, !tbaa !99
  %434 = fmul float %432, %433
  %435 = call float @llvm.fabs.f32(float %434)
  %436 = call float @llvm.sqrt.f32(float %435)
  %437 = fcmp ogt float %436, 0x3E80000000000000
  %438 = select i1 %437, float %436, float 0x3E80000000000000
  %439 = fdiv float %423, %438
  store float %439, ptr %17, align 4, !tbaa !99
  %440 = call ptr @GPU_uniform(ptr noundef nonnull %17) #17
  store ptr %440, ptr %8, align 8, !tbaa !34
  %441 = call ptr @GPU_builtin(i32 noundef 128) #17
  %442 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %440, ptr noundef %441, ptr noundef nonnull %8) #17
  br label %443

443:                                              ; preds = %424, %427
  %444 = phi float [ %425, %424 ], [ %418, %427 ]
  %445 = load ptr, ptr %7, align 8, !tbaa !34
  %446 = call i32 @GPU_link_changed(ptr noundef %445) #17
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %452, label %448

448:                                              ; preds = %443
  %449 = load ptr, ptr %8, align 8, !tbaa !34
  %450 = load ptr, ptr %7, align 8, !tbaa !34
  %451 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %449, ptr noundef %450, ptr noundef nonnull %8) #17
  br label %452

452:                                              ; preds = %448, %443
  %453 = icmp eq i8 %74, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %452
  %455 = load ptr, ptr %58, align 8, !tbaa !122
  %456 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.60, ptr noundef %455, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #17
  br label %457

457:                                              ; preds = %454, %452
  %458 = phi i32 [ %73, %452 ], [ 0, %454 ]
  %459 = load i16, ptr %176, align 8, !tbaa !161
  %460 = zext i16 %459 to i32
  %461 = and i32 %460, 1024
  %462 = icmp eq i32 %461, 0
  %463 = and i32 %460, 2048
  %464 = icmp eq i32 %463, 0
  %465 = select i1 %464, i32 4, i32 2
  %466 = select i1 %462, i32 %465, i32 1
  %467 = icmp eq i32 %458, %466
  br i1 %467, label %485, label %468

468:                                              ; preds = %457
  %469 = load ptr, ptr %19, align 8, !tbaa !34
  br i1 %462, label %478, label %470

470:                                              ; preds = %468
  %471 = call ptr @GPU_builtin(i32 noundef 1) #17
  %472 = call ptr @GPU_builtin(i32 noundef 4) #17
  %473 = call ptr @GPU_builtin(i32 noundef 2) #17
  %474 = call ptr @GPU_builtin(i32 noundef 8) #17
  %475 = load ptr, ptr %21, align 8, !tbaa !34
  %476 = load ptr, ptr %20, align 8, !tbaa !34
  %477 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.61, ptr noundef %393, ptr noundef %469, ptr noundef %471, ptr noundef %472, ptr noundef %473, ptr noundef %474, ptr noundef %475, ptr noundef %476, ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %32) #17
  br label %485

478:                                              ; preds = %468
  %479 = load ptr, ptr %21, align 8, !tbaa !34
  %480 = load ptr, ptr %20, align 8, !tbaa !34
  br i1 %464, label %483, label %481

481:                                              ; preds = %478
  %482 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.62, ptr noundef %393, ptr noundef %469, ptr noundef %479, ptr noundef %480, ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %32) #17
  br label %485

483:                                              ; preds = %478
  %484 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.63, ptr noundef %393, ptr noundef %469, ptr noundef %479, ptr noundef %480, ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %32) #17
  br label %485

485:                                              ; preds = %470, %483, %481, %457
  %486 = phi i32 [ %458, %457 ], [ 2, %481 ], [ 4, %483 ], [ 1, %470 ]
  br i1 %390, label %487, label %495

487:                                              ; preds = %485
  %488 = load ptr, ptr %2, align 8, !tbaa !34
  %489 = load ptr, ptr %154, align 8, !tbaa !157
  %490 = call ptr @GPU_image(ptr noundef %489, ptr noundef nonnull %159, i8 noundef zeroext 1) #17
  %491 = call ptr @GPU_uniform(ptr noundef nonnull %25) #17
  %492 = call ptr @GPU_uniform(ptr noundef nonnull %26) #17
  %493 = load ptr, ptr %8, align 8, !tbaa !34
  %494 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.64, ptr noundef %488, ptr noundef %490, ptr noundef %491, ptr noundef %492, ptr noundef %493, ptr noundef nonnull %30, ptr noundef nonnull %31) #17
  br label %529

495:                                              ; preds = %485
  %496 = load i16, ptr %176, align 8, !tbaa !161
  %497 = zext i16 %496 to i32
  %498 = and i32 %497, 256
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %506, label %500

500:                                              ; preds = %495
  %501 = load ptr, ptr %2, align 8, !tbaa !34
  %502 = load ptr, ptr %154, align 8, !tbaa !157
  %503 = call ptr @GPU_image(ptr noundef %502, ptr noundef nonnull %159, i8 noundef zeroext 1) #17
  %504 = load ptr, ptr %8, align 8, !tbaa !34
  %505 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.65, ptr noundef %501, ptr noundef %503, ptr noundef %504, ptr noundef nonnull %30, ptr noundef nonnull %31) #17
  br label %529

506:                                              ; preds = %495
  %507 = and i32 %497, 512
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %515, label %509

509:                                              ; preds = %506
  %510 = load ptr, ptr %2, align 8, !tbaa !34
  %511 = load ptr, ptr %154, align 8, !tbaa !157
  %512 = call ptr @GPU_image(ptr noundef %511, ptr noundef nonnull %159, i8 noundef zeroext 1) #17
  %513 = load ptr, ptr %8, align 8, !tbaa !34
  %514 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.66, ptr noundef %510, ptr noundef %512, ptr noundef %513, ptr noundef nonnull %30, ptr noundef nonnull %31) #17
  br label %529

515:                                              ; preds = %506
  %516 = and i32 %497, 8192
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %529, label %518

518:                                              ; preds = %515
  %519 = call i32 @GPU_bicubic_bump_support() #17
  %520 = icmp eq i32 %519, 0
  %521 = load ptr, ptr %2, align 8, !tbaa !34
  %522 = load ptr, ptr %154, align 8, !tbaa !157
  %523 = call ptr @GPU_image(ptr noundef %522, ptr noundef nonnull %159, i8 noundef zeroext 1) #17
  %524 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %520, label %527, label %525

525:                                              ; preds = %518
  %526 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.67, ptr noundef %521, ptr noundef %523, ptr noundef %524, ptr noundef nonnull %30, ptr noundef nonnull %31) #17
  br label %529

527:                                              ; preds = %518
  %528 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.66, ptr noundef %521, ptr noundef %523, ptr noundef %524, ptr noundef nonnull %30, ptr noundef nonnull %31) #17
  br label %529

529:                                              ; preds = %500, %515, %527, %525, %509, %487
  %530 = load i16, ptr %176, align 8, !tbaa !161
  %531 = and i16 %530, 2048
  %532 = icmp eq i16 %531, 0
  br i1 %532, label %548, label %533

533:                                              ; preds = %529
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #19
  %534 = load float, ptr %27, align 4, !tbaa !99
  %535 = fmul float %444, %534
  store float %535, ptr %33, align 4, !tbaa !99
  %536 = load ptr, ptr %32, align 8, !tbaa !34
  %537 = load ptr, ptr %30, align 8, !tbaa !34
  %538 = load ptr, ptr %31, align 8, !tbaa !34
  %539 = load ptr, ptr %28, align 8, !tbaa !34
  %540 = load ptr, ptr %29, align 8, !tbaa !34
  %541 = load ptr, ptr %154, align 8, !tbaa !157
  %542 = call ptr @GPU_image(ptr noundef %541, ptr noundef nonnull %159, i8 noundef zeroext 1) #17
  %543 = load ptr, ptr %2, align 8, !tbaa !34
  %544 = call ptr @GPU_uniform(ptr noundef nonnull %27) #17
  %545 = call ptr @GPU_uniform(ptr noundef nonnull %33) #17
  %546 = load ptr, ptr %20, align 8, !tbaa !34
  %547 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.68, ptr noundef %536, ptr noundef %537, ptr noundef %538, ptr noundef %539, ptr noundef %540, ptr noundef %542, ptr noundef %543, ptr noundef %544, ptr noundef %545, ptr noundef %546, ptr noundef nonnull %20, ptr noundef nonnull %58) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #19
  br label %556

548:                                              ; preds = %529
  %549 = load ptr, ptr %32, align 8, !tbaa !34
  %550 = load ptr, ptr %30, align 8, !tbaa !34
  %551 = load ptr, ptr %31, align 8, !tbaa !34
  %552 = load ptr, ptr %28, align 8, !tbaa !34
  %553 = load ptr, ptr %29, align 8, !tbaa !34
  %554 = load ptr, ptr %20, align 8, !tbaa !34
  %555 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.69, ptr noundef %549, ptr noundef %550, ptr noundef %551, ptr noundef %552, ptr noundef %553, ptr noundef %554, ptr noundef nonnull %20, ptr noundef nonnull %58) #17
  br label %556

556:                                              ; preds = %548, %533
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #19
  br label %557

557:                                              ; preds = %380, %369, %385, %556, %314
  %558 = phi i8 [ %74, %380 ], [ %74, %369 ], [ 1, %556 ], [ %74, %385 ], [ %74, %314 ]
  %559 = phi i32 [ %73, %380 ], [ %73, %369 ], [ %486, %556 ], [ %73, %385 ], [ %73, %314 ]
  %560 = phi i32 [ %360, %380 ], [ %360, %369 ], [ %72, %556 ], [ %72, %385 ], [ %72, %314 ]
  %561 = load ptr, ptr %58, align 8, !tbaa !122
  %562 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.55, ptr noundef %561, ptr noundef nonnull %15) #17
  %563 = load i16, ptr %304, align 2, !tbaa !162
  br label %564

564:                                              ; preds = %557, %303
  %565 = phi i16 [ %563, %557 ], [ %310, %303 ]
  %566 = phi i8 [ %558, %557 ], [ %74, %303 ]
  %567 = phi i32 [ %559, %557 ], [ %73, %303 ]
  %568 = phi i32 [ %560, %557 ], [ %72, %303 ]
  %569 = icmp ult i16 %565, 16
  br i1 %569, label %764, label %570

570:                                              ; preds = %564
  br i1 %179, label %571, label %575

571:                                              ; preds = %570
  %572 = load ptr, ptr %4, align 8, !tbaa !34
  %573 = select i1 %175, ptr @.str.50, ptr @.str.44
  %574 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull %573, ptr noundef %572, ptr noundef nonnull %3) #17
  br label %575

575:                                              ; preds = %571, %570
  %576 = load ptr, ptr %42, align 8, !tbaa !63
  %577 = getelementptr inbounds %struct.Scene, ptr %576, i64 0, i32 37, i32 18
  %578 = load i32, ptr %577, align 8, !tbaa !103
  %579 = and i32 %578, 2048
  %580 = icmp ne i32 %579, 0
  %581 = load i16, ptr %304, align 2, !tbaa !162
  %582 = and i16 %581, 16
  %583 = icmp eq i16 %582, 0
  %584 = select i1 %580, i1 true, i1 %583
  br i1 %584, label %610, label %585

585:                                              ; preds = %575
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #19
  %586 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 36
  %587 = load float, ptr %586, align 4, !tbaa !169
  %588 = fcmp oeq float %587, 1.000000e+00
  br i1 %588, label %589, label %591

589:                                              ; preds = %585
  %590 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %590, ptr %34, align 8, !tbaa !34
  br label %595

591:                                              ; preds = %585
  %592 = call ptr @GPU_uniform(ptr noundef nonnull %586) #17
  %593 = load ptr, ptr %7, align 8, !tbaa !34
  %594 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %592, ptr noundef %593, ptr noundef nonnull %34) #17
  br label %595

595:                                              ; preds = %591, %589
  %596 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 26
  %597 = call ptr @GPU_uniform(ptr noundef nonnull %596) #17
  %598 = load ptr, ptr %64, align 8, !tbaa !170
  %599 = load ptr, ptr %3, align 8, !tbaa !34
  %600 = load ptr, ptr %34, align 8, !tbaa !34
  %601 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 3
  %602 = load i16, ptr %601, align 2, !tbaa !164
  %603 = sext i16 %602 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %42, ptr noundef %597, ptr noundef %598, ptr noundef %599, ptr noundef %600, i32 noundef %603, ptr noundef nonnull %64) #18
  %604 = load ptr, ptr %64, align 8, !tbaa !170
  %605 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.70, ptr noundef %604, ptr noundef nonnull %64) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #19
  %606 = load ptr, ptr %42, align 8, !tbaa !63
  %607 = getelementptr inbounds %struct.Scene, ptr %606, i64 0, i32 37, i32 18
  %608 = load i32, ptr %607, align 8, !tbaa !103
  %609 = load i16, ptr %304, align 2, !tbaa !162
  br label %610

610:                                              ; preds = %595, %575
  %611 = phi i16 [ %609, %595 ], [ %581, %575 ]
  %612 = phi i32 [ %608, %595 ], [ %578, %575 ]
  %613 = and i32 %612, 2048
  %614 = icmp ne i32 %613, 0
  %615 = and i16 %611, 32
  %616 = icmp eq i16 %615, 0
  %617 = select i1 %614, i1 true, i1 %616
  br i1 %617, label %643, label %618

618:                                              ; preds = %610
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #19
  %619 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 37
  %620 = load float, ptr %619, align 8, !tbaa !171
  %621 = fcmp oeq float %620, 1.000000e+00
  br i1 %621, label %622, label %624

622:                                              ; preds = %618
  %623 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %623, ptr %35, align 8, !tbaa !34
  br label %628

624:                                              ; preds = %618
  %625 = call ptr @GPU_uniform(ptr noundef nonnull %619) #17
  %626 = load ptr, ptr %7, align 8, !tbaa !34
  %627 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %625, ptr noundef %626, ptr noundef nonnull %35) #17
  br label %628

628:                                              ; preds = %624, %622
  %629 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 26
  %630 = call ptr @GPU_uniform(ptr noundef nonnull %629) #17
  %631 = load ptr, ptr %65, align 8, !tbaa !142
  %632 = load ptr, ptr %3, align 8, !tbaa !34
  %633 = load ptr, ptr %35, align 8, !tbaa !34
  %634 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 3
  %635 = load i16, ptr %634, align 2, !tbaa !164
  %636 = sext i16 %635 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %42, ptr noundef %630, ptr noundef %631, ptr noundef %632, ptr noundef %633, i32 noundef %636, ptr noundef nonnull %65) #18
  %637 = load ptr, ptr %65, align 8, !tbaa !142
  %638 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.70, ptr noundef %637, ptr noundef nonnull %65) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #19
  %639 = load ptr, ptr %42, align 8, !tbaa !63
  %640 = getelementptr inbounds %struct.Scene, ptr %639, i64 0, i32 37, i32 18
  %641 = load i32, ptr %640, align 8, !tbaa !103
  %642 = load i16, ptr %304, align 2, !tbaa !162
  br label %643

643:                                              ; preds = %628, %610
  %644 = phi i16 [ %642, %628 ], [ %611, %610 ]
  %645 = phi i32 [ %641, %628 ], [ %612, %610 ]
  %646 = and i32 %645, 2048
  %647 = icmp ne i32 %646, 0
  %648 = and i16 %644, 64
  %649 = icmp eq i16 %648, 0
  %650 = select i1 %647, i1 true, i1 %649
  br i1 %650, label %676, label %651

651:                                              ; preds = %643
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #19
  %652 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 38
  %653 = load float, ptr %652, align 4, !tbaa !172
  %654 = fcmp oeq float %653, 1.000000e+00
  br i1 %654, label %655, label %657

655:                                              ; preds = %651
  %656 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %656, ptr %36, align 8, !tbaa !34
  br label %661

657:                                              ; preds = %651
  %658 = call ptr @GPU_uniform(ptr noundef nonnull %652) #17
  %659 = load ptr, ptr %7, align 8, !tbaa !34
  %660 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %658, ptr noundef %659, ptr noundef nonnull %36) #17
  br label %661

661:                                              ; preds = %657, %655
  %662 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 26
  %663 = call ptr @GPU_uniform(ptr noundef nonnull %662) #17
  %664 = load ptr, ptr %66, align 8, !tbaa !131
  %665 = load ptr, ptr %3, align 8, !tbaa !34
  %666 = load ptr, ptr %36, align 8, !tbaa !34
  %667 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 3
  %668 = load i16, ptr %667, align 2, !tbaa !164
  %669 = sext i16 %668 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %42, ptr noundef %663, ptr noundef %664, ptr noundef %665, ptr noundef %666, i32 noundef %669, ptr noundef nonnull %66) #18
  %670 = load ptr, ptr %66, align 8, !tbaa !131
  %671 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.70, ptr noundef %670, ptr noundef nonnull %66) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #19
  %672 = load ptr, ptr %42, align 8, !tbaa !63
  %673 = getelementptr inbounds %struct.Scene, ptr %672, i64 0, i32 37, i32 18
  %674 = load i32, ptr %673, align 8, !tbaa !103
  %675 = load i16, ptr %304, align 2, !tbaa !162
  br label %676

676:                                              ; preds = %661, %643
  %677 = phi i16 [ %675, %661 ], [ %644, %643 ]
  %678 = phi i32 [ %674, %661 ], [ %645, %643 ]
  %679 = and i32 %678, 2048
  %680 = icmp ne i32 %679, 0
  %681 = and i16 %677, 256
  %682 = icmp eq i16 %681, 0
  %683 = select i1 %680, i1 true, i1 %682
  br i1 %683, label %708, label %684

684:                                              ; preds = %676
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #19
  %685 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 39
  %686 = load float, ptr %685, align 8, !tbaa !173
  %687 = fcmp oeq float %686, 1.000000e+00
  br i1 %687, label %688, label %690

688:                                              ; preds = %684
  %689 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %689, ptr %37, align 8, !tbaa !34
  br label %694

690:                                              ; preds = %684
  %691 = call ptr @GPU_uniform(ptr noundef nonnull %685) #17
  %692 = load ptr, ptr %7, align 8, !tbaa !34
  %693 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %691, ptr noundef %692, ptr noundef nonnull %37) #17
  br label %694

694:                                              ; preds = %690, %688
  %695 = load ptr, ptr %67, align 8, !tbaa !174
  %696 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.71, ptr noundef %695, ptr noundef nonnull %67) #17
  %697 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 26
  %698 = call ptr @GPU_uniform(ptr noundef nonnull %697) #17
  %699 = load ptr, ptr %67, align 8, !tbaa !174
  %700 = load ptr, ptr %3, align 8, !tbaa !34
  %701 = load ptr, ptr %37, align 8, !tbaa !34
  %702 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 3
  %703 = load i16, ptr %702, align 2, !tbaa !164
  %704 = sext i16 %703 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %42, ptr noundef %698, ptr noundef %699, ptr noundef %700, ptr noundef %701, i32 noundef %704, ptr noundef nonnull %67) #18
  %705 = load ptr, ptr %67, align 8, !tbaa !174
  %706 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.72, ptr noundef %705, ptr noundef nonnull %67) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #19
  %707 = load i16, ptr %304, align 2, !tbaa !162
  br label %708

708:                                              ; preds = %694, %676
  %709 = phi i16 [ %707, %694 ], [ %677, %676 ]
  %710 = and i16 %709, 128
  %711 = icmp eq i16 %710, 0
  br i1 %711, label %733, label %712

712:                                              ; preds = %708
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #19
  %713 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 35
  %714 = load float, ptr %713, align 8, !tbaa !175
  %715 = fcmp oeq float %714, 1.000000e+00
  br i1 %715, label %716, label %718

716:                                              ; preds = %712
  %717 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %717, ptr %38, align 8, !tbaa !34
  br label %722

718:                                              ; preds = %712
  %719 = call ptr @GPU_uniform(ptr noundef nonnull %713) #17
  %720 = load ptr, ptr %7, align 8, !tbaa !34
  %721 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %719, ptr noundef %720, ptr noundef nonnull %38) #17
  br label %722

722:                                              ; preds = %718, %716
  %723 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 26
  %724 = call ptr @GPU_uniform(ptr noundef nonnull %723) #17
  %725 = load ptr, ptr %68, align 8, !tbaa !127
  %726 = load ptr, ptr %3, align 8, !tbaa !34
  %727 = load ptr, ptr %38, align 8, !tbaa !34
  %728 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 3
  %729 = load i16, ptr %728, align 2, !tbaa !164
  %730 = sext i16 %729 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %42, ptr noundef %724, ptr noundef %725, ptr noundef %726, ptr noundef %727, i32 noundef %730, ptr noundef nonnull %68) #18
  %731 = load ptr, ptr %68, align 8, !tbaa !127
  %732 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.73, ptr noundef %731, ptr noundef nonnull %68) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #19
  br label %733

733:                                              ; preds = %722, %708
  %734 = load ptr, ptr %42, align 8, !tbaa !63
  %735 = getelementptr inbounds %struct.Scene, ptr %734, i64 0, i32 37, i32 18
  %736 = load i32, ptr %735, align 8, !tbaa !103
  %737 = and i32 %736, 2048
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %764

739:                                              ; preds = %733
  %740 = load i16, ptr %304, align 2, !tbaa !162
  %741 = and i16 %740, 2048
  %742 = icmp eq i16 %741, 0
  br i1 %742, label %764, label %743

743:                                              ; preds = %739
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #19
  %744 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 42
  %745 = load float, ptr %744, align 4, !tbaa !176
  %746 = fcmp oeq float %745, 1.000000e+00
  br i1 %746, label %747, label %749

747:                                              ; preds = %743
  %748 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %748, ptr %39, align 8, !tbaa !34
  br label %753

749:                                              ; preds = %743
  %750 = call ptr @GPU_uniform(ptr noundef nonnull %744) #17
  %751 = load ptr, ptr %7, align 8, !tbaa !34
  %752 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.52, ptr noundef %750, ptr noundef %751, ptr noundef nonnull %39) #17
  br label %753

753:                                              ; preds = %749, %747
  %754 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 26
  %755 = call ptr @GPU_uniform(ptr noundef nonnull %754) #17
  %756 = load ptr, ptr %69, align 8, !tbaa !140
  %757 = load ptr, ptr %3, align 8, !tbaa !34
  %758 = load ptr, ptr %39, align 8, !tbaa !34
  %759 = getelementptr inbounds %struct.MTex, ptr %82, i64 0, i32 3
  %760 = load i16, ptr %759, align 2, !tbaa !164
  %761 = sext i16 %760 to i32
  call fastcc void @texture_value_blend(ptr noundef nonnull %42, ptr noundef %755, ptr noundef %756, ptr noundef %757, ptr noundef %758, i32 noundef %761, ptr noundef nonnull %69) #18
  %762 = load ptr, ptr %69, align 8, !tbaa !140
  %763 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %42, ptr noundef nonnull @.str.73, ptr noundef %762, ptr noundef nonnull %69) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #19
  br label %764

764:                                              ; preds = %88, %80, %733, %739, %753, %564, %149, %153, %84, %70
  %765 = phi i8 [ %74, %70 ], [ %74, %84 ], [ %566, %733 ], [ %566, %753 ], [ %566, %739 ], [ %566, %564 ], [ %74, %153 ], [ %74, %149 ], [ %74, %80 ], [ %74, %88 ]
  %766 = phi i32 [ %73, %70 ], [ %73, %84 ], [ %567, %733 ], [ %567, %753 ], [ %567, %739 ], [ %567, %564 ], [ %73, %153 ], [ %73, %149 ], [ %73, %80 ], [ %73, %88 ]
  %767 = phi i32 [ %72, %70 ], [ %72, %84 ], [ %568, %733 ], [ %568, %753 ], [ %568, %739 ], [ %568, %564 ], [ %72, %153 ], [ %72, %149 ], [ %72, %80 ], [ %72, %88 ]
  %768 = add nuw nsw i64 %71, 1
  %769 = icmp eq i64 %768, 18
  br i1 %769, label %770, label %70, !llvm.loop !177

770:                                              ; preds = %764
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_link_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @material_lights(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !178 {
  %3 = alloca ptr, align 8
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !118
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  store ptr %6, ptr %3, align 8, !tbaa !34
  %7 = call ptr @_setlooper_base_step(ptr noundef nonnull %3, ptr noundef null) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %2, %56
  %10 = phi ptr [ %57, %56 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !179
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !181
  %15 = icmp eq i16 %14, 10
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 8, !tbaa !118
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = call ptr @GPU_lamp_from_blender(ptr noundef %18, ptr noundef nonnull %12, ptr noundef null) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  call fastcc void @shade_one_light(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %19) #18
  br label %22

22:                                               ; preds = %16, %21, %9
  %23 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 55
  %24 = load i16, ptr %23, align 8, !tbaa !184
  %25 = and i16 %24, 2840
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @G, align 8, !tbaa !185
  %29 = getelementptr inbounds %struct.Main, ptr %28, i64 0, i32 46
  %30 = load ptr, ptr %29, align 8, !tbaa !187
  %31 = load ptr, ptr %0, align 8, !tbaa !118
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = call ptr @object_duplilist(ptr noundef %30, ptr noundef %32, ptr noundef nonnull %12) #17
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %27, %52
  %37 = phi ptr [ %53, %52 ], [ %34, %27 ]
  %38 = getelementptr inbounds %struct.DupliObject, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !189
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 3
  %41 = load i16, ptr %40, align 8, !tbaa !181
  %42 = icmp eq i16 %41, 10
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %44 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %44) #17
  %45 = getelementptr inbounds %struct.DupliObject, ptr %37, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %44, ptr noundef nonnull %45) #17
  %46 = load ptr, ptr %0, align 8, !tbaa !118
  %47 = load ptr, ptr %46, align 8, !tbaa !63
  %48 = call ptr @GPU_lamp_from_blender(ptr noundef %47, ptr noundef nonnull %39, ptr noundef %12) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  call fastcc void @shade_one_light(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %48) #18
  br label %51

51:                                               ; preds = %50, %43
  call void @copy_m4_m4(ptr noundef nonnull %44, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %52

52:                                               ; preds = %51, %36
  %53 = load ptr, ptr %37, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %36, !llvm.loop !191

55:                                               ; preds = %52, %27
  call void @free_object_duplilist(ptr noundef nonnull %33) #17
  br label %56

56:                                               ; preds = %22, %55
  %57 = call ptr @_setlooper_base_step(ptr noundef nonnull %3, ptr noundef nonnull %10) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %9, !llvm.loop !192

59:                                               ; preds = %56, %2
  %60 = load ptr, ptr %0, align 8, !tbaa !118
  %61 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !136
  %63 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %60, ptr noundef nonnull @.str.100, ptr noundef %62, ptr noundef nonnull %61) #17
  %64 = load ptr, ptr %0, align 8, !tbaa !118
  %65 = load ptr, ptr %1, align 8, !tbaa !128
  %66 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %64, ptr noundef nonnull @.str.100, ptr noundef %65, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @logf(float noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ramp_diffuse_result(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !193 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = load ptr, ptr %0, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 37, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !103
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 92
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 94
  %18 = load i8, ptr %17, align 8, !tbaa !195
  %19 = icmp eq i8 %18, 3
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8, !tbaa !34
  %22 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %6, ptr noundef nonnull @.str.127, ptr noundef %21, ptr noundef nonnull %3) #17
  %23 = load ptr, ptr %13, align 8, !tbaa !194
  %24 = load ptr, ptr %3, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 100
  %26 = load float, ptr %25, align 8, !tbaa !196
  %27 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 96
  %28 = load i8, ptr %27, align 2, !tbaa !197
  %29 = zext i8 %28 to i32
  %30 = load ptr, ptr %1, align 8, !tbaa !34
  call fastcc void @do_colorband_blend(ptr noundef nonnull %6, ptr noundef %23, ptr noundef %24, float noundef %26, i32 noundef %29, ptr noundef %30, ptr noundef nonnull %1) #18
  br label %31

31:                                               ; preds = %12, %20, %16, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ramp_spec_result(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !198 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = load ptr, ptr %0, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 37, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !103
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 93
  %14 = load ptr, ptr %13, align 8, !tbaa !199
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 95
  %18 = load i8, ptr %17, align 1, !tbaa !200
  %19 = icmp eq i8 %18, 3
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8, !tbaa !34
  %22 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %6, ptr noundef nonnull @.str.127, ptr noundef %21, ptr noundef nonnull %3) #17
  %23 = load ptr, ptr %13, align 8, !tbaa !199
  %24 = load ptr, ptr %3, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 101
  %26 = load float, ptr %25, align 4, !tbaa !201
  %27 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 97
  %28 = load i8, ptr %27, align 1, !tbaa !202
  %29 = zext i8 %28 to i32
  %30 = load ptr, ptr %1, align 8, !tbaa !34
  call fastcc void @do_colorband_blend(ptr noundef nonnull %6, ptr noundef %23, ptr noundef %24, float noundef %26, i32 noundef %29, ptr noundef %30, ptr noundef nonnull %1) #18
  br label %31

31:                                               ; preds = %20, %16, %12, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_material_matcap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 136
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %31, label %4, !llvm.loop !203

13:                                               ; preds = %4
  %14 = tail call fastcc ptr @GPU_material_construct_begin(ptr noundef %1) #18
  store ptr %0, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 106
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.PreviewImage, ptr %16, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @gpu_material_preview_matcap(ptr noundef nonnull %14, ptr noundef nonnull %1) #18
  br label %26

24:                                               ; preds = %18, %13
  %25 = tail call fastcc ptr @gpu_material_diffuse_bsdf(ptr noundef nonnull %14, ptr noundef nonnull %1) #18
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %23, %22 ], [ %25, %24 ]
  tail call void @GPU_material_output_link(ptr noundef nonnull %14, ptr noundef %27) #18
  tail call fastcc void @GPU_material_construct_end(ptr noundef nonnull %14) #18
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 24, ptr noundef nonnull @.str.21) #17
  %30 = getelementptr inbounds %struct.LinkData, ptr %29, i64 0, i32 2
  store ptr %14, ptr %30, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %29) #17
  br label %31

31:                                               ; preds = %8, %26
  %32 = phi ptr [ %14, %26 ], [ %10, %8 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GPU_material_construct_begin(ptr noundef %0) unnamed_addr #0 !PGOFuncName !205 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 2672, ptr noundef nonnull @.str.147) #17
  %4 = getelementptr inbounds %struct.GPUMaterial, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !88
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_material_preview_matcap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !206 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %5 = tail call ptr @GPU_uniform(ptr noundef nonnull %4) #17
  %6 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 106
  %7 = load ptr, ptr %6, align 8, !tbaa !204
  %8 = tail call ptr @GPU_image_preview(ptr noundef %7) #17
  %9 = tail call ptr @GPU_opengl_builtin(i32 noundef 1) #17
  %10 = tail call ptr @GPU_opengl_builtin(i32 noundef 2) #17
  %11 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.148, ptr noundef %5, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %3) #17
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_material_diffuse_bsdf(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !207 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %5 = tail call ptr @GPU_uniform(ptr noundef nonnull %4) #17
  %6 = tail call ptr @GPU_uniform(ptr noundef nonnull @gpu_material_diffuse_bsdf.roughness) #17
  %7 = tail call ptr @GPU_builtin(i32 noundef 32) #17
  %8 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %3) #17
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_material_construct_end(ptr noundef %0) unnamed_addr #0 !PGOFuncName !208 {
  %2 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %12 = tail call ptr @GPU_generate_pass(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %11) #17
  %13 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !40
  %14 = icmp eq ptr %12, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %5
  tail call fastcc void @gpu_material_set_attrib_id(ptr noundef nonnull %0) #18
  %16 = load ptr, ptr %13, align 8, !tbaa !40
  %17 = tail call ptr @GPU_pass_shader(ptr noundef %16) #17
  %18 = load i32, ptr %8, align 8, !tbaa !94
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @GPU_builtin_name(i32 noundef 1) #17
  %23 = tail call i32 @GPU_shader_get_uniform(ptr noundef %17, ptr noundef %22) #17
  %24 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 11
  store i32 %23, ptr %24, align 8, !tbaa !95
  %25 = load i32, ptr %8, align 8, !tbaa !94
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i32 [ %25, %21 ], [ %18, %15 ]
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @GPU_builtin_name(i32 noundef 4) #17
  %32 = tail call i32 @GPU_shader_get_uniform(ptr noundef %17, ptr noundef %31) #17
  %33 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 12
  store i32 %32, ptr %33, align 4, !tbaa !96
  %34 = load i32, ptr %8, align 8, !tbaa !94
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i32 [ %34, %30 ], [ %27, %26 ]
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @GPU_builtin_name(i32 noundef 2) #17
  %41 = tail call i32 @GPU_shader_get_uniform(ptr noundef %17, ptr noundef %40) #17
  %42 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 13
  store i32 %41, ptr %42, align 8, !tbaa !106
  %43 = load i32, ptr %8, align 8, !tbaa !94
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %43, %39 ], [ %36, %35 ]
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @GPU_builtin_name(i32 noundef 8) #17
  %50 = tail call i32 @GPU_shader_get_uniform(ptr noundef %17, ptr noundef %49) #17
  %51 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 14
  store i32 %50, ptr %51, align 4, !tbaa !107
  %52 = load i32, ptr %8, align 8, !tbaa !94
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i32 [ %52, %48 ], [ %45, %44 ]
  %55 = and i32 %54, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @GPU_builtin_name(i32 noundef 64) #17
  %59 = tail call i32 @GPU_shader_get_uniform(ptr noundef %17, ptr noundef %58) #17
  %60 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 15
  store i32 %59, ptr %60, align 8, !tbaa !108
  %61 = load i32, ptr %8, align 8, !tbaa !94
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i32 [ %61, %57 ], [ %54, %53 ]
  %64 = and i32 %63, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @GPU_builtin_name(i32 noundef 128) #17
  %68 = tail call i32 @GPU_shader_get_uniform(ptr noundef %17, ptr noundef %67) #17
  %69 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 16
  store i32 %68, ptr %69, align 4, !tbaa !109
  br label %70

70:                                               ; preds = %1, %5, %66, %62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_material_from_blender(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 136
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %61, label %4, !llvm.loop !209

13:                                               ; preds = %4
  %14 = tail call fastcc ptr @GPU_material_construct_begin(ptr noundef %1) #18
  store ptr %0, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 51
  %16 = load i32, ptr %15, align 4, !tbaa !125
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @GPU_material_enable_alpha(ptr noundef nonnull %14) #18
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 37, i32 18
  %22 = load i32, ptr %21, align 8, !tbaa !103
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %27 = load ptr, ptr %26, align 8, !tbaa !210
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 77
  %31 = load i8, ptr %30, align 1, !tbaa !211
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %0) #17
  %35 = icmp eq i8 %34, 0
  %36 = load ptr, ptr %26, align 8, !tbaa !210
  br i1 %35, label %38, label %37

37:                                               ; preds = %33
  tail call void @ntreeGPUMaterialNodes(ptr noundef %36, ptr noundef nonnull %14, i16 noundef signext 2) #17
  br label %48

38:                                               ; preds = %33
  tail call void @ntreeGPUMaterialNodes(ptr noundef %36, ptr noundef nonnull %14, i16 noundef signext 1) #17
  br label %48

39:                                               ; preds = %29, %25, %20
  %40 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %0) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @gpu_material_diffuse_bsdf(ptr noundef nonnull %14, ptr noundef nonnull %1) #18
  br label %46

44:                                               ; preds = %39
  %45 = tail call fastcc ptr @GPU_blender_material(ptr noundef nonnull %14, ptr noundef nonnull %1) #18
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ]
  tail call void @GPU_material_output_link(ptr noundef nonnull %14, ptr noundef %47) #18
  br label %48

48:                                               ; preds = %37, %38, %46
  %49 = tail call zeroext i8 @GPU_material_do_color_management(ptr noundef nonnull %14) #18, !range !92
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.GPUMaterial, ptr %14, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !114
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %14, ptr noundef nonnull @.str.22, ptr noundef nonnull %53, ptr noundef nonnull %52) #17
  br label %57

57:                                               ; preds = %51, %55, %48
  tail call fastcc void @GPU_material_construct_end(ptr noundef nonnull %14) #18
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %59 = tail call ptr %58(i64 noundef 24, ptr noundef nonnull @.str.21) #17
  %60 = getelementptr inbounds %struct.LinkData, ptr %59, i64 0, i32 2
  store ptr %14, ptr %60, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %59) #17
  br label %61

61:                                               ; preds = %8, %57
  %62 = phi ptr [ %14, %57 ], [ %10, %8 ]
  ret ptr %62
}

; Function Attrs: optsize
declare void @ntreeGPUMaterialNodes(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GPU_blender_material(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !212 {
  %3 = alloca %struct.GPUShadeInput, align 8
  %4 = alloca %struct.GPUShadeResult, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @GPU_shadeinput_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #18
  call void @GPU_shaderesult_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %5 = getelementptr inbounds %struct.GPUShadeResult, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #19
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_materials_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !185
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @GPU_material_free(ptr noundef nonnull %6) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !213

9:                                                ; preds = %5, %0
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #18
  %10 = load ptr, ptr @G, align 8, !tbaa !185
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %9 ]
  tail call void @GPU_lamp_free(ptr noundef nonnull %15) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !214

18:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %5, %20
  %13 = phi ptr [ %21, %20 ], [ %10, %5 ]
  %14 = getelementptr inbounds %struct.LinkData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %13) #17
  %16 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 136
  %17 = load ptr, ptr %16, align 8, !tbaa !215
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  tail call void @GPU_material_free(ptr noundef nonnull %15) #18
  br label %20

20:                                               ; preds = %19, %12
  %21 = load ptr, ptr %9, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !216

23:                                               ; preds = %20, %5
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %8) #18
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %8) #17
  %25 = load ptr, ptr %6, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !217

27:                                               ; preds = %23, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_lamp_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 6
  store i32 %1, ptr %6, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 7
  store i32 %2, ptr %7, align 4, !tbaa !85
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef %3) #17
  call void @normalize_m4(ptr noundef nonnull %5) #17
  %8 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %10 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 12
  %11 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 16
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %5) #17
  %13 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 17
  %14 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPU_lamp_update_colors(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 10
  store float %4, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !87
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = fneg float %4
  store float %12, ptr %6, align 8, !tbaa !89
  br label %13

13:                                               ; preds = %11, %5
  %14 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 11
  store float %1, ptr %14, align 4, !tbaa !99
  %15 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 11, i64 1
  store float %2, ptr %15, align 4, !tbaa !99
  %16 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 11, i64 2
  store float %3, ptr %16, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @GPU_lamp_update_distance(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 25
  store float %1, ptr %5, align 8, !tbaa !218
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 26
  store float %2, ptr %6, align 4, !tbaa !219
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 27
  store float %3, ptr %7, align 8, !tbaa !220
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_lamp_update_spot(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fmul float %1, 5.000000e-01
  %5 = tail call float @cosf(float noundef %4) #17
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 19
  store float %5, ptr %6, align 8, !tbaa !221
  %7 = fsub float 1.000000e+00, %5
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 20
  store float %8, ptr %9, align 4, !tbaa !222
  tail call fastcc void @gpu_lamp_calc_winmat(ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_lamp_calc_winmat(ptr noundef %0) unnamed_addr #0 !PGOFuncName !223 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !224
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 65
  %9 = load float, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 35
  %11 = fneg float %9
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 30
  %13 = load float, ptr %12, align 4, !tbaa !228
  %14 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 31
  %15 = load float, ptr %14, align 8, !tbaa !229
  tail call void @orthographic_m4(ptr noundef nonnull %10, float noundef %11, float noundef %9, float noundef %11, float noundef %9, float noundef %13, float noundef %15) #17
  br label %39

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 19
  %18 = load float, ptr %17, align 8, !tbaa !221
  %19 = tail call fastcc float @saacos(float noundef %18) #18
  %20 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 32
  %21 = load i32, ptr %20, align 4, !tbaa !230
  %22 = sitofp i32 %21 to float
  %23 = fmul float %22, 5.000000e-01
  %24 = tail call float @cosf(float noundef %19) #17
  %25 = fmul float %24, %23
  %26 = tail call float @sinf(float noundef %19) #17
  %27 = fdiv float %25, %26
  %28 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 30
  %29 = load float, ptr %28, align 4, !tbaa !228
  %30 = fdiv float %29, %27
  %31 = fmul float %30, 5.000000e-01
  %32 = load i32, ptr %20, align 4, !tbaa !230
  %33 = sitofp i32 %32 to float
  %34 = fmul float %31, %33
  %35 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 35
  %36 = fneg float %34
  %37 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 31
  %38 = load float, ptr %37, align 8, !tbaa !229
  tail call void @perspective_m4(ptr noundef nonnull %35, float noundef %36, float noundef %34, float noundef %36, float noundef %34, float noundef %29, float noundef %38) #17
  br label %39

39:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_lamp_from_blender(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 125
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.GPULamp, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !231
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr %10, align 8, !tbaa !102
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %114, label %17

17:                                               ; preds = %7, %14
  %18 = load ptr, ptr %8, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !232

20:                                               ; preds = %17, %3
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 712, ptr noundef nonnull @.str.23) #17
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 24, ptr noundef nonnull @.str.24) #17
  %25 = getelementptr inbounds %struct.LinkData, ptr %24, i64 0, i32 2
  store ptr %22, ptr %25, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %24) #17
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !233
  tail call fastcc void @gpu_lamp_from_blender(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %27, ptr noundef %22) #18
  %28 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 2
  %29 = load i16, ptr %28, align 8, !tbaa !234
  switch i16 %29, label %111 [
    i16 2, label %30
    i16 1, label %35
  ]

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !235
  %33 = and i32 %32, 8193
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %111, label %40

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !235
  %38 = and i32 %37, 8192
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %111, label %40

40:                                               ; preds = %35, %30
  %41 = tail call ptr @GPU_framebuffer_create() #17
  %42 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 39
  store ptr %41, ptr %42, align 8, !tbaa !105
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !225
  %48 = getelementptr inbounds %struct.Lamp, ptr %47, i64 0, i32 48
  %49 = load i16, ptr %48, align 2, !tbaa !236
  %50 = icmp eq i16 %49, 1
  %51 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 32
  %52 = load i32, ptr %51, align 4, !tbaa !230
  %53 = tail call ptr @GPU_texture_create_depth(i32 noundef %52, i32 noundef %52, ptr noundef null) #17
  %54 = icmp eq ptr %53, null
  br i1 %50, label %55, label %93

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 42
  store ptr %53, ptr %56, align 8, !tbaa !237
  br i1 %54, label %57, label %58

57:                                               ; preds = %55
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

58:                                               ; preds = %55
  %59 = load ptr, ptr %42, align 8, !tbaa !105
  %60 = tail call i32 @GPU_framebuffer_texture_attach(ptr noundef %59, ptr noundef nonnull %53, ptr noundef null) #17
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

63:                                               ; preds = %58
  %64 = load i32, ptr %51, align 4, !tbaa !230
  %65 = tail call ptr @GPU_texture_create_vsm_shadow_map(i32 noundef %64, ptr noundef null) #17
  %66 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 41
  store ptr %65, ptr %66, align 8, !tbaa !104
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

69:                                               ; preds = %63
  %70 = load ptr, ptr %42, align 8, !tbaa !105
  %71 = tail call i32 @GPU_framebuffer_texture_attach(ptr noundef %70, ptr noundef nonnull %65, ptr noundef null) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

74:                                               ; preds = %69
  %75 = tail call ptr @GPU_framebuffer_create() #17
  %76 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 40
  store ptr %75, ptr %76, align 8, !tbaa !238
  %77 = icmp eq ptr %75, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

79:                                               ; preds = %74
  %80 = load i32, ptr %51, align 4, !tbaa !230
  %81 = sitofp i32 %80 to double
  %82 = fmul double %81, 5.000000e-01
  %83 = fptosi double %82 to i32
  %84 = tail call ptr @GPU_texture_create_vsm_shadow_map(i32 noundef %83, ptr noundef null) #17
  %85 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 43
  store ptr %84, ptr %85, align 8, !tbaa !239
  %86 = icmp eq ptr %84, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

88:                                               ; preds = %79
  %89 = load ptr, ptr %76, align 8, !tbaa !238
  %90 = tail call i32 @GPU_framebuffer_texture_attach(ptr noundef %89, ptr noundef nonnull %84, ptr noundef null) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

93:                                               ; preds = %45
  %94 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 41
  store ptr %53, ptr %94, align 8, !tbaa !104
  br i1 %54, label %95, label %96

95:                                               ; preds = %93
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

96:                                               ; preds = %93
  %97 = load ptr, ptr %42, align 8, !tbaa !105
  %98 = tail call i32 @GPU_framebuffer_texture_attach(ptr noundef %97, ptr noundef nonnull %53, ptr noundef null) #17
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  tail call fastcc void @gpu_lamp_shadow_free(ptr noundef nonnull %22) #18
  br label %114

101:                                              ; preds = %96, %88
  tail call void @GPU_framebuffer_restore() #17
  %102 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 11
  %103 = load float, ptr %102, align 4, !tbaa !240
  %104 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 28
  store float %103, ptr %104, align 4, !tbaa !99
  %105 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 12
  %106 = load float, ptr %105, align 8, !tbaa !241
  %107 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 28, i64 1
  store float %106, ptr %107, align 4, !tbaa !99
  %108 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 13
  %109 = load float, ptr %108, align 4, !tbaa !242
  %110 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 28, i64 2
  store float %109, ptr %110, align 4, !tbaa !99
  br label %114

111:                                              ; preds = %20, %30, %35
  %112 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 28
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %112, align 4, !tbaa !99
  %113 = getelementptr inbounds %struct.GPULamp, ptr %22, i64 0, i32 28, i64 2
  store float 1.000000e+00, ptr %113, align 4, !tbaa !99
  br label %114

114:                                              ; preds = %14, %101, %111, %100, %95, %92, %87, %78, %73, %68, %62, %57, %44
  %115 = phi ptr [ %22, %92 ], [ %22, %87 ], [ %22, %78 ], [ %22, %73 ], [ %22, %68 ], [ %22, %62 ], [ %22, %57 ], [ %22, %100 ], [ %22, %95 ], [ %22, %44 ], [ %22, %111 ], [ %22, %101 ], [ %10, %14 ]
  ret ptr %115
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_lamp_from_blender(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !243 {
  store ptr %0, ptr %4, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !231
  %8 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !225
  %9 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !235
  %11 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 5
  store i32 %10, ptr %11, align 4, !tbaa !87
  %12 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !234
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !224
  %16 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 15
  %17 = load float, ptr %16, align 4, !tbaa !244
  %18 = and i32 %10, 16
  %19 = icmp eq i32 %18, 0
  %20 = fneg float %17
  %21 = select i1 %19, float %17, float %20
  %22 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 10
  store float %21, ptr %22, align 8, !tbaa !89
  %23 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 7
  %24 = load float, ptr %23, align 4, !tbaa !245
  %25 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 11
  store float %24, ptr %25, align 4, !tbaa !99
  %26 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 8
  %27 = load float, ptr %26, align 8, !tbaa !246
  %28 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 11, i64 1
  store float %27, ptr %28, align 4, !tbaa !99
  %29 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 9
  %30 = load float, ptr %29, align 4, !tbaa !247
  %31 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 11, i64 2
  store float %30, ptr %31, align 4, !tbaa !99
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %33 = load i32, ptr %32, align 8, !tbaa !248
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 102
  %35 = load i8, ptr %34, align 8, !tbaa !249
  %36 = and i8 %35, 4
  %37 = zext nneg i8 %36 to i32
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  tail call void @GPU_lamp_update(ptr noundef nonnull %4, i32 noundef %33, i32 noundef %37, ptr noundef nonnull %38) #18
  %39 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 17
  %40 = load float, ptr %39, align 4, !tbaa !250
  %41 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 19
  %42 = load i32, ptr %11, align 4, !tbaa !87
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  %45 = fcmp ogt float %40, 0x4007BC89C0000000
  %46 = select i1 %44, i1 %45, i1 false
  %47 = fmul float %40, 5.000000e-01
  %48 = select i1 %46, float 0x3FF7BC89C0000000, float %47
  %49 = tail call float @cosf(float noundef %48) #17
  store float %49, ptr %41, align 8, !tbaa !221
  %50 = fsub float 1.000000e+00, %49
  %51 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 18
  %52 = load float, ptr %51, align 8, !tbaa !251
  %53 = fmul float %50, %52
  %54 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 20
  store float %53, ptr %54, align 4, !tbaa !222
  %55 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 10
  %56 = load float, ptr %55, align 8, !tbaa !252
  %57 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 21
  store float %56, ptr %57, align 8, !tbaa !253
  %58 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 16
  %59 = load float, ptr %58, align 8, !tbaa !254
  %60 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 25
  store float %59, ptr %60, align 8, !tbaa !218
  %61 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 23
  %62 = load i16, ptr %61, align 8, !tbaa !255
  %63 = sext i16 %62 to i32
  %64 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 33
  store i32 %63, ptr %64, align 8, !tbaa !256
  %65 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 20
  %66 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 26
  %67 = load <2 x float>, ptr %65, align 8, !tbaa !99
  store <2 x float> %67, ptr %66, align 4, !tbaa !99
  %68 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 22
  %69 = load ptr, ptr %68, align 8, !tbaa !257
  %70 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 34
  store ptr %69, ptr %70, align 8, !tbaa !258
  %71 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 27
  %72 = load float, ptr %71, align 4, !tbaa !259
  %73 = fmul float %72, 0x3F947AE140000000
  %74 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 29
  %75 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 32
  %76 = load i16, ptr %75, align 8, !tbaa !260
  %77 = sext i16 %76 to i32
  %78 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 32
  store i32 %77, ptr %78, align 4, !tbaa !230
  %79 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 25
  %80 = getelementptr inbounds %struct.GPULamp, ptr %4, i64 0, i32 30
  %81 = load <2 x float>, ptr %79, align 4, !tbaa !99
  store <2 x float> %81, ptr %80, align 4, !tbaa !99
  %82 = fmul float %73, 2.500000e-01
  store float %82, ptr %74, align 8, !tbaa !261
  tail call fastcc void @gpu_lamp_calc_winmat(ptr noundef nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare ptr @GPU_framebuffer_create() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_lamp_shadow_free(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !262 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @GPU_texture_free(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !104
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 42
  %8 = load ptr, ptr %7, align 8, !tbaa !237
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @GPU_texture_free(ptr noundef nonnull %8) #17
  store ptr null, ptr %7, align 8, !tbaa !237
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %13) #17
  store ptr null, ptr %12, align 8, !tbaa !105
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 43
  %18 = load ptr, ptr %17, align 8, !tbaa !239
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @GPU_texture_free(ptr noundef nonnull %18) #17
  store ptr null, ptr %17, align 8, !tbaa !239
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !238
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %23) #17
  store ptr null, ptr %22, align 8, !tbaa !238
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: optsize
declare ptr @GPU_texture_create_depth(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_framebuffer_texture_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_texture_create_vsm_shadow_map(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_framebuffer_restore() local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_lamp_shadow_buffer_bind(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @GPU_lamp_update_buffer_mats(ptr noundef %0) #18
  tail call void @glDisable(i32 noundef 3089) #17
  %5 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = tail call i32 @GPU_texture_opengl_width(ptr noundef %8) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !104
  %11 = tail call i32 @GPU_texture_opengl_height(ptr noundef %10) #17
  tail call void @GPU_framebuffer_texture_bind(ptr noundef %6, ptr noundef %8, i32 noundef %9, i32 noundef %11) #17
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !225
  %14 = getelementptr inbounds %struct.Lamp, ptr %13, i64 0, i32 48
  %15 = load i16, ptr %14, align 2, !tbaa !236
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = tail call ptr @GPU_shader_get_builtin_shader(i32 noundef 1) #17
  tail call void @GPU_shader_bind(ptr noundef %18) #17
  br label %19

19:                                               ; preds = %17, %4
  %20 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 36
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %20) #17
  %21 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 35
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %21) #17
  %22 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 32
  %23 = load i32, ptr %22, align 4, !tbaa !230
  store i32 %23, ptr %2, align 4, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_framebuffer_texture_bind(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_texture_opengl_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_texture_opengl_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_shader_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_shader_get_builtin_shader(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_lamp_shadow_buffer_unbind(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !225
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 48
  %5 = load i16, ptr %4, align 2, !tbaa !236
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  tail call void @GPU_shader_unbind() #17
  %8 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 40
  %13 = load ptr, ptr %12, align 8, !tbaa !238
  %14 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 43
  %15 = load ptr, ptr %14, align 8, !tbaa !239
  tail call void @GPU_framebuffer_blur(ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15) #17
  br label %16

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  %19 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  tail call void @GPU_framebuffer_texture_unbind(ptr noundef %18, ptr noundef %20) #17
  tail call void @GPU_framebuffer_restore() #17
  tail call void @glEnable(i32 noundef 3089) #17
  ret void
}

; Function Attrs: optsize
declare void @GPU_shader_unbind() local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_framebuffer_blur(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_framebuffer_texture_unbind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_lamp_shadow_buffer_type(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !225
  %4 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 48
  %5 = load i16, ptr %4, align 2, !tbaa !236
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_lamp_shadow_layer(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 39
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 41
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !87
  %12 = and i32 %11, 32772
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.GPULamp, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !86
  br label %17

17:                                               ; preds = %1, %5, %9, %14
  %18 = phi i32 [ %16, %14 ], [ -1, %9 ], [ -1, %5 ], [ -1, %1 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_lamp_get_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 9
  %10 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = tail call ptr @GPU_dynamic_uniform(ptr noundef nonnull %9, i32 noundef 11, ptr noundef %11) #17
  store ptr %12, ptr %2, align 8, !tbaa !34
  %13 = tail call fastcc ptr @lamp_get_visibility(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4) #18
  tail call fastcc void @shade_light_textures(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #18
  %14 = tail call zeroext i8 @GPU_lamp_has_shadow_buffer(ptr noundef %1) #18, !range !92
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %17 = tail call ptr @GPU_builtin(i32 noundef 32) #17
  %18 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %17, ptr noundef nonnull %7) #17
  %19 = load ptr, ptr %7, align 8, !tbaa !34
  %20 = load ptr, ptr %3, align 8, !tbaa !34
  %21 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %19, ptr noundef %20, ptr noundef nonnull %8) #17
  %22 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  %23 = load i32, ptr %22, align 4, !tbaa !91
  %24 = or i32 %23, 8
  store i32 %24, ptr %22, align 4, !tbaa !91
  %25 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !225
  %27 = getelementptr inbounds %struct.Lamp, ptr %26, i64 0, i32 48
  %28 = load i16, ptr %27, align 2, !tbaa !236
  %29 = icmp eq i16 %28, 1
  %30 = call ptr @GPU_builtin(i32 noundef 16) #17
  %31 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 41
  %32 = load ptr, ptr %31, align 8, !tbaa !104
  %33 = load ptr, ptr %10, align 8, !tbaa !62
  %34 = call ptr @GPU_dynamic_texture(ptr noundef %32, i32 noundef 14, ptr noundef %33) #17
  %35 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 38
  %36 = load ptr, ptr %10, align 8, !tbaa !62
  %37 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %35, i32 noundef 9, ptr noundef %36) #17
  %38 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 29
  %39 = call ptr @GPU_uniform(ptr noundef nonnull %38) #17
  br i1 %29, label %40, label %48

40:                                               ; preds = %16
  %41 = load ptr, ptr %25, align 8, !tbaa !225
  %42 = getelementptr inbounds %struct.Lamp, ptr %41, i64 0, i32 30
  %43 = call ptr @GPU_uniform(ptr noundef nonnull %42) #17
  %44 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 28
  %45 = call ptr @GPU_uniform(ptr noundef nonnull %44) #17
  %46 = load ptr, ptr %8, align 8, !tbaa !34
  %47 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef %30, ptr noundef %34, ptr noundef %37, ptr noundef %39, ptr noundef %43, ptr noundef %45, ptr noundef %46, ptr noundef %5) #17
  br label %53

48:                                               ; preds = %16
  %49 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 28
  %50 = call ptr @GPU_uniform(ptr noundef nonnull %49) #17
  %51 = load ptr, ptr %8, align 8, !tbaa !34
  %52 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef %30, ptr noundef %34, ptr noundef %37, ptr noundef %39, ptr noundef %50, ptr noundef %51, ptr noundef %5) #17
  br label %53

53:                                               ; preds = %48, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %56

54:                                               ; preds = %6
  %55 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %5) #17
  br label %56

56:                                               ; preds = %54, %53
  %57 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 17
  call fastcc void @add_user_list(ptr noundef nonnull %57, ptr noundef nonnull %1) #18
  %58 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 44
  %59 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  call fastcc void @add_user_list(ptr noundef nonnull %58, ptr noundef %60) #18
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @GPU_dynamic_uniform(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lamp_get_visibility(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !263 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %9 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !224
  switch i32 %10, label %20 [
    i32 1, label %11
    i32 3, label %11
  ]

11:                                               ; preds = %4, %4
  %12 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !91
  %14 = or i32 %13, 2
  store i32 %14, ptr %12, align 4, !tbaa !91
  %15 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 15
  %16 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = tail call ptr @GPU_dynamic_uniform(ptr noundef nonnull %15, i32 noundef 6, ptr noundef %17) #17
  %19 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %18, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #17
  br label %120

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !91
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !91
  %24 = tail call ptr @GPU_builtin(i32 noundef 16) #17
  %25 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 14
  %26 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = tail call ptr @GPU_dynamic_uniform(ptr noundef nonnull %25, i32 noundef 7, ptr noundef %27) #17
  %29 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.151, ptr noundef %24, ptr noundef %28, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #17
  %30 = load i32, ptr %9, align 8, !tbaa !224
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %120, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 33
  %34 = load i32, ptr %33, align 8, !tbaa !256
  switch i32 %34, label %71 [
    i32 3, label %59
    i32 1, label %35
    i32 2, label %41
    i32 4, label %47
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %37 = load ptr, ptr %26, align 8, !tbaa !62
  %38 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %36, i32 noundef 16, ptr noundef %37) #17
  %39 = load ptr, ptr %3, align 8, !tbaa !34
  %40 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.152, ptr noundef %38, ptr noundef %39, ptr noundef nonnull %5) #17
  br label %71

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %43 = load ptr, ptr %26, align 8, !tbaa !62
  %44 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %42, i32 noundef 16, ptr noundef %43) #17
  %45 = load ptr, ptr %3, align 8, !tbaa !34
  %46 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.153, ptr noundef %44, ptr noundef %45, ptr noundef nonnull %5) #17
  br label %71

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %49 = load ptr, ptr %26, align 8, !tbaa !62
  %50 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %48, i32 noundef 16, ptr noundef %49) #17
  %51 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 26
  %52 = load ptr, ptr %26, align 8, !tbaa !62
  %53 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %51, i32 noundef 17, ptr noundef %52) #17
  %54 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 27
  %55 = load ptr, ptr %26, align 8, !tbaa !62
  %56 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %54, i32 noundef 18, ptr noundef %55) #17
  %57 = load ptr, ptr %3, align 8, !tbaa !34
  %58 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.154, ptr noundef %50, ptr noundef %53, ptr noundef %56, ptr noundef %57, ptr noundef nonnull %5) #17
  br label %71

59:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  %60 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 34
  %61 = load ptr, ptr %60, align 8, !tbaa !258
  call void @curvemapping_initialize(ptr noundef %61) #17
  %62 = load ptr, ptr %60, align 8, !tbaa !258
  call void @curvemapping_table_RGBA(ptr noundef %62, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %63 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %64 = load ptr, ptr %26, align 8, !tbaa !62
  %65 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %63, i32 noundef 16, ptr noundef %64) #17
  %66 = load i32, ptr %8, align 4, !tbaa !113
  %67 = load ptr, ptr %7, align 8, !tbaa !34
  %68 = call ptr @GPU_texture(i32 noundef %66, ptr noundef %67) #17
  %69 = load ptr, ptr %3, align 8, !tbaa !34
  %70 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.155, ptr noundef %65, ptr noundef %68, ptr noundef %69, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %71

71:                                               ; preds = %32, %59, %47, %41, %35
  %72 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !87
  %74 = and i32 %73, 64
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 25
  %78 = load ptr, ptr %26, align 8, !tbaa !62
  %79 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %77, i32 noundef 16, ptr noundef %78) #17
  %80 = load ptr, ptr %3, align 8, !tbaa !34
  %81 = load ptr, ptr %5, align 8, !tbaa !34
  %82 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.156, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef nonnull %5) #17
  br label %83

83:                                               ; preds = %76, %71
  %84 = load i32, ptr %9, align 8, !tbaa !224
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %117

86:                                               ; preds = %83
  %87 = load i32, ptr %72, align 4, !tbaa !87
  %88 = and i32 %87, 128
  %89 = icmp eq i32 %88, 0
  %90 = load i32, ptr %21, align 4, !tbaa !91
  %91 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 15
  br i1 %89, label %101, label %92

92:                                               ; preds = %86
  %93 = or i32 %90, 6
  store i32 %93, ptr %21, align 4, !tbaa !91
  %94 = load ptr, ptr %26, align 8, !tbaa !62
  %95 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %91, i32 noundef 6, ptr noundef %94) #17
  %96 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 18
  %97 = load ptr, ptr %26, align 8, !tbaa !62
  %98 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %96, i32 noundef 8, ptr noundef %97) #17
  %99 = load ptr, ptr %2, align 8, !tbaa !34
  %100 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.157, ptr noundef %95, ptr noundef %98, ptr noundef %99, ptr noundef nonnull %6) #17
  br label %107

101:                                              ; preds = %86
  %102 = or i32 %90, 2
  store i32 %102, ptr %21, align 4, !tbaa !91
  %103 = load ptr, ptr %26, align 8, !tbaa !62
  %104 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %91, i32 noundef 6, ptr noundef %103) #17
  %105 = load ptr, ptr %2, align 8, !tbaa !34
  %106 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.158, ptr noundef %104, ptr noundef %105, ptr noundef nonnull %6) #17
  br label %107

107:                                              ; preds = %101, %92
  %108 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 19
  %109 = load ptr, ptr %26, align 8, !tbaa !62
  %110 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %108, i32 noundef 19, ptr noundef %109) #17
  %111 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 20
  %112 = load ptr, ptr %26, align 8, !tbaa !62
  %113 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %111, i32 noundef 19, ptr noundef %112) #17
  %114 = load ptr, ptr %6, align 8, !tbaa !34
  %115 = load ptr, ptr %5, align 8, !tbaa !34
  %116 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.159, ptr noundef %110, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef nonnull %5) #17
  br label %117

117:                                              ; preds = %107, %83
  %118 = load ptr, ptr %5, align 8, !tbaa !34
  %119 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.160, ptr noundef %118, ptr noundef nonnull %5) #17
  br label %120

120:                                              ; preds = %20, %117, %11
  %121 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %121
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_light_textures(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !264 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store float 1.000000e+00, ptr %5, align 4, !tbaa !99
  %6 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 3
  %7 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 38
  %9 = getelementptr inbounds %struct.GPULamp, ptr %1, i64 0, i32 1
  br label %10

10:                                               ; preds = %3, %47
  %11 = phi i64 [ 0, %3 ], [ %48, %47 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !225
  %13 = getelementptr inbounds %struct.Lamp, ptr %12, i64 0, i32 69, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !151
  %19 = getelementptr inbounds %struct.Tex, ptr %18, i64 0, i32 32
  %20 = load i16, ptr %19, align 8, !tbaa !154
  %21 = and i16 %20, 8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Tex, ptr %18, i64 0, i32 54
  %25 = load ptr, ptr %24, align 8, !tbaa !157
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %7, align 4, !tbaa !91
  %29 = or i32 %28, 8
  store i32 %29, ptr %7, align 4, !tbaa !91
  %30 = call ptr @GPU_builtin(i32 noundef 16) #17
  %31 = load ptr, ptr %17, align 8, !tbaa !151
  %32 = getelementptr inbounds %struct.Tex, ptr %31, i64 0, i32 54
  %33 = load ptr, ptr %32, align 8, !tbaa !157
  %34 = getelementptr inbounds %struct.Tex, ptr %31, i64 0, i32 51
  %35 = call ptr @GPU_image(ptr noundef %33, ptr noundef nonnull %34, i8 noundef zeroext 0) #17
  %36 = load ptr, ptr %9, align 8, !tbaa !62
  %37 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %8, i32 noundef 9, ptr noundef %36) #17
  %38 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.161, ptr noundef %30, ptr noundef %35, ptr noundef %37, ptr noundef nonnull %4) #17
  %39 = load ptr, ptr %4, align 8, !tbaa !34
  %40 = load ptr, ptr %2, align 8, !tbaa !34
  %41 = call ptr @GPU_uniform(ptr noundef nonnull %5) #17
  %42 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 28
  %43 = call ptr @GPU_uniform(ptr noundef nonnull %42) #17
  %44 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !164
  %46 = sext i16 %45 to i32
  call fastcc void @texture_rgb_blend(ptr noundef %0, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %43, i32 noundef %46, ptr noundef nonnull %2) #18
  br label %47

47:                                               ; preds = %10, %16, %23, %27
  %48 = add nuw nsw i64 %11, 1
  %49 = icmp eq i64 %48, 18
  br i1 %49, label %50, label %10, !llvm.loop !265

50:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare ptr @GPU_dynamic_texture(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_user_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !266 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.162) #17
  %5 = getelementptr inbounds %struct.LinkData, ptr %4, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_shader_export(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = tail call i32 @GPU_glsl_support() #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %217, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @GPU_material_from_blender(ptr noundef %0, ptr noundef %1) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %217, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.GPUMaterial, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %217, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.GPUPass, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !267
  %16 = icmp eq ptr %15, null
  br i1 %16, label %217, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.GPUPass, ptr %11, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !269
  %20 = icmp eq ptr %19, null
  br i1 %20, label %217, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 48, ptr noundef nonnull @.str.29) #17
  %24 = getelementptr inbounds %struct.GPUPass, ptr %11, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %117, %21
  %28 = getelementptr inbounds %struct.GPUMaterial, ptr %7, i64 0, i32 7
  br label %120

29:                                               ; preds = %21, %117
  %30 = phi ptr [ %118, %117 ], [ %25, %21 ]
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = call ptr %31(i64 noundef 96, ptr noundef nonnull @.str.30) #17
  %33 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !270
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 3
  store i32 13, ptr %37, align 8, !tbaa !272
  %38 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 4
  store i32 1, ptr %38, align 4, !tbaa !274
  %39 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 6
  store ptr %34, ptr %39, align 8, !tbaa !275
  %40 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !276
  %42 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 7
  store i32 %41, ptr %42, align 8, !tbaa !277
  %43 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 2
  %44 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 21
  %45 = call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef nonnull %44, i64 noundef 32) #17
  br label %110

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !278
  %49 = icmp eq ptr %48, null
  br i1 %49, label %85, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !276
  %53 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 7
  store i32 %52, ptr %53, align 8, !tbaa !277
  %54 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 4
  store i32 1, ptr %54, align 4, !tbaa !274
  %55 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 2
  %56 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 21
  %57 = call ptr @BLI_strncpy(ptr noundef nonnull %55, ptr noundef nonnull %56, i64 noundef 32) #17
  %58 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 11
  %59 = load i32, ptr %58, align 8, !tbaa !279
  switch i32 %59, label %110 [
    i32 1003, label %60
    i32 1002, label %65
  ]

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 3
  store i32 14, ptr %61, align 8, !tbaa !272
  %62 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 18
  %63 = load ptr, ptr %62, align 8, !tbaa !280
  %64 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !281
  br label %110

65:                                               ; preds = %50
  %66 = load ptr, ptr %47, align 8, !tbaa !278
  %67 = call i32 @GPU_texture_opengl_bindcode(ptr noundef %66) #17
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %110, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 3
  store i32 12, ptr %70, align 8, !tbaa !272
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %3) #17
  %71 = load ptr, ptr %47, align 8, !tbaa !278
  %72 = call i32 @GPU_texture_opengl_bindcode(ptr noundef %71) #17
  call void @glBindTexture(i32 noundef 3553, i32 noundef %72) #17
  %73 = load ptr, ptr %47, align 8, !tbaa !278
  %74 = call i32 @GPU_texture_opengl_width(ptr noundef %73) #17
  %75 = load ptr, ptr %47, align 8, !tbaa !278
  %76 = call i32 @GPU_texture_opengl_height(ptr noundef %75) #17
  %77 = mul nsw i32 %76, %74
  %78 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 9
  store i32 %77, ptr %78, align 8, !tbaa !282
  %79 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %80 = shl nsw i32 %77, 2
  %81 = sext i32 %80 to i64
  %82 = call ptr %79(i64 noundef %81, ptr noundef nonnull @.str.31) #17
  %83 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 8
  store ptr %82, ptr %83, align 8, !tbaa !283
  call void @glGetTexImage(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %82) #17
  %84 = load i32, ptr %3, align 4, !tbaa !113
  call void @glBindTexture(i32 noundef 3553, i32 noundef %84) #17
  br label %110

85:                                               ; preds = %46
  %86 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 17
  %87 = load i32, ptr %86, align 8, !tbaa !284
  %88 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 3
  store i32 %87, ptr %88, align 8, !tbaa !272
  %89 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 2
  %90 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 21
  %91 = call ptr @BLI_strncpy(ptr noundef nonnull %89, ptr noundef nonnull %90, i64 noundef 32) #17
  %92 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !285
  switch i32 %93, label %102 [
    i32 1, label %99
    i32 2, label %94
    i32 3, label %95
    i32 4, label %96
    i32 9, label %97
    i32 16, label %98
  ]

94:                                               ; preds = %85
  br label %99

95:                                               ; preds = %85
  br label %99

96:                                               ; preds = %85
  br label %99

97:                                               ; preds = %85
  br label %99

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %85, %94, %95, %96, %97, %98
  %100 = phi i32 [ 7, %98 ], [ 6, %97 ], [ 5, %96 ], [ 4, %95 ], [ 3, %94 ], [ 2, %85 ]
  %101 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 4
  store i32 %100, ptr %101, align 4, !tbaa !274
  br label %102

102:                                              ; preds = %99, %85
  %103 = load i32, ptr %88, align 8, !tbaa !272
  %104 = add i32 %103, -6
  %105 = icmp ult i32 %104, 6
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.GPUInput, ptr %30, i64 0, i32 18
  %108 = load ptr, ptr %107, align 8, !tbaa !280
  %109 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 5
  store ptr %108, ptr %109, align 8, !tbaa !281
  br label %110

110:                                              ; preds = %65, %69, %50, %60, %106, %102, %36
  %111 = getelementptr inbounds %struct.GPUInputUniform, ptr %32, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !272
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void @BLI_addtail(ptr noundef %23, ptr noundef nonnull %32) #17
  br label %117

115:                                              ; preds = %110
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %116(ptr noundef nonnull %32) #17
  br label %117

117:                                              ; preds = %114, %115
  %118 = load ptr, ptr %30, align 8, !tbaa !34
  %119 = icmp eq ptr %118, null
  br i1 %119, label %27, label %29, !llvm.loop !286

120:                                              ; preds = %27, %135
  %121 = phi i64 [ 0, %27 ], [ %136, %135 ]
  %122 = phi i32 [ 1, %27 ], [ %138, %135 ]
  %123 = load i32, ptr %28, align 8, !tbaa !94
  %124 = and i32 %123, %122
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %128 = call ptr %127(i64 noundef 96, ptr noundef nonnull @.str.30) #17
  %129 = getelementptr inbounds [7 x %struct.anon.0], ptr @GPU_shader_export.builtins, i64 0, i64 %121, i32 1
  %130 = getelementptr inbounds %struct.GPUInputUniform, ptr %128, i64 0, i32 3
  %131 = load <2 x i32>, ptr %129, align 4, !tbaa !113
  store <2 x i32> %131, ptr %130, align 8, !tbaa !113
  %132 = getelementptr inbounds %struct.GPUInputUniform, ptr %128, i64 0, i32 2
  %133 = call ptr @GPU_builtin_name(i32 noundef %122) #17
  %134 = call ptr @BLI_strncpy(ptr noundef nonnull %132, ptr noundef %133, i64 noundef 32) #17
  call void @BLI_addtail(ptr noundef %23, ptr noundef %128) #17
  br label %135

135:                                              ; preds = %120, %126
  %136 = add nuw nsw i64 %121, 1
  %137 = getelementptr inbounds [7 x %struct.anon.0], ptr @GPU_shader_export.builtins, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !287
  %139 = icmp eq i64 %136, 6
  br i1 %139, label %140, label %120, !llvm.loop !289

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.GPUPass, ptr %11, i64 0, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !290
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %142) #20
  %146 = trunc i64 %145 to i32
  br label %147

147:                                              ; preds = %140, %144
  %148 = phi i32 [ %146, %144 ], [ 0, %140 ]
  %149 = load ptr, ptr %14, align 8, !tbaa !267
  %150 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %149) #20
  %151 = trunc i64 %150 to i32
  %152 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %153 = add nsw i32 %148, %151
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = call ptr %152(i64 noundef %155, ptr noundef nonnull @.str.32) #17
  %157 = getelementptr inbounds %struct.GPUShaderExport, ptr %23, i64 0, i32 3
  store ptr %156, ptr %157, align 8, !tbaa !291
  %158 = load ptr, ptr %141, align 8, !tbaa !290
  %159 = icmp eq ptr %158, null
  %160 = sext i32 %148 to i64
  br i1 %159, label %163, label %161

161:                                              ; preds = %147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %156, ptr nonnull align 1 %158, i64 %160, i1 false)
  %162 = load ptr, ptr %157, align 8, !tbaa !291
  br label %163

163:                                              ; preds = %147, %161
  %164 = phi ptr [ %162, %161 ], [ %156, %147 ]
  %165 = getelementptr inbounds i8, ptr %164, i64 %160
  %166 = load ptr, ptr %14, align 8, !tbaa !267
  %167 = shl i64 %150, 32
  %168 = ashr exact i64 %167, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr align 1 %166, i64 %168, i1 false)
  %169 = load ptr, ptr %157, align 8, !tbaa !291
  %170 = sext i32 %153 to i64
  %171 = getelementptr inbounds i8, ptr %169, i64 %170
  store i8 0, ptr %171, align 1, !tbaa !112
  %172 = getelementptr inbounds %struct.GPUMaterial, ptr %7, i64 0, i32 5, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !293
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %213

175:                                              ; preds = %163
  %176 = getelementptr inbounds %struct.GPUMaterial, ptr %7, i64 0, i32 5
  %177 = getelementptr inbounds %struct.GPUShaderExport, ptr %23, i64 0, i32 1
  br label %178

178:                                              ; preds = %175, %208
  %179 = phi i64 [ 0, %175 ], [ %209, %208 ]
  %180 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %181 = call ptr %180(i64 noundef 72, ptr noundef nonnull @.str.33) #17
  %182 = getelementptr inbounds [32 x %struct.anon], ptr %176, i64 0, i64 %179
  %183 = load i32, ptr %182, align 8, !tbaa !294
  %184 = getelementptr inbounds %struct.GPUInputAttribute, ptr %181, i64 0, i32 3
  store i32 %183, ptr %184, align 8, !tbaa !296
  %185 = getelementptr inbounds [32 x %struct.anon], ptr %176, i64 0, i64 %179, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !298
  %187 = getelementptr inbounds %struct.GPUInputAttribute, ptr %181, i64 0, i32 6
  store i32 %186, ptr %187, align 8, !tbaa !299
  %188 = getelementptr inbounds %struct.GPUInputAttribute, ptr %181, i64 0, i32 2
  %189 = getelementptr inbounds [32 x %struct.anon], ptr %176, i64 0, i64 %179, i32 3
  %190 = load i32, ptr %189, align 4, !tbaa !300
  %191 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %188, i64 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %190) #17
  %192 = load i32, ptr %184, align 8, !tbaa !296
  %193 = getelementptr inbounds %struct.GPUInputAttribute, ptr %181, i64 0, i32 4
  switch i32 %192, label %202 [
    i32 18, label %194
    i32 5, label %195
    i32 6, label %198
    i32 14, label %201
  ]

194:                                              ; preds = %178
  store i32 5, ptr %193, align 4, !tbaa !301
  br label %205

195:                                              ; preds = %178
  store i32 3, ptr %193, align 4, !tbaa !301
  %196 = getelementptr inbounds [32 x %struct.anon], ptr %176, i64 0, i64 %179, i32 4
  %197 = getelementptr inbounds %struct.GPUInputAttribute, ptr %181, i64 0, i32 5
  store ptr %196, ptr %197, align 8, !tbaa !302
  br label %205

198:                                              ; preds = %178
  store i32 8, ptr %193, align 4, !tbaa !301
  %199 = getelementptr inbounds [32 x %struct.anon], ptr %176, i64 0, i64 %179, i32 4
  %200 = getelementptr inbounds %struct.GPUInputAttribute, ptr %181, i64 0, i32 5
  store ptr %199, ptr %200, align 8, !tbaa !302
  br label %205

201:                                              ; preds = %178
  store i32 4, ptr %193, align 4, !tbaa !301
  br label %205

202:                                              ; preds = %178
  %203 = load i32, ptr %193, align 4, !tbaa !301
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %194, %195, %198, %201, %202
  call void @BLI_addtail(ptr noundef nonnull %177, ptr noundef nonnull %181) #17
  br label %208

206:                                              ; preds = %202
  %207 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %207(ptr noundef nonnull %181) #17
  br label %208

208:                                              ; preds = %205, %206
  %209 = add nuw nsw i64 %179, 1
  %210 = load i32, ptr %172, align 8, !tbaa !293
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %209, %211
  br i1 %212, label %178, label %213, !llvm.loop !303

213:                                              ; preds = %208, %163
  %214 = load ptr, ptr %18, align 8, !tbaa !269
  %215 = call ptr @BLI_strdup(ptr noundef %214) #17
  %216 = getelementptr inbounds %struct.GPUShaderExport, ptr %23, i64 0, i32 2
  store ptr %215, ptr %216, align 8, !tbaa !304
  br label %217

217:                                              ; preds = %6, %9, %13, %17, %213, %2
  %218 = phi ptr [ null, %2 ], [ %23, %213 ], [ null, %17 ], [ null, %13 ], [ null, %9 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret ptr %218
}

; Function Attrs: optsize
declare i32 @GPU_glsl_support() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_texture_opengl_bindcode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetTexImage(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_builtin_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load ptr, ptr %8, align 8, !tbaa !283
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #17
  br label %13

13:                                               ; preds = %6, %11
  %14 = load ptr, ptr %7, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !llvm.loop !305

16:                                               ; preds = %13, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #17
  %17 = getelementptr inbounds %struct.GPUShaderExport, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %17) #17
  %18 = getelementptr inbounds %struct.GPUShaderExport, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !304
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #17
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %struct.GPUShaderExport, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !291
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %25) #17
  br label %29

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %0) #17
  br label %31

31:                                               ; preds = %1, %29
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !306 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #17
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !307 {
  %3 = load float, ptr %0, align 4, !tbaa !99
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !99
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !99
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !308 {
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !99
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !99
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !99
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !309 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !99
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare ptr @GPU_image(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @texture_rgb_blend(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !310 {
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
  %10 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

11:                                               ; preds = %7
  %12 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

13:                                               ; preds = %7
  %14 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

15:                                               ; preds = %7
  %16 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

17:                                               ; preds = %7
  %18 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

19:                                               ; preds = %7
  %20 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

21:                                               ; preds = %7
  %22 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

23:                                               ; preds = %7
  %24 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.81, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

25:                                               ; preds = %7
  %26 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.82, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

27:                                               ; preds = %7
  %28 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

29:                                               ; preds = %7
  %30 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

31:                                               ; preds = %7
  %32 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

33:                                               ; preds = %7
  %34 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.86, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

35:                                               ; preds = %7
  %36 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.87, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

37:                                               ; preds = %7
  %38 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

39:                                               ; preds = %7
  %40 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.89, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %43

41:                                               ; preds = %7
  %42 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #17
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #13 !PGOFuncName !311 {
  %2 = fcmp olt float %0, 1.000000e+00
  %3 = select i1 %2, float %0, float 1.000000e+00
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_bicubic_bump_support() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @texture_value_blend(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !312 {
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
  %10 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

11:                                               ; preds = %7
  %12 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

13:                                               ; preds = %7
  %14 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

15:                                               ; preds = %7
  %16 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

17:                                               ; preds = %7
  %18 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

19:                                               ; preds = %7
  %20 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

21:                                               ; preds = %7
  %22 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

23:                                               ; preds = %7
  %24 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

25:                                               ; preds = %7
  %26 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %6) #17
  br label %29

27:                                               ; preds = %7
  %28 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.99, ptr noundef nonnull %8) #17
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  ret void
}

; Function Attrs: optsize
declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_one_light(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !313 {
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
  %14 = alloca float, align 4
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca float, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = load ptr, ptr %0, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  store ptr null, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  store float 1.000000e+00, ptr %14, align 4, !tbaa !99
  %23 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !87
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 51
  %29 = load i32, ptr %28, align 4, !tbaa !125
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %365, label %32

32:                                               ; preds = %27, %3
  %33 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !122
  %35 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !123
  %37 = call fastcc ptr @lamp_get_visibility(ptr noundef %22, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %38 = load ptr, ptr %4, align 8, !tbaa !34
  %39 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %22, ptr noundef nonnull @.str.25, ptr noundef %34, ptr noundef %38, ptr noundef nonnull %7) #17
  %40 = load i32, ptr %23, align 4, !tbaa !87
  %41 = and i32 %40, 2048
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  %44 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %22, ptr noundef nonnull @.str.101, ptr noundef nonnull %6) #17
  br label %101

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !224
  switch i32 %47, label %68 [
    i32 3, label %48
    i32 4, label %51
  ]

48:                                               ; preds = %45
  %49 = load ptr, ptr %7, align 8, !tbaa !34
  %50 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %22, ptr noundef nonnull @.str.102, ptr noundef %49, ptr noundef nonnull %6) #17
  br label %101

51:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %15, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #19
  store float 0.000000e+00, ptr %16, align 4, !tbaa !99
  %52 = getelementptr inbounds %struct.GPUMaterial, ptr %22, i64 0, i32 10
  %53 = load i32, ptr %52, align 4, !tbaa !91
  %54 = or i32 %53, 3
  store i32 %54, ptr %52, align 4, !tbaa !91
  %55 = call ptr @GPU_builtin(i32 noundef 16) #17
  %56 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 14
  %57 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  %59 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %56, i32 noundef 7, ptr noundef %58) #17
  %60 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 15
  %61 = load ptr, ptr %57, align 8, !tbaa !62
  %62 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %60, i32 noundef 6, ptr noundef %61) #17
  %63 = call ptr @GPU_uniform(ptr noundef nonnull %15) #17
  %64 = call ptr @GPU_uniform(ptr noundef nonnull %16) #17
  %65 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 21
  %66 = call ptr @GPU_uniform(ptr noundef nonnull %65) #17
  %67 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %22, ptr noundef nonnull @.str.103, ptr noundef %55, ptr noundef %59, ptr noundef %62, ptr noundef %34, ptr noundef %63, ptr noundef %64, ptr noundef %66, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #19
  br label %68

68:                                               ; preds = %45, %51
  %69 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %69, ptr %6, align 8, !tbaa !34
  %70 = load ptr, ptr %22, align 8, !tbaa !63
  %71 = getelementptr inbounds %struct.Scene, ptr %70, i64 0, i32 37, i32 18
  %72 = load i32, ptr %71, align 8, !tbaa !103
  %73 = and i32 %72, 128
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 83
  %77 = load i16, ptr %76, align 8, !tbaa !314
  switch i16 %77, label %101 [
    i16 1, label %78
    i16 2, label %83
    i16 3, label %90
    i16 4, label %94
  ]

78:                                               ; preds = %75
  %79 = load ptr, ptr %4, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 85
  %81 = call ptr @GPU_uniform(ptr noundef nonnull %80) #17
  %82 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.104, ptr noundef %69, ptr noundef %34, ptr noundef %79, ptr noundef %36, ptr noundef %81, ptr noundef nonnull %6) #17
  br label %101

83:                                               ; preds = %75
  %84 = load ptr, ptr %4, align 8, !tbaa !34
  %85 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 87
  %86 = call ptr @GPU_uniform(ptr noundef nonnull %85) #17
  %87 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 87, i64 1
  %88 = call ptr @GPU_uniform(ptr noundef nonnull %87) #17
  %89 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.105, ptr noundef %34, ptr noundef %84, ptr noundef %36, ptr noundef %86, ptr noundef %88, ptr noundef nonnull %6) #17
  br label %101

90:                                               ; preds = %75
  %91 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 89
  %92 = call ptr @GPU_uniform(ptr noundef nonnull %91) #17
  %93 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.106, ptr noundef %69, ptr noundef %34, ptr noundef %36, ptr noundef %92, ptr noundef nonnull %6) #17
  br label %101

94:                                               ; preds = %75
  %95 = load ptr, ptr %4, align 8, !tbaa !34
  %96 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 87
  %97 = call ptr @GPU_uniform(ptr noundef nonnull %96) #17
  %98 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 87, i64 1
  %99 = call ptr @GPU_uniform(ptr noundef nonnull %98) #17
  %100 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.107, ptr noundef %34, ptr noundef %95, ptr noundef %36, ptr noundef %97, ptr noundef %99, ptr noundef nonnull %6) #17
  br label %101

101:                                              ; preds = %75, %48, %78, %90, %94, %83, %68, %43
  %102 = load ptr, ptr %22, align 8, !tbaa !63
  %103 = getelementptr inbounds %struct.Scene, ptr %102, i64 0, i32 37, i32 18
  %104 = load i32, ptr %103, align 8, !tbaa !103
  %105 = and i32 %104, 128
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 50
  %109 = load i16, ptr %108, align 2, !tbaa !145
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %6, align 8, !tbaa !34
  %114 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.108, ptr noundef %113, ptr noundef nonnull %6) #17
  br label %115

115:                                              ; preds = %107, %112, %101
  %116 = load ptr, ptr %6, align 8, !tbaa !34
  store ptr %116, ptr %8, align 8, !tbaa !34
  %117 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !170
  %119 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.109, ptr noundef %116, ptr noundef %37, ptr noundef %118, ptr noundef nonnull %8) #17
  %120 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 9
  %121 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !62
  %123 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %120, i32 noundef 11, ptr noundef %122) #17
  %124 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str, ptr noundef %123, ptr noundef nonnull %13) #17
  call fastcc void @shade_light_textures(ptr noundef nonnull %22, ptr noundef nonnull %2, ptr noundef nonnull %13) #18
  %125 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 8
  %126 = load ptr, ptr %121, align 8, !tbaa !62
  %127 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %125, i32 noundef 10, ptr noundef %126) #17
  %128 = load ptr, ptr %13, align 8, !tbaa !34
  %129 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.110, ptr noundef %127, ptr noundef %128, ptr noundef nonnull %13) #17
  %130 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 51
  %131 = load i32, ptr %130, align 4, !tbaa !125
  %132 = and i32 %131, 2
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %210, label %134

134:                                              ; preds = %115
  %135 = call zeroext i8 @GPU_lamp_has_shadow_buffer(ptr noundef nonnull %2) #18, !range !92
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %210, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %22, align 8, !tbaa !63
  %139 = getelementptr inbounds %struct.Scene, ptr %138, i64 0, i32 37, i32 18
  %140 = load i32, ptr %139, align 8, !tbaa !103
  %141 = and i32 %140, 256
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %229

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.GPUMaterial, ptr %22, i64 0, i32 10
  %145 = load i32, ptr %144, align 4, !tbaa !91
  %146 = or i32 %145, 8
  store i32 %146, ptr %144, align 4, !tbaa !91
  %147 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !225
  %149 = getelementptr inbounds %struct.Lamp, ptr %148, i64 0, i32 48
  %150 = load i16, ptr %149, align 2, !tbaa !236
  %151 = icmp eq i16 %150, 1
  %152 = call ptr @GPU_builtin(i32 noundef 16) #17
  %153 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 41
  %154 = load ptr, ptr %153, align 8, !tbaa !104
  %155 = load ptr, ptr %121, align 8, !tbaa !62
  %156 = call ptr @GPU_dynamic_texture(ptr noundef %154, i32 noundef 14, ptr noundef %155) #17
  %157 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 38
  %158 = load ptr, ptr %121, align 8, !tbaa !62
  %159 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %157, i32 noundef 9, ptr noundef %158) #17
  %160 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 29
  %161 = call ptr @GPU_uniform(ptr noundef nonnull %160) #17
  br i1 %151, label %162, label %168

162:                                              ; preds = %143
  %163 = load ptr, ptr %147, align 8, !tbaa !225
  %164 = getelementptr inbounds %struct.Lamp, ptr %163, i64 0, i32 30
  %165 = call ptr @GPU_uniform(ptr noundef nonnull %164) #17
  %166 = load ptr, ptr %7, align 8, !tbaa !34
  %167 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.111, ptr noundef %152, ptr noundef %156, ptr noundef %159, ptr noundef %161, ptr noundef %165, ptr noundef %166, ptr noundef nonnull %12) #17
  br label %171

168:                                              ; preds = %143
  %169 = load ptr, ptr %7, align 8, !tbaa !34
  %170 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.112, ptr noundef %152, ptr noundef %156, ptr noundef %159, ptr noundef %161, ptr noundef %169, ptr noundef nonnull %12) #17
  br label %171

171:                                              ; preds = %168, %162
  %172 = load i32, ptr %23, align 4, !tbaa !87
  %173 = and i32 %172, 32
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %229, label %175

175:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #19
  %176 = load ptr, ptr %8, align 8, !tbaa !34
  %177 = load ptr, ptr %12, align 8, !tbaa !34
  %178 = load ptr, ptr %121, align 8, !tbaa !62
  %179 = call ptr @GPU_dynamic_uniform(ptr noundef nonnull %125, i32 noundef 10, ptr noundef %178) #17
  %180 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 28
  %181 = call ptr @GPU_uniform(ptr noundef nonnull %180) #17
  %182 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.113, ptr noundef %176, ptr noundef %177, ptr noundef %179, ptr noundef %181, ptr noundef nonnull %17) #17
  %183 = load i32, ptr %23, align 4, !tbaa !87
  %184 = and i32 %183, 2048
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %175
  %187 = load ptr, ptr %17, align 8, !tbaa !34
  %188 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !126
  %190 = load ptr, ptr %1, align 8, !tbaa !128
  %191 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.114, ptr noundef %187, ptr noundef %189, ptr noundef %190, ptr noundef nonnull %1) #17
  %192 = load i32, ptr %23, align 4, !tbaa !87
  br label %193

193:                                              ; preds = %186, %175
  %194 = phi i32 [ %192, %186 ], [ %183, %175 ]
  %195 = and i32 %194, 4096
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load ptr, ptr %17, align 8, !tbaa !34
  %199 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !166
  %201 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !136
  %203 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.115, ptr noundef %198, ptr noundef %200, ptr noundef %202, ptr noundef nonnull %201) #17
  br label %204

204:                                              ; preds = %197, %193
  %205 = getelementptr inbounds %struct.GPUMaterial, ptr %22, i64 0, i32 17
  call fastcc void @add_user_list(ptr noundef nonnull %205, ptr noundef nonnull %2) #18
  %206 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 44
  %207 = load ptr, ptr %0, align 8, !tbaa !118
  %208 = getelementptr inbounds %struct.GPUMaterial, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !88
  call fastcc void @add_user_list(ptr noundef nonnull %206, ptr noundef %209) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #19
  br label %365

210:                                              ; preds = %134, %115
  %211 = load ptr, ptr %22, align 8, !tbaa !63
  %212 = getelementptr inbounds %struct.Scene, ptr %211, i64 0, i32 37, i32 18
  %213 = load i32, ptr %212, align 8, !tbaa !103
  %214 = and i32 %213, 256
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %210
  %217 = load i32, ptr %23, align 4, !tbaa !87
  %218 = and i32 %217, 32
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.GPUMaterial, ptr %22, i64 0, i32 17
  call fastcc void @add_user_list(ptr noundef nonnull %221, ptr noundef nonnull %2) #18
  %222 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 44
  %223 = load ptr, ptr %0, align 8, !tbaa !118
  %224 = getelementptr inbounds %struct.GPUMaterial, ptr %223, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !88
  call fastcc void @add_user_list(ptr noundef nonnull %222, ptr noundef %225) #18
  br label %365

226:                                              ; preds = %216, %210
  %227 = call ptr @GPU_uniform(ptr noundef nonnull %14) #17
  %228 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.2, ptr noundef %227, ptr noundef nonnull %12) #17
  br label %229

229:                                              ; preds = %137, %171, %226
  %230 = load ptr, ptr %117, align 8, !tbaa !170
  %231 = call i32 @GPU_link_changed(ptr noundef %230) #17
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 22
  %235 = load float, ptr %234, align 4, !tbaa !315
  %236 = fcmp une float %235, 0.000000e+00
  br i1 %236, label %237, label %256

237:                                              ; preds = %233, %229
  %238 = load i32, ptr %23, align 4, !tbaa !87
  %239 = and i32 %238, 2048
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %237
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #19
  %242 = load ptr, ptr %8, align 8, !tbaa !34
  %243 = load ptr, ptr %13, align 8, !tbaa !34
  %244 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.11, ptr noundef %242, ptr noundef %243, ptr noundef nonnull %18) #17
  %245 = load ptr, ptr %12, align 8, !tbaa !34
  %246 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.46, ptr noundef %245, ptr noundef nonnull %12) #17
  %247 = load ptr, ptr %12, align 8, !tbaa !34
  %248 = load ptr, ptr %18, align 8, !tbaa !34
  %249 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 28
  %250 = call ptr @GPU_uniform(ptr noundef nonnull %249) #17
  %251 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.116, ptr noundef %247, ptr noundef %248, ptr noundef %250, ptr noundef nonnull %18) #17
  %252 = load ptr, ptr %12, align 8, !tbaa !34
  %253 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.46, ptr noundef %252, ptr noundef nonnull %12) #17
  %254 = load ptr, ptr %6, align 8, !tbaa !34
  %255 = load ptr, ptr %18, align 8, !tbaa !34
  call fastcc void @add_to_diffuse(ptr noundef nonnull %22, ptr noundef nonnull %21, ptr noundef nonnull %0, ptr noundef %254, ptr noundef %255, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  br label %256

256:                                              ; preds = %237, %241, %233
  %257 = load ptr, ptr %22, align 8, !tbaa !63
  %258 = getelementptr inbounds %struct.Scene, ptr %257, i64 0, i32 37, i32 18
  %259 = load i32, ptr %258, align 8, !tbaa !103
  %260 = and i32 %259, 128
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %359

262:                                              ; preds = %256
  %263 = load i32, ptr %23, align 4, !tbaa !87
  %264 = and i32 %263, 4128
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %359

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 10
  %268 = load ptr, ptr %267, align 8, !tbaa !142
  %269 = call i32 @GPU_link_changed(ptr noundef %268) #17
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 23
  %273 = load float, ptr %272, align 8, !tbaa !143
  %274 = fcmp une float %273, 0.000000e+00
  br i1 %274, label %275, label %359

275:                                              ; preds = %271, %266
  %276 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 4
  %277 = load i32, ptr %276, align 8, !tbaa !224
  %278 = icmp eq i32 %277, 3
  br i1 %278, label %279, label %295

279:                                              ; preds = %275
  %280 = load ptr, ptr %4, align 8, !tbaa !34
  %281 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 23
  %282 = call ptr @GPU_uniform(ptr noundef nonnull %281) #17
  %283 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %284 = load ptr, ptr %283, align 8, !tbaa !174
  %285 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.117, ptr noundef %34, ptr noundef %280, ptr noundef %36, ptr noundef %282, ptr noundef %284, ptr noundef %37, ptr noundef nonnull %11) #17
  %286 = load ptr, ptr %11, align 8, !tbaa !34
  %287 = load ptr, ptr %13, align 8, !tbaa !34
  %288 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !166
  %290 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.118, ptr noundef %286, ptr noundef %287, ptr noundef %289, ptr noundef nonnull %9) #17
  %291 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !136
  %293 = load ptr, ptr %9, align 8, !tbaa !34
  %294 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.119, ptr noundef %292, ptr noundef %293, ptr noundef nonnull %291) #17
  br label %359

295:                                              ; preds = %275
  %296 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 84
  %297 = load i16, ptr %296, align 2, !tbaa !316
  %298 = load ptr, ptr %4, align 8, !tbaa !34
  switch i16 %297, label %317 [
    i16 1, label %299
    i16 0, label %303
    i16 2, label %307
    i16 4, label %313
  ]

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %301 = load ptr, ptr %300, align 8, !tbaa !174
  %302 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.120, ptr noundef %34, ptr noundef %298, ptr noundef %36, ptr noundef %301, ptr noundef nonnull %10) #17
  br label %323

303:                                              ; preds = %295
  %304 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %305 = load ptr, ptr %304, align 8, !tbaa !174
  %306 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.121, ptr noundef %34, ptr noundef %298, ptr noundef %36, ptr noundef %305, ptr noundef nonnull %10) #17
  br label %323

307:                                              ; preds = %295
  %308 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 86
  %309 = call ptr @GPU_uniform(ptr noundef nonnull %308) #17
  %310 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 12
  %311 = load ptr, ptr %310, align 8, !tbaa !174
  %312 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.122, ptr noundef %34, ptr noundef %298, ptr noundef %36, ptr noundef %309, ptr noundef %311, ptr noundef nonnull %10) #17
  br label %323

313:                                              ; preds = %295
  %314 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 88
  %315 = call ptr @GPU_uniform(ptr noundef nonnull %314) #17
  %316 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.123, ptr noundef %34, ptr noundef %298, ptr noundef %36, ptr noundef %315, ptr noundef nonnull %10) #17
  br label %323

317:                                              ; preds = %295
  %318 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 87, i64 2
  %319 = call ptr @GPU_uniform(ptr noundef nonnull %318) #17
  %320 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 87, i64 3
  %321 = call ptr @GPU_uniform(ptr noundef nonnull %320) #17
  %322 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.124, ptr noundef %34, ptr noundef %298, ptr noundef %36, ptr noundef %319, ptr noundef %321, ptr noundef nonnull %10) #17
  br label %323

323:                                              ; preds = %303, %313, %317, %307, %299
  %324 = load i32, ptr %276, align 8, !tbaa !224
  %325 = icmp eq i32 %324, 4
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load ptr, ptr %10, align 8, !tbaa !34
  %328 = load ptr, ptr %7, align 8, !tbaa !34
  %329 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.125, ptr noundef %327, ptr noundef %328, ptr noundef nonnull %10) #17
  br label %330

330:                                              ; preds = %326, %323
  %331 = load ptr, ptr %12, align 8, !tbaa !34
  %332 = load ptr, ptr %267, align 8, !tbaa !142
  %333 = load ptr, ptr %10, align 8, !tbaa !34
  %334 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.126, ptr noundef %331, ptr noundef %332, ptr noundef %37, ptr noundef %333, ptr noundef nonnull %11) #17
  %335 = load i32, ptr %130, align 4, !tbaa !125
  %336 = and i32 %335, 2097152
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %349, label %338

338:                                              ; preds = %330
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #19
  %339 = load ptr, ptr %10, align 8, !tbaa !34
  %340 = load ptr, ptr %11, align 8, !tbaa !34
  call fastcc void @do_specular_ramp(ptr noundef nonnull %0, ptr noundef %339, ptr noundef %340, ptr noundef nonnull %19) #18
  %341 = load ptr, ptr %11, align 8, !tbaa !34
  %342 = load ptr, ptr %13, align 8, !tbaa !34
  %343 = load ptr, ptr %19, align 8, !tbaa !34
  %344 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.118, ptr noundef %341, ptr noundef %342, ptr noundef %343, ptr noundef nonnull %9) #17
  %345 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !136
  %347 = load ptr, ptr %9, align 8, !tbaa !34
  %348 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.119, ptr noundef %346, ptr noundef %347, ptr noundef nonnull %345) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #19
  br label %359

349:                                              ; preds = %330
  %350 = load ptr, ptr %11, align 8, !tbaa !34
  %351 = load ptr, ptr %13, align 8, !tbaa !34
  %352 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %353 = load ptr, ptr %352, align 8, !tbaa !166
  %354 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.118, ptr noundef %350, ptr noundef %351, ptr noundef %353, ptr noundef nonnull %9) #17
  %355 = getelementptr inbounds %struct.GPUShadeResult, ptr %1, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !136
  %357 = load ptr, ptr %9, align 8, !tbaa !34
  %358 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %22, ptr noundef nonnull @.str.119, ptr noundef %356, ptr noundef %357, ptr noundef nonnull %355) #17
  br label %359

359:                                              ; preds = %262, %271, %338, %349, %279, %256
  %360 = getelementptr inbounds %struct.GPUMaterial, ptr %22, i64 0, i32 17
  call fastcc void @add_user_list(ptr noundef nonnull %360, ptr noundef nonnull %2) #18
  %361 = getelementptr inbounds %struct.GPULamp, ptr %2, i64 0, i32 44
  %362 = load ptr, ptr %0, align 8, !tbaa !118
  %363 = getelementptr inbounds %struct.GPUMaterial, ptr %362, i64 0, i32 1
  %364 = load ptr, ptr %363, align 8, !tbaa !88
  call fastcc void @add_user_list(ptr noundef nonnull %361, ptr noundef %364) #18
  br label %365

365:                                              ; preds = %27, %359, %220, %204
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_diffuse(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !317 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 37, i32 18
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 92
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 51
  %21 = load i32, ptr %20, align 4, !tbaa !125
  %22 = and i32 %21, 1048576
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 94
  %26 = load i8, ptr %25, align 8, !tbaa !195
  switch i8 %26, label %39 [
    i8 3, label %27
    i8 1, label %30
    i8 0, label %32
    i8 2, label %33
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  store ptr %29, ptr %9, align 8, !tbaa !34
  br label %55

30:                                               ; preds = %24
  %31 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.127, ptr noundef %4, ptr noundef nonnull %7) #17
  br label %41

32:                                               ; preds = %24
  store ptr %3, ptr %7, align 8, !tbaa !34
  br label %41

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !123
  %36 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  %38 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.128, ptr noundef %35, ptr noundef %37, ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  br label %41

39:                                               ; preds = %24
  %40 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.99, ptr noundef nonnull %7) #17
  br label %41

41:                                               ; preds = %39, %33, %32, %30
  %42 = load ptr, ptr %16, align 8, !tbaa !194
  %43 = load ptr, ptr %7, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 100
  %45 = load float, ptr %44, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 96
  %47 = load i8, ptr %46, align 2, !tbaa !197
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !126
  call fastcc void @do_colorband_blend(ptr noundef nonnull %0, ptr noundef %42, ptr noundef %43, float noundef %45, i32 noundef %48, ptr noundef %50, ptr noundef nonnull %9) #18
  %51 = load ptr, ptr %9, align 8, !tbaa !34
  br label %55

52:                                               ; preds = %19, %15, %6
  %53 = getelementptr inbounds %struct.GPUShadeInput, ptr %2, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !126
  store ptr %54, ptr %9, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %27, %41, %52
  %56 = phi ptr [ %29, %27 ], [ %51, %41 ], [ %54, %52 ]
  %57 = load ptr, ptr %5, align 8, !tbaa !34
  %58 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.129, ptr noundef %57, ptr noundef %4, ptr noundef %56, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_specular_ramp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !318 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = load ptr, ptr %0, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %10 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  store ptr %11, ptr %3, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 93
  %13 = load ptr, ptr %12, align 8, !tbaa !199
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 95
  %17 = load i8, ptr %16, align 1, !tbaa !200
  switch i8 %17, label %26 [
    i8 3, label %37
    i8 1, label %18
    i8 0, label %19
    i8 2, label %20
  ]

18:                                               ; preds = %15
  store ptr %2, ptr %5, align 8, !tbaa !34
  br label %28

19:                                               ; preds = %15
  store ptr %1, ptr %5, align 8, !tbaa !34
  br label %28

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = getelementptr inbounds %struct.GPUShadeInput, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  %25 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %9, ptr noundef nonnull @.str.128, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  br label %28

26:                                               ; preds = %15
  %27 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %9, ptr noundef nonnull @.str.99, ptr noundef nonnull %5) #17
  br label %28

28:                                               ; preds = %26, %20, %19, %18
  %29 = load ptr, ptr %12, align 8, !tbaa !199
  %30 = load ptr, ptr %5, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 101
  %32 = load float, ptr %31, align 4, !tbaa !201
  %33 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 97
  %34 = load i8, ptr %33, align 1, !tbaa !202
  %35 = zext i8 %34 to i32
  %36 = load ptr, ptr %3, align 8, !tbaa !34
  call fastcc void @do_colorband_blend(ptr noundef %9, ptr noundef %29, ptr noundef %30, float noundef %32, i32 noundef %35, ptr noundef %36, ptr noundef nonnull %3) #18
  br label %37

37:                                               ; preds = %15, %28, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_colorband_blend(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !319 {
  %8 = alloca ptr, align 8
  %9 = alloca float, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %2, ptr %8, align 8, !tbaa !34
  store float %3, ptr %9, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  call void @colorband_table_RGBA(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %14) #17
  %15 = load i32, ptr %14, align 4, !tbaa !113
  %16 = load ptr, ptr %13, align 8, !tbaa !34
  %17 = call ptr @GPU_texture(i32 noundef %15, ptr noundef %16) #17
  %18 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.130, ptr noundef %2, ptr noundef %17, ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  %19 = load ptr, ptr %12, align 8, !tbaa !34
  %20 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %19, ptr noundef nonnull %11) #17
  %21 = load ptr, ptr %11, align 8, !tbaa !34
  %22 = call ptr @GPU_uniform(ptr noundef nonnull %9) #17
  %23 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %21, ptr noundef %22, ptr noundef nonnull %8) #17
  %24 = load ptr, ptr %8, align 8, !tbaa !34
  %25 = load ptr, ptr %12, align 8, !tbaa !34
  call fastcc void @ramp_blend(ptr noundef %0, ptr noundef %24, ptr noundef %5, ptr noundef %25, i32 noundef %4, ptr noundef %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  ret void
}

; Function Attrs: optsize
declare void @colorband_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_texture(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ramp_blend(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !320 {
  %7 = zext nneg i32 %4 to i64
  %8 = shl i64 %7, 2
  %9 = call ptr @llvm.load.relative.i64(ptr @reltable.ramp_blend, i64 %8)
  %10 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef %9, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5) #17
  ret void
}

; Function Attrs: optsize
declare ptr @GPU_image_preview(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_opengl_builtin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_generate_pass(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_material_set_attrib_id(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !321 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  %3 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5, i32 1
  store i32 0, ptr %8, align 4, !tbaa !322
  br label %39

9:                                                ; preds = %1
  %10 = tail call ptr @GPU_pass_shader(ptr noundef nonnull %5) #17
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.GPUMaterial, ptr %0, i64 0, i32 5, i32 1
  br i1 %11, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %12, align 4, !tbaa !322
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %17, label %37

16:                                               ; preds = %9
  store i32 0, ptr %12, align 4, !tbaa !322
  br label %39

17:                                               ; preds = %13, %31
  %18 = phi i64 [ %33, %31 ], [ 0, %13 ]
  %19 = phi i32 [ %32, %31 ], [ 0, %13 ]
  %20 = getelementptr inbounds [32 x %struct.anon], ptr %3, i64 0, i64 %18, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !300
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %21) #17
  %23 = call i32 @GPU_shader_get_attribute(ptr noundef nonnull %10, ptr noundef nonnull %2) #17
  %24 = getelementptr inbounds [32 x %struct.anon], ptr %3, i64 0, i64 %18, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !298
  %25 = icmp sgt i32 %23, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = getelementptr inbounds [32 x %struct.anon], ptr %3, i64 0, i64 %18
  %28 = sext i32 %19 to i64
  %29 = getelementptr inbounds [32 x %struct.anon], ptr %3, i64 0, i64 %28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %29, ptr noundef nonnull align 4 dereferenceable(80) %27, i64 80, i1 false), !tbaa.struct !323
  %30 = add nsw i32 %19, 1
  br label %31

31:                                               ; preds = %17, %26
  %32 = phi i32 [ %30, %26 ], [ %19, %17 ]
  %33 = add nuw nsw i64 %18, 1
  %34 = load i32, ptr %12, align 4, !tbaa !322
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %17, label %37, !llvm.loop !324

37:                                               ; preds = %31, %13
  %38 = phi i32 [ 0, %13 ], [ %32, %31 ]
  store i32 %38, ptr %12, align 4, !tbaa !322
  br label %39

39:                                               ; preds = %37, %16, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_shader_get_uniform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_shader_get_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #14 !PGOFuncName !325 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #17
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_framebuffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !35, i64 696}
!48 = !{!"GPULamp", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !49, i64 48, !36, i64 52, !49, i64 64, !36, i64 68, !36, i64 80, !36, i64 92, !36, i64 104, !36, i64 116, !36, i64 128, !36, i64 192, !36, i64 256, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !49, i64 348, !49, i64 352, !36, i64 356, !49, i64 368, !49, i64 372, !49, i64 376, !44, i64 380, !44, i64 384, !35, i64 392, !36, i64 400, !36, i64 464, !36, i64 528, !36, i64 592, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !42, i64 696}
!49 = !{!"float", !36, i64 0}
!50 = !{!39, !35, i64 0}
!51 = distinct !{!51, !46}
!52 = distinct !{!52, !46}
!53 = !{!54, !35, i64 88}
!54 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !49, i64 124, !55, i64 128}
!55 = !{!"FreestyleConfig", !42, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !42, i64 40}
!56 = !{!57, !35, i64 784}
!57 = !{!"Material", !58, i64 0, !35, i64 120, !59, i64 128, !59, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !60, i64 224, !61, i64 312, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !49, i64 348, !49, i64 352, !59, i64 356, !59, i64 358, !59, i64 360, !36, i64 362, !36, i64 363, !49, i64 364, !49, i64 368, !59, i64 372, !59, i64 374, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !59, i64 392, !59, i64 394, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !59, i64 412, !59, i64 414, !59, i64 416, !59, i64 418, !49, i64 420, !49, i64 424, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !49, i64 456, !36, i64 460, !49, i64 524, !49, i64 528, !49, i64 532, !44, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !59, i64 544, !59, i64 546, !59, i64 548, !36, i64 550, !36, i64 551, !59, i64 552, !59, i64 554, !49, i64 556, !49, i64 560, !36, i64 564, !49, i64 580, !49, i64 584, !59, i64 588, !59, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !59, i64 612, !59, i64 614, !49, i64 616, !49, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !49, i64 800, !49, i64 804, !49, i64 808, !49, i64 812, !49, i64 816, !59, i64 820, !59, i64 822, !36, i64 824, !36, i64 836, !49, i64 848, !49, i64 852, !49, i64 856, !49, i64 860, !49, i64 864, !49, i64 868, !49, i64 872, !59, i64 876, !59, i64 878, !44, i64 880, !59, i64 884, !59, i64 886, !36, i64 888, !59, i64 904, !59, i64 906, !59, i64 908, !59, i64 910, !59, i64 912, !36, i64 914, !35, i64 920, !42, i64 928}
!58 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !59, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!59 = !{!"short", !36, i64 0}
!60 = !{!"VolumeSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !49, i64 52, !49, i64 56, !49, i64 60, !59, i64 64, !59, i64 66, !59, i64 68, !59, i64 70, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84}
!61 = !{!"GameSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!62 = !{!48, !35, i64 8}
!63 = !{!41, !35, i64 0}
!64 = !{!65, !59, i64 888}
!65 = !{!"Scene", !58, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !59, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !66, i64 280, !75, i64 4264, !42, i64 4296, !42, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !59, i64 4376, !59, i64 4378, !44, i64 4380, !42, i64 4384, !76, i64 4400, !77, i64 4416, !80, i64 4600, !35, i64 4608, !81, i64 4616, !35, i64 4640, !82, i64 4648, !82, i64 4656, !68, i64 4664, !69, i64 4824, !83, i64 4888, !35, i64 4952}
!66 = !{!"RenderData", !67, i64 0, !35, i64 248, !35, i64 256, !70, i64 264, !71, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !49, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !59, i64 432, !59, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !59, i64 456, !59, i64 458, !59, i64 460, !59, i64 462, !59, i64 464, !59, i64 466, !44, i64 468, !59, i64 472, !59, i64 474, !59, i64 476, !59, i64 478, !59, i64 480, !59, i64 482, !44, i64 484, !44, i64 488, !59, i64 492, !59, i64 494, !44, i64 496, !44, i64 500, !59, i64 504, !59, i64 506, !59, i64 508, !59, i64 510, !59, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !59, i64 528, !59, i64 530, !59, i64 532, !59, i64 534, !59, i64 536, !59, i64 538, !59, i64 540, !59, i64 542, !72, i64 544, !72, i64 560, !73, i64 576, !42, i64 592, !59, i64 608, !59, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !44, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !59, i64 648, !59, i64 650, !59, i64 652, !59, i64 654, !59, i64 656, !59, i64 658, !49, i64 660, !49, i64 664, !59, i64 668, !59, i64 670, !49, i64 672, !49, i64 676, !36, i64 680, !44, i64 1704, !59, i64 1708, !59, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !59, i64 2524, !59, i64 2526, !49, i64 2528, !49, i64 2532, !59, i64 2536, !59, i64 2538, !49, i64 2540, !59, i64 2544, !59, i64 2546, !44, i64 2548, !59, i64 2552, !59, i64 2554, !59, i64 2556, !59, i64 2558, !49, i64 2560, !49, i64 2564, !35, i64 2568, !44, i64 2576, !49, i64 2580, !36, i64 2584, !74, i64 2616, !44, i64 3976, !44, i64 3980}
!67 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !59, i64 8, !59, i64 10, !49, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !68, i64 24, !69, i64 184}
!68 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !49, i64 136, !49, i64 140, !35, i64 144, !35, i64 152}
!69 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!70 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !59, i64 48, !59, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!71 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !49, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!72 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!73 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!74 = !{!"BakeData", !67, i64 0, !36, i64 248, !59, i64 1272, !59, i64 1274, !59, i64 1276, !59, i64 1278, !49, i64 1280, !49, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!75 = !{!"AudioData", !44, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !44, i64 16, !59, i64 20, !59, i64 22, !49, i64 24, !49, i64 28}
!76 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!77 = !{!"GameData", !76, i64 0, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !59, i64 28, !59, i64 30, !59, i64 32, !36, i64 34, !78, i64 40, !59, i64 64, !59, i64 66, !49, i64 68, !79, i64 72, !49, i64 128, !49, i64 132, !44, i64 136, !59, i64 140, !59, i64 142, !59, i64 144, !59, i64 146, !59, i64 148, !59, i64 150, !59, i64 152, !59, i64 154, !59, i64 156, !59, i64 158, !59, i64 160, !59, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!78 = !{!"GameDome", !59, i64 0, !59, i64 2, !59, i64 4, !59, i64 6, !49, i64 8, !49, i64 12, !35, i64 16}
!79 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !44, i64 40, !49, i64 44, !49, i64 48, !59, i64 52, !59, i64 54}
!80 = !{!"UnitSettings", !49, i64 0, !36, i64 4, !36, i64 5, !59, i64 6}
!81 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!82 = !{!"long", !36, i64 0}
!83 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!84 = !{!54, !44, i64 96}
!85 = !{!48, !44, i64 44}
!86 = !{!48, !44, i64 40}
!87 = !{!48, !44, i64 36}
!88 = !{!41, !35, i64 8}
!89 = !{!48, !49, i64 64}
!90 = !{!48, !49, i64 48}
!91 = !{!41, !44, i64 2628}
!92 = !{i8 0, i8 2}
!93 = distinct !{!93, !46}
!94 = !{!41, !44, i64 2616}
!95 = !{!41, !44, i64 2632}
!96 = !{!41, !44, i64 2636}
!97 = !{!41, !44, i64 2612}
!98 = !{!"gpu_material.c:copy_v3_v3"}
!99 = !{!49, !49, i64 0}
!100 = !{!"gpu_material.c:normalize_v3"}
!101 = !{!"gpu_material.c:negate_v3"}
!102 = !{!48, !35, i64 0}
!103 = !{!65, !44, i64 4552}
!104 = !{!48, !35, i64 672}
!105 = !{!48, !35, i64 656}
!106 = !{!41, !44, i64 2640}
!107 = !{!41, !44, i64 2644}
!108 = !{!41, !44, i64 2648}
!109 = !{!41, !44, i64 2652}
!110 = !{!"gpu_material.c:copy_v4_v4"}
!111 = !{i64 0, i64 2560, !112, i64 2560, i64 4, !113}
!112 = !{!36, !36, i64 0}
!113 = !{!44, !44, i64 0}
!114 = !{!41, !35, i64 32}
!115 = !{!41, !44, i64 2620}
!116 = !{!41, !44, i64 2624}
!117 = !{!57, !59, i64 360}
!118 = !{!119, !35, i64 0}
!119 = !{!"GPUShadeInput", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104}
!120 = !{!119, !35, i64 8}
!121 = !{!119, !35, i64 48}
!122 = !{!119, !35, i64 32}
!123 = !{!119, !35, i64 40}
!124 = !{!65, !35, i64 136}
!125 = !{!57, !44, i64 396}
!126 = !{!119, !35, i64 16}
!127 = !{!119, !35, i64 64}
!128 = !{!129, !35, i64 0}
!129 = !{!"GPUShadeResult", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!130 = !{!129, !35, i64 16}
!131 = !{!119, !35, i64 88}
!132 = !{!57, !49, i64 184}
!133 = !{!134, !49, i64 176}
!134 = !{!"World", !58, i64 0, !35, i64 120, !59, i64 128, !59, i64 130, !59, i64 132, !59, i64 134, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !59, i64 200, !59, i64 202, !59, i64 204, !59, i64 206, !59, i64 208, !59, i64 210, !59, i64 212, !59, i64 214, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !49, i64 260, !59, i64 264, !59, i64 266, !59, i64 268, !59, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !59, i64 288, !59, i64 290, !59, i64 292, !59, i64 294, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !59, i64 324, !59, i64 326, !59, i64 328, !59, i64 330, !59, i64 332, !59, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !59, i64 504, !59, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!135 = !{!134, !49, i64 180}
!136 = !{!129, !35, i64 8}
!137 = !{!134, !49, i64 160}
!138 = !{!134, !49, i64 164}
!139 = !{!134, !49, i64 168}
!140 = !{!119, !35, i64 104}
!141 = !{!57, !49, i64 180}
!142 = !{!119, !35, i64 80}
!143 = !{!57, !49, i64 208}
!144 = !{!129, !35, i64 24}
!145 = !{!57, !59, i64 394}
!146 = !{!134, !59, i64 202}
!147 = !{!134, !59, i64 134}
!148 = !{!57, !49, i64 200}
!149 = !{!"gpu_material.c:do_material_tex"}
!150 = !{!57, !44, i64 536}
!151 = !{!152, !35, i64 16}
!152 = !{!"MTex", !59, i64 0, !59, i64 2, !59, i64 4, !59, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !49, i64 116, !59, i64 120, !59, i64 122, !59, i64 124, !59, i64 126, !59, i64 128, !59, i64 130, !36, i64 132, !36, i64 133, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308}
!153 = !{!152, !59, i64 0}
!154 = !{!155, !59, i64 232}
!155 = !{!"Tex", !58, i64 0, !35, i64 120, !49, i64 128, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !59, i64 216, !59, i64 218, !59, i64 220, !59, i64 222, !59, i64 224, !59, i64 226, !59, i64 228, !59, i64 230, !59, i64 232, !59, i64 234, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !44, i64 252, !44, i64 256, !59, i64 260, !59, i64 262, !59, i64 264, !59, i64 266, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !156, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!156 = !{!"ImageUser", !35, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !59, i64 28, !59, i64 30, !59, i64 32, !59, i64 34, !44, i64 36}
!157 = !{!155, !35, i64 352}
!158 = !{!155, !59, i64 228}
!159 = !{!160, !59, i64 1246}
!160 = !{!"Image", !58, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !59, i64 1240, !59, i64 1242, !59, i64 1244, !59, i64 1246, !59, i64 1248, !59, i64 1250, !44, i64 1252, !59, i64 1256, !59, i64 1258, !59, i64 1260, !59, i64 1262, !59, i64 1264, !59, i64 1266, !44, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !49, i64 1296, !44, i64 1300, !59, i64 1304, !59, i64 1306, !44, i64 1308, !44, i64 1312, !36, i64 1316, !36, i64 1317, !59, i64 1318, !36, i64 1320, !49, i64 1336, !49, i64 1340, !83, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!161 = !{!152, !59, i64 120}
!162 = !{!152, !59, i64 2}
!163 = !{!152, !49, i64 164}
!164 = !{!152, !59, i64 6}
!165 = !{!152, !49, i64 184}
!166 = !{!119, !35, i64 24}
!167 = !{!152, !49, i64 172}
!168 = !{!152, !59, i64 128}
!169 = !{!152, !49, i64 196}
!170 = !{!119, !35, i64 72}
!171 = !{!152, !49, i64 200}
!172 = !{!152, !49, i64 204}
!173 = !{!152, !49, i64 208}
!174 = !{!119, !35, i64 96}
!175 = !{!152, !49, i64 192}
!176 = !{!152, !49, i64 220}
!177 = distinct !{!177, !46}
!178 = !{!"gpu_material.c:material_lights"}
!179 = !{!180, !35, i64 32}
!180 = !{!"Base", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !59, i64 28, !59, i64 30, !35, i64 32}
!181 = !{!182, !59, i64 136}
!182 = !{!"Object", !58, i64 0, !35, i64 120, !35, i64 128, !59, i64 136, !59, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !183, i64 312, !35, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !44, i64 432, !44, i64 436, !35, i64 440, !35, i64 448, !44, i64 456, !44, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !49, i64 616, !49, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !44, i64 944, !59, i64 948, !59, i64 950, !59, i64 952, !59, i64 954, !59, i64 956, !59, i64 958, !59, i64 960, !59, i64 962, !59, i64 964, !36, i64 966, !36, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !59, i64 1036, !59, i64 1038, !59, i64 1040, !36, i64 1042, !36, i64 1043, !59, i64 1044, !36, i64 1046, !36, i64 1047, !49, i64 1048, !49, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !49, i64 1120, !59, i64 1124, !59, i64 1126, !36, i64 1128, !44, i64 1144, !44, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !59, i64 1162, !36, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !59, i64 1266, !49, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !82, i64 1304, !82, i64 1312, !44, i64 1320, !44, i64 1324, !42, i64 1328, !42, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !42, i64 1400, !35, i64 1416}
!183 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !59, i64 28, !59, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!184 = !{!182, !59, i64 952}
!185 = !{!186, !35, i64 0}
!186 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !42, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !59, i64 2084, !59, i64 2086, !59, i64 2088, !36, i64 2090, !59, i64 2092, !44, i64 2096, !44, i64 2100, !36, i64 2104, !44, i64 2108, !44, i64 2112, !36, i64 2116}
!187 = !{!188, !35, i64 1888}
!188 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !59, i64 1040, !59, i64 1042, !59, i64 1044, !59, i64 1046, !82, i64 1048, !36, i64 1056, !59, i64 1072, !35, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!189 = !{!190, !35, i64 16}
!190 = !{!"DupliObject", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !59, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !35, i64 144}
!191 = distinct !{!191, !46}
!192 = distinct !{!192, !46}
!193 = !{!"gpu_material.c:ramp_diffuse_result"}
!194 = !{!57, !35, i64 592}
!195 = !{!57, !36, i64 608}
!196 = !{!57, !49, i64 616}
!197 = !{!57, !36, i64 610}
!198 = !{!"gpu_material.c:ramp_spec_result"}
!199 = !{!57, !35, i64 600}
!200 = !{!57, !36, i64 609}
!201 = !{!57, !49, i64 620}
!202 = !{!57, !36, i64 611}
!203 = distinct !{!203, !46}
!204 = !{!57, !35, i64 792}
!205 = !{!"gpu_material.c:GPU_material_construct_begin"}
!206 = !{!"gpu_material.c:gpu_material_preview_matcap"}
!207 = !{!"gpu_material.c:gpu_material_diffuse_bsdf"}
!208 = !{!"gpu_material.c:GPU_material_construct_end"}
!209 = distinct !{!209, !46}
!210 = !{!57, !35, i64 768}
!211 = !{!57, !36, i64 543}
!212 = !{!"gpu_material.c:GPU_blender_material"}
!213 = distinct !{!213, !46}
!214 = distinct !{!214, !46}
!215 = !{!57, !35, i64 928}
!216 = distinct !{!216, !46}
!217 = distinct !{!217, !46}
!218 = !{!48, !49, i64 344}
!219 = !{!48, !49, i64 348}
!220 = !{!48, !49, i64 352}
!221 = !{!48, !49, i64 320}
!222 = !{!48, !49, i64 324}
!223 = !{!"gpu_material.c:gpu_lamp_calc_winmat"}
!224 = !{!48, !44, i64 32}
!225 = !{!48, !35, i64 24}
!226 = !{!227, !49, i64 336}
!227 = !{!"Lamp", !58, i64 0, !35, i64 120, !59, i64 128, !59, i64 130, !44, i64 132, !59, i64 136, !59, i64 138, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !35, i64 200, !59, i64 208, !59, i64 210, !49, i64 212, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !59, i64 240, !59, i64 242, !59, i64 244, !59, i64 246, !36, i64 248, !36, i64 249, !59, i64 250, !59, i64 252, !59, i64 254, !59, i64 256, !59, i64 258, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !59, i64 276, !59, i64 278, !59, i64 280, !59, i64 282, !59, i64 284, !59, i64 286, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !59, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !59, i64 496, !59, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!228 = !{!48, !49, i64 372}
!229 = !{!48, !49, i64 376}
!230 = !{!48, !44, i64 380}
!231 = !{!48, !35, i64 16}
!232 = distinct !{!232, !46}
!233 = !{!182, !35, i64 296}
!234 = !{!227, !59, i64 128}
!235 = !{!227, !44, i64 132}
!236 = !{!227, !59, i64 278}
!237 = !{!48, !35, i64 680}
!238 = !{!48, !35, i64 664}
!239 = !{!48, !35, i64 688}
!240 = !{!227, !49, i64 156}
!241 = !{!227, !49, i64 160}
!242 = !{!227, !49, i64 164}
!243 = !{!"gpu_material.c:gpu_lamp_from_blender"}
!244 = !{!227, !49, i64 172}
!245 = !{!227, !49, i64 140}
!246 = !{!227, !49, i64 144}
!247 = !{!227, !49, i64 148}
!248 = !{!182, !44, i64 944}
!249 = !{!182, !36, i64 1160}
!250 = !{!227, !49, i64 180}
!251 = !{!227, !49, i64 184}
!252 = !{!227, !49, i64 152}
!253 = !{!48, !49, i64 328}
!254 = !{!227, !49, i64 176}
!255 = !{!227, !59, i64 208}
!256 = !{!48, !44, i64 384}
!257 = !{!227, !35, i64 200}
!258 = !{!48, !35, i64 392}
!259 = !{!227, !49, i64 220}
!260 = !{!227, !59, i64 240}
!261 = !{!48, !49, i64 368}
!262 = !{!"gpu_material.c:gpu_lamp_shadow_free"}
!263 = !{!"gpu_material.c:lamp_get_visibility"}
!264 = !{!"gpu_material.c:shade_light_textures"}
!265 = distinct !{!265, !46}
!266 = !{!"gpu_material.c:add_user_list"}
!267 = !{!268, !35, i64 48}
!268 = !{!"GPUPass", !35, i64 0, !35, i64 8, !42, i64 16, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!269 = !{!268, !35, i64 56}
!270 = !{!271, !35, i64 64}
!271 = !{!"GPUInput", !35, i64 0, !35, i64 8, !35, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !44, i64 88, !35, i64 96, !44, i64 104, !35, i64 112, !35, i64 120, !44, i64 128, !36, i64 132, !36, i64 164, !35, i64 232, !44, i64 240, !44, i64 244, !36, i64 248, !44, i64 280, !44, i64 284, !44, i64 288}
!272 = !{!273, !44, i64 48}
!273 = !{!"GPUInputUniform", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 48, !44, i64 52, !35, i64 56, !35, i64 64, !44, i64 72, !35, i64 80, !44, i64 88}
!274 = !{!273, !44, i64 52}
!275 = !{!273, !35, i64 64}
!276 = !{!271, !44, i64 36}
!277 = !{!273, !44, i64 72}
!278 = !{!271, !35, i64 120}
!279 = !{!271, !44, i64 56}
!280 = !{!271, !35, i64 112}
!281 = !{!273, !35, i64 56}
!282 = !{!273, !44, i64 88}
!283 = !{!273, !35, i64 80}
!284 = !{!271, !44, i64 104}
!285 = !{!271, !44, i64 24}
!286 = distinct !{!286, !46}
!287 = !{!288, !44, i64 0}
!288 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8}
!289 = distinct !{!289, !46}
!290 = !{!268, !35, i64 64}
!291 = !{!292, !35, i64 40}
!292 = !{!"GPUShaderExport", !42, i64 0, !42, i64 16, !35, i64 32, !35, i64 40}
!293 = !{!41, !44, i64 2608}
!294 = !{!295, !44, i64 0}
!295 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !36, i64 16}
!296 = !{!297, !44, i64 48}
!297 = !{!"GPUInputAttribute", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 48, !44, i64 52, !35, i64 56, !44, i64 64}
!298 = !{!295, !44, i64 4}
!299 = !{!297, !44, i64 64}
!300 = !{!295, !44, i64 12}
!301 = !{!297, !44, i64 52}
!302 = !{!297, !35, i64 56}
!303 = distinct !{!303, !46}
!304 = !{!292, !35, i64 32}
!305 = distinct !{!305, !46}
!306 = !{!"gpu_material.c:normalize_v3_v3"}
!307 = !{!"gpu_material.c:dot_v3v3"}
!308 = !{!"gpu_material.c:mul_v3_v3fl"}
!309 = !{!"gpu_material.c:zero_v3"}
!310 = !{!"gpu_material.c:texture_rgb_blend"}
!311 = !{!"gpu_material.c:min_ff"}
!312 = !{!"gpu_material.c:texture_value_blend"}
!313 = !{!"gpu_material.c:shade_one_light"}
!314 = !{!57, !59, i64 552}
!315 = !{!57, !49, i64 204}
!316 = !{!57, !59, i64 554}
!317 = !{!"gpu_material.c:add_to_diffuse"}
!318 = !{!"gpu_material.c:do_specular_ramp"}
!319 = !{!"gpu_material.c:do_colorband_blend"}
!320 = !{!"gpu_material.c:ramp_blend"}
!321 = !{!"gpu_material.c:gpu_material_set_attrib_id"}
!322 = !{!43, !44, i64 2560}
!323 = !{i64 0, i64 4, !113, i64 4, i64 4, !113, i64 8, i64 4, !113, i64 12, i64 4, !113, i64 16, i64 64, !112}
!324 = distinct !{!324, !46}
!325 = !{!"gpu_material.c:saacos"}
