; ModuleID = 'blender/source/blender/gpu/intern/gpu_extensions.c'
source_filename = "blender/source/blender/gpu/intern/gpu_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GPUGlobal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.GPUShaders, ptr, ptr, ptr }
%struct.GPUShaders = type { ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.GPUTexture = type { i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.GPUFrameBuffer = type { i32, ptr, ptr }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @GPU_extensions_disable() local_unnamed_addr #1 {
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 4), align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_max_texture_size() local_unnamed_addr #0 {
  %1 = load i32, ptr @GG, align 8, !tbaa !44
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpu_extensions_init() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = load i8, ptr @__GLEW_ARB_multitexture, align 1, !tbaa !45
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @glGetIntegerv(i32 noundef 34930, ptr noundef nonnull getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 1)) #18
  br label %7

7:                                                ; preds = %6, %0
  tail call void @glGetIntegerv(i32 noundef 3379, ptr noundef nonnull @GG) #18
  %8 = load i8, ptr @__GLEW_ARB_multitexture, align 1, !tbaa !45
  %9 = icmp ne i8 %8, 0
  %10 = load i8, ptr @__GLEW_ARB_vertex_shader, align 1, !tbaa !45
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr @__GLEW_ARB_fragment_shader, align 1, !tbaa !45
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %13, i1 %11, i1 false
  %15 = select i1 %14, i1 %9, i1 false
  %16 = zext i1 %15 to i32
  store i32 %16, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 3), align 4
  call void @glGetIntegerv(i32 noundef 3410, ptr noundef nonnull %1) #18
  call void @glGetIntegerv(i32 noundef 3411, ptr noundef nonnull %2) #18
  call void @glGetIntegerv(i32 noundef 3412, ptr noundef nonnull %3) #18
  %17 = load i32, ptr %1, align 4, !tbaa !46
  %18 = load i32, ptr %2, align 4, !tbaa !46
  %19 = add nsw i32 %18, %17
  %20 = load i32, ptr %3, align 4, !tbaa !46
  %21 = add nsw i32 %19, %20
  store i32 %21, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 5), align 4, !tbaa !47
  %22 = call ptr @glGetString(i32 noundef 7936) #18
  %23 = call ptr @glGetString(i32 noundef 7937) #18
  %24 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %69

26:                                               ; preds = %7
  %27 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.1) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 65536, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  br label %116

30:                                               ; preds = %26
  %31 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.2) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.3) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.4) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33, %30
  store i32 4, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 65536, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  br label %116

40:                                               ; preds = %36
  %41 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.5) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.6) #19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.7) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %46, %43
  %50 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.8) #19
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.9) #19
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %49
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 131072, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  br label %116

56:                                               ; preds = %52
  %57 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.10) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 8, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 262144, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  br label %116

60:                                               ; preds = %56
  %61 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.11) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 8, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 262144, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  br label %116

64:                                               ; preds = %60
  %65 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.12) #19
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 8, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 262144, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  br label %116

68:                                               ; preds = %64
  store i32 255, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 16711680, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  br label %116

69:                                               ; preds = %40, %46, %7
  %70 = phi i32 [ 65536, %7 ], [ 131072, %46 ], [ 131072, %40 ]
  store i32 2, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 8), align 8, !tbaa !34
  store i32 %70, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 10), align 8, !tbaa !42
  %71 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.13) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %115

73:                                               ; preds = %69
  %74 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.14) #19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %115

76:                                               ; preds = %73
  %77 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.15) #19
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %115

79:                                               ; preds = %76
  %80 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.16) #19
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %115

82:                                               ; preds = %79
  %83 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.17) #19
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %115

85:                                               ; preds = %82
  %86 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.18) #19
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  %89 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.19) #19
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %115

91:                                               ; preds = %88
  %92 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.20) #19
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.21) #19
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.22) #19
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.23) #19
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.24) #19
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.25) #19
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.26) #19
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.27) #19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %69
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 6), align 8, !tbaa !48
  store i32 1, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 7), align 4, !tbaa !49
  br label %116

116:                                              ; preds = %39, %55, %63, %68, %67, %59, %29, %112, %115
  call void @glLightModeli(i32 noundef 2898, i32 noundef 0) #18
  store i32 1024, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 9), align 4, !tbaa !41
  call void @GPU_invalid_tex_init() #20
  call void @GPU_simple_shaders_init() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @glGetString(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_invalid_tex_init() local_unnamed_addr #2 {
  %1 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @__const.GPU_invalid_tex_init.color, i64 16, i1 false)
  %2 = call ptr @GPU_texture_create_1D(i32 noundef 1, ptr noundef nonnull %1, ptr noundef null) #20
  store ptr %2, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 12), align 8, !tbaa !50
  %3 = call ptr @GPU_texture_create_2D(i32 noundef 1, i32 noundef 1, ptr noundef nonnull %1, ptr noundef null) #20
  store ptr %3, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 13), align 8, !tbaa !51
  %4 = call ptr @GPU_texture_create_3D(i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %1) #20
  store ptr %4, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 14), align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare void @GPU_simple_shaders_init() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpu_extensions_exit() local_unnamed_addr #2 {
  tail call void @GPU_simple_shaders_exit() #18
  tail call void @GPU_invalid_tex_free() #20
  ret void
}

; Function Attrs: optsize
declare void @GPU_simple_shaders_exit() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_invalid_tex_free() local_unnamed_addr #2 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 12), align 8, !tbaa !50
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @GPU_texture_free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 13), align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @GPU_texture_free(ptr noundef nonnull %5) #20
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 14), align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @GPU_texture_free(ptr noundef nonnull %9) #20
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_glsl_support() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 4), align 8, !tbaa !43
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 3), align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_non_power_of_two_support() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 6), align 8, !tbaa !48
  %2 = icmp eq i32 %1, 0
  %3 = load i8, ptr @__GLEW_ARB_texture_non_power_of_two, align 1
  %4 = zext i8 %3 to i32
  %5 = select i1 %2, i32 %4, i32 0
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_display_list_support() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 7), align 4, !tbaa !49
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_color_depth() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 5), align 4, !tbaa !47
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GPU_print_error(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @glGetError() #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !57
  %10 = tail call ptr @gluErrorString(i32 noundef %6) #18
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.28, ptr noundef %0, ptr noundef %10) #21
  br label %12

12:                                               ; preds = %1, %5, %8
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @glGetError() local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gluErrorString(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_texture_create_3D(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = load i8, ptr @__GLEW_VERSION_1_2, align 1, !tbaa !45
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %85, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %11 = tail call ptr %10(i64 noundef 48, ptr noundef nonnull @.str.29) #18
  store i32 %0, ptr %11, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 1
  store i32 %1, ptr %12, align 4, !tbaa !60
  %13 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 8
  store i32 %2, ptr %13, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 2
  store i32 -1, ptr %14, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 3
  store i32 1, ptr %15, align 4, !tbaa !63
  %16 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 4
  store i32 32879, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.GPUTexture, ptr %11, i64 0, i32 5
  tail call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %17) #18
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load ptr, ptr @stderr, align 8, !tbaa !57
  %22 = tail call i32 @glGetError() #18
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef %22) #21
  tail call void @GPU_texture_free(ptr noundef nonnull %11) #20
  br label %85

24:                                               ; preds = %9
  %25 = tail call i32 @GPU_non_power_of_two_support() #20, !range !66
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, ptr %11, align 8, !tbaa !58
  %29 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %28) #20
  store i32 %29, ptr %11, align 8, !tbaa !58
  %30 = load i32, ptr %12, align 4, !tbaa !60
  %31 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %30) #20
  store i32 %31, ptr %12, align 4, !tbaa !60
  %32 = load i32, ptr %13, align 8, !tbaa !61
  %33 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %32) #20
  store i32 %33, ptr %13, align 8, !tbaa !61
  br label %34

34:                                               ; preds = %27, %24
  store i32 0, ptr %14, align 8, !tbaa !62
  %35 = load i32, ptr %16, align 8, !tbaa !64
  tail call void @glBindTexture(i32 noundef %35, i32 noundef %18) #18
  %36 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.31) #20, !range !67
  %37 = icmp eq i32 %3, 4
  %38 = select i1 %37, i32 6408, i32 32841
  %39 = select i1 %37, i32 6408, i32 6403
  %40 = load ptr, ptr @__glewTexImage3D, align 8, !tbaa !57
  %41 = load i32, ptr %16, align 8, !tbaa !64
  %42 = load i32, ptr %11, align 8, !tbaa !58
  %43 = load i32, ptr %12, align 4, !tbaa !60
  %44 = load i32, ptr %13, align 8, !tbaa !61
  tail call void %40(i32 noundef %41, i32 noundef 0, i32 noundef %38, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef 0, i32 noundef %39, i32 noundef 5126, ptr noundef null) #18
  %45 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.32) #20, !range !67
  %46 = icmp eq ptr %4, null
  br i1 %46, label %81, label %47

47:                                               ; preds = %34
  %48 = tail call i32 @GPU_non_power_of_two_support() #20, !range !66
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i32, ptr %11, align 8, !tbaa !58
  %52 = icmp eq i32 %51, %0
  %53 = load i32, ptr %12, align 4, !tbaa !60
  br i1 %52, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %13, align 8, !tbaa !61
  br label %61

