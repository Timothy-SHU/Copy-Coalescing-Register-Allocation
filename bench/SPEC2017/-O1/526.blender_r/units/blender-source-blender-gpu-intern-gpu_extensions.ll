; ModuleID = 'blender/source/blender/gpu/intern/gpu_extensions.c'
source_filename = "blender/source/blender/gpu/intern/gpu_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GPUGlobal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.GPUShaders, ptr, ptr, ptr }
%struct.GPUShaders = type { ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.GPUTexture = type { i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.GPUFrameBuffer = type { i32, ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.GPUOffScreen = type { ptr, ptr, ptr, i32, i32 }
%struct.GPUShader = type { i32, i32, i32, i32, i32 }

@GG = internal global %struct.GPUGlobal { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.GPUShaders zeroinitializer, ptr null, ptr null, ptr null }, align 8
@__GLEW_ARB_multitexture = external local_unnamed_addr global i8, align 1
@__GLEW_ARB_vertex_shader = external local_unnamed_addr global i8, align 1
@__GLEW_ARB_fragment_shader = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [4 x i8] c"ATI\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"NVIDIA\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Mesa DRI Intel\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Mesa DRI Mobile Intel\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Mesa DRI R\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Gallium \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" on ATI \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Nouveau\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"nouveau\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Mesa\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Microsoft\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Apple Software Renderer\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"R3\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"RV3\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"R4\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"RV4\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"RS4\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"RC4\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"R5\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"RV5\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"RS600\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"RS690\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"RS740\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"X1\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"X2\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Radeon 9\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"RADEON 9\00", align 1
@__GLEW_ARB_texture_non_power_of_two = external local_unnamed_addr global i8, align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [21 x i8] c"%s opengl error: %s\0A\00", align 1
@__GLEW_VERSION_1_2 = external local_unnamed_addr global i8, align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [11 x i8] c"GPUTexture\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"GPUTexture: texture create failed: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"3D glBindTexture\00", align 1
@__glewTexImage3D = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [16 x i8] c"3D glTexImage3D\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@__glewTexSubImage3D = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [19 x i8] c"3D glTexSubImage3D\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"3D GL_TEXTURE_BORDER_COLOR\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"3D GL_LINEAR\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"3D GL_CLAMP_TO_BORDER\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Blender Texture Not Loaded\00", align 1
@__const.GPU_invalid_tex_init.color = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@.str.39 = private unnamed_addr constant [26 x i8] c"Not enough texture slots.\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Pre Texture Bind\00", align 1
@__glewActiveTextureARB = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [18 x i8] c"Post Texture Bind\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"Pre Texture Unbind\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"Post Texture Unbind\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"GPUTexture: negative refcount\0A\00", align 1
@__GLEW_EXT_framebuffer_object = external local_unnamed_addr global i8, align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"GPUFrameBuffer\00", align 1
@__glewGenFramebuffersEXT = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [45 x i8] c"GPUFFrameBuffer: framebuffer gen failed. %d\0A\00", align 1
@__glewBindFramebufferEXT = external local_unnamed_addr global ptr, align 8
@__glewFramebufferTexture2DEXT = external local_unnamed_addr global ptr, align 8
@__glewCheckFramebufferStatusEXT = external local_unnamed_addr global ptr, align 8
@__glewDeleteFramebuffersEXT = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"ScaleU\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"textureSource\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"GPUOffScreen\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"GPUShader\00", align 1
@__glewCreateShaderObjectARB = external local_unnamed_addr global ptr, align 8
@__glewCreateProgramObjectARB = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [36 x i8] c"GPUShader, object creation failed.\0A\00", align 1
@__glewAttachObjectARB = external local_unnamed_addr global ptr, align 8
@__glewShaderSourceARB = external local_unnamed_addr global ptr, align 8
@__glewCompileShaderARB = external local_unnamed_addr global ptr, align 8
@__glewGetObjectParameterivARB = external local_unnamed_addr global ptr, align 8
@__glewGetInfoLogARB = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [8 x i8] c"compile\00", align 1
@__glewLinkProgramARB = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [8 x i8] c"linking\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"Pre Shader Bind\00", align 1
@__glewUseProgramObjectARB = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [17 x i8] c"Post Shader Bind\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"Pre Shader Unbind\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"Post Shader Unbind\00", align 1
@__glewDeleteObjectARB = external local_unnamed_addr global ptr, align 8
@__glewGetUniformLocationARB = external local_unnamed_addr global ptr, align 8
@.str.58 = private unnamed_addr constant [19 x i8] c"Pre Uniform Vector\00", align 1
@__glewUniform1fvARB = external local_unnamed_addr global ptr, align 8
@__glewUniform2fvARB = external local_unnamed_addr global ptr, align 8
@__glewUniform3fvARB = external local_unnamed_addr global ptr, align 8
@__glewUniform4fvARB = external local_unnamed_addr global ptr, align 8
@__glewUniformMatrix3fvARB = external local_unnamed_addr global ptr, align 8
@__glewUniformMatrix4fvARB = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [20 x i8] c"Post Uniform Vector\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"Pre Uniform Int\00", align 1
@__glewUniform1iARB = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [17 x i8] c"Post Uniform Int\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"Pre Uniform Texture\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"Post Uniform Texture\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"Pre Get Attribute\00", align 1
@__glewGetAttribLocationARB = external local_unnamed_addr global ptr, align 8
@.str.65 = private unnamed_addr constant [19 x i8] c"Post Get Attribute\00", align 1
@datatoc_gpu_shader_vsm_store_vert_glsl = external global [0 x i8], align 1
@datatoc_gpu_shader_vsm_store_frag_glsl = external global [0 x i8], align 1
@datatoc_gpu_shader_sep_gaussian_blur_vert_glsl = external global [0 x i8], align 1
@datatoc_gpu_shader_sep_gaussian_blur_frag_glsl = external global [0 x i8], align 1
@.str.66 = private unnamed_addr constant [53 x i8] c"Unable to create a GPUShader for builtin shader: %d\0A\00", align 1
@__GLEW_ARB_depth_texture = external local_unnamed_addr global i8, align 1
@.str.67 = private unnamed_addr constant [38 x i8] c"GPUTexture: texture create failed: %d\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"GPUTexturePixels\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"GPUTextureEmptyPixels\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Invalid operation\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"Incomplete attachment\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"Unsupported framebuffer format\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Missing attachment\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"Attached images must have same dimensions\00", align 1
@.str.76 = private unnamed_addr constant [38 x i8] c"Attached images must have same format\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"Missing draw buffer\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"Missing read buffer\00", align 1
@.str.79 = private unnamed_addr constant [53 x i8] c"GPUFrameBuffer: framebuffer incomplete error %d '%s'\00", align 1
@.str.80 = private unnamed_addr constant [54 x i8] c"GPUFrameBuffer: framebuffer incomplete error %d '%s'\0A\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"#define GPU_ATI\0A\00", align 1
@__GLEW_VERSION_3_0 = external local_unnamed_addr global i8, align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"#define CLIP_WORKAROUND\0A\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"#define GPU_NVIDIA\0A\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"#define GPU_INTEL\0A\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"#define BUMP_BICUBIC\0A\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"#version 130\0A\00", align 1
@.str.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.88 = private unnamed_addr constant [45 x i8] c"#extension GL_ARB_texture_query_lod: enable\0A\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"GPUShader: %s error:\0A\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"===== shader string %d ====\0A\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"%2d  \00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_type_matches(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  %5 = and i32 %4, %0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 9), align 4, !tbaa !41
  %9 = and i32 %8, %1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  %13 = and i32 %12, %2
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %7, %3
  %17 = phi i32 [ 0, %7 ], [ 0, %3 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @GPU_extensions_disable() local_unnamed_addr #1 {
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 4), align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_max_texture_size() local_unnamed_addr #0 {
  %1 = load i32, ptr @GG, align 8, !tbaa !44
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @gpu_extensions_init() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = load i8, ptr @__GLEW_ARB_multitexture, align 1, !tbaa !45
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @glGetIntegerv(i32 noundef 34930, ptr noundef nonnull getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 1)) #15
  br label %7

7:                                                ; preds = %6, %0
  tail call void @glGetIntegerv(i32 noundef 3379, ptr noundef nonnull @GG) #15
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 3), align 4, !tbaa !46
  %8 = load i8, ptr @__GLEW_ARB_multitexture, align 1, !tbaa !45
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 3), align 4
  %11 = load i8, ptr @__GLEW_ARB_vertex_shader, align 1, !tbaa !45
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 0, i32 %10
  store i32 %13, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 3), align 4
  %14 = load i8, ptr @__GLEW_ARB_fragment_shader, align 1, !tbaa !45
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 0, i32 %13
  store i32 %16, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 3), align 4
  call void @glGetIntegerv(i32 noundef 3410, ptr noundef nonnull %1) #15
  call void @glGetIntegerv(i32 noundef 3411, ptr noundef nonnull %2) #15
  call void @glGetIntegerv(i32 noundef 3412, ptr noundef nonnull %3) #15
  %17 = load i32, ptr %1, align 4, !tbaa !47
  %18 = load i32, ptr %2, align 4, !tbaa !47
  %19 = add nsw i32 %18, %17
  %20 = load i32, ptr %3, align 4, !tbaa !47
  %21 = add nsw i32 %19, %20
  store i32 %21, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 5), align 4, !tbaa !48
  %22 = call ptr @glGetString(i32 noundef 7936) #15
  %23 = call ptr @glGetString(i32 noundef 7937) #15
  %24 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %7
  %27 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.1) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %26
  %30 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.2) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.3) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.4) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.5) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.6) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.7) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %44, %41
  %48 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.8) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.9) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.10) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.11) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.12) #16
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, i32 255, i32 8
  %63 = select i1 %61, i32 16711680, i32 262144
  br label %64

64:                                               ; preds = %59, %56, %53, %47, %50, %38, %44, %29, %32, %35, %26, %7
  %65 = phi i32 [ 2, %7 ], [ 1, %26 ], [ 4, %35 ], [ 4, %32 ], [ 4, %29 ], [ 2, %44 ], [ 2, %38 ], [ 1, %50 ], [ 1, %47 ], [ 8, %53 ], [ 8, %56 ], [ %62, %59 ]
  %66 = phi i32 [ 65536, %7 ], [ 65536, %26 ], [ 65536, %35 ], [ 65536, %32 ], [ 65536, %29 ], [ 131072, %44 ], [ 131072, %38 ], [ 131072, %50 ], [ 131072, %47 ], [ 262144, %53 ], [ 262144, %56 ], [ %63, %59 ]
  store i32 %65, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 %66, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  %67 = icmp eq i32 %65, 2
  br i1 %67, label %68, label %114

68:                                               ; preds = %64
  %69 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.13) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %113

71:                                               ; preds = %68
  %72 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.14) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %113

74:                                               ; preds = %71
  %75 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.15) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %113

77:                                               ; preds = %74
  %78 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.16) #16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %77
  %81 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.17) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %113

83:                                               ; preds = %80
  %84 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.18) #16
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.19) #16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.20) #16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.21) #16
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.22) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.23) #16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.24) #16
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.25) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.26) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.27) #16
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 6), align 8, !tbaa !49
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 7), align 4, !tbaa !50
  br label %114

114:                                              ; preds = %110, %113, %64
  call void @glLightModeli(i32 noundef 2898, i32 noundef 0) #15
  store i32 1024, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 9), align 4, !tbaa !41
  call void @GPU_invalid_tex_init()
  call void @GPU_simple_shaders_init() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @glGetString(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_invalid_tex_init() local_unnamed_addr #2 {
  %1 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @__const.GPU_invalid_tex_init.color, i64 16, i1 false)
  %2 = call fastcc ptr @GPU_texture_create_nD(i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %1, i32 noundef 0, ptr noundef null)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void @GPU_texture_unbind(ptr noundef nonnull %2)
  br label %5

5:                                                ; preds = %0, %4
  store ptr %2, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 12), align 8, !tbaa !51
  %6 = call fastcc ptr @GPU_texture_create_nD(i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %1, i32 noundef 0, ptr noundef null)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  call void @GPU_texture_unbind(ptr noundef nonnull %6)
  br label %9

9:                                                ; preds = %5, %8
  store ptr %6, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 13), align 8, !tbaa !52
  %10 = call ptr @GPU_texture_create_3D(i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %1)
  store ptr %10, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 14), align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  ret void
}

declare void @GPU_simple_shaders_init() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @gpu_extensions_exit() local_unnamed_addr #2 {
  tail call void @GPU_simple_shaders_exit() #15
  %1 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 12), align 8, !tbaa !51
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @GPU_texture_free(ptr noundef nonnull %1)
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 13), align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @GPU_texture_free(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 14), align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @GPU_texture_free(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %8, %11
  ret void
}

