; ModuleID = 'blender_bin/source/blender/gpu/shaders/gpu_shader_simple_frag.glsl.c'
source_filename = "blender_bin/source/blender/gpu/shaders/gpu_shader_simple_frag.glsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@datatoc_gpu_shader_simple_frag_glsl_size = dso_local local_unnamed_addr global i32 4633, align 4
@datatoc_gpu_shader_simple_frag_glsl = dso_local local_unnamed_addr global [4634 x i8] c"\0A/* Options:\0A *\0A * USE_COLOR: use glColor for diffuse colors\0A * USE_TEXTURE: use texture for diffuse colors\0A * USE_SCENE_LIGHTING: use lights (up to 8)\0A * USE_SOLID_LIGHTING: assume 3 directional lights for solid draw mode\0A * USE_TWO_SIDED: flip normal towards viewer\0A * NO_SPECULAR: use specular component\0A */\0A\0A#define NUM_SOLID_LIGHTS 3\0A#define NUM_SCENE_LIGHTS 8\0A\0A#if defined(USE_SOLID_LIGHTING) || defined(USE_SCENE_LIGHTING)\0Avarying vec3 varying_normal;\0A\0A#ifndef USE_SOLID_LIGHTING\0Avarying vec3 varying_position;\0A#endif\0A#endif\0A\0A#ifdef USE_COLOR\0Avarying vec4 varying_vertex_color;\0A#endif\0A\0A#ifdef USE_TEXTURE\0Avarying vec2 varying_texture_coord;\0Auniform sampler2D texture_map;\0A#endif\0A\0Avoid main()\0A{\0A#if defined(USE_SOLID_LIGHTING) || defined(USE_SCENE_LIGHTING)\0A\09/* compute normal */\0A\09vec3 N = normalize(varying_normal);\0A\0A#ifdef USE_TWO_SIDED\0A\09if (!gl_FrontFacing)\0A\09\09N = -N;\0A#endif\0A\0A\09/* compute diffuse and specular lighting */\0A\09vec3 L_diffuse = vec3(0.0);\0A#ifndef NO_SPECULAR\0A\09vec3 L_specular = vec3(0.0);\0A#endif\0A\0A#ifdef USE_SOLID_LIGHTING\0A\09/* assume 3 directional lights */\0A\09for (int i = 0; i < NUM_SOLID_LIGHTS; i++) {\0A\09\09vec3 light_direction = gl_LightSource[i].position.xyz;\0A\0A\09\09/* diffuse light */\0A\09\09vec3 light_diffuse = gl_LightSource[i].diffuse.rgb;\0A\09\09float diffuse_bsdf = max(dot(N, light_direction), 0.0);\0A\09\09L_diffuse += light_diffuse*diffuse_bsdf;\0A\0A#ifndef NO_SPECULAR\0A\09\09/* specular light */\0A\09\09vec3 light_specular = gl_LightSource[i].specular.rgb;\0A\09\09vec3 H = gl_LightSource[i].halfVector.xyz;\0A\0A\09\09float specular_bsdf = pow(max(dot(N, H), 0.0), gl_FrontMaterial.shininess);\0A\09\09L_specular += light_specular*specular_bsdf;\0A#endif\0A\09}\0A#else\0A\09/* all 8 lights, makes no assumptions, potentially slow */\0A\0A#ifndef NO_SPECULAR\0A\09/* view vector computation, depends on orthographics or perspective */\0A\09vec3 V = (gl_ProjectionMatrix[3][3] == 0.0) ? normalize(varying_position): vec3(0.0, 0.0, -1.0);\0A#endif\0A\0A\09for (int i = 0; i < NUM_SCENE_LIGHTS; i++) {\0A\09\09/* todo: this is a slow check for disabled lights */\0A\09\09if (gl_LightSource[i].specular.a == 0.0)\0A\09\09\09continue;\0A\0A\09\09float intensity = 1.0;\0A\09\09vec3 light_direction;\0A\0A\09\09if (gl_LightSource[i].position.w == 0.0) {\0A\09\09\09/* directional light */\0A\09\09\09light_direction = gl_LightSource[i].position.xyz;\0A\09\09}\0A\09\09else {\0A\09\09\09/* point light */\0A\09\09\09vec3 d = gl_LightSource[i].position.xyz - varying_position;\0A\09\09\09light_direction = normalize(d);\0A\0A\09\09\09/* spot light cone */\0A\09\09\09if (gl_LightSource[i].spotCutoff < 90.0) {\0A\09\09\09\09float cosine = max(dot(light_direction, -gl_LightSource[i].spotDirection), 0.0);\0A\09\09\09\09intensity = pow(cosine, gl_LightSource[i].spotExponent);\0A\09\09\09\09intensity *= step(gl_LightSource[i].spotCosCutoff, cosine);\0A\09\09\09}\0A\0A\09\09\09/* falloff */\0A\09\09\09float distance = length(d);\0A\0A\09\09\09intensity /= gl_LightSource[i].constantAttenuation +\0A\09\09\09\09gl_LightSource[i].linearAttenuation * distance +\0A\09\09\09\09gl_LightSource[i].quadraticAttenuation * distance * distance;\0A\09\09}\0A\0A\09\09/* diffuse light */\0A\09\09vec3 light_diffuse = gl_LightSource[i].diffuse.rgb;\0A\09\09float diffuse_bsdf = max(dot(N, light_direction), 0.0);\0A\09\09L_diffuse += light_diffuse*diffuse_bsdf*intensity;\0A\0A#ifndef NO_SPECULAR\0A\09\09/* specular light */\0A\09\09vec3 light_specular = gl_LightSource[i].specular.rgb;\0A\09\09vec3 H = normalize(light_direction - V);\0A\0A\09\09float specular_bsdf = pow(max(dot(N, H), 0.0), gl_FrontMaterial.shininess);\0A\09\09L_specular += light_specular*specular_bsdf*intensity;\0A#endif\0A\09}\0A#endif\0A\0A\09/* compute diffuse color, possibly from texture or vertex colors */\0A\09float alpha;\0A\0A#if defined(USE_TEXTURE) && defined(USE_COLOR)\0A\09vec4 texture_color = texture2D(texture_map, varying_texture_coord);\0A\0A\09L_diffuse *= texture_color.rgb * varying_vertex_color.rgb;\0A\09alpha = texture_color.a * varying_vertex_color.a;\0A#elif defined(USE_TEXTURE)\0A\09vec4 texture_color = texture2D(texture_map, varying_texture_coord);\0A\0A\09L_diffuse *= texture_color.rgb;\0A\09alpha = texture_color.a;\0A#elif defined(USE_COLOR)\0A\09L_diffuse *= varying_vertex_color.rgb;\0A\09alpha = varying_vertex_color.a;\0A#else\0A\09L_diffuse *= gl_FrontMaterial.diffuse.rgb;\0A\09alpha = gl_FrontMaterial.diffuse.a;\0A#endif\0A\0A\09/* sum lighting */\0A\09vec3 L = gl_FrontLightModelProduct.sceneColor.rgb + L_diffuse;\0A\0A#ifndef NO_SPECULAR\0A\09L += L_specular*gl_FrontMaterial.specular.rgb;\0A#endif\0A\0A\09/* write out fragment color */\0A\09gl_FragColor = vec4(L, alpha);\0A#else\0A\0A\09/* no lighting */\0A#if defined(USE_TEXTURE) && defined(USE_COLOR)\0A\09gl_FragColor = texture2D(texture_map, varying_texture_coord) * varying_vertex_color;\0A#elif defined(USE_TEXTURE)\0A\09gl_FragColor = texture2D(texture_map, varying_texture_coord);\0A#elif defined(USE_COLOR)\0A\09gl_FragColor = varying_vertex_color;\0A#else\0A\09gl_FragColor = gl_FrontMaterial.diffuse;\0A#endif\0A\0A#endif\0A}\0A\0A\00", align 16

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
