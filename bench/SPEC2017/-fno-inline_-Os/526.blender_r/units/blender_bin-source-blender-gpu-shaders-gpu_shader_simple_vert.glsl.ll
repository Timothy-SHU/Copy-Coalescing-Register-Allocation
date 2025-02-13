; ModuleID = 'blender_bin/source/blender/gpu/shaders/gpu_shader_simple_vert.glsl.c'
source_filename = "blender_bin/source/blender/gpu/shaders/gpu_shader_simple_vert.glsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@datatoc_gpu_shader_simple_vert_glsl_size = dso_local local_unnamed_addr global i32 1107, align 4
@datatoc_gpu_shader_simple_vert_glsl = dso_local local_unnamed_addr global [1108 x i8] c"\0A#if defined(USE_SOLID_LIGHTING) || defined(USE_SCENE_LIGHTING)\0Avarying vec3 varying_normal;\0A\0A#ifndef USE_SOLID_LIGHTING\0Avarying vec3 varying_position;\0A#endif\0A#endif\0A\0A#ifdef USE_COLOR\0Avarying vec4 varying_vertex_color;\0A#endif\0A\0A#ifdef USE_TEXTURE\0Avarying vec2 varying_texture_coord;\0A#endif\0A\0A#ifdef CLIP_WORKAROUND\0Avarying float gl_ClipDistance[6];\0A#endif\0A\0Avoid main()\0A{\0A\09vec4 co = gl_ModelViewMatrix * gl_Vertex;\0A\0A#if defined(USE_SOLID_LIGHTING) || defined(USE_SCENE_LIGHTING)\0A\09varying_normal = normalize(gl_NormalMatrix * gl_Normal);\0A\0A#ifndef USE_SOLID_LIGHTING\0A\09varying_position = co.xyz;\0A#endif\0A#endif\0A\0A\09gl_Position = gl_ProjectionMatrix * co;\0A\0A#ifdef CLIP_WORKAROUND\0A\09int i;\0A\09for(i = 0; i < 6; i++)\0A\09\09gl_ClipDistance[i] = dot(co, gl_ClipPlane[i]);\0A#elif !defined(GPU_ATI)\0A\09// Setting gl_ClipVertex is necessary to get glClipPlane working on NVIDIA\0A\09// graphic cards, while on ATI it can cause a software fallback.\0A\09gl_ClipVertex = co; \0A#endif \0A\0A#ifdef USE_COLOR\0A\09varying_vertex_color = gl_Color;\0A#endif\0A\0A#ifdef USE_TEXTURE\0A\09varying_texture_coord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).st;\0A#endif\0A}\0A\0A\00", align 16

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