declare void @GPU_simple_shaders_exit() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_invalid_tex_free() local_unnamed_addr #2 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 12), align 8, !tbaa !51
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @GPU_texture_free(ptr noundef nonnull %1)
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 13), align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @GPU_texture_free(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 14), align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @GPU_texture_free(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_glsl_support() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 4), align 8, !tbaa !43
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 3), align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_non_power_of_two_support() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 6), align 8, !tbaa !49
  %2 = icmp eq i32 %1, 0
  %3 = load i8, ptr @__GLEW_ARB_texture_non_power_of_two, align 1
  %4 = zext i8 %3 to i32
  %5 = select i1 %2, i32 %4, i32 0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_display_list_support() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 7), align 4, !tbaa !50
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_color_depth() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 5), align 4, !tbaa !48
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GPU_print_error(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @glGetError() #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !58
  %10 = tail call ptr @gluErrorString(i32 noundef %6) #15
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.28, ptr noundef %0, ptr noundef %10) #17
  br label %12

12:                                               ; preds = %1, %5, %8
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %13
}

declare i32 @glGetError() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare ptr @gluErrorString(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPU_texture_create_3D(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = load i8, ptr @__GLEW_VERSION_1_2, align 1, !tbaa !45
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %182, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %11 = tail call ptr %10(i64 noundef 48, ptr noundef nonnull @.str.29) #15
  store i32 %0, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 1
  store i32 %1, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 8
  store i32 %2, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 2
  store i32 -1, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 3
  store i32 1, ptr %15, align 4, !tbaa !64
  %16 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 4
  store i32 32879, ptr %16, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 5
  tail call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %17) #15
  %18 = load i32, ptr %17, align 4, !tbaa !66
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load ptr, ptr @stderr, align 8, !tbaa !58
  %22 = tail call i32 @glGetError() #15
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef %22) #17
  tail call void @GPU_texture_free(ptr noundef nonnull %11)
  br label %182

24:                                               ; preds = %9
  %25 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 6), align 8, !tbaa !49
  %26 = icmp ne i32 %25, 0
  %27 = load i8, ptr @__GLEW_ARB_texture_non_power_of_two, align 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = load i32, ptr %11, align 8, !tbaa !59
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31), !range !67
  %33 = icmp ugt i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %30, %34
  %35 = phi i32 [ %37, %34 ], [ %31, %30 ]
  %36 = add nsw i32 %35, -1
  %37 = and i32 %36, %35
  %38 = tail call i32 @llvm.ctpop.i32(i32 %37), !range !67
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %34, label %40, !llvm.loop !68

40:                                               ; preds = %34
  %41 = shl nsw i32 %37, 1
  br label %42

42:                                               ; preds = %30, %40
  %43 = phi i32 [ %41, %40 ], [ %31, %30 ]
  store i32 %43, ptr %11, align 8, !tbaa !59
  %44 = load i32, ptr %12, align 4, !tbaa !61
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44), !range !67
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %47
  %48 = phi i32 [ %50, %47 ], [ %44, %42 ]
  %49 = add nsw i32 %48, -1
  %50 = and i32 %49, %48
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50), !range !67
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %47, label %53, !llvm.loop !68

53:                                               ; preds = %47
  %54 = shl nsw i32 %50, 1
  br label %55

55:                                               ; preds = %42, %53
  %56 = phi i32 [ %54, %53 ], [ %44, %42 ]
  store i32 %56, ptr %12, align 4, !tbaa !61
  %57 = load i32, ptr %13, align 8, !tbaa !62
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57), !range !67
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %55, %60
  %61 = phi i32 [ %63, %60 ], [ %57, %55 ]
  %62 = add nsw i32 %61, -1
  %63 = and i32 %62, %61
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63), !range !67
  %65 = icmp ugt i32 %64, 1
  br i1 %65, label %60, label %66, !llvm.loop !68

66:                                               ; preds = %60
  %67 = shl nsw i32 %63, 1
  br label %68

68:                                               ; preds = %55, %66
  %69 = phi i32 [ %67, %66 ], [ %57, %55 ]
  store i32 %69, ptr %13, align 8, !tbaa !62
  br label %70

70:                                               ; preds = %68, %24
  store i32 0, ptr %14, align 8, !tbaa !63
  %71 = load i32, ptr %16, align 8, !tbaa !65
  tail call void @glBindTexture(i32 noundef %71, i32 noundef %18) #15
  %72 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @glGetError() #15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @stderr, align 8, !tbaa !58
  %80 = tail call ptr @gluErrorString(i32 noundef %76) #15
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31, ptr noundef %80) #17
  br label %82

82:                                               ; preds = %70, %75, %78
  %83 = icmp eq i32 %3, 4
  %84 = select i1 %83, i32 6408, i32 32841
  %85 = select i1 %83, i32 6408, i32 6403
  %86 = load ptr, ptr @__glewTexImage3D, align 8, !tbaa !58
  %87 = load i32, ptr %16, align 8, !tbaa !65
  %88 = load i32, ptr %11, align 8, !tbaa !59
  %89 = load i32, ptr %12, align 4, !tbaa !61
  %90 = load i32, ptr %13, align 8, !tbaa !62
  tail call void %86(i32 noundef %87, i32 noundef 0, i32 noundef %84, i32 noundef %88, i32 noundef %89, i32 noundef %90, i32 noundef 0, i32 noundef %85, i32 noundef 5126, ptr noundef null) #15
  %91 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %82
  %95 = tail call i32 @glGetError() #15
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr @stderr, align 8, !tbaa !58
  %99 = tail call ptr @gluErrorString(i32 noundef %95) #15
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32, ptr noundef %99) #17
  br label %101

101:                                              ; preds = %82, %94, %97
  %102 = icmp eq ptr %4, null
  br i1 %102, label %148, label %103

103:                                              ; preds = %101
  %104 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 6), align 8, !tbaa !49
  %105 = icmp ne i32 %104, 0
  %106 = load i8, ptr @__GLEW_ARB_texture_non_power_of_two, align 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %105, i1 true, i1 %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %103
  %110 = load i32, ptr %11, align 8, !tbaa !59
  %111 = icmp eq i32 %110, %0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, ptr %12, align 4, !tbaa !61
  %114 = icmp eq i32 %113, %1
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, ptr %13, align 8, !tbaa !62
  %117 = icmp eq i32 %116, %2
  br i1 %117, label %135, label %118

118:                                              ; preds = %115, %112, %109
  %119 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %120 = sext i32 %110 to i64
  %121 = shl nsw i64 %120, 2
  %122 = load i32, ptr %12, align 4, !tbaa !61
  %123 = sext i32 %122 to i64
  %124 = mul i64 %121, %123
  %125 = load i32, ptr %13, align 8, !tbaa !62
  %126 = sext i32 %125 to i64
  %127 = mul i64 %124, %126
  %128 = tail call ptr %119(i64 noundef %127, ptr noundef nonnull @.str.33) #15
  %129 = load ptr, ptr @__glewTexSubImage3D, align 8, !tbaa !58
  %130 = load i32, ptr %16, align 8, !tbaa !65
  %131 = load i32, ptr %11, align 8, !tbaa !59
  %132 = load i32, ptr %12, align 4, !tbaa !61
  %133 = load i32, ptr %13, align 8, !tbaa !62
  tail call void %129(i32 noundef %130, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %85, i32 noundef 5126, ptr noundef %128) #15
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %134(ptr noundef %128) #15
  br label %135

135:                                              ; preds = %118, %115, %103
  %136 = load ptr, ptr @__glewTexSubImage3D, align 8, !tbaa !58
  %137 = load i32, ptr %16, align 8, !tbaa !65
  tail call void %136(i32 noundef %137, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %85, i32 noundef 5126, ptr noundef nonnull %4) #15
  %138 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %135
  %142 = tail call i32 @glGetError() #15
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr @stderr, align 8, !tbaa !58
  %146 = tail call ptr @gluErrorString(i32 noundef %142) #15
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.34, ptr noundef %146) #17
  br label %148

148:                                              ; preds = %144, %141, %135, %101
  call void @glTexParameterfv(i32 noundef 32879, i32 noundef 4100, ptr noundef nonnull %6) #15
  %149 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %148
  %153 = call i32 @glGetError() #15
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr @stderr, align 8, !tbaa !58
  %157 = call ptr @gluErrorString(i32 noundef %153) #15
  %158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.35, ptr noundef %157) #17
  br label %159

159:                                              ; preds = %148, %152, %155
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 10241, i32 noundef 9729) #15
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 10240, i32 noundef 9729) #15
  %160 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %159
  %164 = call i32 @glGetError() #15
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr @stderr, align 8, !tbaa !58
  %168 = call ptr @gluErrorString(i32 noundef %164) #15
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.36, ptr noundef %168) #17
  br label %170

170:                                              ; preds = %159, %163, %166
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 10242, i32 noundef 33071) #15
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 10243, i32 noundef 33071) #15
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 32882, i32 noundef 33071) #15
  %171 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = call i32 @glGetError() #15
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr @stderr, align 8, !tbaa !58
  %179 = call ptr @gluErrorString(i32 noundef %175) #15
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.37, ptr noundef %179) #17
  br label %181

181:                                              ; preds = %170, %174, %177
  call void @GPU_texture_unbind(ptr noundef nonnull %11)
  br label %182

182:                                              ; preds = %5, %181, %20
  %183 = phi ptr [ %11, %181 ], [ null, %20 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret ptr %183
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_texture_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %2, align 4, !tbaa !64
  %5 = icmp slt i32 %3, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr @stderr, align 8, !tbaa !58
  %8 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 30, i64 1, ptr %7) #17
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, ptr %2, align 4, !tbaa !64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %18 = load i32, ptr %14, align 8, !tbaa !73
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %21(i32 noundef 36160, i32 noundef %18) #15
  %22 = load ptr, ptr %13, align 8, !tbaa !71
  %23 = load i32, ptr %22, align 8, !tbaa !73
  store i32 %23, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !62
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %14, i64 0, i32 1
  %29 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %14, i64 0, i32 2
  %30 = select i1 %27, ptr %28, ptr %29
  %31 = select i1 %27, i32 36064, i32 36096
  store ptr null, ptr %30, align 8, !tbaa !58
  %32 = load ptr, ptr @__glewFramebufferTexture2DEXT, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !65
  tail call void %32(i32 noundef 36160, i32 noundef %31, i32 noundef %34, i32 noundef 0, i32 noundef 0) #15
  store ptr null, ptr %13, align 8, !tbaa !71
  br label %35

35:                                               ; preds = %24, %12
  %36 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !66
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !75
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %36) #15
  br label %44

44:                                               ; preds = %43, %39, %35
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %45(ptr noundef %0) #15
  br label %46

46:                                               ; preds = %44, %9
  ret void
}

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glTexParameterfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_texture_unbind(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 1), align 4, !tbaa !76
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @glGetError() #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %53, label %47

13:                                               ; preds = %1
  %14 = icmp eq i32 %3, -1
  br i1 %14, label %53, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @glGetError() #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !58
  %24 = tail call ptr @gluErrorString(i32 noundef %20) #15
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.42, ptr noundef %24) #17
  br label %26

26:                                               ; preds = %15, %19, %22
  %27 = load i32, ptr %2, align 8, !tbaa !63
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = add i32 %27, 33984
  %31 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !58
  tail call void %31(i32 noundef %30) #15
  br label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !65
  tail call void @glBindTexture(i32 noundef %34, i32 noundef 0) #15
  %35 = load i32, ptr %33, align 8, !tbaa !65
  tail call void @glDisable(i32 noundef %35) #15
  %36 = load i32, ptr %2, align 8, !tbaa !63
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !58
  tail call void %39(i32 noundef 33984) #15
  br label %40

40:                                               ; preds = %38, %32
  store i32 -1, ptr %2, align 8, !tbaa !63
  %41 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @glGetError() #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %10
  %48 = phi i32 [ %11, %10 ], [ %45, %44 ]
  %49 = phi ptr [ @.str.39, %10 ], [ @.str.43, %44 ]
  %50 = load ptr, ptr @stderr, align 8, !tbaa !58
  %51 = tail call ptr @gluErrorString(i32 noundef %48) #15
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.28, ptr noundef nonnull %49, ptr noundef %51) #17
  br label %53

53:                                               ; preds = %47, %44, %40, %10, %6, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_texture_from_blender(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, double noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %9) #15
  %10 = call i32 @GPU_update_image_time(ptr noundef %0, double noundef %3) #15
  %11 = trunc i32 %4 to i8
  %12 = call i32 @GPU_verify_image(ptr noundef %0, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext %11, i8 noundef zeroext %2) #15
  %13 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.GPUTexture, ptr %14, i64 0, i32 5
  store i32 %12, ptr %17, align 4, !tbaa !66
  %18 = load i32, ptr %9, align 4, !tbaa !47
  call void @glBindTexture(i32 noundef 3553, i32 noundef %18) #15
  %19 = load ptr, ptr %13, align 8, !tbaa !77
  br label %52