56:                                               ; preds = %50
  %57 = icmp eq i32 %53, %1
  %58 = load i32, ptr %13, align 8, !tbaa !61
  %59 = icmp eq i32 %58, %2
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %77, label %61

61:                                               ; preds = %54, %56
  %62 = phi i32 [ %55, %54 ], [ %58, %56 ]
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %64 = sext i32 %51 to i64
  %65 = shl nsw i64 %64, 2
  %66 = sext i32 %53 to i64
  %67 = mul i64 %65, %66
  %68 = sext i32 %62 to i64
  %69 = mul i64 %67, %68
  %70 = tail call ptr %63(i64 noundef %69, ptr noundef nonnull @.str.33) #18
  %71 = load ptr, ptr @__glewTexSubImage3D, align 8, !tbaa !57
  %72 = load i32, ptr %16, align 8, !tbaa !64
  %73 = load i32, ptr %11, align 8, !tbaa !58
  %74 = load i32, ptr %12, align 4, !tbaa !60
  %75 = load i32, ptr %13, align 8, !tbaa !61
  tail call void %71(i32 noundef %72, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %39, i32 noundef 5126, ptr noundef %70) #18
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %76(ptr noundef %70) #18
  br label %77

77:                                               ; preds = %56, %61, %47
  %78 = load ptr, ptr @__glewTexSubImage3D, align 8, !tbaa !57
  %79 = load i32, ptr %16, align 8, !tbaa !64
  tail call void %78(i32 noundef %79, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %39, i32 noundef 5126, ptr noundef nonnull %4) #18
  %80 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.34) #20, !range !67
  br label %81

81:                                               ; preds = %77, %34
  call void @glTexParameterfv(i32 noundef 32879, i32 noundef 4100, ptr noundef nonnull %6) #18
  %82 = call i32 @GPU_print_error(ptr noundef nonnull @.str.35) #20, !range !67
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 10241, i32 noundef 9729) #18
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 10240, i32 noundef 9729) #18
  %83 = call i32 @GPU_print_error(ptr noundef nonnull @.str.36) #20, !range !67
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 10242, i32 noundef 33071) #18
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 10243, i32 noundef 33071) #18
  call void @glTexParameteri(i32 noundef 32879, i32 noundef 32882, i32 noundef 33071) #18
  %84 = call i32 @GPU_print_error(ptr noundef nonnull @.str.37) #20, !range !67
  call void @GPU_texture_unbind(ptr noundef nonnull %11) #20
  br label %85

85:                                               ; preds = %5, %81, %20
  %86 = phi ptr [ %11, %81 ], [ null, %20 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret ptr %86
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_texture_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !63
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %2, align 4, !tbaa !63
  %5 = icmp slt i32 %3, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr @stderr, align 8, !tbaa !57
  %8 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 30, i64 1, ptr %7) #22
  %9 = load i32, ptr %2, align 4, !tbaa !63
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %4, %1 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @GPU_framebuffer_texture_detach(ptr noundef nonnull %15, ptr noundef nonnull %0) #20
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !65
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !69
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %19) #18
  br label %27

27:                                               ; preds = %26, %22, %18
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %28(ptr noundef nonnull %0) #18
  br label %29

29:                                               ; preds = %27, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @power_of_2_max_i(i32 noundef %0) unnamed_addr #8 !PGOFuncName !70 {
  %2 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #20, !range !67
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %7, %4 ], [ %0, %1 ]
  %6 = add nsw i32 %5, -1
  %7 = and i32 %6, %5
  %8 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %7) #20, !range !67
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %4, label %10, !llvm.loop !71

10:                                               ; preds = %4
  %11 = shl nsw i32 %7, 1
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi i32 [ %11, %10 ], [ %0, %1 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexParameterfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_texture_unbind(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !62
  %4 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 1), align 4, !tbaa !73
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, -1
  br i1 %7, label %27, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.42) #20, !range !67
  %10 = load i32, ptr %2, align 8, !tbaa !62
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = add i32 %10, 33984
  %14 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !57
  tail call void %14(i32 noundef %13) #18
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !64
  tail call void @glBindTexture(i32 noundef %17, i32 noundef 0) #18
  %18 = load i32, ptr %16, align 8, !tbaa !64
  tail call void @glDisable(i32 noundef %18) #18
  %19 = load i32, ptr %2, align 8, !tbaa !62
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !57
  tail call void %22(i32 noundef 33984) #18
  br label %23

23:                                               ; preds = %21, %15
  store i32 -1, ptr %2, align 8, !tbaa !62
  br label %24

24:                                               ; preds = %1, %23
  %25 = phi ptr [ @.str.43, %23 ], [ @.str.39, %1 ]
  %26 = tail call i32 @GPU_print_error(ptr noundef nonnull %25) #20, !range !67
  br label %27

27:                                               ; preds = %24, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_texture_from_blender(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, double noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %9) #18
  %10 = call i32 @GPU_update_image_time(ptr noundef %0, double noundef %3) #18
  %11 = trunc i32 %4 to i8
  %12 = call i32 @GPU_verify_image(ptr noundef %0, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext %11, i8 noundef zeroext %2) #18
  %13 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.GPUTexture, ptr %14, i64 0, i32 5
  store i32 %12, ptr %17, align 4, !tbaa !65
  %18 = load i32, ptr %9, align 4, !tbaa !46
  call void @glBindTexture(i32 noundef 3553, i32 noundef %18) #18
  %19 = load ptr, ptr %13, align 8, !tbaa !74
  br label %42

20:                                               ; preds = %5
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %22 = call ptr %21(i64 noundef 48, ptr noundef nonnull @.str.29) #18
  %23 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 5
  store i32 %12, ptr %23, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 2
  store i32 -1, ptr %24, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 3
  store i32 1, ptr %25, align 4, !tbaa !63
  %26 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 4
  store i32 3553, ptr %26, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !69
  store ptr %22, ptr %13, align 8, !tbaa !74
  %28 = call zeroext i8 @glIsTexture(i32 noundef %12) #18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = call i32 @GPU_print_error(ptr noundef nonnull @.str.38) #20, !range !67
  br label %40

32:                                               ; preds = %20
  %33 = load i32, ptr %23, align 4, !tbaa !65
  call void @glBindTexture(i32 noundef 3553, i32 noundef %33) #18
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %6) #18
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4097, ptr noundef nonnull %7) #18
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4101, ptr noundef nonnull %8) #18
  %34 = load i32, ptr %6, align 4, !tbaa !46
  %35 = load i32, ptr %8, align 4, !tbaa !46
  %36 = sub nsw i32 %34, %35
  store i32 %36, ptr %22, align 8, !tbaa !58
  %37 = load i32, ptr %7, align 4, !tbaa !46
  %38 = sub nsw i32 %37, %35
  %39 = getelementptr inbounds %struct.GPUTexture, ptr %22, i64 0, i32 1
  store i32 %38, ptr %39, align 4, !tbaa !60
  br label %40

40:                                               ; preds = %32, %30
  %41 = load i32, ptr %9, align 4, !tbaa !46
  call void @glBindTexture(i32 noundef 3553, i32 noundef %41) #18
  br label %42

42:                                               ; preds = %40, %16
  %43 = phi ptr [ %19, %16 ], [ %22, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret ptr %43
}