20:                                               ; preds = %5
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %22 = call ptr %21(i64 noundef 48, ptr noundef nonnull @.str.29) #15
  %23 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 5
  store i32 %12, ptr %23, align 4, !tbaa !66
  %24 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 2
  store i32 -1, ptr %24, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 3
  store i32 1, ptr %25, align 4, !tbaa !64
  %26 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 4
  store i32 3553, ptr %26, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !75
  store ptr %22, ptr %13, align 8, !tbaa !77
  %28 = call zeroext i8 @glIsTexture(i32 noundef %12) #15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = call i32 @glGetError() #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @stderr, align 8, !tbaa !58
  %39 = call ptr @gluErrorString(i32 noundef %35) #15
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.38, ptr noundef %39) #17
  br label %50

41:                                               ; preds = %20
  %42 = load i32, ptr %23, align 4, !tbaa !66
  call void @glBindTexture(i32 noundef 3553, i32 noundef %42) #15
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %6) #15
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4097, ptr noundef nonnull %7) #15
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4101, ptr noundef nonnull %8) #15
  %43 = load i32, ptr %6, align 4, !tbaa !47
  %44 = load i32, ptr %8, align 4, !tbaa !47
  %45 = sub nsw i32 %43, %44
  store i32 %45, ptr %22, align 8, !tbaa !59
  %46 = load i32, ptr %7, align 4, !tbaa !47
  %47 = load i32, ptr %8, align 4, !tbaa !47
  %48 = sub nsw i32 %46, %47
  %49 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !61
  br label %50

50:                                               ; preds = %37, %34, %30, %41
  %51 = load i32, ptr %9, align 4, !tbaa !47
  call void @glBindTexture(i32 noundef 3553, i32 noundef %51) #15
  br label %52

52:                                               ; preds = %50, %16
  %53 = phi ptr [ %19, %16 ], [ %22, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret ptr %53
}

declare i32 @GPU_update_image_time(ptr noundef, double noundef) local_unnamed_addr #4

declare i32 @GPU_verify_image(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare zeroext i8 @glIsTexture(i32 noundef) local_unnamed_addr #4

declare void @glGetTexLevelParameteriv(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_texture_from_preview(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !tbaa !47
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %5) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.GPUTexture, ptr %8, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !66
  store i32 %12, ptr %6, align 4, !tbaa !47
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, ptr %6, align 4, !tbaa !47
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = load i32, ptr %0, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !47
  %22 = trunc i32 %1 to i8
  call void @GPU_create_gl_tex(ptr noundef nonnull %6, ptr noundef %18, ptr noundef null, i32 noundef %19, i32 noundef %21, i8 noundef zeroext %22, i8 noundef zeroext 0, ptr noundef null) #15
  br label %23

23:                                               ; preds = %16, %13
  br i1 %9, label %27, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %6, align 4, !tbaa !47
  %26 = getelementptr inbounds %struct.GPUTexture, ptr %8, i64 0, i32 5
  store i32 %25, ptr %26, align 4, !tbaa !66
  br label %53

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %29 = call ptr %28(i64 noundef 48, ptr noundef nonnull @.str.29) #15
  %30 = load i32, ptr %6, align 4, !tbaa !47
  %31 = getelementptr inbounds %struct.GPUTexture, ptr %29, i64 0, i32 5
  store i32 %30, ptr %31, align 4, !tbaa !66
  %32 = getelementptr inbounds %struct.GPUTexture, ptr %29, i64 0, i32 2
  store i32 -1, ptr %32, align 8, !tbaa !63
  %33 = getelementptr inbounds %struct.GPUTexture, ptr %29, i64 0, i32 3
  store i32 1, ptr %33, align 4, !tbaa !64
  %34 = getelementptr inbounds %struct.GPUTexture, ptr %29, i64 0, i32 4
  store i32 3553, ptr %34, align 8, !tbaa !65
  store ptr %29, ptr %7, align 8, !tbaa !58
  %35 = call zeroext i8 @glIsTexture(i32 noundef %30) #15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = call i32 @glGetError() #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !58
  %46 = call ptr @gluErrorString(i32 noundef %42) #15
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.38, ptr noundef %46) #17
  br label %53

48:                                               ; preds = %27
  %49 = load i32, ptr %31, align 4, !tbaa !66
  call void @glBindTexture(i32 noundef 3553, i32 noundef %49) #15
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %3) #15
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4097, ptr noundef nonnull %4) #15
  %50 = load i32, ptr %3, align 4, !tbaa !47
  store i32 %50, ptr %29, align 8, !tbaa !59
  %51 = load i32, ptr %4, align 4, !tbaa !47
  %52 = getelementptr inbounds %struct.GPUTexture, ptr %29, i64 0, i32 1
  store i32 %51, ptr %52, align 4, !tbaa !61
  br label %53

53:                                               ; preds = %48, %37, %41, %44, %24
  %54 = phi ptr [ %8, %24 ], [ %29, %44 ], [ %29, %41 ], [ %29, %37 ], [ %29, %48 ]
  %55 = load i32, ptr %5, align 4, !tbaa !47
  call void @glBindTexture(i32 noundef 3553, i32 noundef %55) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret ptr %54
}

declare void @GPU_create_gl_tex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPU_texture_create_1D(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @GPU_texture_unbind(ptr noundef nonnull %4)
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 {
  %7 = icmp eq i32 %4, 0
  %8 = load i8, ptr @__GLEW_ARB_depth_texture, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %187

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %13 = tail call ptr %12(i64 noundef 48, ptr noundef nonnull @.str.29) #15
  store i32 %0, ptr %13, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 1
  store i32 %1, ptr %14, align 4, !tbaa !61
  %15 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 2
  store i32 -1, ptr %15, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 3
  store i32 1, ptr %16, align 4, !tbaa !64
  %17 = icmp eq i32 %2, 1
  %18 = select i1 %17, i32 3552, i32 3553
  %19 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 4
  store i32 %18, ptr %19, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 8
  store i32 %4, ptr %20, align 8, !tbaa !62
  %21 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 5
  tail call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %21) #15
  %22 = load i32, ptr %21, align 4, !tbaa !66
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %11
  %25 = icmp eq ptr %5, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @glGetError() #15
  %28 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.67, i32 noundef %27) #15
  br label %33

29:                                               ; preds = %24
  %30 = load ptr, ptr @stderr, align 8, !tbaa !58
  %31 = tail call i32 @glGetError() #15
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.30, i32 noundef %31) #17
  br label %33

33:                                               ; preds = %29, %26
  tail call void @GPU_texture_free(ptr noundef nonnull %13)
  br label %187

34:                                               ; preds = %11
  %35 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 6), align 8, !tbaa !49
  %36 = icmp ne i32 %35, 0
  %37 = load i8, ptr @__GLEW_ARB_texture_non_power_of_two, align 1
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load i32, ptr %13, align 8, !tbaa !59
  %42 = tail call i32 @llvm.ctpop.i32(i32 %41), !range !67
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %44
  %45 = phi i32 [ %47, %44 ], [ %41, %40 ]
  %46 = add nsw i32 %45, -1
  %47 = and i32 %46, %45
  %48 = tail call i32 @llvm.ctpop.i32(i32 %47), !range !67
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %44, label %50, !llvm.loop !68

50:                                               ; preds = %44
  %51 = shl nsw i32 %47, 1
  br label %52

52:                                               ; preds = %40, %50
  %53 = phi i32 [ %51, %50 ], [ %41, %40 ]
  store i32 %53, ptr %13, align 8, !tbaa !59
  %54 = load i32, ptr %14, align 4, !tbaa !61
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54), !range !67
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %57, label %65

57:                                               ; preds = %52, %57
  %58 = phi i32 [ %60, %57 ], [ %54, %52 ]
  %59 = add nsw i32 %58, -1
  %60 = and i32 %59, %58
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60), !range !67
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %57, label %63, !llvm.loop !68

63:                                               ; preds = %57
  %64 = shl nsw i32 %60, 1
  br label %65

65:                                               ; preds = %52, %63
  %66 = phi i32 [ %64, %63 ], [ %54, %52 ]
  store i32 %66, ptr %14, align 4, !tbaa !61
  br label %67

67:                                               ; preds = %65, %34
  store i32 0, ptr %15, align 8, !tbaa !63
  %68 = load i32, ptr %19, align 8, !tbaa !65
  tail call void @glBindTexture(i32 noundef %68, i32 noundef %22) #15
  br i1 %7, label %69, label %95

69:                                               ; preds = %67
  %70 = icmp eq ptr %3, null
  br i1 %70, label %95, label %71

71:                                               ; preds = %69
  %72 = shl i32 %0, 2
  %73 = mul i32 %72, %1
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %75 = sext i32 %73 to i64
  %76 = tail call ptr %74(i64 noundef %75, ptr noundef nonnull @.str.68) #15
  %77 = icmp sgt i32 %73, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %71, %88
  %79 = phi ptr [ %92, %88 ], [ %76, %71 ]
  %80 = phi i32 [ %91, %88 ], [ 0, %71 ]
  %81 = phi ptr [ %93, %88 ], [ %3, %71 ]
  %82 = load float, ptr %81, align 4, !tbaa !82
  %83 = fcmp ugt float %82, 0.000000e+00
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = fcmp ogt float %82, 0x3FEFEFEFE0000000
  br i1 %85, label %88, label %86

86:                                               ; preds = %84
  %87 = tail call float @llvm.fmuladd.f32(float %82, float 2.550000e+02, float 5.000000e-01)
  br label %88

88:                                               ; preds = %86, %84, %78
  %89 = phi float [ 0.000000e+00, %78 ], [ %87, %86 ], [ 2.550000e+02, %84 ]
  %90 = fptoui float %89 to i8
  store i8 %90, ptr %79, align 1, !tbaa !45
  %91 = add nuw nsw i32 %80, 1
  %92 = getelementptr inbounds i8, ptr %79, i64 1
  %93 = getelementptr inbounds float, ptr %81, i64 1
  %94 = icmp eq i32 %91, %73
  br i1 %94, label %95, label %78, !llvm.loop !83

95:                                               ; preds = %88, %71, %67, %69
  %96 = phi i32 [ 6408, %69 ], [ 6402, %67 ], [ 6408, %71 ], [ 6408, %88 ]
  %97 = phi i32 [ 32856, %69 ], [ 6402, %67 ], [ 32856, %71 ], [ 32856, %88 ]
  %98 = phi ptr [ null, %69 ], [ null, %67 ], [ %76, %71 ], [ %76, %88 ]
  %99 = load i32, ptr %19, align 8, !tbaa !65
  %100 = icmp eq i32 %99, 3552
  %101 = load i32, ptr %13, align 8, !tbaa !59
  br i1 %100, label %102, label %120

102:                                              ; preds = %95
  tail call void @glTexImage1D(i32 noundef 3552, i32 noundef 0, i32 noundef %97, i32 noundef %101, i32 noundef 0, i32 noundef %96, i32 noundef 5121, ptr noundef null) #15
  %103 = icmp eq ptr %3, null
  br i1 %103, label %162, label %104

104:                                              ; preds = %102
  %105 = load i32, ptr %19, align 8, !tbaa !65
  %106 = icmp eq ptr %98, null
  %107 = select i1 %106, ptr %3, ptr %98
  tail call void @glTexSubImage1D(i32 noundef %105, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %96, i32 noundef 5121, ptr noundef nonnull %107) #15
  %108 = load i32, ptr %13, align 8, !tbaa !59
  %109 = icmp sgt i32 %108, %0
  br i1 %109, label %110, label %162

110:                                              ; preds = %104
  %111 = load i32, ptr %19, align 8, !tbaa !65
  %112 = sub nsw i32 %108, %0
  %113 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %114 = sext i32 %112 to i64
  %115 = shl nsw i64 %114, 2
  %116 = tail call ptr %113(i64 noundef %115, ptr noundef nonnull @.str.69) #15
  %117 = icmp eq i32 %111, 3552
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  tail call void @glTexSubImage1D(i32 noundef 3552, i32 noundef 0, i32 noundef %0, i32 noundef %112, i32 noundef %96, i32 noundef 5121, ptr noundef %116) #15
  br label %159

119:                                              ; preds = %110
  tail call void @glTexSubImage2D(i32 noundef %111, i32 noundef 0, i32 noundef %0, i32 noundef 0, i32 noundef %112, i32 noundef 1, i32 noundef %96, i32 noundef 5121, ptr noundef %116) #15
  br label %159