; Function Attrs: optsize
declare i32 @GPU_update_image_time(ptr noundef, double noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @GPU_verify_image(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @glIsTexture(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glGetTexLevelParameteriv(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_texture_from_preview(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !tbaa !46
  call void @glGetIntegerv(i32 noundef 32873, ptr noundef nonnull %5) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.GPUTexture, ptr %8, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !65
  store i32 %12, ptr %6, align 4, !tbaa !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = load i32, ptr %0, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = trunc i32 %1 to i8
  call void @GPU_create_gl_tex(ptr noundef nonnull %6, ptr noundef %16, ptr noundef null, i32 noundef %17, i32 noundef %19, i8 noundef zeroext %20, i8 noundef zeroext 0, ptr noundef null) #18
  br i1 %9, label %31, label %21

21:                                               ; preds = %10, %14
  %22 = load i32, ptr %6, align 4, !tbaa !46
  %23 = getelementptr inbounds %struct.GPUTexture, ptr %8, i64 0, i32 5
  store i32 %22, ptr %23, align 4, !tbaa !65
  br label %48

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = load i32, ptr %0, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = trunc i32 %1 to i8
  call void @GPU_create_gl_tex(ptr noundef nonnull %6, ptr noundef %26, ptr noundef null, i32 noundef %27, i32 noundef %29, i8 noundef zeroext %30, i8 noundef zeroext 0, ptr noundef null) #18
  br label %31

31:                                               ; preds = %24, %14
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %33 = call ptr %32(i64 noundef 48, ptr noundef nonnull @.str.29) #18
  %34 = load i32, ptr %6, align 4, !tbaa !46
  %35 = getelementptr inbounds %struct.GPUTexture, ptr %33, i64 0, i32 5
  store i32 %34, ptr %35, align 4, !tbaa !65
  %36 = getelementptr inbounds %struct.GPUTexture, ptr %33, i64 0, i32 2
  store i32 -1, ptr %36, align 8, !tbaa !62
  %37 = getelementptr inbounds %struct.GPUTexture, ptr %33, i64 0, i32 3
  store i32 1, ptr %37, align 4, !tbaa !63
  %38 = getelementptr inbounds %struct.GPUTexture, ptr %33, i64 0, i32 4
  store i32 3553, ptr %38, align 8, !tbaa !64
  store ptr %33, ptr %7, align 8, !tbaa !57
  %39 = call zeroext i8 @glIsTexture(i32 noundef %34) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @GPU_print_error(ptr noundef nonnull @.str.38) #20, !range !67
  br label %48

43:                                               ; preds = %31
  %44 = load i32, ptr %35, align 4, !tbaa !65
  call void @glBindTexture(i32 noundef 3553, i32 noundef %44) #18
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %3) #18
  call void @glGetTexLevelParameteriv(i32 noundef 3553, i32 noundef 0, i32 noundef 4097, ptr noundef nonnull %4) #18
  %45 = load i32, ptr %3, align 4, !tbaa !46
  store i32 %45, ptr %33, align 8, !tbaa !58
  %46 = load i32, ptr %4, align 4, !tbaa !46
  %47 = getelementptr inbounds %struct.GPUTexture, ptr %33, i64 0, i32 1
  store i32 %46, ptr %47, align 4, !tbaa !60
  br label %48

48:                                               ; preds = %41, %43, %21
  %49 = phi ptr [ %8, %21 ], [ %33, %43 ], [ %33, %41 ]
  %50 = load i32, ptr %5, align 4, !tbaa !46
  call void @glBindTexture(i32 noundef 3553, i32 noundef %50) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret ptr %49
}

; Function Attrs: optsize
declare void @GPU_create_gl_tex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_texture_create_1D(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef %1, i32 noundef 0, ptr noundef %2) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @GPU_texture_unbind(ptr noundef nonnull %4) #20
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 !PGOFuncName !79 {
  %7 = icmp eq i32 %4, 0
  %8 = load i8, ptr @__GLEW_ARB_depth_texture, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %112

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %13 = tail call ptr %12(i64 noundef 48, ptr noundef nonnull @.str.29) #18
  store i32 %0, ptr %13, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 1
  store i32 %1, ptr %14, align 4, !tbaa !60
  %15 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 2
  store i32 -1, ptr %15, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 3
  store i32 1, ptr %16, align 4, !tbaa !63
  %17 = icmp eq i32 %2, 1
  %18 = select i1 %17, i32 3552, i32 3553
  %19 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 4
  store i32 %18, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 8
  store i32 %4, ptr %20, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.GPUTexture, ptr %13, i64 0, i32 5
  tail call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %21) #18
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %11
  %25 = icmp eq ptr %5, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @glGetError() #18
  %28 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.67, i32 noundef %27) #18
  br label %33

29:                                               ; preds = %24
  %30 = load ptr, ptr @stderr, align 8, !tbaa !57
  %31 = tail call i32 @glGetError() #18
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.30, i32 noundef %31) #21
  br label %33

33:                                               ; preds = %29, %26
  tail call void @GPU_texture_free(ptr noundef nonnull %13) #20
  br label %112

34:                                               ; preds = %11
  %35 = tail call i32 @GPU_non_power_of_two_support() #20, !range !66
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, ptr %13, align 8, !tbaa !58
  %39 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %38) #20
  store i32 %39, ptr %13, align 8, !tbaa !58
  %40 = load i32, ptr %14, align 4, !tbaa !60
  %41 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %40) #20
  store i32 %41, ptr %14, align 4, !tbaa !60
  br label %42

42:                                               ; preds = %37, %34
  store i32 0, ptr %15, align 8, !tbaa !62
  %43 = load i32, ptr %19, align 8, !tbaa !64
  tail call void @glBindTexture(i32 noundef %43, i32 noundef %22) #18
  br i1 %7, label %44, label %49

44:                                               ; preds = %42
  %45 = icmp eq ptr %3, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = mul nsw i32 %1, %0
  %48 = tail call fastcc ptr @GPU_texture_convert_pixels(i32 noundef %47, ptr noundef nonnull %3) #20
  br label %49

49:                                               ; preds = %42, %44, %46
  %50 = phi i32 [ 6408, %46 ], [ 6408, %44 ], [ 6402, %42 ]
  %51 = phi i32 [ 32856, %46 ], [ 32856, %44 ], [ 6402, %42 ]
  %52 = phi ptr [ %48, %46 ], [ null, %44 ], [ null, %42 ]
  %53 = load i32, ptr %19, align 8, !tbaa !64
  %54 = icmp eq i32 %53, 3552
  %55 = load i32, ptr %13, align 8, !tbaa !58
  br i1 %54, label %56, label %67

56:                                               ; preds = %49
  tail call void @glTexImage1D(i32 noundef 3552, i32 noundef 0, i32 noundef %51, i32 noundef %55, i32 noundef 0, i32 noundef %50, i32 noundef 5121, ptr noundef null) #18
  %57 = icmp eq ptr %3, null
  br i1 %57, label %86, label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %19, align 8, !tbaa !64
  %60 = icmp eq ptr %52, null
  %61 = select i1 %60, ptr %3, ptr %52
  tail call void @glTexSubImage1D(i32 noundef %59, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %50, i32 noundef 5121, ptr noundef nonnull %61) #18
  %62 = load i32, ptr %13, align 8, !tbaa !58
  %63 = icmp sgt i32 %62, %0
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load i32, ptr %19, align 8, !tbaa !64
  %66 = sub nsw i32 %62, %0
  tail call fastcc void @GPU_glTexSubImageEmpty(i32 noundef %65, i32 noundef %50, i32 noundef %0, i32 noundef 0, i32 noundef %66, i32 noundef 1) #20
  br label %86

67:                                               ; preds = %49
  %68 = load i32, ptr %14, align 4, !tbaa !60
  tail call void @glTexImage2D(i32 noundef %53, i32 noundef 0, i32 noundef %51, i32 noundef %55, i32 noundef %68, i32 noundef 0, i32 noundef %50, i32 noundef 5121, ptr noundef null) #18
  %69 = icmp eq ptr %3, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %19, align 8, !tbaa !64
  %72 = icmp eq ptr %52, null
  %73 = select i1 %72, ptr %3, ptr %52
  tail call void @glTexSubImage2D(i32 noundef %71, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef %50, i32 noundef 5121, ptr noundef nonnull %73) #18
  %74 = load i32, ptr %13, align 8, !tbaa !58
  %75 = icmp sgt i32 %74, %0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, ptr %19, align 8, !tbaa !64
  %78 = sub nsw i32 %74, %0
  %79 = load i32, ptr %14, align 4, !tbaa !60
  tail call fastcc void @GPU_glTexSubImageEmpty(i32 noundef %77, i32 noundef %50, i32 noundef %0, i32 noundef 0, i32 noundef %78, i32 noundef %79) #20
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, ptr %14, align 4, !tbaa !60
  %82 = icmp sgt i32 %81, %1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, ptr %19, align 8, !tbaa !64
  %85 = sub nsw i32 %81, %1
  tail call fastcc void @GPU_glTexSubImageEmpty(i32 noundef %84, i32 noundef %50, i32 noundef 0, i32 noundef %1, i32 noundef %0, i32 noundef %85) #20
  br label %86

86:                                               ; preds = %67, %83, %80, %56, %64, %58
  %87 = icmp eq ptr %52, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %89(ptr noundef nonnull %52) #18
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i32, ptr %19, align 8, !tbaa !64
  br i1 %7, label %92, label %96

92:                                               ; preds = %90
  tail call void @glTexParameteri(i32 noundef %91, i32 noundef 10241, i32 noundef 9729) #18
  %93 = load i32, ptr %19, align 8, !tbaa !64
  tail call void @glTexParameteri(i32 noundef %93, i32 noundef 10240, i32 noundef 9729) #18
  %94 = load i32, ptr %19, align 8, !tbaa !64
  %95 = icmp eq i32 %94, 3552
  br i1 %95, label %111, label %103

96:                                               ; preds = %90
  tail call void @glTexParameteri(i32 noundef %91, i32 noundef 10241, i32 noundef 9728) #18
  %97 = load i32, ptr %19, align 8, !tbaa !64
  tail call void @glTexParameteri(i32 noundef %97, i32 noundef 10240, i32 noundef 9729) #18
  %98 = load i32, ptr %19, align 8, !tbaa !64
  tail call void @glTexParameteri(i32 noundef %98, i32 noundef 34892, i32 noundef 34894) #18
  %99 = load i32, ptr %19, align 8, !tbaa !64
  tail call void @glTexParameteri(i32 noundef %99, i32 noundef 34893, i32 noundef 515) #18
  %100 = load i32, ptr %19, align 8, !tbaa !64
  tail call void @glTexParameteri(i32 noundef %100, i32 noundef 34891, i32 noundef 32841) #18
  %101 = load i32, ptr %19, align 8, !tbaa !64
  %102 = icmp eq i32 %101, 3552
  br i1 %102, label %111, label %107