120:                                              ; preds = %95
  %121 = load i32, ptr %14, align 4, !tbaa !61
  tail call void @glTexImage2D(i32 noundef %99, i32 noundef 0, i32 noundef %97, i32 noundef %101, i32 noundef %121, i32 noundef 0, i32 noundef %96, i32 noundef 5121, ptr noundef null) #15
  %122 = icmp eq ptr %3, null
  br i1 %122, label %162, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr %19, align 8, !tbaa !65
  %125 = icmp eq ptr %98, null
  %126 = select i1 %125, ptr %3, ptr %98
  tail call void @glTexSubImage2D(i32 noundef %124, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef %96, i32 noundef 5121, ptr noundef nonnull %126) #15
  %127 = load i32, ptr %13, align 8, !tbaa !59
  %128 = icmp sgt i32 %127, %0
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load i32, ptr %19, align 8, !tbaa !65
  %131 = sub nsw i32 %127, %0
  %132 = load i32, ptr %14, align 4, !tbaa !61
  %133 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %134 = sext i32 %131 to i64
  %135 = shl nsw i64 %134, 2
  %136 = sext i32 %132 to i64
  %137 = mul i64 %135, %136
  %138 = tail call ptr %133(i64 noundef %137, ptr noundef nonnull @.str.69) #15
  %139 = icmp eq i32 %130, 3552
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  tail call void @glTexSubImage1D(i32 noundef 3552, i32 noundef 0, i32 noundef %0, i32 noundef %131, i32 noundef %96, i32 noundef 5121, ptr noundef %138) #15
  br label %142

141:                                              ; preds = %129
  tail call void @glTexSubImage2D(i32 noundef %130, i32 noundef 0, i32 noundef %0, i32 noundef 0, i32 noundef %131, i32 noundef %132, i32 noundef %96, i32 noundef 5121, ptr noundef %138) #15
  br label %142

142:                                              ; preds = %140, %141
  %143 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %143(ptr noundef %138) #15
  br label %144

144:                                              ; preds = %142, %123
  %145 = load i32, ptr %14, align 4, !tbaa !61
  %146 = icmp sgt i32 %145, %1
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load i32, ptr %19, align 8, !tbaa !65
  %149 = sub nsw i32 %145, %1
  %150 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %151 = sext i32 %0 to i64
  %152 = shl nsw i64 %151, 2
  %153 = sext i32 %149 to i64
  %154 = mul i64 %152, %153
  %155 = tail call ptr %150(i64 noundef %154, ptr noundef nonnull @.str.69) #15
  %156 = icmp eq i32 %148, 3552
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  tail call void @glTexSubImage1D(i32 noundef 3552, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %96, i32 noundef 5121, ptr noundef %155) #15
  br label %159

158:                                              ; preds = %147
  tail call void @glTexSubImage2D(i32 noundef %148, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %0, i32 noundef %149, i32 noundef %96, i32 noundef 5121, ptr noundef %155) #15
  br label %159

159:                                              ; preds = %158, %157, %119, %118
  %160 = phi ptr [ %116, %118 ], [ %116, %119 ], [ %155, %157 ], [ %155, %158 ]
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %161(ptr noundef %160) #15
  br label %162

162:                                              ; preds = %159, %120, %144, %102, %104
  %163 = icmp eq ptr %98, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %162
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %165(ptr noundef nonnull %98) #15
  br label %166

166:                                              ; preds = %164, %162
  %167 = load i32, ptr %19, align 8, !tbaa !65
  br i1 %7, label %173, label %168

168:                                              ; preds = %166
  tail call void @glTexParameteri(i32 noundef %167, i32 noundef 10241, i32 noundef 9728) #15
  %169 = load i32, ptr %19, align 8, !tbaa !65
  tail call void @glTexParameteri(i32 noundef %169, i32 noundef 10240, i32 noundef 9729) #15
  %170 = load i32, ptr %19, align 8, !tbaa !65
  tail call void @glTexParameteri(i32 noundef %170, i32 noundef 34892, i32 noundef 34894) #15
  %171 = load i32, ptr %19, align 8, !tbaa !65
  tail call void @glTexParameteri(i32 noundef %171, i32 noundef 34893, i32 noundef 515) #15
  %172 = load i32, ptr %19, align 8, !tbaa !65
  tail call void @glTexParameteri(i32 noundef %172, i32 noundef 34891, i32 noundef 32841) #15
  br label %175

173:                                              ; preds = %166
  tail call void @glTexParameteri(i32 noundef %167, i32 noundef 10241, i32 noundef 9729) #15
  %174 = load i32, ptr %19, align 8, !tbaa !65
  tail call void @glTexParameteri(i32 noundef %174, i32 noundef 10240, i32 noundef 9729) #15
  br label %175

175:                                              ; preds = %173, %168
  %176 = load i32, ptr %19, align 8, !tbaa !65
  %177 = icmp eq i32 %176, 3552
  br i1 %177, label %186, label %178

178:                                              ; preds = %175
  br i1 %7, label %179, label %183

179:                                              ; preds = %178
  %180 = load i32, ptr %14, align 4, !tbaa !61
  %181 = icmp eq i32 %180, 1
  %182 = select i1 %181, i32 33071, i32 33069
  br label %183

183:                                              ; preds = %179, %178
  %184 = phi i32 [ 33071, %178 ], [ %182, %179 ]
  tail call void @glTexParameteri(i32 noundef %176, i32 noundef 10242, i32 noundef %184) #15
  %185 = load i32, ptr %19, align 8, !tbaa !65
  tail call void @glTexParameteri(i32 noundef %185, i32 noundef 10243, i32 noundef %184) #15
  br label %187

186:                                              ; preds = %175
  tail call void @glTexParameteri(i32 noundef 3552, i32 noundef 10242, i32 noundef 33071) #15
  br label %187

187:                                              ; preds = %183, %186, %6, %33
  %188 = phi ptr [ null, %33 ], [ null, %6 ], [ %13, %186 ], [ %13, %183 ]
  ret ptr %188
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPU_texture_create_2D(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef %2, i32 noundef 0, ptr noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @GPU_texture_unbind(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %7, %4
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPU_texture_create_depth(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef null, i32 noundef 1, ptr noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @GPU_texture_unbind(ptr noundef nonnull %4)
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPU_texture_create_vsm_shadow_map(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %0, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 33071) #15
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33071) #15
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 33328, i32 noundef %0, i32 noundef %0, i32 noundef 0, i32 noundef 33319, i32 noundef 5126, ptr noundef null) #15
  tail call void @GPU_texture_unbind(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %3
}

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @GPU_invalid_tex_bind(i32 noundef %0) local_unnamed_addr #2 {
  switch i32 %0, label %9 [
    i32 3552, label %4
    i32 3553, label %2
    i32 32879, label %3
  ]

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %1, %2, %3
  %5 = phi ptr [ getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 14), %3 ], [ getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 13), %2 ], [ getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 12), %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.GPUTexture, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !66
  tail call void @glBindTexture(i32 noundef %0, i32 noundef %8) #15
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_texture_bind(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 1), align 4, !tbaa !76
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @glGetError() #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %69, label %63

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, -1
  br i1 %13, label %69, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @glGetError() #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !tbaa !58
  %23 = tail call ptr @gluErrorString(i32 noundef %19) #15
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.40, ptr noundef %23) #17
  br label %25

25:                                               ; preds = %14, %18, %21
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = add i32 %1, 33984
  %29 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !58
  tail call void %29(i32 noundef %28) #15
  br label %30

30:                                               ; preds = %27, %25
  %31 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !66
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !65
  br i1 %33, label %37, label %36

36:                                               ; preds = %30
  tail call void @glBindTexture(i32 noundef %35, i32 noundef %32) #15
  br label %50

37:                                               ; preds = %30
  switch i32 %35, label %50 [
    i32 3552, label %38
    i32 3553, label %42
    i32 32879, label %46
  ]

38:                                               ; preds = %37
  %39 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 12), align 8, !tbaa !51
  %40 = getelementptr inbounds %struct.GPUTexture, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !66
  tail call void @glBindTexture(i32 noundef 3552, i32 noundef %41) #15
  br label %50

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 13), align 8, !tbaa !52
  %44 = getelementptr inbounds %struct.GPUTexture, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !66
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %45) #15
  br label %50

46:                                               ; preds = %37
  %47 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 14), align 8, !tbaa !53
  %48 = getelementptr inbounds %struct.GPUTexture, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !66
  tail call void @glBindTexture(i32 noundef 32879, i32 noundef %49) #15
  br label %50

50:                                               ; preds = %46, %42, %38, %37, %36
  %51 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !65
  tail call void @glEnable(i32 noundef %52) #15
  br i1 %26, label %55, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !58
  tail call void %54(i32 noundef 33984) #15
  br label %55

55:                                               ; preds = %53, %50
  %56 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 2
  store i32 %1, ptr %56, align 8, !tbaa !63
  %57 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = tail call i32 @glGetError() #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60, %9
  %64 = phi i32 [ %10, %9 ], [ %61, %60 ]
  %65 = phi ptr [ @.str.39, %9 ], [ @.str.41, %60 ]
  %66 = load ptr, ptr @stderr, align 8, !tbaa !58
  %67 = tail call ptr @gluErrorString(i32 noundef %64) #15
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.28, ptr noundef nonnull %65, ptr noundef %67) #17
  br label %69

69:                                               ; preds = %63, %60, %55, %9, %5, %12
  ret void
}

declare void @glEnable(i32 noundef) local_unnamed_addr #4

declare void @glDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_framebuffer_texture_detach(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %8 = load i32, ptr %4, align 8, !tbaa !73
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %11(i32 noundef 36160, i32 noundef %8) #15
  %12 = load ptr, ptr %3, align 8, !tbaa !71
  %13 = load i32, ptr %12, align 8, !tbaa !73
  store i32 %13, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !62
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 2
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = select i1 %17, i32 36064, i32 36096
  store ptr null, ptr %20, align 8, !tbaa !58
  %22 = load ptr, ptr @__glewFramebufferTexture2DEXT, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !65
  tail call void %22(i32 noundef 36160, i32 noundef %21, i32 noundef %24, i32 noundef 0, i32 noundef 0) #15
  store ptr null, ptr %3, align 8, !tbaa !71
  br label %25

25:                                               ; preds = %2, %14
  ret void
}

declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPU_texture_ref(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_texture_target(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !65
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_texture_opengl_width(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_texture_opengl_height(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !61
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_texture_opengl_bindcode(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !66
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GPU_texture_framebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GPU_framebuffer_create() local_unnamed_addr #2 {
  %1 = load i8, ptr @__GLEW_EXT_framebuffer_object, align 1, !tbaa !45
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %5 = tail call ptr %4(i64 noundef 24, ptr noundef nonnull @.str.45) #15
  %6 = load ptr, ptr @__glewGenFramebuffersEXT, align 8, !tbaa !58
  tail call void %6(i32 noundef 1, ptr noundef %5) #15
  %7 = load i32, ptr %5, align 8, !tbaa !73
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load ptr, ptr @stderr, align 8, !tbaa !58
  %11 = tail call i32 @glGetError() #15
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef %11) #17
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %5)
  br label %13

13:                                               ; preds = %3, %0, %9
  %14 = phi ptr [ null, %9 ], [ null, %0 ], [ %5, %3 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_framebuffer_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUTexture, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %11 = load i32, ptr %7, align 8, !tbaa !73
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %14(i32 noundef 36160, i32 noundef %11) #15
  %15 = load ptr, ptr %6, align 8, !tbaa !71
  %16 = load i32, ptr %15, align 8, !tbaa !73
  store i32 %16, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.GPUTexture, ptr %3, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !62
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 1
  %22 = select i1 %20, ptr %21, ptr %2
  %23 = select i1 %20, i32 36064, i32 36096
  store ptr null, ptr %22, align 8, !tbaa !58
  %24 = load ptr, ptr @__glewFramebufferTexture2DEXT, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.GPUTexture, ptr %3, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !65
  tail call void %24(i32 noundef 36160, i32 noundef %23, i32 noundef %26, i32 noundef 0, i32 noundef 0) #15
  store ptr null, ptr %6, align 8, !tbaa !71
  br label %27

27:                                               ; preds = %17, %5, %1
  %28 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  %30 = icmp eq ptr %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.GPUTexture, ptr %29, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %37 = load i32, ptr %33, align 8, !tbaa !73
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %40(i32 noundef 36160, i32 noundef %37) #15
  %41 = load ptr, ptr %32, align 8, !tbaa !71
  %42 = load i32, ptr %41, align 8, !tbaa !73
  store i32 %42, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.GPUTexture, ptr %29, i64 0, i32 8
  %45 = load i32, ptr %44, align 8, !tbaa !62
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr %28, ptr %2
  %48 = select i1 %46, i32 36064, i32 36096
  store ptr null, ptr %47, align 8, !tbaa !58
  %49 = load ptr, ptr @__glewFramebufferTexture2DEXT, align 8, !tbaa !58
  %50 = getelementptr inbounds %struct.GPUTexture, ptr %29, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !65
  tail call void %49(i32 noundef 36160, i32 noundef %48, i32 noundef %51, i32 noundef 0, i32 noundef 0) #15
  store ptr null, ptr %32, align 8, !tbaa !71
  br label %52

52:                                               ; preds = %43, %31, %27
  %53 = load i32, ptr %0, align 8, !tbaa !73
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @__glewDeleteFramebuffersEXT, align 8, !tbaa !58
  tail call void %56(i32 noundef 1, ptr noundef nonnull %0) #15
  %57 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %58 = load i32, ptr %0, align 8, !tbaa !73
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %61(i32 noundef 36160, i32 noundef 0) #15
  store i32 0, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %62

62:                                               ; preds = %55, %60, %52
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %63(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GPU_framebuffer_texture_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  %8 = load i32, ptr %0, align 8, !tbaa !73
  tail call void %7(i32 noundef 36160, i32 noundef %8) #15
  %9 = load i32, ptr %0, align 8, !tbaa !73
  store i32 %9, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %10

10:                                               ; preds = %10, %3
  %11 = tail call i32 @glGetError() #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %10, !llvm.loop !86

13:                                               ; preds = %10
  %14 = select i1 %6, i32 36064, i32 36096
  %15 = load ptr, ptr @__glewFramebufferTexture2DEXT, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !66
  tail call void %15(i32 noundef 36160, i32 noundef %14, i32 noundef %17, i32 noundef %19, i32 noundef 0) #15
  %20 = tail call i32 @glGetError() #15
  %21 = icmp eq i32 %20, 1282
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %26(i32 noundef 36160, i32 noundef 0) #15
  store i32 0, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %27

27:                                               ; preds = %22, %25
  %28 = icmp eq ptr %2, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 256, ptr noundef nonnull @.str.79, i32 noundef 1282, ptr noundef nonnull @.str.71) #15
  br label %70

31:                                               ; preds = %27
  %32 = load ptr, ptr @stderr, align 8, !tbaa !58
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.80, i32 noundef 1282, ptr noundef nonnull @.str.71) #17
  br label %70

34:                                               ; preds = %13
  %35 = load i32, ptr %4, align 8, !tbaa !62
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 36064, i32 0
  tail call void @glDrawBuffer(i32 noundef %37) #15
  tail call void @glReadBuffer(i32 noundef %37) #15
  %38 = load ptr, ptr @__glewCheckFramebufferStatusEXT, align 8, !tbaa !58
  %39 = tail call i32 %38(i32 noundef 36160) #15
  %40 = icmp eq i32 %39, 36053
  br i1 %40, label %63, label %41

41:                                               ; preds = %34
  %42 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %45(i32 noundef 36160, i32 noundef 0) #15
  store i32 0, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %46

46:                                               ; preds = %41, %44
  switch i32 %39, label %55 [
    i32 36060, label %54
    i32 1282, label %47
    i32 36054, label %48
    i32 36061, label %49
    i32 36055, label %50
    i32 36057, label %51
    i32 36058, label %52
    i32 36059, label %53
  ]

47:                                               ; preds = %46
  br label %55

48:                                               ; preds = %46
  br label %55

49:                                               ; preds = %46
  br label %55

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  br label %55

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %53, %52, %51, %50, %49, %48, %47, %46
  %56 = phi ptr [ @.str.70, %46 ], [ @.str.77, %53 ], [ @.str.76, %52 ], [ @.str.75, %51 ], [ @.str.74, %50 ], [ @.str.73, %49 ], [ @.str.72, %48 ], [ @.str.71, %47 ], [ @.str.78, %54 ]
  %57 = icmp eq ptr %2, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 256, ptr noundef nonnull @.str.79, i32 noundef %39, ptr noundef nonnull %56) #15
  br label %70

60:                                               ; preds = %55
  %61 = load ptr, ptr @stderr, align 8, !tbaa !58
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.80, i32 noundef %39, ptr noundef nonnull %56) #17
  br label %70

63:                                               ; preds = %34
  %64 = load i32, ptr %4, align 8, !tbaa !62
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 1
  %67 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 2
  %68 = select i1 %65, ptr %66, ptr %67
  store ptr %1, ptr %68, align 8, !tbaa !58
  %69 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 7
  store ptr %0, ptr %69, align 8, !tbaa !71
  br label %70

70:                                               ; preds = %60, %58, %31, %29, %63
  %71 = phi i32 [ 1, %63 ], [ 0, %29 ], [ 0, %31 ], [ 0, %58 ], [ 0, %60 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_framebuffer_restore() local_unnamed_addr #2 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %4(i32 noundef 36160, i32 noundef 0) #15
  store i32 0, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

declare void @glDrawBuffer(i32 noundef) local_unnamed_addr #4

declare void @glReadBuffer(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_framebuffer_texture_bind(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  tail call void @glPushAttrib(i32 noundef 10240) #15
  tail call void @glDisable(i32 noundef 3089) #15
  %5 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = load i32, ptr %7, align 8, !tbaa !73
  tail call void %5(i32 noundef 36160, i32 noundef %8) #15
  tail call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %2, i32 noundef %3) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !71
  %10 = load i32, ptr %9, align 8, !tbaa !73
  store i32 %10, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glPushMatrix() #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  tail call void @glPushMatrix() #15
  ret void
}

declare void @glPushAttrib(i32 noundef) local_unnamed_addr #4

declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #4

declare void @glPushMatrix() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_framebuffer_texture_unbind(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glPopMatrix() #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  tail call void @glPopMatrix() #15
  tail call void @glPopAttrib() #15
  tail call void @glEnable(i32 noundef 3089) #15
  ret void
}

declare void @glPopMatrix() local_unnamed_addr #4

declare void @glPopAttrib() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_framebuffer_blur(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #2 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %7 = load i32, ptr %3, align 8, !tbaa !59
  %8 = sitofp i32 %7 to float
  %9 = fdiv float 1.000000e+00, %8
  store float %9, ptr %5, align 4, !tbaa !82
  %10 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store float 0.000000e+00, ptr %6, align 4, !tbaa !82
  %11 = getelementptr inbounds float, ptr %6, i64 1
  %12 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = sitofp i32 %13 to float
  %15 = fdiv float 1.000000e+00, %14
  store float %15, ptr %11, align 4, !tbaa !82
  %16 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = tail call ptr @GPU_shader_create(ptr noundef nonnull @datatoc_gpu_shader_sep_gaussian_blur_vert_glsl, ptr noundef nonnull @datatoc_gpu_shader_sep_gaussian_blur_frag_glsl, ptr noundef null, ptr noundef null)
  store ptr %19, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !87
  br label %20

20:                                               ; preds = %18, %4
  %21 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef 2)
  br label %136

25:                                               ; preds = %20
  %26 = load ptr, ptr @__glewGetUniformLocationARB, align 8, !tbaa !58
  %27 = load i32, ptr %21, align 4, !tbaa !88
  %28 = tail call i32 %26(i32 noundef %27, ptr noundef nonnull @.str.47) #15
  %29 = load ptr, ptr @__glewGetUniformLocationARB, align 8, !tbaa !58
  %30 = load i32, ptr %21, align 4, !tbaa !88
  %31 = tail call i32 %29(i32 noundef %30, ptr noundef nonnull @.str.48) #15
  %32 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  %33 = load i32, ptr %2, align 8, !tbaa !73
  tail call void %32(i32 noundef 36160, i32 noundef %33) #15
  %34 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %25
  %38 = tail call i32 @glGetError() #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !tbaa !58
  %42 = tail call ptr @gluErrorString(i32 noundef %38) #15
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.54, ptr noundef %42) #17
  br label %44

44:                                               ; preds = %25, %37, %40
  %45 = load ptr, ptr @__glewUseProgramObjectARB, align 8, !tbaa !58
  %46 = load i32, ptr %21, align 4, !tbaa !88
  tail call void %45(i32 noundef %46) #15
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = tail call i32 @glGetError() #15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @stderr, align 8, !tbaa !58
  %55 = tail call ptr @gluErrorString(i32 noundef %51) #15
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.55, ptr noundef %55) #17
  br label %57

57:                                               ; preds = %44, %50, %53
  %58 = icmp eq i32 %28, -1
  br i1 %58, label %82, label %59

59:                                               ; preds = %57
  %60 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @glGetError() #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @stderr, align 8, !tbaa !58
  %68 = tail call ptr @gluErrorString(i32 noundef %64) #15
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.58, ptr noundef %68) #17
  br label %70

70:                                               ; preds = %59, %63, %66
  %71 = load ptr, ptr @__glewUniform2fvARB, align 8, !tbaa !58
  call void %71(i32 noundef %28, i32 noundef 1, ptr noundef nonnull %5) #15
  %72 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = call i32 @glGetError() #15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @stderr, align 8, !tbaa !58
  %80 = call ptr @gluErrorString(i32 noundef %76) #15
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.59, ptr noundef %80) #17
  br label %82

82:                                               ; preds = %78, %75, %70, %57
  call void @GPU_shader_uniform_texture(ptr nonnull poison, i32 noundef %31, ptr noundef %1)
  %83 = load i32, ptr %3, align 8, !tbaa !59
  %84 = getelementptr inbounds %struct.GPUTexture, ptr %3, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !61
  call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %83, i32 noundef %85) #15
  call void @glMatrixMode(i32 noundef 5888) #15
  call void @glLoadIdentity() #15
  call void @glMatrixMode(i32 noundef 5890) #15
  call void @glLoadIdentity() #15
  call void @glMatrixMode(i32 noundef 5889) #15
  call void @glLoadIdentity() #15
  call void @glDisable(i32 noundef 2929) #15
  call void @GPU_texture_bind(ptr noundef %1, i32 noundef 0)
  call void @glBegin(i32 noundef 7) #15
  call void @glTexCoord2d(double noundef 0.000000e+00, double noundef 0.000000e+00) #15
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  call void @glTexCoord2d(double noundef 1.000000e+00, double noundef 0.000000e+00) #15
  call void @glVertex2f(float noundef -1.000000e+00, float noundef 1.000000e+00) #15
  call void @glTexCoord2d(double noundef 1.000000e+00, double noundef 1.000000e+00) #15
  call void @glVertex2f(float noundef -1.000000e+00, float noundef -1.000000e+00) #15
  call void @glTexCoord2d(double noundef 0.000000e+00, double noundef 1.000000e+00) #15
  call void @glVertex2f(float noundef 1.000000e+00, float noundef -1.000000e+00) #15
  call void @glEnd() #15
  %86 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  %87 = load i32, ptr %0, align 8, !tbaa !73
  call void %86(i32 noundef 36160, i32 noundef %87) #15
  %88 = load i32, ptr %1, align 8, !tbaa !59
  %89 = load i32, ptr %12, align 4, !tbaa !61
  call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %88, i32 noundef %89) #15
  br i1 %58, label %113, label %90

90:                                               ; preds = %82
  %91 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = call i32 @glGetError() #15
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr @stderr, align 8, !tbaa !58
  %99 = call ptr @gluErrorString(i32 noundef %95) #15
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.58, ptr noundef %99) #17
  br label %101

101:                                              ; preds = %90, %94, %97
  %102 = load ptr, ptr @__glewUniform2fvARB, align 8, !tbaa !58
  call void %102(i32 noundef %28, i32 noundef 1, ptr noundef nonnull %6) #15
  %103 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = call i32 @glGetError() #15
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr @stderr, align 8, !tbaa !58
  %111 = call ptr @gluErrorString(i32 noundef %107) #15
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.59, ptr noundef %111) #17
  br label %113

113:                                              ; preds = %109, %106, %101, %82
  call void @GPU_shader_uniform_texture(ptr nonnull poison, i32 noundef %31, ptr noundef nonnull %3)
  call void @GPU_texture_bind(ptr noundef nonnull %3, i32 noundef 0)
  call void @glBegin(i32 noundef 7) #15
  call void @glTexCoord2d(double noundef 0.000000e+00, double noundef 0.000000e+00) #15
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  call void @glTexCoord2d(double noundef 1.000000e+00, double noundef 0.000000e+00) #15
  call void @glVertex2f(float noundef -1.000000e+00, float noundef 1.000000e+00) #15
  call void @glTexCoord2d(double noundef 1.000000e+00, double noundef 1.000000e+00) #15
  call void @glVertex2f(float noundef -1.000000e+00, float noundef -1.000000e+00) #15
  call void @glTexCoord2d(double noundef 0.000000e+00, double noundef 1.000000e+00) #15
  call void @glVertex2f(float noundef 1.000000e+00, float noundef -1.000000e+00) #15
  call void @glEnd() #15
  %114 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %113
  %118 = call i32 @glGetError() #15
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr @stderr, align 8, !tbaa !58
  %122 = call ptr @gluErrorString(i32 noundef %118) #15
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.56, ptr noundef %122) #17
  br label %124