103:                                              ; preds = %92
  %104 = load i32, ptr %14, align 4, !tbaa !60
  %105 = icmp eq i32 %104, 1
  %106 = select i1 %105, i32 33071, i32 33069
  br label %107

107:                                              ; preds = %96, %103
  %108 = phi i32 [ %94, %103 ], [ %101, %96 ]
  %109 = phi i32 [ %106, %103 ], [ 33071, %96 ]
  tail call void @glTexParameteri(i32 noundef %108, i32 noundef 10242, i32 noundef %109) #18
  %110 = load i32, ptr %19, align 8, !tbaa !64
  tail call void @glTexParameteri(i32 noundef %110, i32 noundef 10243, i32 noundef %109) #18
  br label %112

111:                                              ; preds = %96, %92
  tail call void @glTexParameteri(i32 noundef 3552, i32 noundef 10242, i32 noundef 33071) #18
  br label %112

112:                                              ; preds = %107, %111, %6, %33
  %113 = phi ptr [ null, %33 ], [ null, %6 ], [ %13, %111 ], [ %13, %107 ]
  ret ptr %113
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_texture_create_2D(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef %2, i32 noundef 0, ptr noundef %3) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @GPU_texture_unbind(ptr noundef nonnull %5) #20
  br label %8

8:                                                ; preds = %7, %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_texture_create_depth(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef null, i32 noundef 1, ptr noundef %2) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @GPU_texture_unbind(ptr noundef nonnull %4) #20
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_texture_create_vsm_shadow_map(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @GPU_texture_create_nD(i32 noundef %0, i32 noundef %0, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 33071) #18
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33071) #18
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 33328, i32 noundef %0, i32 noundef %0, i32 noundef 0, i32 noundef 33319, i32 noundef 5126, ptr noundef null) #18
  tail call void @GPU_texture_unbind(ptr noundef nonnull %3) #20
  br label %6

6:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
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
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.GPUTexture, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !65
  tail call void @glBindTexture(i32 noundef %0, i32 noundef %8) #18
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_texture_bind(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 1), align 4, !tbaa !73
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, -1
  br i1 %6, label %31, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.40) #20, !range !67
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = add i32 %1, 33984
  %12 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !57
  tail call void %12(i32 noundef %11) #18
  br label %13

13:                                               ; preds = %10, %7
  %14 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !64
  br i1 %16, label %20, label %19

19:                                               ; preds = %13
  tail call void @glBindTexture(i32 noundef %18, i32 noundef %15) #18
  br label %21

20:                                               ; preds = %13
  tail call void @GPU_invalid_tex_bind(i32 noundef %18) #20
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !64
  tail call void @glEnable(i32 noundef %23) #18
  br i1 %9, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !57
  tail call void %25(i32 noundef 33984) #18
  br label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 2
  store i32 %1, ptr %27, align 8, !tbaa !62
  br label %28

28:                                               ; preds = %2, %26
  %29 = phi ptr [ @.str.41, %26 ], [ @.str.39, %2 ]
  %30 = tail call i32 @GPU_print_error(ptr noundef nonnull %29) #20, !range !67
  br label %31

31:                                               ; preds = %28, %5
  ret void
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_framebuffer_texture_detach(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !80
  %8 = load i32, ptr %4, align 8, !tbaa !81
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !57
  tail call void %11(i32 noundef 36160, i32 noundef %8) #18
  %12 = load ptr, ptr %3, align 8, !tbaa !68
  %13 = load i32, ptr %12, align 8, !tbaa !81
  store i32 %13, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !80
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !61
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 2
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = select i1 %17, i32 36064, i32 36096
  store ptr null, ptr %20, align 8, !tbaa !57
  %22 = load ptr, ptr @__glewFramebufferTexture2DEXT, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !64
  tail call void %22(i32 noundef 36160, i32 noundef %21, i32 noundef %24, i32 noundef 0, i32 noundef 0) #18
  store ptr null, ptr %3, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: optsize
declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPU_texture_ref(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !63
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_texture_target(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !64
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_texture_opengl_width(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_texture_opengl_height(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !60
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_texture_opengl_bindcode(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !65
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GPU_texture_framebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.GPUTexture, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_framebuffer_create() local_unnamed_addr #2 {
  %1 = load i8, ptr @__GLEW_EXT_framebuffer_object, align 1, !tbaa !45
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %5 = tail call ptr %4(i64 noundef 24, ptr noundef nonnull @.str.45) #18
  %6 = load ptr, ptr @__glewGenFramebuffersEXT, align 8, !tbaa !57
  tail call void %6(i32 noundef 1, ptr noundef %5) #18
  %7 = load i32, ptr %5, align 8, !tbaa !81
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = tail call i32 @glGetError() #18
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef %11) #21
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %5) #20
  br label %13

13:                                               ; preds = %3, %0, %9
  %14 = phi ptr [ null, %9 ], [ null, %0 ], [ %5, %3 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_framebuffer_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @GPU_framebuffer_texture_detach(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @GPU_framebuffer_texture_detach(ptr noundef nonnull %0, ptr noundef nonnull %8) #20
  br label %11

11:                                               ; preds = %10, %6
  %12 = load i32, ptr %0, align 8, !tbaa !81
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @__glewDeleteFramebuffersEXT, align 8, !tbaa !57
  tail call void %15(i32 noundef 1, ptr noundef nonnull %0) #18
  %16 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !80
  %17 = load i32, ptr %0, align 8, !tbaa !81
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !57
  tail call void %20(i32 noundef 36160, i32 noundef 0) #18
  store i32 0, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !80
  br label %21

21:                                               ; preds = %14, %19, %11
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %22(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GPU_framebuffer_texture_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !57
  %8 = load i32, ptr %0, align 8, !tbaa !81
  tail call void %7(i32 noundef 36160, i32 noundef %8) #18
  %9 = load i32, ptr %0, align 8, !tbaa !81
  store i32 %9, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !80
  br label %10

10:                                               ; preds = %10, %3
  %11 = tail call i32 @glGetError() #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %10, !llvm.loop !85

13:                                               ; preds = %10
  %14 = select i1 %6, i32 36064, i32 36096
  %15 = load ptr, ptr @__glewFramebufferTexture2DEXT, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !65
  tail call void %15(i32 noundef 36160, i32 noundef %14, i32 noundef %17, i32 noundef %19, i32 noundef 0) #18
  %20 = tail call i32 @glGetError() #18
  %21 = icmp eq i32 %20, 1282
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  tail call void @GPU_framebuffer_restore() #20
  tail call fastcc void @GPU_print_framebuffer_error(i32 noundef 1282, ptr noundef %2) #20
  br label %38

23:                                               ; preds = %13
  %24 = load i32, ptr %4, align 8, !tbaa !61
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 36064, i32 0
  tail call void @glDrawBuffer(i32 noundef %26) #18
  tail call void @glReadBuffer(i32 noundef %26) #18
  %27 = load ptr, ptr @__glewCheckFramebufferStatusEXT, align 8, !tbaa !57
  %28 = tail call i32 %27(i32 noundef 36160) #18
  %29 = icmp eq i32 %28, 36053
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void @GPU_framebuffer_restore() #20
  tail call fastcc void @GPU_print_framebuffer_error(i32 noundef %28, ptr noundef %2) #20
  br label %38

31:                                               ; preds = %23
  %32 = load i32, ptr %4, align 8, !tbaa !61
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %struct.GPUFrameBuffer, ptr %0, i64 0, i32 2
  %36 = select i1 %33, ptr %34, ptr %35
  store ptr %1, ptr %36, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 7
  store ptr %0, ptr %37, align 8, !tbaa !68
  br label %38

38:                                               ; preds = %31, %30, %22
  %39 = phi i32 [ 0, %22 ], [ 0, %30 ], [ 1, %31 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_framebuffer_restore() local_unnamed_addr #2 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !80
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !57
  tail call void %4(i32 noundef 36160, i32 noundef 0) #18
  store i32 0, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !80
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_print_framebuffer_error(i32 noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !86 {
  switch i32 %0, label %11 [
    i32 36060, label %10
    i32 1282, label %3
    i32 36054, label %4
    i32 36061, label %5
    i32 36055, label %6
    i32 36057, label %7
    i32 36058, label %8
    i32 36059, label %9
  ]

3:                                                ; preds = %2
  br label %11

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %2
  br label %11

6:                                                ; preds = %2
  br label %11

7:                                                ; preds = %2
  br label %11

8:                                                ; preds = %2
  br label %11

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10, %9, %8, %7, %6, %5, %4, %3
  %12 = phi ptr [ @.str.70, %2 ], [ @.str.77, %9 ], [ @.str.76, %8 ], [ @.str.75, %7 ], [ @.str.74, %6 ], [ @.str.73, %5 ], [ @.str.72, %4 ], [ @.str.71, %3 ], [ @.str.78, %10 ]
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %1, i64 noundef 256, ptr noundef nonnull @.str.79, i32 noundef %0, ptr noundef nonnull %12) #18
  br label %19

16:                                               ; preds = %11
  %17 = load ptr, ptr @stderr, align 8, !tbaa !57
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.80, i32 noundef %0, ptr noundef nonnull %12) #21
  br label %19

19:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: optsize
declare void @glDrawBuffer(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glReadBuffer(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_framebuffer_texture_bind(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  tail call void @glPushAttrib(i32 noundef 10240) #18
  tail call void @glDisable(i32 noundef 3089) #18
  %5 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.GPUTexture, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = load i32, ptr %7, align 8, !tbaa !81
  tail call void %5(i32 noundef 36160, i32 noundef %8) #18
  tail call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %2, i32 noundef %3) #18
  %9 = load ptr, ptr %6, align 8, !tbaa !68
  %10 = load i32, ptr %9, align 8, !tbaa !81
  store i32 %10, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 2), align 8, !tbaa !80
  tail call void @glMatrixMode(i32 noundef 5889) #18
  tail call void @glPushMatrix() #18
  tail call void @glMatrixMode(i32 noundef 5888) #18
  tail call void @glPushMatrix() #18
  ret void
}

; Function Attrs: optsize
declare void @glPushAttrib(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_framebuffer_texture_unbind(ptr nocapture readnone %0, ptr nocapture readnone %1) local_unnamed_addr #2 {
  tail call void @glMatrixMode(i32 noundef 5889) #18
  tail call void @glPopMatrix() #18
  tail call void @glMatrixMode(i32 noundef 5888) #18
  tail call void @glPopMatrix() #18
  tail call void @glPopAttrib() #18
  tail call void @glEnable(i32 noundef 3089) #18
  ret void
}

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPopAttrib() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_framebuffer_blur(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #2 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %7 = tail call i32 @GPU_texture_opengl_width(ptr noundef %3) #20
  %8 = sitofp i32 %7 to float
  %9 = fdiv float 1.000000e+00, %8
  store float %9, ptr %5, align 4, !tbaa !87
  %10 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store float 0.000000e+00, ptr %6, align 4, !tbaa !87
  %11 = getelementptr inbounds float, ptr %6, i64 1
  %12 = tail call i32 @GPU_texture_opengl_height(ptr noundef %1) #20
  %13 = sitofp i32 %12 to float
  %14 = fdiv float 1.000000e+00, %13
  store float %14, ptr %11, align 4, !tbaa !87
  %15 = tail call ptr @GPU_shader_get_builtin_shader(i32 noundef 2) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = tail call i32 @GPU_shader_get_uniform(ptr noundef nonnull %15, ptr noundef nonnull @.str.47) #20
  %19 = tail call i32 @GPU_shader_get_uniform(ptr noundef nonnull %15, ptr noundef nonnull @.str.48) #20
  %20 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !57
  %21 = load i32, ptr %2, align 8, !tbaa !81
  tail call void %20(i32 noundef 36160, i32 noundef %21) #18
  tail call void @GPU_shader_bind(ptr noundef nonnull %15) #20
  call void @GPU_shader_uniform_vector(ptr nonnull poison, i32 noundef %18, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %5) #20
  call void @GPU_shader_uniform_texture(ptr nonnull poison, i32 noundef %19, ptr noundef %1) #20
  %22 = call i32 @GPU_texture_opengl_width(ptr noundef %3) #20
  %23 = call i32 @GPU_texture_opengl_height(ptr noundef %3) #20
  call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %22, i32 noundef %23) #18
  call void @glMatrixMode(i32 noundef 5888) #18
  call void @glLoadIdentity() #18
  call void @glMatrixMode(i32 noundef 5890) #18
  call void @glLoadIdentity() #18
  call void @glMatrixMode(i32 noundef 5889) #18
  call void @glLoadIdentity() #18
  call void @glDisable(i32 noundef 2929) #18
  call void @GPU_texture_bind(ptr noundef %1, i32 noundef 0) #20
  call void @glBegin(i32 noundef 7) #18
  call void @glTexCoord2d(double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  call void @glTexCoord2d(double noundef 1.000000e+00, double noundef 0.000000e+00) #18
  call void @glVertex2f(float noundef -1.000000e+00, float noundef 1.000000e+00) #18
  call void @glTexCoord2d(double noundef 1.000000e+00, double noundef 1.000000e+00) #18
  call void @glVertex2f(float noundef -1.000000e+00, float noundef -1.000000e+00) #18
  call void @glTexCoord2d(double noundef 0.000000e+00, double noundef 1.000000e+00) #18
  call void @glVertex2f(float noundef 1.000000e+00, float noundef -1.000000e+00) #18
  call void @glEnd() #18
  %24 = load ptr, ptr @__glewBindFramebufferEXT, align 8, !tbaa !57
  %25 = load i32, ptr %0, align 8, !tbaa !81
  call void %24(i32 noundef 36160, i32 noundef %25) #18
  %26 = call i32 @GPU_texture_opengl_width(ptr noundef %1) #20
  %27 = call i32 @GPU_texture_opengl_height(ptr noundef %1) #20
  call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %26, i32 noundef %27) #18
  call void @GPU_shader_uniform_vector(ptr nonnull poison, i32 noundef %18, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %6) #20
  call void @GPU_shader_uniform_texture(ptr nonnull poison, i32 noundef %19, ptr noundef %3) #20
  call void @GPU_texture_bind(ptr noundef %3, i32 noundef 0) #20
  call void @glBegin(i32 noundef 7) #18
  call void @glTexCoord2d(double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  call void @glTexCoord2d(double noundef 1.000000e+00, double noundef 0.000000e+00) #18
  call void @glVertex2f(float noundef -1.000000e+00, float noundef 1.000000e+00) #18
  call void @glTexCoord2d(double noundef 1.000000e+00, double noundef 1.000000e+00) #18
  call void @glVertex2f(float noundef -1.000000e+00, float noundef -1.000000e+00) #18
  call void @glTexCoord2d(double noundef 0.000000e+00, double noundef 1.000000e+00) #18
  call void @glVertex2f(float noundef 1.000000e+00, float noundef -1.000000e+00) #18
  call void @glEnd() #18
  call void @GPU_shader_unbind() #20
  br label %28

28:                                               ; preds = %4, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_shader_get_builtin_shader(i32 noundef %0) local_unnamed_addr #2 {
  switch i32 %0, label %15 [
    i32 1, label %2
    i32 2, label %7
  ]

2:                                                ; preds = %1
  %3 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = tail call ptr @GPU_shader_create(ptr noundef nonnull @datatoc_gpu_shader_vsm_store_vert_glsl, ptr noundef nonnull @datatoc_gpu_shader_vsm_store_frag_glsl, ptr noundef null, ptr noundef null) #20
  store ptr %6, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !88
  br label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call ptr @GPU_shader_create(ptr noundef nonnull @datatoc_gpu_shader_sep_gaussian_blur_vert_glsl, ptr noundef nonnull @datatoc_gpu_shader_sep_gaussian_blur_frag_glsl, ptr noundef null, ptr noundef null) #20
  store ptr %11, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !89
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %6, %5 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1, %12
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %0) #20
  br label %17

17:                                               ; preds = %7, %2, %15, %12
  %18 = phi ptr [ null, %15 ], [ %13, %12 ], [ %8, %7 ], [ %3, %2 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GPU_shader_get_uniform(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @__glewGetUniformLocationARB, align 8, !tbaa !57
  %4 = load i32, ptr %0, align 4, !tbaa !90
  %5 = tail call i32 %3(i32 noundef %4, ptr noundef %1) #18
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shader_bind(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.54) #20, !range !67
  %3 = load ptr, ptr @__glewUseProgramObjectARB, align 8, !tbaa !57
  %4 = load i32, ptr %0, align 4, !tbaa !90
  tail call void %3(i32 noundef %4) #18
  %5 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.55) #20, !range !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shader_uniform_vector(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq i32 %1, -1
  br i1 %6, label %23, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.58) #20, !range !67
  switch i32 %2, label %21 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
    i32 9, label %17
    i32 16, label %19
  ]

9:                                                ; preds = %7
  %10 = load ptr, ptr @__glewUniform1fvARB, align 8, !tbaa !57
  tail call void %10(i32 noundef %1, i32 noundef %3, ptr noundef %4) #18
  br label %21

11:                                               ; preds = %7
  %12 = load ptr, ptr @__glewUniform2fvARB, align 8, !tbaa !57
  tail call void %12(i32 noundef %1, i32 noundef %3, ptr noundef %4) #18
  br label %21

13:                                               ; preds = %7
  %14 = load ptr, ptr @__glewUniform3fvARB, align 8, !tbaa !57
  tail call void %14(i32 noundef %1, i32 noundef %3, ptr noundef %4) #18
  br label %21

15:                                               ; preds = %7
  %16 = load ptr, ptr @__glewUniform4fvARB, align 8, !tbaa !57
  tail call void %16(i32 noundef %1, i32 noundef %3, ptr noundef %4) #18
  br label %21

17:                                               ; preds = %7
  %18 = load ptr, ptr @__glewUniformMatrix3fvARB, align 8, !tbaa !57
  tail call void %18(i32 noundef %1, i32 noundef %3, i8 noundef zeroext 0, ptr noundef %4) #18
  br label %21

19:                                               ; preds = %7
  %20 = load ptr, ptr @__glewUniformMatrix4fvARB, align 8, !tbaa !57
  tail call void %20(i32 noundef %1, i32 noundef %3, i8 noundef zeroext 0, ptr noundef %4) #18
  br label %21

21:                                               ; preds = %7, %11, %15, %19, %17, %13, %9
  %22 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.59) #20, !range !67
  br label %23

23:                                               ; preds = %5, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shader_uniform_texture(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.GPUTexture, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = load i32, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 1), align 4, !tbaa !73
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = icmp eq i32 %5, -1
  %10 = icmp eq i32 %1, -1
  %11 = or i1 %10, %9
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.62) #20, !range !67
  %14 = load i32, ptr %4, align 8, !tbaa !62
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = add i32 %14, 33984
  %18 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !57
  tail call void %18(i32 noundef %17) #18
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.GPUTexture, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !65
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.GPUTexture, ptr %2, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !64
  br i1 %22, label %26, label %25

25:                                               ; preds = %19
  tail call void @glBindTexture(i32 noundef %24, i32 noundef %21) #18
  br label %27

26:                                               ; preds = %19
  tail call void @GPU_invalid_tex_bind(i32 noundef %24) #20
  br label %27

27:                                               ; preds = %26, %25
  %28 = load ptr, ptr @__glewUniform1iARB, align 8, !tbaa !57
  %29 = load i32, ptr %4, align 8, !tbaa !62
  tail call void %28(i32 noundef %1, i32 noundef %29) #18
  %30 = getelementptr inbounds %struct.GPUTexture, ptr %2, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !64
  tail call void @glEnable(i32 noundef %31) #18
  %32 = load i32, ptr %4, align 8, !tbaa !62
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr @__glewActiveTextureARB, align 8, !tbaa !57
  tail call void %35(i32 noundef 33984) #18
  br label %36

36:                                               ; preds = %27, %34, %3
  %37 = phi ptr [ @.str.39, %3 ], [ @.str.63, %34 ], [ @.str.63, %27 ]
  %38 = tail call i32 @GPU_print_error(ptr noundef nonnull %37) #20, !range !67
  br label %39

39:                                               ; preds = %36, %8
  ret void
}

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexCoord2d(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shader_unbind() local_unnamed_addr #2 {
  %1 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.56) #20, !range !67
  %2 = load ptr, ptr @__glewUseProgramObjectARB, align 8, !tbaa !57
  tail call void %2(i32 noundef 0) #18
  %3 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.57) #20, !range !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_offscreen_create(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str.49) #18
  %6 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 3
  store i32 %0, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !94
  %8 = tail call ptr @GPU_framebuffer_create() #20
  store ptr %8, ptr %5, align 8, !tbaa !95
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @GPU_offscreen_free(ptr noundef nonnull %5) #20
  br label %32

11:                                               ; preds = %3
  %12 = tail call ptr @GPU_texture_create_depth(i32 noundef %0, i32 noundef %1, ptr noundef %2) #20
  %13 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !96
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @GPU_offscreen_free(ptr noundef nonnull %5) #20
  br label %32

16:                                               ; preds = %11
  %17 = load ptr, ptr %5, align 8, !tbaa !95
  %18 = tail call i32 @GPU_framebuffer_texture_attach(ptr noundef %17, ptr noundef nonnull %12, ptr noundef %2) #20, !range !67
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @GPU_offscreen_free(ptr noundef nonnull %5) #20
  br label %32

21:                                               ; preds = %16
  %22 = tail call ptr @GPU_texture_create_2D(i32 noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %2) #20
  %23 = getelementptr inbounds %struct.GPUOffScreen, ptr %5, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !97
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @GPU_offscreen_free(ptr noundef nonnull %5) #20
  br label %32

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !tbaa !95
  %28 = tail call i32 @GPU_framebuffer_texture_attach(ptr noundef %27, ptr noundef nonnull %22, ptr noundef %2) #20, !range !67
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @GPU_offscreen_free(ptr noundef nonnull %5) #20
  br label %32

31:                                               ; preds = %26
  tail call void @GPU_framebuffer_restore() #20
  br label %32

32:                                               ; preds = %31, %30, %25, %20, %15, %10
  %33 = phi ptr [ %5, %31 ], [ null, %30 ], [ null, %25 ], [ null, %20 ], [ null, %15 ], [ null, %10 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_offscreen_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @GPU_framebuffer_free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @GPU_texture_free(ptr noundef nonnull %7) #20
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @GPU_texture_free(ptr noundef nonnull %12) #20
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %16(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_offscreen_bind(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  tail call void @glDisable(i32 noundef 3089) #18
  %2 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !94
  tail call void @GPU_framebuffer_texture_bind(ptr poison, ptr noundef %3, i32 noundef %5, i32 noundef %7) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_offscreen_unbind(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  tail call void @GPU_framebuffer_texture_unbind(ptr poison, ptr poison) #20
  tail call void @GPU_framebuffer_restore() #20
  tail call void @glEnable(i32 noundef 3089) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_offscreen_read_pixels(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !94
  tail call void @glReadPixels(i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %7, i32 noundef 6408, i32 noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: optsize
declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_offscreen_width(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !92
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GPU_offscreen_height(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.GPUOffScreen, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !94
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
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
  store ptr %0, ptr %5, align 8, !tbaa !57
  store ptr %1, ptr %6, align 8, !tbaa !57
  store ptr %2, ptr %7, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 5000, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  store i32 0, ptr %10, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %11, i8 0, i64 72, i1 false)
  %14 = load i8, ptr @__GLEW_ARB_vertex_shader, align 1, !tbaa !45
  %15 = icmp ne i8 %14, 0
  %16 = load i8, ptr @__GLEW_ARB_fragment_shader, align 1
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %134

19:                                               ; preds = %4
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %21 = tail call ptr %20(i64 noundef 20, ptr noundef nonnull @.str.50) #18
  %22 = icmp ne ptr %0, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load ptr, ptr @__glewCreateShaderObjectARB, align 8, !tbaa !57
  %25 = tail call i32 %24(i32 noundef 35633) #18
  %26 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !98
  br label %27

27:                                               ; preds = %23, %19
  %28 = icmp ne ptr %1, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load ptr, ptr @__glewCreateShaderObjectARB, align 8, !tbaa !57
  %31 = tail call i32 %30(i32 noundef 35632) #18
  %32 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  store i32 %31, ptr %32, align 4, !tbaa !99
  br label %33

33:                                               ; preds = %29, %27
  %34 = load ptr, ptr @__glewCreateProgramObjectARB, align 8, !tbaa !57
  %35 = tail call i32 %34() #18
  store i32 %35, ptr %21, align 4, !tbaa !90
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
  br i1 %28, label %43, label %50

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !99
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %38, %33
  %48 = load ptr, ptr @stderr, align 8, !tbaa !57
  %49 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 35, i64 1, ptr %48) #22
  tail call void @GPU_shader_free(ptr noundef nonnull %21) #20
  br label %134

50:                                               ; preds = %43, %42
  call fastcc void @gpu_shader_standard_defines(ptr noundef nonnull %11) #20
  br i1 %22, label %51, label %80

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #17
  %52 = tail call fastcc ptr @gpu_shader_version() #20
  store ptr %52, ptr %12, align 16, !tbaa !57
  %53 = tail call fastcc ptr @gpu_shader_standard_extensions() #20
  %54 = getelementptr inbounds [5 x ptr], ptr %12, i64 0, i64 1
  store ptr %53, ptr %54, align 8, !tbaa !57
  %55 = getelementptr inbounds [5 x ptr], ptr %12, i64 0, i64 2
  store ptr %11, ptr %55, align 16, !tbaa !57
  %56 = icmp eq ptr %3, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds [5 x ptr], ptr %12, i64 0, i64 3
  store ptr %3, ptr %58, align 8, !tbaa !57
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ 4, %57 ], [ 3, %51 ]
  %61 = add nuw nsw i32 %60, 1
  %62 = zext nneg i32 %60 to i64
  %63 = getelementptr inbounds [5 x ptr], ptr %12, i64 0, i64 %62
  store ptr %0, ptr %63, align 8, !tbaa !57
  %64 = load ptr, ptr @__glewAttachObjectARB, align 8, !tbaa !57
  %65 = load i32, ptr %21, align 4, !tbaa !90
  %66 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !98
  call void %64(i32 noundef %65, i32 noundef %67) #18
  %68 = load ptr, ptr @__glewShaderSourceARB, align 8, !tbaa !57
  %69 = load i32, ptr %66, align 4, !tbaa !98
  call void %68(i32 noundef %69, i32 noundef %61, ptr noundef nonnull %12, ptr noundef null) #18
  %70 = load ptr, ptr @__glewCompileShaderARB, align 8, !tbaa !57
  %71 = load i32, ptr %66, align 4, !tbaa !98
  call void %70(i32 noundef %71) #18
  %72 = load ptr, ptr @__glewGetObjectParameterivARB, align 8, !tbaa !57
  %73 = load i32, ptr %66, align 4, !tbaa !98
  call void %72(i32 noundef %73, i32 noundef 35713, ptr noundef nonnull %8) #18
  %74 = load i32, ptr %8, align 4, !tbaa !46
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %59
  %77 = load ptr, ptr @__glewGetInfoLogARB, align 8, !tbaa !57
  %78 = load i32, ptr %66, align 4, !tbaa !98
  call void %77(i32 noundef %78, i32 noundef 5000, ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  call fastcc void @shader_print_errors(ptr noundef nonnull @.str.52, ptr noundef nonnull %9, ptr noundef nonnull %12, i32 noundef %61) #20
  call void @GPU_shader_free(ptr noundef nonnull %21) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #17
  br label %134

79:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #17
  br label %80

80:                                               ; preds = %79, %50
  br i1 %28, label %81, label %117

81:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #17
  %82 = call fastcc ptr @gpu_shader_version() #20
  store ptr %82, ptr %13, align 16, !tbaa !57
  %83 = call fastcc ptr @gpu_shader_standard_extensions() #20
  %84 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 1
  store ptr %83, ptr %84, align 8, !tbaa !57
  %85 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 2
  store ptr %11, ptr %85, align 16, !tbaa !57
  %86 = icmp eq ptr %3, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 3
  store ptr %3, ptr %88, align 8, !tbaa !57
  br label %89

89:                                               ; preds = %87, %81
  %90 = phi i32 [ 4, %87 ], [ 3, %81 ]
  %91 = icmp eq ptr %2, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = add nuw nsw i32 %90, 1
  %94 = zext nneg i32 %90 to i64
  %95 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 %94
  store ptr %2, ptr %95, align 8, !tbaa !57
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i32 [ %93, %92 ], [ %90, %89 ]
  %98 = add nuw nsw i32 %97, 1
  %99 = zext nneg i32 %97 to i64
  %100 = getelementptr inbounds [6 x ptr], ptr %13, i64 0, i64 %99
  store ptr %1, ptr %100, align 8, !tbaa !57
  %101 = load ptr, ptr @__glewAttachObjectARB, align 8, !tbaa !57
  %102 = load i32, ptr %21, align 4, !tbaa !90
  %103 = getelementptr inbounds %struct.GPUShader, ptr %21, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !99
  call void %101(i32 noundef %102, i32 noundef %104) #18
  %105 = load ptr, ptr @__glewShaderSourceARB, align 8, !tbaa !57
  %106 = load i32, ptr %103, align 4, !tbaa !99
  call void %105(i32 noundef %106, i32 noundef %98, ptr noundef nonnull %13, ptr noundef null) #18
  %107 = load ptr, ptr @__glewCompileShaderARB, align 8, !tbaa !57
  %108 = load i32, ptr %103, align 4, !tbaa !99
  call void %107(i32 noundef %108) #18
  %109 = load ptr, ptr @__glewGetObjectParameterivARB, align 8, !tbaa !57
  %110 = load i32, ptr %103, align 4, !tbaa !99
  call void %109(i32 noundef %110, i32 noundef 35713, ptr noundef nonnull %8) #18
  %111 = load i32, ptr %8, align 4, !tbaa !46
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load ptr, ptr @__glewGetInfoLogARB, align 8, !tbaa !57
  %115 = load i32, ptr %103, align 4, !tbaa !99
  call void %114(i32 noundef %115, i32 noundef 5000, ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  call fastcc void @shader_print_errors(ptr noundef nonnull @.str.52, ptr noundef nonnull %9, ptr noundef nonnull %13, i32 noundef %98) #20
  call void @GPU_shader_free(ptr noundef nonnull %21) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #17
  br label %134

116:                                              ; preds = %96
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #17
  br label %117

117:                                              ; preds = %116, %80
  %118 = load ptr, ptr @__glewLinkProgramARB, align 8, !tbaa !57
  %119 = load i32, ptr %21, align 4, !tbaa !90
  call void %118(i32 noundef %119) #18
  %120 = load ptr, ptr @__glewGetObjectParameterivARB, align 8, !tbaa !57
  %121 = load i32, ptr %21, align 4, !tbaa !90
  call void %120(i32 noundef %121, i32 noundef 35714, ptr noundef nonnull %8) #18
  %122 = load i32, ptr %8, align 4, !tbaa !46
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load ptr, ptr @__glewGetInfoLogARB, align 8, !tbaa !57
  %126 = load i32, ptr %21, align 4, !tbaa !90
  call void %125(i32 noundef %126, i32 noundef 5000, ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  %127 = or i1 %28, %22
  %128 = select i1 %28, ptr %6, ptr %5
  br i1 %127, label %131, label %129

129:                                              ; preds = %124
  %130 = icmp eq ptr %2, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %124, %129
  %132 = phi ptr [ %128, %124 ], [ %7, %129 ]
  call fastcc void @shader_print_errors(ptr noundef nonnull @.str.53, ptr noundef nonnull %9, ptr noundef nonnull %132, i32 noundef 1) #20
  br label %133

133:                                              ; preds = %131, %129
  call void @GPU_shader_free(ptr noundef nonnull %21) #20
  br label %134

134:                                              ; preds = %113, %76, %117, %4, %133, %47
  %135 = phi ptr [ null, %133 ], [ null, %113 ], [ null, %76 ], [ null, %47 ], [ null, %4 ], [ %21, %117 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 5000, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  ret ptr %135
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shader_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.GPUShader, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !100
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !57
  tail call void %6(i32 noundef %3) #18
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.GPUShader, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !98
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !57
  tail call void %12(i32 noundef %9) #18
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.GPUShader, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !57
  tail call void %18(i32 noundef %15) #18
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i32, ptr %0, align 4, !tbaa !90
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @__glewDeleteObjectARB, align 8, !tbaa !57
  tail call void %23(i32 noundef %20) #18
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %25(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_shader_standard_defines(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !101 {
  %2 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #20, !range !67
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %6, ptr noundef nonnull align 1 dereferenceable(17) @.str.81, i64 17, i1 false)
  %7 = load i8, ptr @__GLEW_VERSION_3_0, align 1, !tbaa !45
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %11, ptr noundef nonnull align 1 dereferenceable(25) @.str.82, i64 25, i1 false)
  br label %24

12:                                               ; preds = %1
  %13 = tail call i32 @GPU_type_matches(i32 noundef 1, i32 noundef 65280, i32 noundef 16711680) #20, !range !67
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %17, ptr noundef nonnull align 1 dereferenceable(20) @.str.83, i64 20, i1 false)
  br label %24

18:                                               ; preds = %12
  %19 = tail call i32 @GPU_type_matches(i32 noundef 4, i32 noundef 65280, i32 noundef 16711680) #20, !range !67
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %23, ptr noundef nonnull align 1 dereferenceable(19) @.str.84, i64 19, i1 false)
  br label %24

24:                                               ; preds = %15, %21, %18, %4, %9
  %25 = tail call i32 @GPU_bicubic_bump_support() #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %29, ptr noundef nonnull align 1 dereferenceable(22) @.str.85, i64 22, i1 false)
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @gpu_shader_version() unnamed_addr #2 !PGOFuncName !102 {
  %1 = load i8, ptr @__GLEW_VERSION_3_0, align 1, !tbaa !45
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @GPU_bicubic_bump_support() #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #20, !range !67
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  br label %10

10:                                               ; preds = %3, %6, %9
  %11 = phi ptr [ @.str.87, %9 ], [ @.str.86, %6 ], [ @.str.86, %3 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gpu_shader_standard_extensions() unnamed_addr #2 !PGOFuncName !103 {
  %1 = tail call i32 @GPU_bicubic_bump_support() #18
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, ptr @.str.87, ptr @.str.88
  ret ptr %3
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @shader_print_errors(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #12 !PGOFuncName !104 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !57
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.89, ptr noundef %0) #21
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %4
  %9 = zext nneg i32 %3 to i64
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  br label %11

11:                                               ; preds = %8, %50
  %12 = phi i32 [ %10, %8 ], [ %52, %50 ]
  %13 = phi i64 [ 0, %8 ], [ %51, %50 ]
  %14 = getelementptr inbounds ptr, ptr %2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #19
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  %18 = and i32 %12, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = add nuw nsw i64 %13, 1
  br label %50

22:                                               ; preds = %11
  %23 = load ptr, ptr @stderr, align 8, !tbaa !57
  %24 = add nuw nsw i64 %13, 1
  %25 = trunc i64 %24 to i32
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.90, i32 noundef %25) #21
  %27 = load ptr, ptr %14, align 8, !tbaa !57
  %28 = icmp ult ptr %27, %17
  br i1 %28, label %29, label %45

29:                                               ; preds = %22, %34
  %30 = phi i32 [ %43, %34 ], [ 1, %22 ]
  %31 = phi ptr [ %37, %34 ], [ %27, %22 ]
  %32 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %31, i32 noundef 10) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr @stderr, align 8, !tbaa !57
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.91, i32 noundef %30) #21
  %37 = getelementptr inbounds i8, ptr %32, i64 1
  %38 = ptrtoint ptr %37 to i64
  %39 = ptrtoint ptr %31 to i64
  %40 = sub i64 %38, %39
  %41 = load ptr, ptr @stderr, align 8, !tbaa !57
  %42 = tail call i64 @fwrite(ptr noundef %31, i64 noundef %40, i64 noundef 1, ptr noundef %41) #21
  %43 = add nuw nsw i32 %30, 1
  %44 = icmp ult ptr %37, %17
  br i1 %44, label %29, label %45, !llvm.loop !105

45:                                               ; preds = %29, %34, %22
  %46 = phi ptr [ %27, %22 ], [ %37, %34 ], [ %31, %29 ]
  %47 = load ptr, ptr @stderr, align 8, !tbaa !57
  %48 = tail call i32 @fputs(ptr %46, ptr %47) #22
  %49 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  br label %50

50:                                               ; preds = %20, %45
  %51 = phi i64 [ %21, %20 ], [ %24, %45 ]
  %52 = phi i32 [ %12, %20 ], [ %49, %45 ]
  %53 = icmp eq i64 %51, %9
  br i1 %53, label %54, label %11, !llvm.loop !106

54:                                               ; preds = %50, %4
  %55 = load ptr, ptr @stderr, align 8, !tbaa !57
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.93, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shader_uniform_int(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.60) #20, !range !67
  %7 = load ptr, ptr @__glewUniform1iARB, align 8, !tbaa !57
  tail call void %7(i32 noundef %1, i32 noundef %2) #18
  %8 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.61) #20, !range !67
  br label %9

9:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GPU_shader_get_attribute(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.64) #20, !range !67
  %4 = load ptr, ptr @__glewGetAttribLocationARB, align 8, !tbaa !57
  %5 = load i32, ptr %0, align 4, !tbaa !90
  %6 = tail call i32 %4(i32 noundef %5, ptr noundef %1) #18
  %7 = tail call i32 @GPU_print_error(ptr noundef nonnull @.str.65) #20, !range !67
  ret i32 %6
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_shader_free_builtin_shaders() local_unnamed_addr #2 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !88
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %4(ptr noundef nonnull %1) #18
  store ptr null, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11), align 8, !tbaa !88
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %9(ptr noundef nonnull %6) #18
  store ptr null, ptr getelementptr inbounds (%struct.GPUGlobal, ptr @GG, i64 0, i32 11, i32 1), align 8, !tbaa !89
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @is_power_of_2_i(i32 noundef %0) unnamed_addr #13 !PGOFuncName !107 {
  %2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !108
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GPU_texture_convert_pixels(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !109 {
  %3 = shl nsw i32 %0, 2
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %5 = sext i32 %3 to i64
  %6 = tail call ptr %4(i64 noundef %5, ptr noundef nonnull @.str.68) #18
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %10

10:                                               ; preds = %8, %20
  %11 = phi ptr [ %24, %20 ], [ %6, %8 ]
  %12 = phi i32 [ %23, %20 ], [ 0, %8 ]
  %13 = phi ptr [ %25, %20 ], [ %1, %8 ]
  %14 = load float, ptr %13, align 4, !tbaa !87
  %15 = fcmp ugt float %14, 0.000000e+00
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = fcmp ogt float %14, 0x3FEFEFEFE0000000
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = tail call float @llvm.fmuladd.f32(float %14, float 2.550000e+02, float 5.000000e-01)
  br label %20

20:                                               ; preds = %18, %16, %10
  %21 = phi float [ 0.000000e+00, %10 ], [ %19, %18 ], [ 2.550000e+02, %16 ]
  %22 = fptoui float %21 to i8
  store i8 %22, ptr %11, align 1, !tbaa !45
  %23 = add nuw nsw i32 %12, 1
  %24 = getelementptr inbounds i8, ptr %11, i64 1
  %25 = getelementptr inbounds float, ptr %13, i64 1
  %26 = icmp eq i32 %23, %9
  br i1 %26, label %27, label %10, !llvm.loop !110

27:                                               ; preds = %20, %2
  ret ptr %6
}

; Function Attrs: optsize
declare void @glTexImage1D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexSubImage1D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_glTexSubImageEmpty(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 !PGOFuncName !111 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %8 = sext i32 %4 to i64
  %9 = shl nsw i64 %8, 2
  %10 = sext i32 %5 to i64
  %11 = mul i64 %9, %10
  %12 = tail call ptr %7(i64 noundef %11, ptr noundef nonnull @.str.69) #18
  %13 = icmp eq i32 %0, 3552
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @glTexSubImage1D(i32 noundef 3552, i32 noundef 0, i32 noundef %2, i32 noundef %4, i32 noundef %1, i32 noundef 5121, ptr noundef %12) #18
  br label %16

15:                                               ; preds = %6
  tail call void @glTexSubImage2D(i32 noundef %0, i32 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %1, i32 noundef 5121, ptr noundef %12) #18
  br label %16

16:                                               ; preds = %15, %14
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef %12) #18
  ret void
}

; Function Attrs: optsize
declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: optsize
declare i32 @GPU_bicubic_bump_support() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { optsize }
attributes #21 = { cold optsize }
attributes #22 = { cold }

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
!46 = !{!36, !36, i64 0}
!47 = !{!35, !36, i64 20}
!48 = !{!35, !36, i64 24}
!49 = !{!35, !36, i64 28}
!50 = !{!35, !40, i64 64}
!51 = !{!35, !40, i64 72}
!52 = !{!35, !40, i64 80}
!53 = !{!54, !36, i64 2100}
!54 = !{!"Global", !40, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !55, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !56, i64 2084, !56, i64 2086, !56, i64 2088, !37, i64 2090, !56, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!55 = !{!"ListBase", !40, i64 0, !40, i64 8}
!56 = !{!"short", !37, i64 0}
!57 = !{!40, !40, i64 0}
!58 = !{!59, !36, i64 0}
!59 = !{!"GPUTexture", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !40, i64 32, !36, i64 40}
!60 = !{!59, !36, i64 4}
!61 = !{!59, !36, i64 40}
!62 = !{!59, !36, i64 8}
!63 = !{!59, !36, i64 12}
!64 = !{!59, !36, i64 16}
!65 = !{!59, !36, i64 20}
!66 = !{i32 0, i32 256}
!67 = !{i32 0, i32 2}
!68 = !{!59, !40, i64 32}
!69 = !{!59, !36, i64 24}
!70 = !{!"gpu_extensions.c:power_of_2_max_i"}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!35, !36, i64 4}
!74 = !{!75, !40, i64 1152}
!75 = !{!"Image", !76, i64 0, !37, i64 120, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !37, i64 1176, !56, i64 1240, !56, i64 1242, !56, i64 1244, !56, i64 1246, !56, i64 1248, !56, i64 1250, !36, i64 1252, !56, i64 1256, !56, i64 1258, !56, i64 1260, !56, i64 1262, !56, i64 1264, !56, i64 1266, !36, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !77, i64 1296, !36, i64 1300, !56, i64 1304, !56, i64 1306, !36, i64 1308, !36, i64 1312, !37, i64 1316, !37, i64 1317, !56, i64 1318, !37, i64 1320, !77, i64 1336, !77, i64 1340, !78, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!76 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !37, i64 32, !56, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !40, i64 112}
!77 = !{!"float", !37, i64 0}
!78 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!79 = !{!"gpu_extensions.c:GPU_texture_create_nD"}
!80 = !{!35, !36, i64 8}
!81 = !{!82, !36, i64 0}
!82 = !{!"GPUFrameBuffer", !36, i64 0, !40, i64 8, !40, i64 16}
!83 = !{!82, !40, i64 16}
!84 = !{!82, !40, i64 8}
!85 = distinct !{!85, !72}
!86 = !{!"gpu_extensions.c:GPU_print_framebuffer_error"}
!87 = !{!77, !77, i64 0}
!88 = !{!35, !40, i64 48}
!89 = !{!35, !40, i64 56}
!90 = !{!91, !36, i64 0}
!91 = !{!"GPUShader", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16}
!92 = !{!93, !36, i64 24}
!93 = !{!"GPUOffScreen", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !36, i64 28}
!94 = !{!93, !36, i64 28}
!95 = !{!93, !40, i64 0}
!96 = !{!93, !40, i64 16}
!97 = !{!93, !40, i64 8}
!98 = !{!91, !36, i64 4}
!99 = !{!91, !36, i64 8}
!100 = !{!91, !36, i64 12}
!101 = !{!"gpu_extensions.c:gpu_shader_standard_defines"}
!102 = !{!"gpu_extensions.c:gpu_shader_version"}
!103 = !{!"gpu_extensions.c:gpu_shader_standard_extensions"}
!104 = !{!"gpu_extensions.c:shader_print_errors"}
!105 = distinct !{!105, !72}
!106 = distinct !{!106, !72}
!107 = !{!"gpu_extensions.c:is_power_of_2_i"}
!108 = !{i32 0, i32 33}
!109 = !{!"gpu_extensions.c:GPU_texture_convert_pixels"}
!110 = distinct !{!110, !72}
!111 = !{!"gpu_extensions.c:GPU_glTexSubImageEmpty"}