124:                                              ; preds = %113, %117, %120
  %125 = load ptr, ptr @__glewUseProgramObjectARB, align 8, !tbaa !58
  call void %125(i32 noundef 0) #15
  %126 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %124
  %130 = call i32 @glGetError() #15
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr @stderr, align 8, !tbaa !58
  %134 = call ptr @gluErrorString(i32 noundef %130) #15
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.57, ptr noundef %134) #17
  br label %136

136:                                              ; preds = %23, %132, %129, %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_shader_get_builtin_shader(i32 noundef %0) local_unnamed_addr #2 {
  switch i32 %0, label %16 [
    i32 1, label %2
    i32 2, label %9
  ]

2:                                                ; preds = %1
  %3 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @GPU_shader_create(ptr noundef nonnull @datatoc_gpu_shader_vsm_store_vert_glsl, ptr noundef nonnull @datatoc_gpu_shader_vsm_store_frag_glsl, ptr noundef null, ptr noundef null)
  store ptr %6, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !90
  br label %7

7:                                                ; preds = %5, %2
  %8 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !90
  br label %16

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr @GPU_shader_create(ptr noundef nonnull @datatoc_gpu_shader_sep_gaussian_blur_vert_glsl, ptr noundef nonnull @datatoc_gpu_shader_sep_gaussian_blur_frag_glsl, ptr noundef null, ptr noundef null)
  store ptr %13, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !87
  br label %14

14:                                               ; preds = %12, %9
  %15 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !87
  br label %16

16:                                               ; preds = %1, %14, %7
  %17 = phi ptr [ null, %1 ], [ %15, %14 ], [ %8, %7 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %0)
  br label %21

21:                                               ; preds = %19, %16
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPU_shader_get_uniform(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @__glewGetUniformLocationARB, align 8, !tbaa !58
  %4 = load i32, ptr %0, align 4, !tbaa !88
  %5 = tail call i32 %3(i32 noundef %4, ptr noundef %1) #15
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shader_bind(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @glGetError() #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !58
  %10 = tail call ptr @gluErrorString(i32 noundef %6) #15
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.54, ptr noundef %10) #17
  br label %12

12:                                               ; preds = %1, %5, %8
  %13 = load ptr, ptr @__glewUseProgramObjectARB, align 8, !tbaa !58
  %14 = load i32, ptr %0, align 4, !tbaa !88
  tail call void %13(i32 noundef %14) #15
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @glGetError() #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !tbaa !58
  %23 = tail call ptr @gluErrorString(i32 noundef %19) #15
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.55, ptr noundef %23) #17
  br label %25

25:                                               ; preds = %12, %18, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shader_uniform_vector(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq i32 %1, -1
  br i1 %6, label %42, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @glGetError() #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @stderr, align 8, !tbaa !58
  %16 = tail call ptr @gluErrorString(i32 noundef %12) #15
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.58, ptr noundef %16) #17
  br label %18

18:                                               ; preds = %7, %11, %14
  switch i32 %2, label %31 [
    i32 1, label %19
    i32 2, label %21
    i32 3, label %23
    i32 4, label %25
    i32 9, label %27
    i32 16, label %29
  ]

19:                                               ; preds = %18
  %20 = load ptr, ptr @__glewUniform1fvARB, align 8, !tbaa !58
  tail call void %20(i32 noundef %1, i32 noundef %3, ptr noundef %4) #15
  br label %31

21:                                               ; preds = %18
  %22 = load ptr, ptr @__glewUniform2fvARB, align 8, !tbaa !58
  tail call void %22(i32 noundef %1, i32 noundef %3, ptr noundef %4) #15
  br label %31

23:                                               ; preds = %18
  %24 = load ptr, ptr @__glewUniform3fvARB, align 8, !tbaa !58
  tail call void %24(i32 noundef %1, i32 noundef %3, ptr noundef %4) #15
  br label %31

25:                                               ; preds = %18
  %26 = load ptr, ptr @__glewUniform4fvARB, align 8, !tbaa !58
  tail call void %26(i32 noundef %1, i32 noundef %3, ptr noundef %4) #15
  br label %31

27:                                               ; preds = %18
  %28 = load ptr, ptr @__glewUniformMatrix3fvARB, align 8, !tbaa !58
  tail call void %28(i32 noundef %1, i32 noundef %3, i8 noundef zeroext 0, ptr noundef %4) #15
  br label %31

29:                                               ; preds = %18
  %30 = load ptr, ptr @__glewUniformMatrix4fvARB, align 8, !tbaa !58
  tail call void %30(i32 noundef %1, i32 noundef %3, i8 noundef zeroext 0, ptr noundef %4) #15
  br label %31

31:                                               ; preds = %18, %21, %25, %29, %27, %23, %19
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @glGetError() #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @stderr, align 8, !tbaa !58
  %40 = tail call ptr @gluErrorString(i32 noundef %36) #15
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.59, ptr noundef %40) #17
  br label %42

42:                                               ; preds = %38, %35, %31, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shader_uniform_texture(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.GPUTexture, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 1), align 4, !tbaa !76
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %78, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @glGetError() #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %78, label %72

15:                                               ; preds = %3
  %16 = icmp eq i32 %5, -1
  %17 = icmp eq i32 %1, -1
  %18 = or i1 %17, %16
  br i1 %18, label %78, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @glGetError() #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @stderr, align 8, !tbaa !58
  %28 = tail call ptr @gluErrorString(i32 noundef %24) #15
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.62, ptr noundef %28) #17
  br label %30

30:                                               ; preds = %19, %23, %26
  %31 = load i32, ptr %4, align 8, !tbaa !63
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = add i32 %31, 33984
  %35 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !58
  tail call void %35(i32 noundef %34) #15
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.GPUTexture, ptr %2, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !66
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.GPUTexture, ptr %2, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !65
  br i1 %39, label %43, label %42

42:                                               ; preds = %36
  tail call void @glBindTexture(i32 noundef %41, i32 noundef %38) #15
  br label %56

43:                                               ; preds = %36
  switch i32 %41, label %56 [
    i32 3552, label %44
    i32 3553, label %48
    i32 32879, label %52
  ]

44:                                               ; preds = %43
  %45 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 12), align 8, !tbaa !51
  %46 = getelementptr inbounds %struct.GPUTexture, ptr %45, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !66
  tail call void @glBindTexture(i32 noundef 3552, i32 noundef %47) #15
  br label %56

48:                                               ; preds = %43
  %49 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 13), align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.GPUTexture, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !66
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %51) #15
  br label %56

52:                                               ; preds = %43
  %53 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 14), align 8, !tbaa !53
  %54 = getelementptr inbounds %struct.GPUTexture, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !66
  tail call void @glBindTexture(i32 noundef 32879, i32 noundef %55) #15
  br label %56

56:                                               ; preds = %52, %48, %44, %43, %42
  %57 = load ptr, ptr @__glewUniform1iARB, align 8, !tbaa !58
  %58 = load i32, ptr %4, align 8, !tbaa !63
  tail call void %57(i32 noundef %1, i32 noundef %58) #15
  %59 = getelementptr inbounds %struct.GPUTexture, ptr %2, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !65
  tail call void @glEnable(i32 noundef %60) #15
  %61 = load i32, ptr %4, align 8, !tbaa !63
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !58
  tail call void %64(i32 noundef 33984) #15
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = tail call i32 @glGetError() #15
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69, %12
  %73 = phi i32 [ %13, %12 ], [ %70, %69 ]
  %74 = phi ptr [ @.str.39, %12 ], [ @.str.63, %69 ]
  %75 = load ptr, ptr @stderr, align 8, !tbaa !58
  %76 = tail call ptr @gluErrorString(i32 noundef %73) #15
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.28, ptr noundef nonnull %74, ptr noundef %76) #17
  br label %78

78:                                               ; preds = %72, %69, %65, %12, %8, %15
  ret void
}

declare void @glLoadIdentity() local_unnamed_addr #4

declare void @glBegin(i32 noundef) local_unnamed_addr #4

declare void @glTexCoord2d(double noundef, double noundef) local_unnamed_addr #4

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #4

declare void @glEnd() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shader_unbind() local_unnamed_addr #2 {
  %1 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @glGetError() #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !58
  %9 = tail call ptr @gluErrorString(i32 noundef %5) #15
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.56, ptr noundef %9) #17
  br label %11

11:                                               ; preds = %0, %4, %7
  %12 = load ptr, ptr @__glewUseProgramObjectARB, align 8, !tbaa !58
  tail call void %12(i32 noundef 0) #15
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @glGetError() #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !58
  %21 = tail call ptr @gluErrorString(i32 noundef %17) #15
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.57, ptr noundef %21) #17
  br label %23

23:                                               ; preds = %11, %16, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_offscreen_create(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str.49) #15
  %6 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 3
  store i32 %0, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !93
  %8 = load i8, ptr @__GLEW_EXT_framebuffer_object, align 1, !tbaa !45
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %12 = tail call ptr %11(i64 noundef 24, ptr noundef nonnull @.str.45) #15
  %13 = load ptr, ptr @__glewGenFramebuffersEXT, align 8, !tbaa !58
  tail call void %13(i32 noundef 1, ptr noundef %12) #15
  %14 = load i32, ptr %12, align 8, !tbaa !73
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr @stderr, align 8, !tbaa !58
  %18 = tail call i32 @glGetError() #15
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.46, i32 noundef %18) #17
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %12)
  br label %20

20:                                               ; preds = %3, %10, %16
  %21 = phi ptr [ null, %16 ], [ null, %3 ], [ %12, %10 ]
  store ptr %21, ptr %5, align 8, !tbaa !94
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @GPU_texture_free(ptr noundef nonnull %25)
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @GPU_texture_free(ptr noundef nonnull %30)
  br label %33

33:                                               ; preds = %28, %32
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %34(ptr noundef nonnull %5) #15
  br label %116

35:                                               ; preds = %20
  %36 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef null, i32 noundef 1, ptr noundef %2)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  tail call void @GPU_texture_unbind(ptr noundef nonnull %36)
  %39 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 2
  store ptr %36, ptr %39, align 8, !tbaa !96
  %40 = load ptr, ptr %5, align 8, !tbaa !94
  %41 = tail call i32 @GPU_framebuffer_texture_attach(ptr noundef %40, ptr noundef nonnull %36, ptr noundef %2), !range !97
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %74

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 2
  store ptr %36, ptr %44, align 8, !tbaa !96
  %45 = load ptr, ptr %5, align 8, !tbaa !94
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %45)
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @GPU_texture_free(ptr noundef nonnull %50)
  br label %53

53:                                               ; preds = %52, %48
  %54 = load ptr, ptr %44, align 8, !tbaa !96
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @GPU_texture_free(ptr noundef nonnull %54)
  br label %57

57:                                               ; preds = %53, %56
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %58(ptr noundef nonnull %5) #15
  br label %116

59:                                               ; preds = %38
  %60 = load ptr, ptr %5, align 8, !tbaa !94
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %60)
  br label %63

63:                                               ; preds = %62, %59
  %64 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !95
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @GPU_texture_free(ptr noundef nonnull %65)
  br label %68

68:                                               ; preds = %67, %63
  %69 = load ptr, ptr %39, align 8, !tbaa !96
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @GPU_texture_free(ptr noundef nonnull %69)
  br label %72

72:                                               ; preds = %68, %71
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %73(ptr noundef nonnull %5) #15
  br label %116

74:                                               ; preds = %38
  %75 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %2)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  tail call void @GPU_texture_unbind(ptr noundef nonnull %75)
  %78 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 1
  store ptr %75, ptr %78, align 8, !tbaa !95
  %79 = load ptr, ptr %5, align 8, !tbaa !94
  %80 = tail call i32 @GPU_framebuffer_texture_attach(ptr noundef %79, ptr noundef nonnull %75, ptr noundef %2), !range !97
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %97, label %111

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 1
  store ptr %75, ptr %83, align 8, !tbaa !95
  %84 = load ptr, ptr %5, align 8, !tbaa !94
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %84)
  br label %87

87:                                               ; preds = %86, %82
  %88 = load ptr, ptr %83, align 8, !tbaa !95
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void @GPU_texture_free(ptr noundef nonnull %88)
  br label %91

91:                                               ; preds = %90, %87
  %92 = load ptr, ptr %39, align 8, !tbaa !96
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void @GPU_texture_free(ptr noundef nonnull %92)
  br label %95

95:                                               ; preds = %91, %94
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %96(ptr noundef nonnull %5) #15
  br label %116

97:                                               ; preds = %77
  %98 = load ptr, ptr %5, align 8, !tbaa !94
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %98)
  br label %101

101:                                              ; preds = %100, %97
  %102 = load ptr, ptr %78, align 8, !tbaa !95
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  tail call void @GPU_texture_free(ptr noundef nonnull %102)
  br label %105

105:                                              ; preds = %104, %101
  %106 = load ptr, ptr %39, align 8, !tbaa !96
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @GPU_texture_free(ptr noundef nonnull %106)
  br label %109

109:                                              ; preds = %105, %108
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %110(ptr noundef nonnull %5) #15
  br label %116

111:                                              ; preds = %77
  %112 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %115(i32 noundef 36160, i32 noundef 0) #15
  store i32 0, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %116

116:                                              ; preds = %114, %111, %109, %95, %72, %57, %33
  %117 = phi ptr [ null, %109 ], [ null, %95 ], [ null, %72 ], [ null, %57 ], [ null, %33 ], [ %5, %111 ], [ %5, %114 ]
  ret ptr %117
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_offscreen_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !94
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %2)
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @GPU_texture_free(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @GPU_texture_free(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %16(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_offscreen_bind(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  tail call void @glDisable(i32 noundef 3089) #15
  %2 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !93
  tail call void @glPushAttrib(i32 noundef 10240) #15
  tail call void @glDisable(i32 noundef 3089) #15
  %8 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.GPUTexture, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = load i32, ptr %10, align 8, !tbaa !73
  tail call void %8(i32 noundef 36160, i32 noundef %11) #15
  tail call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %7) #15
  %12 = load ptr, ptr %9, align 8, !tbaa !71
  %13 = load i32, ptr %12, align 8, !tbaa !73
  store i32 %13, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glPushMatrix() #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  tail call void @glPushMatrix() #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_offscreen_unbind(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glPopMatrix() #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  tail call void @glPopMatrix() #15
  tail call void @glPopAttrib() #15
  tail call void @glEnable(i32 noundef 3089) #15
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !58
  tail call void %5(i32 noundef 36160, i32 noundef 0) #15
  store i32 0, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !72
  br label %6

6:                                                ; preds = %1, %4
  tail call void @glEnable(i32 noundef 3089) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_offscreen_read_pixels(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !93
  tail call void @glReadPixels(i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %7, i32 noundef 6408, i32 noundef %1, ptr noundef %2) #15
  ret void
}

declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_offscreen_width(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !91
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_offscreen_height(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !93
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_shader_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5000 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca [72 x i8], align 16
  %12 = alloca [5 x ptr], align 16
  %13 = alloca [6 x ptr], align 16
  store ptr %0, ptr %5, align 8, !tbaa !58
  store ptr %1, ptr %6, align 8, !tbaa !58
  store ptr %2, ptr %7, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 5000, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %11, i8 0, i64 72, i1 false)
  %14 = load i8, ptr @__GLEW_ARB_vertex_shader, align 1, !tbaa !45
  %15 = icmp ne i8 %14, 0
  %16 = load i8, ptr @__GLEW_ARB_fragment_shader, align 1
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %324

19:                                               ; preds = %4
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %21 = tail call ptr %20(i64 noundef 20, ptr noundef nonnull @.str.50) #15
  %22 = icmp ne ptr %0, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load ptr, ptr @__glewCreateShaderObjectARB, align 8, !tbaa !58
  %25 = tail call i32 %24(i32 noundef 35633) #15
  %26 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !98
  br label %27

27:                                               ; preds = %23, %19
  %28 = icmp ne ptr %1, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load ptr, ptr @__glewCreateShaderObjectARB, align 8, !tbaa !58
  %31 = tail call i32 %30(i32 noundef 35632) #15
  %32 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  store i32 %31, ptr %32, align 4, !tbaa !99
  br label %33

33:                                               ; preds = %29, %27
  %34 = load ptr, ptr @__glewCreateProgramObjectARB, align 8, !tbaa !58
  %35 = tail call i32 %34() #15
  store i32 %35, ptr %21, align 4, !tbaa !88
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  br i1 %22, label %38, label %42

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !98
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38, %37
  br i1 %28, label %43, label %74

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !99
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %43, %38, %33
  %48 = load ptr, ptr @stderr, align 8, !tbaa !58
  %49 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 35, i64 1, ptr %48) #17
  %50 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !100
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  tail call void %54(i32 noundef %51) #15
  br label %55

55:                                               ; preds = %53, %47
  %56 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !98
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  tail call void %60(i32 noundef %57) #15
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !99
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  tail call void %66(i32 noundef %63) #15
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, ptr %21, align 4, !tbaa !88
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  tail call void %71(i32 noundef %68) #15
  br label %72

72:                                               ; preds = %67, %70
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %73(ptr noundef nonnull %21) #15
  br label %324

74:                                               ; preds = %43, %42
  %75 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 9), align 4, !tbaa !41
  %80 = and i32 %79, 65280
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  %84 = and i32 %83, 16711680
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = call i64 @strlen(ptr nonnull dereferenceable(1) %11)
  %88 = getelementptr inbounds i8, ptr %11, i64 %87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %88, ptr noundef nonnull align 1 dereferenceable(17) @.str.81, i64 17, i1 false)
  %89 = load i8, ptr @__GLEW_VERSION_3_0, align 1, !tbaa !45
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %122, label %91

91:                                               ; preds = %86
  %92 = call i64 @strlen(ptr nonnull dereferenceable(1) %11)
  %93 = getelementptr inbounds i8, ptr %11, i64 %92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %93, ptr noundef nonnull align 1 dereferenceable(25) @.str.82, i64 25, i1 false)
  br label %122

94:                                               ; preds = %78, %74, %82
  %95 = and i32 %75, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 9), align 4, !tbaa !41
  %99 = and i32 %98, 65280
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  %103 = and i32 %102, 16711680
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = call i64 @strlen(ptr nonnull dereferenceable(1) %11)
  %107 = getelementptr inbounds i8, ptr %11, i64 %106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %107, ptr noundef nonnull align 1 dereferenceable(20) @.str.83, i64 20, i1 false)
  br label %122

108:                                              ; preds = %97, %94, %101
  %109 = and i32 %75, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 9), align 4, !tbaa !41
  %113 = and i32 %112, 65280
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  %117 = and i32 %116, 16711680
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = call i64 @strlen(ptr nonnull dereferenceable(1) %11)
  %121 = getelementptr inbounds i8, ptr %11, i64 %120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %121, ptr noundef nonnull align 1 dereferenceable(19) @.str.84, i64 19, i1 false)
  br label %122

122:                                              ; preds = %111, %108, %119, %115, %105, %91, %86
  %123 = tail call i32 @GPU_bicubic_bump_support() #15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = call i64 @strlen(ptr nonnull dereferenceable(1) %11)
  %127 = getelementptr inbounds i8, ptr %11, i64 %126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %127, ptr noundef nonnull align 1 dereferenceable(22) @.str.85, i64 22, i1 false)
  br label %128

128:                                              ; preds = %122, %125
  br i1 %22, label %129, label %202

129:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #15
  %130 = load i8, ptr @__GLEW_VERSION_3_0, align 1, !tbaa !45
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %129
  %133 = tail call i32 @GPU_bicubic_bump_support() #15
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  %137 = and i32 %136, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 9), align 4, !tbaa !41
  %141 = and i32 %140, 65280
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  %145 = and i32 %144, 16711680
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %139, %135, %129
  br label %148

148:                                              ; preds = %132, %143, %147
  %149 = phi ptr [ @.str.87, %147 ], [ @.str.86, %143 ], [ @.str.86, %132 ]
  store ptr %149, ptr %12, align 16, !tbaa !58
  %150 = tail call i32 @GPU_bicubic_bump_support() #15
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, ptr @.str.87, ptr @.str.88
  %153 = getelementptr inbounds [5 x ptr], ptr %12, i64 0, i64 1
  store ptr %152, ptr %153, align 8, !tbaa !58
  %154 = getelementptr inbounds [5 x ptr], ptr %12, i64 0, i64 2
  store ptr %11, ptr %154, align 16, !tbaa !58
  %155 = icmp eq ptr %3, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %148
  %157 = getelementptr inbounds [5 x ptr], ptr %12, i64 0, i64 3
  store ptr %3, ptr %157, align 8, !tbaa !58
  br label %158

158:                                              ; preds = %148, %156
  %159 = phi i32 [ 4, %156 ], [ 3, %148 ]
  %160 = add nuw nsw i32 %159, 1
  %161 = zext nneg i32 %159 to i64
  %162 = getelementptr inbounds [5 x ptr], ptr %12, i64 0, i64 %161
  store ptr %0, ptr %162, align 8, !tbaa !58
  %163 = load ptr, ptr @__glewAttachObjectARB, align 8, !tbaa !58
  %164 = load i32, ptr %21, align 4, !tbaa !88
  %165 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !98
  call void %163(i32 noundef %164, i32 noundef %166) #15
  %167 = load ptr, ptr @__glewShaderSourceARB, align 8, !tbaa !58
  %168 = load i32, ptr %165, align 4, !tbaa !98
  call void %167(i32 noundef %168, i32 noundef %160, ptr noundef nonnull %12, ptr noundef null) #15
  %169 = load ptr, ptr @__glewCompileShaderARB, align 8, !tbaa !58
  %170 = load i32, ptr %165, align 4, !tbaa !98
  call void %169(i32 noundef %170) #15
  %171 = load ptr, ptr @__glewGetObjectParameterivARB, align 8, !tbaa !58
  %172 = load i32, ptr %165, align 4, !tbaa !98
  call void %171(i32 noundef %172, i32 noundef 35713, ptr noundef nonnull %8) #15
  %173 = load i32, ptr %8, align 4, !tbaa !47
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %158
  %176 = load ptr, ptr @__glewGetInfoLogARB, align 8, !tbaa !58
  %177 = load i32, ptr %165, align 4, !tbaa !98
  call void %176(i32 noundef %177, i32 noundef 5000, ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  call fastcc void @shader_print_errors(ptr noundef nonnull @.str.52, ptr noundef nonnull %9, ptr noundef nonnull %12, i32 noundef %160)
  %178 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !100
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %175
  %182 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %182(i32 noundef %179) #15
  br label %183

183:                                              ; preds = %181, %175
  %184 = load i32, ptr %165, align 4, !tbaa !98
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %187(i32 noundef %184) #15
  br label %188

188:                                              ; preds = %186, %183
  %189 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !99
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %193(i32 noundef %190) #15
  br label %194

194:                                              ; preds = %192, %188
  %195 = load i32, ptr %21, align 4, !tbaa !88
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %198(i32 noundef %195) #15
  br label %199

199:                                              ; preds = %194, %197
  %200 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %200(ptr noundef nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #15
  br label %324

201:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #15
  br label %202

202:                                              ; preds = %201, %128
  br i1 %28, label %203, label %283

203:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #15
  %204 = load i8, ptr @__GLEW_VERSION_3_0, align 1, !tbaa !45
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %221, label %206

206:                                              ; preds = %203
  %207 = call i32 @GPU_bicubic_bump_support() #15
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %206
  %210 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  %211 = and i32 %210, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %209
  %214 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 9), align 4, !tbaa !41
  %215 = and i32 %214, 65280
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  %219 = and i32 %218, 16711680
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217, %213, %209, %203
  br label %222

222:                                              ; preds = %206, %217, %221
  %223 = phi ptr [ @.str.87, %221 ], [ @.str.86, %217 ], [ @.str.86, %206 ]
  store ptr %223, ptr %13, align 16, !tbaa !58
  %224 = call i32 @GPU_bicubic_bump_support() #15
  %225 = icmp eq i32 %224, 0
  %226 = select i1 %225, ptr @.str.87, ptr @.str.88
  %227 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 1
  store ptr %226, ptr %227, align 8, !tbaa !58
  %228 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 2
  store ptr %11, ptr %228, align 16, !tbaa !58
  %229 = icmp eq ptr %3, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %222
  %231 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 3
  store ptr %3, ptr %231, align 8, !tbaa !58
  br label %232

232:                                              ; preds = %230, %222
  %233 = phi i32 [ 4, %230 ], [ 3, %222 ]
  %234 = icmp eq ptr %2, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %232
  %236 = add nuw nsw i32 %233, 1
  %237 = zext nneg i32 %233 to i64
  %238 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 %237
  store ptr %2, ptr %238, align 8, !tbaa !58
  br label %239

239:                                              ; preds = %232, %235
  %240 = phi i32 [ %236, %235 ], [ %233, %232 ]
  %241 = add nuw nsw i32 %240, 1
  %242 = zext nneg i32 %240 to i64
  %243 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 %242
  store ptr %1, ptr %243, align 8, !tbaa !58
  %244 = load ptr, ptr @__glewAttachObjectARB, align 8, !tbaa !58
  %245 = load i32, ptr %21, align 4, !tbaa !88
  %246 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  %247 = load i32, ptr %246, align 4, !tbaa !99
  call void %244(i32 noundef %245, i32 noundef %247) #15
  %248 = load ptr, ptr @__glewShaderSourceARB, align 8, !tbaa !58
  %249 = load i32, ptr %246, align 4, !tbaa !99
  call void %248(i32 noundef %249, i32 noundef %241, ptr noundef nonnull %13, ptr noundef null) #15
  %250 = load ptr, ptr @__glewCompileShaderARB, align 8, !tbaa !58
  %251 = load i32, ptr %246, align 4, !tbaa !99
  call void %250(i32 noundef %251) #15
  %252 = load ptr, ptr @__glewGetObjectParameterivARB, align 8, !tbaa !58
  %253 = load i32, ptr %246, align 4, !tbaa !99
  call void %252(i32 noundef %253, i32 noundef 35713, ptr noundef nonnull %8) #15
  %254 = load i32, ptr %8, align 4, !tbaa !47
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %282

256:                                              ; preds = %239
  %257 = load ptr, ptr @__glewGetInfoLogARB, align 8, !tbaa !58
  %258 = load i32, ptr %246, align 4, !tbaa !99
  call void %257(i32 noundef %258, i32 noundef 5000, ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  call fastcc void @shader_print_errors(ptr noundef nonnull @.str.52, ptr noundef nonnull %9, ptr noundef nonnull %13, i32 noundef %241)
  %259 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 3
  %260 = load i32, ptr %259, align 4, !tbaa !100
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %256
  %263 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %263(i32 noundef %260) #15
  br label %264

264:                                              ; preds = %262, %256
  %265 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 1
  %266 = load i32, ptr %265, align 4, !tbaa !98
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %269(i32 noundef %266) #15
  br label %270

270:                                              ; preds = %268, %264
  %271 = load i32, ptr %246, align 4, !tbaa !99
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %270
  %274 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %274(i32 noundef %271) #15
  br label %275

275:                                              ; preds = %273, %270
  %276 = load i32, ptr %21, align 4, !tbaa !88
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %279(i32 noundef %276) #15
  br label %280

280:                                              ; preds = %275, %278
  %281 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %281(ptr noundef nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #15
  br label %324

282:                                              ; preds = %239
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #15
  br label %283

283:                                              ; preds = %282, %202
  %284 = load ptr, ptr @__glewLinkProgramARB, align 8, !tbaa !58
  %285 = load i32, ptr %21, align 4, !tbaa !88
  call void %284(i32 noundef %285) #15
  %286 = load ptr, ptr @__glewGetObjectParameterivARB, align 8, !tbaa !58
  %287 = load i32, ptr %21, align 4, !tbaa !88
  call void %286(i32 noundef %287, i32 noundef 35714, ptr noundef nonnull %8) #15
  %288 = load i32, ptr %8, align 4, !tbaa !47
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %324

290:                                              ; preds = %283
  %291 = load ptr, ptr @__glewGetInfoLogARB, align 8, !tbaa !58
  %292 = load i32, ptr %21, align 4, !tbaa !88
  call void %291(i32 noundef %292, i32 noundef 5000, ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  %293 = or i1 %28, %22
  %294 = select i1 %28, ptr %6, ptr %5
  br i1 %293, label %297, label %295

295:                                              ; preds = %290
  %296 = icmp eq ptr %2, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %290, %295
  %298 = phi ptr [ %294, %290 ], [ %7, %295 ]
  call fastcc void @shader_print_errors(ptr noundef nonnull @.str.53, ptr noundef nonnull %9, ptr noundef nonnull %298, i32 noundef 1)
  br label %299

299:                                              ; preds = %297, %295
  %300 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 3
  %301 = load i32, ptr %300, align 4, !tbaa !100
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %304(i32 noundef %301) #15
  br label %305

305:                                              ; preds = %303, %299
  %306 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 1
  %307 = load i32, ptr %306, align 4, !tbaa !98
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %305
  %310 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %310(i32 noundef %307) #15
  br label %311

311:                                              ; preds = %309, %305
  %312 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  %313 = load i32, ptr %312, align 4, !tbaa !99
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %311
  %316 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %316(i32 noundef %313) #15
  br label %317

317:                                              ; preds = %315, %311
  %318 = load i32, ptr %21, align 4, !tbaa !88
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %317
  %321 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  call void %321(i32 noundef %318) #15
  br label %322

322:                                              ; preds = %317, %320
  %323 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %323(ptr noundef nonnull %21) #15
  br label %324

324:                                              ; preds = %280, %199, %283, %4, %322, %72
  %325 = phi ptr [ null, %322 ], [ null, %280 ], [ null, %199 ], [ null, %72 ], [ null, %4 ], [ %21, %283 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 5000, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  ret ptr %325
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shader_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GPUShader, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !100
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  tail call void %6(i32 noundef %3) #15
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.GPUShader, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !98
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  tail call void %12(i32 noundef %9) #15
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.GPUShader, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  tail call void %18(i32 noundef %15) #15
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i32, ptr %0, align 4, !tbaa !88
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !58
  tail call void %23(i32 noundef %20) #15
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %25(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @shader_print_errors(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #11 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !58
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.89, ptr noundef %0) #17
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %4
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %8, %46
  %11 = phi i64 [ 0, %8 ], [ %47, %46 ]
  %12 = getelementptr inbounds ptr, ptr %2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #16
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr @stderr, align 8, !tbaa !58
  %21 = trunc i64 %11 to i32
  %22 = add i32 %21, 1
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.90, i32 noundef %22) #17
  %24 = load ptr, ptr %12, align 8, !tbaa !58
  %25 = icmp ult ptr %24, %15
  br i1 %25, label %26, label %42

26:                                               ; preds = %19, %31
  %27 = phi i32 [ %40, %31 ], [ 1, %19 ]
  %28 = phi ptr [ %34, %31 ], [ %24, %19 ]
  %29 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef 10) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr @stderr, align 8, !tbaa !58
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.91, i32 noundef %27) #17
  %34 = getelementptr inbounds i8, ptr %29, i64 1
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %28 to i64
  %37 = sub i64 %35, %36
  %38 = load ptr, ptr @stderr, align 8, !tbaa !58
  %39 = tail call i64 @fwrite(ptr noundef %28, i64 noundef %37, i64 noundef 1, ptr noundef %38) #17
  %40 = add nuw nsw i32 %27, 1
  %41 = icmp ult ptr %34, %15
  br i1 %41, label %26, label %42, !llvm.loop !101

42:                                               ; preds = %26, %31, %19
  %43 = phi ptr [ %24, %19 ], [ %28, %26 ], [ %34, %31 ]
  %44 = load ptr, ptr @stderr, align 8, !tbaa !58
  %45 = tail call i32 @fputs(ptr %43, ptr %44) #17
  br label %46

46:                                               ; preds = %42, %10
  %47 = add nuw nsw i64 %11, 1
  %48 = icmp eq i64 %47, %9
  br i1 %48, label %49, label %10, !llvm.loop !102

49:                                               ; preds = %46, %4
  %50 = load ptr, ptr @stderr, align 8, !tbaa !58
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.93, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shader_uniform_int(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @glGetError() #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @stderr, align 8, !tbaa !58
  %14 = tail call ptr @gluErrorString(i32 noundef %10) #15
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.60, ptr noundef %14) #17
  br label %16

16:                                               ; preds = %5, %9, %12
  %17 = load ptr, ptr @__glewUniform1iARB, align 8, !tbaa !58
  tail call void %17(i32 noundef %1, i32 noundef %2) #15
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @glGetError() #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @stderr, align 8, !tbaa !58
  %26 = tail call ptr @gluErrorString(i32 noundef %22) #15
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.61, ptr noundef %26) #17
  br label %28

28:                                               ; preds = %24, %21, %16, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPU_shader_get_attribute(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @glGetError() #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !58
  %11 = tail call ptr @gluErrorString(i32 noundef %7) #15
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.64, ptr noundef %11) #17
  br label %13

13:                                               ; preds = %2, %6, %9
  %14 = load ptr, ptr @__glewGetAttribLocationARB, align 8, !tbaa !58
  %15 = load i32, ptr %0, align 4, !tbaa !88
  %16 = tail call i32 %14(i32 noundef %15, ptr noundef %1) #15
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @glGetError() #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !58
  %25 = tail call ptr @gluErrorString(i32 noundef %21) #15
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.65, ptr noundef %25) #17
  br label %27

27:                                               ; preds = %13, %20, %23
  ret i32 %16
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @GPU_shader_free_builtin_shaders() local_unnamed_addr #2 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !90
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %4(ptr noundef nonnull %1) #15
  store ptr null, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !90
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %9(ptr noundef nonnull %6) #15
  store ptr null, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !87
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @glTexImage1D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glTexSubImage1D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

declare i32 @GPU_bicubic_bump_support() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold }

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
!34 = !{!35, !36, i64 32}
!35 = !{!"GPUGlobal", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !39, i64 48, !40, i64 64, !40, i64 72, !40, i64 80}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"GPUShaders", !40, i64 0, !40, i64 8}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!35, !36, i64 36}
!42 = !{!35, !36, i64 40}
!43 = !{!35, !36, i64 16}
!44 = !{!35, !36, i64 0}
!45 = !{!37, !37, i64 0}
!46 = !{!35, !36, i64 12}
!47 = !{!36, !36, i64 0}
!48 = !{!35, !36, i64 20}
!49 = !{!35, !36, i64 24}
!50 = !{!35, !36, i64 28}
!51 = !{!35, !40, i64 64}
!52 = !{!35, !40, i64 72}
!53 = !{!35, !40, i64 80}
!54 = !{!55, !36, i64 2100}
!55 = !{!"Global", !40, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !56, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !57, i64 2084, !57, i64 2086, !57, i64 2088, !37, i64 2090, !57, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!56 = !{!"ListBase", !40, i64 0, !40, i64 8}
!57 = !{!"short", !37, i64 0}
!58 = !{!40, !40, i64 0}
!59 = !{!60, !36, i64 0}
!60 = !{!"GPUTexture", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !40, i64 32, !36, i64 40}
!61 = !{!60, !36, i64 4}
!62 = !{!60, !36, i64 40}
!63 = !{!60, !36, i64 8}
!64 = !{!60, !36, i64 12}
!65 = !{!60, !36, i64 16}
!66 = !{!60, !36, i64 20}
!67 = !{i32 0, i32 33}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!60, !40, i64 32}
!72 = !{!35, !36, i64 8}
!73 = !{!74, !36, i64 0}
!74 = !{!"GPUFrameBuffer", !36, i64 0, !40, i64 8, !40, i64 16}
!75 = !{!60, !36, i64 24}
!76 = !{!35, !36, i64 4}
!77 = !{!78, !40, i64 1152}
!78 = !{!"Image", !79, i64 0, !37, i64 120, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !37, i64 1176, !57, i64 1240, !57, i64 1242, !57, i64 1244, !57, i64 1246, !57, i64 1248, !57, i64 1250, !36, i64 1252, !57, i64 1256, !57, i64 1258, !57, i64 1260, !57, i64 1262, !57, i64 1264, !57, i64 1266, !36, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !80, i64 1296, !36, i64 1300, !57, i64 1304, !57, i64 1306, !36, i64 1308, !36, i64 1312, !37, i64 1316, !37, i64 1317, !57, i64 1318, !37, i64 1320, !80, i64 1336, !80, i64 1340, !81, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!79 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !37, i64 32, !57, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !40, i64 112}
!80 = !{!"float", !37, i64 0}
!81 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!82 = !{!80, !80, i64 0}
!83 = distinct !{!83, !69, !70}
!84 = !{!74, !40, i64 16}
!85 = !{!74, !40, i64 8}
!86 = distinct !{!86, !69, !70}
!87 = !{!35, !40, i64 56}
!88 = !{!89, !36, i64 0}
!89 = !{!"GPUShader", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16}
!90 = !{!35, !40, i64 48}
!91 = !{!92, !36, i64 24}
!92 = !{!"GPUOffScreen", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !36, i64 28}
!93 = !{!92, !36, i64 28}
!94 = !{!92, !40, i64 0}
!95 = !{!92, !40, i64 8}
!96 = !{!92, !40, i64 16}
!97 = !{i32 0, i32 2}
!98 = !{!89, !36, i64 4}
!99 = !{!89, !36, i64 8}
!100 = !{!89, !36, i64 12}
!101 = distinct !{!101, !69, !70}
!102 = distinct !{!102, !69, !70}
