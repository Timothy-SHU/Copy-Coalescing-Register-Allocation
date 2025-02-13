; ModuleID = 'blender/source/blender/gpu/intern/gpu_codegen.c'
source_filename = "blender/source/blender/gpu/intern/gpu_codegen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.GPUFunction = type { [64 x i8], [32 x i32], [32 x i32], i32 }
%struct.GPUPass = type { ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr }
%struct.GPUInput = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, [32 x i8], [16 x float], ptr, i32, i32, [32 x i8], i32, i32, i32 }
%struct.GPUNodeLink = type { ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.GPUNode = type { ptr, ptr, ptr, i32, %struct.ListBase, %struct.ListBase }
%struct.GPUOutput = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }
%struct.GPUVertexAttribs = type { [32 x %struct.anon], i32 }
%struct.anon = type { i32, i32, i32, i32, [64 x i8] }

@FUNCTION_HASH = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [23 x i8] c"GPU_lookup_function gh\00", align 1
@glsl_material_library = internal unnamed_addr global ptr null, align 8
@defmaterial = external global %struct.Material, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"unfviewmat\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unfobmat\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unfinvviewmat\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unfinvobmat\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"varposition\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"varnormal\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"unfobcolor\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"unfobautobumpscale\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__GLEW_ARB_texture_query_lod = external local_unnamed_addr global i8, align 1
@__GLEW_VERSION_3_0 = external local_unnamed_addr global i8, align 1
@datatoc_gpu_shader_material_glsl = external global [0 x i8], align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"GPU failed to find function %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"set_value\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"set_rgb\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"GPUPass\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"void \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"GPUFunction\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"out \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"inout \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"in \00", align 1
@GPU_DATATYPE_STR = internal unnamed_addr constant [17 x ptr] [ptr @.str.9, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr null, ptr null, ptr null, ptr null, ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.28], align 16
@.str.19 = private unnamed_addr constant [16 x i8] c"sampler2DShadow\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sampler2D\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"GPU invalid function parameter in %s.\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"GPU functions parse error.\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"vec2\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"vec3\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"vec4\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"mat3\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"mat4\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"GPUNodeLink\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"GPUNode\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"GPUOutput\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [9 x i8] c"GPUInput\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"GPU_node_link_free: negative refcount\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"void main(void)\0A\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"\09vec3 facingnormal = (gl_FrontFacing)? varnormal: -varnormal;\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"codegen_set_unique_ids1 gh\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"codegen_set_unique_ids2 gh\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"uniform %s samp%d;\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"unf\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"uniform %s %s;\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"varying %s %s;\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"uniform %s unf%d;\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"const %s cons%d = \00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"varying %s var%d;\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"\09vec4 tex%d = texture2D(\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"samp%d, gl_TexCoord[%d].st);\0A\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"\09%s tmp%d;\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"\09%s(\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"samp%d\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c", gl_TexCoord[%d].st\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"facingnormal\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"unf%d\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"cons%d\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"var%d\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"gl_SecondaryColor\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"gl_Color\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"tmp%d\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"\0A\09gl_FragColor = \00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"dot(%s.rgb, vec3(0.35, 0.45, 0.2))\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"dot(%s, vec3(0.33))\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"%s.r\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"vec2(dot(%s.rgb, vec3(0.35, 0.45, 0.2)), %s.a)\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"vec2(dot(%s.rgb, vec3(0.33)), 1.0)\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"vec2(%s, 1.0)\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"%s.rgb\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"vec3(%s.r, %s.r, %s.r)\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"vec3(%s, %s, %s)\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"vec4(%s, 1.0)\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"vec4(%s.r, %s.r, %s.r, %s.g)\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"vec4(%s, %s, %s, 1.0)\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"attribute %s att%d;\0A\00", align 1
@datatoc_gpu_shader_vertex_glsl = external global [0 x i8], align 1
@.str.83 = private unnamed_addr constant [54 x i8] c"\09var%d.xyz = normalize(gl_NormalMatrix * att%d.xyz);\0A\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"\09var%d.w = att%d.w;\0A\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"\09var%d = att%d;\0A\00", align 1
@.str.86 = private unnamed_addr constant [74 x i8] c"\09vec3 matcapcol = vec3(0.5, 0.5, 0.5) * varnormal + vec3(0.5, 0.5, 0.5);\0A\00", align 1
@.str.87 = private unnamed_addr constant [49 x i8] c"\09gl_FrontSecondaryColor = vec4(matcapcol, 1.0);\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"\09gl_FrontColor = gl_Color;\0A\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_lookup_function(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @FUNCTION_HASH, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str) #17
  store ptr %5, ptr @FUNCTION_HASH, align 8, !tbaa !34
  %6 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  tail call fastcc void @gpu_parse_functions_string(ptr noundef %5, ptr noundef %6) #18
  %7 = load ptr, ptr @FUNCTION_HASH, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = tail call ptr @BLI_ghash_lookup(ptr noundef %9, ptr noundef %0) #17
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_parse_functions_string(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !38 {
  %3 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.14) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %2, %75
  %6 = phi ptr [ %76, %75 ], [ %3, %2 ]
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 324, ptr noundef nonnull @.str.15) #17
  %9 = tail call fastcc ptr @gpu_str_skip_token(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #18
  %10 = tail call fastcc ptr @gpu_str_skip_token(ptr noundef %9, ptr noundef %8, i32 noundef 64) #18
  %11 = getelementptr inbounds %struct.GPUFunction, ptr %8, i64 0, i32 3
  br label %12

12:                                               ; preds = %49, %5
  %13 = phi ptr [ %10, %5 ], [ %52, %49 ]
  %14 = load i8, ptr %13, align 1, !tbaa !39
  switch i8 %14, label %15 [
    i8 0, label %64
    i8 41, label %64
  ]

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @gpu_str_prefix(ptr noundef nonnull %13, ptr noundef nonnull @.str.16) #18, !range !40
  %17 = tail call fastcc i32 @gpu_str_prefix(ptr noundef nonnull %13, ptr noundef nonnull @.str.17) #18, !range !40
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %16, i32 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @gpu_str_prefix(ptr noundef nonnull %13, ptr noundef nonnull @.str.18) #18, !range !40
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %15
  %25 = tail call fastcc ptr @gpu_str_skip_token(ptr noundef nonnull %13, ptr noundef null, i32 noundef 0) #18
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi ptr [ %25, %24 ], [ %13, %21 ]
  br label %28

28:                                               ; preds = %26, %38
  %29 = phi i64 [ 1, %26 ], [ %39, %38 ]
  %30 = lshr i64 64992, %29
  %31 = and i64 %30, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %29
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = tail call fastcc i32 @gpu_str_prefix(ptr noundef %27, ptr noundef %35) #18, !range !40
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28, %33
  %39 = add nuw nsw i64 %29, 1
  %40 = icmp eq i64 %39, 17
  br i1 %40, label %41, label %28, !llvm.loop !41

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @gpu_str_prefix(ptr noundef %27, ptr noundef nonnull @.str.19) #18, !range !40
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @gpu_str_prefix(ptr noundef %27, ptr noundef nonnull @.str.20) #18, !range !40
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %49

47:                                               ; preds = %33
  %48 = trunc i64 %29 to i32
  br label %49

49:                                               ; preds = %47, %41, %44
  %50 = phi i32 [ 1002, %44 ], [ 1003, %41 ], [ %48, %47 ]
  %51 = tail call fastcc ptr @gpu_str_skip_token(ptr noundef %27, ptr noundef null, i32 noundef 0) #18
  %52 = tail call fastcc ptr @gpu_str_skip_token(ptr noundef %51, ptr noundef null, i32 noundef 0) #18
  %53 = load i32, ptr %11, align 4, !tbaa !43
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.GPUFunction, ptr %8, i64 0, i32 2, i64 %54
  store i32 %19, ptr %55, align 4, !tbaa !46
  %56 = load i32, ptr %11, align 4, !tbaa !43
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.GPUFunction, ptr %8, i64 0, i32 1, i64 %57
  store i32 %50, ptr %58, align 4, !tbaa !46
  %59 = load i32, ptr %11, align 4, !tbaa !43
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %11, align 4, !tbaa !43
  br label %12, !llvm.loop !47

61:                                               ; preds = %44
  %62 = load ptr, ptr @stderr, align 8, !tbaa !34
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.21, ptr noundef %8) #20
  br label %64

64:                                               ; preds = %12, %12, %61
  %65 = phi ptr [ %27, %61 ], [ %13, %12 ], [ %13, %12 ]
  %66 = load i8, ptr %8, align 4, !tbaa !39
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %11, align 4, !tbaa !43
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %64
  %72 = load ptr, ptr @stderr, align 8, !tbaa !34
  %73 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 27, i64 1, ptr %72) #21
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %74(ptr noundef nonnull %8) #17
  br label %78

75:                                               ; preds = %68
  tail call void @BLI_ghash_insert(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %8) #17
  %76 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) @.str.14) #19
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %5, !llvm.loop !48

78:                                               ; preds = %75, %2, %71
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpu_codegen_init() local_unnamed_addr #0 {
  tail call void @GPU_code_generate_glsl_lib() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_code_generate_glsl_lib() local_unnamed_addr #0 {
  %1 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @BLI_dynstr_new() #17
  tail call void @BLI_dynstr_append(ptr noundef %4, ptr noundef nonnull @datatoc_gpu_shader_material_glsl) #17
  %5 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %4) #17
  store ptr %5, ptr @glsl_material_library, align 8, !tbaa !34
  tail call void @BLI_dynstr_free(ptr noundef %4) #17
  br label %6

6:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpu_codegen_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !49
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #17
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @FUNCTION_HASH, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void @BLI_ghash_free(ptr noundef nonnull %5, ptr noundef null, ptr noundef %8) #17
  store ptr null, ptr @FUNCTION_HASH, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %7, %4
  tail call void @GPU_shader_free_builtin_shaders() #17
  %10 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #17
  store ptr null, ptr @glsl_material_library, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: optsize
declare void @GPU_material_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_shader_free_builtin_shaders() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @GPU_builtin_name(i32 noundef %0) local_unnamed_addr #2 {
  switch i32 %0, label %9 [
    i32 1, label %10
    i32 2, label %2
    i32 4, label %3
    i32 8, label %4
    i32 16, label %5
    i32 32, label %6
    i32 64, label %7
    i32 128, label %8
  ]

2:                                                ; preds = %1
  br label %10

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9, %8, %7, %6, %5, %4, %3, %2
  %11 = phi ptr [ @.str.2, %2 ], [ @.str.3, %3 ], [ @.str.4, %4 ], [ @.str.5, %5 ], [ @.str.6, %6 ], [ @.str.7, %7 ], [ @.str.8, %8 ], [ @.str.9, %9 ], [ @.str.1, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_bicubic_bump_support() local_unnamed_addr #3 {
  %1 = load i8, ptr @__GLEW_ARB_texture_query_lod, align 1, !tbaa !39
  %2 = icmp ne i8 %1, 0
  %3 = load i8, ptr @__GLEW_VERSION_3_0, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GPU_pass_shader(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_pass_bind(ptr nocapture noundef readonly %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 2
  tail call void @GPU_shader_bind(ptr noundef nonnull %5) #17
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %7, %48
  %12 = phi ptr [ %49, %48 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !62
  %21 = trunc i32 %20 to i8
  %22 = tail call ptr @GPU_texture_from_blender(ptr noundef nonnull %14, ptr noundef %18, i8 noundef zeroext %21, double noundef %1, i32 noundef %2) #17
  %23 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 19
  store ptr %22, ptr %23, align 8, !tbaa !63
  br label %34

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  br label %34

31:                                               ; preds = %24
  %32 = tail call ptr @GPU_texture_from_preview(ptr noundef nonnull %26, i32 noundef %2) #17
  %33 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 19
  store ptr %32, ptr %33, align 8, !tbaa !63
  br label %34

34:                                               ; preds = %28, %31, %16
  %35 = phi ptr [ %30, %28 ], [ %32, %31 ], [ %22, %16 ]
  %36 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 19
  %37 = icmp eq ptr %35, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !65
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !66
  tail call void @GPU_texture_bind(ptr noundef nonnull %35, i32 noundef %44) #17
  %45 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 20
  %46 = load i32, ptr %45, align 8, !tbaa !67
  %47 = load ptr, ptr %36, align 8, !tbaa !63
  tail call void @GPU_shader_uniform_texture(ptr noundef nonnull %5, i32 noundef %46, ptr noundef %47) #17
  br label %48

48:                                               ; preds = %34, %38, %42
  %49 = load ptr, ptr %12, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %11, !llvm.loop !68

51:                                               ; preds = %48, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @GPU_shader_bind(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_texture_from_blender(ptr noundef, ptr noundef, i8 noundef zeroext, double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_texture_from_preview(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_texture_bind(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_shader_uniform_texture(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_pass_update_uniforms(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5, %29
  %10 = phi ptr [ %30, %29 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 20
  %24 = load i32, ptr %23, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  tail call void @GPU_shader_uniform_vector(ptr noundef nonnull %3, i32 noundef %24, i32 noundef %26, i32 noundef 1, ptr noundef %28) #17
  br label %29

29:                                               ; preds = %9, %14, %18, %22
  %30 = load ptr, ptr %10, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !71

32:                                               ; preds = %29, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @GPU_shader_uniform_vector(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_pass_unbind(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %5, %28
  %10 = phi ptr [ %29, %28 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !65
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @GPU_texture_unbind(ptr noundef nonnull %12) #17
  br label %19

19:                                               ; preds = %18, %14, %9
  %20 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %19
  store ptr null, ptr %11, align 8, !tbaa !63
  br label %28

28:                                               ; preds = %23, %27
  %29 = load ptr, ptr %10, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9, !llvm.loop !72

31:                                               ; preds = %28, %5
  tail call void @GPU_shader_unbind() #17
  br label %32

32:                                               ; preds = %1, %31
  ret void
}

; Function Attrs: optsize
declare void @GPU_texture_unbind(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_shader_unbind() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_attribute(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 1
  store i32 %0, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GPU_node_link_create(i32 noundef %0) unnamed_addr #0 !PGOFuncName !76 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 96, ptr noundef nonnull @.str.29) #17
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 11
  store i32 %0, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !78
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !78
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_uniform(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %3 = getelementptr inbounds %struct.GPUNodeLink, ptr %2, i64 0, i32 7
  store ptr %0, ptr %3, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %2, i64 0, i32 8
  store ptr null, ptr %4, align 8, !tbaa !80
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_dynamic_uniform(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 7
  store ptr %0, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 8
  store ptr %2, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 9
  store i32 1, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 10
  store i32 %1, ptr %8, align 4, !tbaa !82
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_image(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 3
  store i32 1, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 7
  store ptr %0, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 8
  store ptr %1, ptr %7, align 8, !tbaa !80
  %8 = zext i8 %2 to i32
  %9 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 4
  store i32 %8, ptr %9, align 4, !tbaa !84
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_image_preview(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %3 = getelementptr inbounds %struct.GPUNodeLink, ptr %2, i64 0, i32 3
  store i32 2, ptr %3, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %2, i64 0, i32 7
  store ptr %0, ptr %4, align 8, !tbaa !79
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_texture(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 5
  store i32 1, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 6
  store i32 %0, ptr %5, align 4, !tbaa !86
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 7
  store ptr %1, ptr %6, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_dynamic_texture(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 9
  store i32 1, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 13
  store ptr %0, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 10
  store i32 %1, ptr %7, align 4, !tbaa !82
  %8 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 8
  store ptr %2, ptr %8, align 8, !tbaa !80
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_builtin(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %3 = getelementptr inbounds %struct.GPUNodeLink, ptr %2, i64 0, i32 14
  store i32 %0, ptr %3, align 8, !tbaa !88
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GPU_opengl_builtin(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %3 = getelementptr inbounds %struct.GPUNodeLink, ptr %2, i64 0, i32 15
  store i32 %0, ptr %3, align 4, !tbaa !89
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @GPU_link(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = tail call ptr @GPU_lookup_function(ptr noundef %1) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !34
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef %1) #20
  br label %58

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @GPU_node_begin(ptr noundef %1) #18
  call void @llvm.va_start(ptr nonnull %3)
  %11 = getelementptr inbounds %struct.GPUFunction, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %52
  %18 = phi i64 [ 0, %14 ], [ %53, %52 ]
  %19 = getelementptr inbounds %struct.GPUFunction, ptr %4, i64 0, i32 2, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = icmp eq i32 %20, 0
  %22 = load i32, ptr %3, align 16
  %23 = icmp ult i32 %22, 41
  br i1 %21, label %38, label %24

24:                                               ; preds = %17
  br i1 %23, label %25, label %30

25:                                               ; preds = %24
  %26 = load ptr, ptr %16, align 16
  %27 = zext nneg i32 %22 to i64
  %28 = getelementptr i8, ptr %26, i64 %27
  %29 = add nuw nsw i32 %22, 8
  store i32 %29, ptr %3, align 16
  br label %33

30:                                               ; preds = %24
  %31 = load ptr, ptr %15, align 8
  %32 = getelementptr i8, ptr %31, i64 8
  store ptr %32, ptr %15, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %28, %25 ], [ %31, %30 ]
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.GPUFunction, ptr %4, i64 0, i32 1, i64 %18
  %37 = load i32, ptr %36, align 4, !tbaa !46
  call fastcc void @GPU_node_output(ptr noundef %10, i32 noundef %37, ptr noundef %35) #18
  br label %52

38:                                               ; preds = %17
  br i1 %23, label %39, label %44

39:                                               ; preds = %38
  %40 = load ptr, ptr %16, align 16
  %41 = zext nneg i32 %22 to i64
  %42 = getelementptr i8, ptr %40, i64 %41
  %43 = add nuw nsw i32 %22, 8
  store i32 %43, ptr %3, align 16
  br label %47

44:                                               ; preds = %38
  %45 = load ptr, ptr %15, align 8
  %46 = getelementptr i8, ptr %45, i64 8
  store ptr %46, ptr %15, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi ptr [ %42, %39 ], [ %45, %44 ]
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.GPUFunction, ptr %4, i64 0, i32 1, i64 %18
  %51 = load i32, ptr %50, align 4, !tbaa !46
  call fastcc void @gpu_node_input_link(ptr noundef %10, ptr noundef %49, i32 noundef %51) #18
  br label %52

52:                                               ; preds = %33, %47
  %53 = add nuw nsw i64 %18, 1
  %54 = load i32, ptr %11, align 4, !tbaa !43
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %17, label %57, !llvm.loop !90

57:                                               ; preds = %52, %9
  call void @llvm.va_end(ptr nonnull %3)
  call void @gpu_material_add_node(ptr noundef %0, ptr noundef %10) #17
  br label %58

58:                                               ; preds = %57, %6
  %59 = phi i8 [ 1, %57 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %59
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GPU_node_begin(ptr noundef %0) unnamed_addr #0 !PGOFuncName !91 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @.str.30) #17
  %4 = getelementptr inbounds %struct.GPUNode, ptr %3, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !92
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_node_output(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 !PGOFuncName !94 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 48, ptr noundef nonnull @.str.31) #17
  %6 = getelementptr inbounds %struct.GPUOutput, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.GPUOutput, ptr %5, i64 0, i32 2
  store ptr %0, ptr %7, align 8, !tbaa !97
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @GPU_node_link_create(i32 noundef %1) #18
  %11 = getelementptr inbounds %struct.GPUOutput, ptr %5, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !98
  store ptr %10, ptr %2, align 8, !tbaa !34
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.GPUNodeLink, ptr %12, i64 0, i32 16
  store ptr %5, ptr %13, align 8, !tbaa !99
  br label %14

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.GPUNode, ptr %0, i64 0, i32 5
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_node_input_link(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !100 {
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GPUOutput, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.GPUNode, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(8) @.str.12) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14, %7
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.GPUNode, ptr %9, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = tail call ptr %18(ptr noundef %20) #17
  %22 = getelementptr inbounds %struct.GPUInput, ptr %21, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.GPUInput, ptr %21, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = icmp eq ptr %24, null
  br i1 %25, label %151, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.GPUNodeLink, ptr %24, i64 0, i32 12
  %28 = load i32, ptr %27, align 4, !tbaa !78
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !78
  br label %151

30:                                               ; preds = %14, %3
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 296, ptr noundef nonnull @.str.32) #17
  %33 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 2
  store ptr %0, ptr %33, align 8, !tbaa !103
  %34 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 14
  %35 = load i32, ptr %34, align 8, !tbaa !88
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %38, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 1, ptr %39, align 4, !tbaa !104
  %40 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 28
  store i32 %35, ptr %40, align 4, !tbaa !105
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef nonnull %1) #17
  br label %151

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 15
  %44 = load i32, ptr %43, align 4, !tbaa !89
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %47, align 8, !tbaa !69
  %48 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 2, ptr %48, align 4, !tbaa !104
  %49 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 29
  store i32 %44, ptr %49, align 8, !tbaa !106
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %50(ptr noundef nonnull %1) #17
  br label %151

51:                                               ; preds = %42
  %52 = load ptr, ptr %4, align 8, !tbaa !99
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %55, align 8, !tbaa !69
  %56 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 3, ptr %56, align 4, !tbaa !104
  %57 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 23
  store ptr %1, ptr %57, align 8, !tbaa !102
  %58 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 12
  %59 = load i32, ptr %58, align 4, !tbaa !78
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %58, align 4, !tbaa !78
  br label %151

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !87
  %64 = icmp eq ptr %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %66, align 8, !tbaa !69
  %67 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 4, ptr %67, align 4, !tbaa !104
  %68 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 19
  store ptr %63, ptr %68, align 8, !tbaa !63
  %69 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 10
  store i32 3553, ptr %69, align 4, !tbaa !107
  %70 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 11
  store i32 %2, ptr %70, align 8, !tbaa !108
  %71 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 24
  store i32 1, ptr %71, align 8, !tbaa !109
  %72 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !80
  %74 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 18
  store ptr %73, ptr %74, align 8, !tbaa !110
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %75(ptr noundef nonnull %1) #17
  br label %151

76:                                               ; preds = %61
  %77 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !85
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 4, ptr %81, align 8, !tbaa !69
  %82 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 4, ptr %82, align 4, !tbaa !104
  %83 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 11
  store i32 %2, ptr %83, align 8, !tbaa !108
  %84 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 6
  %85 = load i32, ptr %84, align 4, !tbaa !86
  %86 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !79
  %88 = tail call ptr @GPU_texture_create_2D(i32 noundef %85, i32 noundef 1, ptr noundef %87, ptr noundef null) #17
  %89 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 19
  store ptr %88, ptr %89, align 8, !tbaa !63
  %90 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 10
  store i32 3553, ptr %90, align 4, !tbaa !107
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %92 = load ptr, ptr %86, align 8, !tbaa !79
  tail call void %91(ptr noundef %92) #17
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %93(ptr noundef nonnull %1) #17
  br label %151

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !83
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 4, ptr %99, align 8, !tbaa !69
  %100 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 4, ptr %100, align 4, !tbaa !104
  %101 = icmp eq i32 %96, 2
  %102 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !79
  br i1 %101, label %104, label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 14
  store ptr %103, ptr %105, align 8, !tbaa !64
  br label %114

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 12
  store ptr %103, ptr %107, align 8, !tbaa !59
  %108 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !80
  %110 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 13
  store ptr %109, ptr %110, align 8, !tbaa !61
  %111 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 4
  %112 = load i32, ptr %111, align 4, !tbaa !84
  %113 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 15
  store i32 %112, ptr %113, align 8, !tbaa !62
  br label %114

114:                                              ; preds = %106, %104
  %115 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 10
  store i32 3553, ptr %115, align 4, !tbaa !107
  %116 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 11
  store i32 1002, ptr %116, align 8, !tbaa !108
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %117(ptr noundef nonnull %1) #17
  br label %151

118:                                              ; preds = %94
  %119 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !73
  %121 = icmp eq i32 %120, 0
  %122 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %122, align 8, !tbaa !69
  %123 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  br i1 %121, label %131, label %124

124:                                              ; preds = %118
  store i32 5, ptr %123, align 4, !tbaa !104
  %125 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 25
  store i32 %120, ptr %125, align 4, !tbaa !111
  %126 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 26
  %127 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !75
  %129 = tail call ptr @BLI_strncpy(ptr noundef nonnull %126, ptr noundef %128, i64 noundef 32) #17
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %130(ptr noundef nonnull %1) #17
  br label %151

131:                                              ; preds = %118
  store i32 0, ptr %123, align 4, !tbaa !104
  %132 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 22
  %133 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !79
  %135 = sext i32 %2 to i64
  %136 = shl nsw i64 %135, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %132, ptr align 1 %134, i64 %136, i1 false)
  %137 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !81
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %131
  %141 = load ptr, ptr %133, align 8, !tbaa !79
  %142 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 16
  store ptr %141, ptr %142, align 8, !tbaa !70
  %143 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 10
  %144 = load i32, ptr %143, align 4, !tbaa !82
  %145 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 17
  store i32 %144, ptr %145, align 8, !tbaa !112
  %146 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 8
  %147 = load ptr, ptr %146, align 8, !tbaa !80
  %148 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 18
  store ptr %147, ptr %148, align 8, !tbaa !110
  br label %149

149:                                              ; preds = %140, %131
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %150(ptr noundef nonnull %1) #17
  br label %151

151:                                              ; preds = %37, %54, %80, %124, %149, %114, %65, %46, %17, %26
  %152 = phi ptr [ %21, %26 ], [ %21, %17 ], [ %32, %46 ], [ %32, %65 ], [ %32, %114 ], [ %32, %149 ], [ %32, %124 ], [ %32, %80 ], [ %32, %54 ], [ %32, %37 ]
  %153 = getelementptr inbounds %struct.GPUNode, ptr %0, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %153, ptr noundef nonnull %152) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: optsize
declare void @gpu_material_add_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @GPU_stack_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %6 = tail call ptr @GPU_lookup_function(ptr noundef %1) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !34
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %1) #20
  br label %109

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @GPU_node_begin(ptr noundef %1) #18
  %13 = icmp eq ptr %2, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 8, !tbaa !113
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ %20, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %21, %17 ], [ %2, %14 ]
  tail call fastcc void @gpu_node_input_socket(ptr noundef %12, ptr noundef nonnull %19) #18
  %20 = add nuw i64 %18, 1
  %21 = getelementptr inbounds %struct.GPUNodeStack, ptr %2, i64 %20
  %22 = load i32, ptr %21, align 8, !tbaa !113
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17, !llvm.loop !115

24:                                               ; preds = %17
  %25 = trunc i64 %20 to i32
  br label %26

26:                                               ; preds = %24, %14, %11
  %27 = phi i32 [ 0, %11 ], [ 0, %14 ], [ %25, %24 ]
  %28 = icmp eq ptr %3, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %3, align 8, !tbaa !113
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %36, %32 ], [ 0, %29 ]
  %34 = phi i32 [ %38, %32 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 %33, i32 3
  tail call fastcc void @GPU_node_output(ptr noundef %12, i32 noundef %34, ptr noundef nonnull %35) #18
  %36 = add nuw i64 %33, 1
  %37 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 %36
  %38 = load i32, ptr %37, align 8, !tbaa !113
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %32, !llvm.loop !116

40:                                               ; preds = %32
  %41 = trunc i64 %36 to i32
  br label %42

42:                                               ; preds = %40, %29, %26
  %43 = phi i32 [ 0, %26 ], [ 0, %29 ], [ %41, %40 ]
  call void @llvm.va_start(ptr nonnull %5)
  %44 = getelementptr inbounds %struct.GPUFunction, ptr %6, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !43
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %108

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %49 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  br label %50

50:                                               ; preds = %47, %101
  %51 = phi i64 [ 0, %47 ], [ %104, %101 ]
  %52 = phi i32 [ %43, %47 ], [ %103, %101 ]
  %53 = phi i32 [ %27, %47 ], [ %102, %101 ]
  %54 = getelementptr inbounds %struct.GPUFunction, ptr %6, i64 0, i32 2, i64 %51
  %55 = load i32, ptr %54, align 4, !tbaa !46
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %50
  %58 = icmp eq i32 %52, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %57
  %60 = load i32, ptr %5, align 16
  %61 = icmp ult i32 %60, 41
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load ptr, ptr %49, align 16
  %64 = zext nneg i32 %60 to i64
  %65 = getelementptr i8, ptr %63, i64 %64
  %66 = add nuw nsw i32 %60, 8
  store i32 %66, ptr %5, align 16
  br label %70

67:                                               ; preds = %59
  %68 = load ptr, ptr %48, align 8
  %69 = getelementptr i8, ptr %68, i64 8
  store ptr %69, ptr %48, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi ptr [ %65, %62 ], [ %68, %67 ]
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.GPUFunction, ptr %6, i64 0, i32 1, i64 %51
  %74 = load i32, ptr %73, align 4, !tbaa !46
  call fastcc void @GPU_node_output(ptr noundef %12, i32 noundef %74, ptr noundef %72) #18
  br label %101

75:                                               ; preds = %57
  %76 = add nsw i32 %52, -1
  br label %101

77:                                               ; preds = %50
  %78 = icmp eq i32 %53, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %77
  %80 = load i32, ptr %5, align 16
  %81 = icmp ult i32 %80, 41
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load ptr, ptr %49, align 16
  %84 = zext nneg i32 %80 to i64
  %85 = getelementptr i8, ptr %83, i64 %84
  %86 = add nuw nsw i32 %80, 8
  store i32 %86, ptr %5, align 16
  br label %90

87:                                               ; preds = %79
  %88 = load ptr, ptr %48, align 8
  %89 = getelementptr i8, ptr %88, i64 8
  store ptr %89, ptr %48, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = phi ptr [ %85, %82 ], [ %88, %87 ]
  %92 = load ptr, ptr %91, align 8
  %93 = load ptr, ptr %92, align 8, !tbaa !117
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  call fastcc void @gpu_node_input_socket(ptr noundef %12, ptr noundef nonnull %93) #18
  br label %101

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.GPUFunction, ptr %6, i64 0, i32 1, i64 %51
  %98 = load i32, ptr %97, align 4, !tbaa !46
  call fastcc void @gpu_node_input_link(ptr noundef %12, ptr noundef nonnull %92, i32 noundef %98) #18
  br label %101

99:                                               ; preds = %77
  %100 = add nsw i32 %53, -1
  br label %101

101:                                              ; preds = %75, %70, %95, %96, %99
  %102 = phi i32 [ %53, %70 ], [ %53, %75 ], [ 0, %95 ], [ 0, %96 ], [ %100, %99 ]
  %103 = phi i32 [ 0, %70 ], [ %76, %75 ], [ %52, %95 ], [ %52, %96 ], [ %52, %99 ]
  %104 = add nuw nsw i64 %51, 1
  %105 = load i32, ptr %44, align 4, !tbaa !43
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %50, label %108, !llvm.loop !118

108:                                              ; preds = %101, %42
  call void @llvm.va_end(ptr nonnull %5)
  call void @gpu_material_add_node(ptr noundef %0, ptr noundef %12) #17
  br label %109

109:                                              ; preds = %108, %8
  %110 = phi i8 [ 1, %108 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret i8 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_node_input_socket(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !113
  tail call fastcc void @gpu_node_input_link(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %7) #18
  br label %13

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @GPU_node_link_create(i32 noundef 0) #18
  %10 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct.GPUNodeLink, ptr %9, i64 0, i32 7
  store ptr %10, ptr %11, align 8, !tbaa !79
  %12 = load i32, ptr %1, align 8, !tbaa !113
  tail call fastcc void @gpu_node_input_link(ptr noundef %0, ptr noundef %9, i32 noundef %12) #18
  br label %13

13:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_link_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.GPUNodeLink, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUOutput, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(10) @.str.11) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(8) @.str.12) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.GPUInput, ptr %17, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %1, %12, %15
  %23 = phi i32 [ %21, %15 ], [ 1, %12 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GPU_generate_pass(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  tail call fastcc void @gpu_nodes_prune(ptr noundef %0, ptr noundef %1) #18
  tail call fastcc void @gpu_nodes_get_vertex_attributes(ptr noundef %0, ptr noundef %2) #18
  tail call fastcc void @gpu_nodes_get_builtin_flag(ptr noundef %0, ptr noundef %3) #18
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = tail call fastcc ptr @code_generate_fragment(ptr noundef %0, ptr noundef %7) #18
  %9 = tail call fastcc ptr @code_generate_vertex(ptr noundef %0) #18
  %10 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %11 = tail call ptr @GPU_shader_create(ptr noundef %9, ptr noundef %8, ptr noundef %10, ptr noundef null) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = icmp eq ptr %8, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %8) #17
  br label %17

17:                                               ; preds = %15, %13
  %18 = icmp eq ptr %9, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %9) #17
  br label %21

21:                                               ; preds = %19, %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %2, i8 0, i64 2564, i1 false)
  store i32 0, ptr %3, align 4
  br label %32

22:                                               ; preds = %5
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 72, ptr noundef nonnull @.str.13) #17
  %25 = load ptr, ptr %6, align 8, !tbaa !99
  %26 = getelementptr inbounds %struct.GPUPass, ptr %24, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !121
  %27 = getelementptr inbounds %struct.GPUPass, ptr %24, i64 0, i32 4
  store ptr %11, ptr %27, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.GPUPass, ptr %24, i64 0, i32 5
  store ptr %8, ptr %28, align 8, !tbaa !122
  %29 = getelementptr inbounds %struct.GPUPass, ptr %24, i64 0, i32 6
  store ptr %9, ptr %29, align 8, !tbaa !123
  %30 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.GPUPass, ptr %24, i64 0, i32 7
  store ptr %30, ptr %31, align 8, !tbaa !124
  tail call fastcc void @GPU_nodes_extract_dynamic_inputs(ptr noundef %24, ptr noundef %0) #18
  br label %32

32:                                               ; preds = %22, %21
  %33 = phi ptr [ %24, %22 ], [ null, %21 ]
  tail call fastcc void @GPU_nodes_free(ptr noundef %0) #18
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_nodes_prune(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !125 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.GPUNode, ptr %6, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !126
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !127

10:                                               ; preds = %5, %2
  tail call fastcc void @gpu_nodes_tag(ptr noundef %1) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !128
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %20
  %14 = phi ptr [ %15, %20 ], [ %11, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = getelementptr inbounds %struct.GPUNode, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !126
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %14) #17
  tail call fastcc void @GPU_node_free(ptr noundef nonnull %14) #18
  br label %20

20:                                               ; preds = %13, %19
  %21 = icmp eq ptr %15, null
  br i1 %21, label %22, label %13, !llvm.loop !130

22:                                               ; preds = %20, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_nodes_get_vertex_attributes(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !131 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %1, i8 0, i64 2564, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %68, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.GPUVertexAttribs, ptr %1, i64 0, i32 1
  br label %10

7:                                                ; preds = %65, %10
  %8 = load ptr, ptr %11, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %68, label %10, !llvm.loop !132

10:                                               ; preds = %5, %7
  %11 = phi ptr [ %3, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.GPUNode, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %15

15:                                               ; preds = %10, %65
  %16 = phi ptr [ %66, %65 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !104
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %65

20:                                               ; preds = %15
  %21 = load i32, ptr %6, align 4, !tbaa !133
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 25
  %25 = load i32, ptr %24, align 4, !tbaa !111
  %26 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 26
  %27 = zext nneg i32 %21 to i64
  br label %28

28:                                               ; preds = %23, %37
  %29 = phi i64 [ 0, %23 ], [ %38, %37 ]
  %30 = getelementptr inbounds [32 x %struct.anon], ptr %1, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !135
  %32 = icmp eq i32 %31, %25
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds [32 x %struct.anon], ptr %1, i64 0, i64 %29, i32 4
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %26) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28, %33
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, %27
  br i1 %39, label %42, label %28, !llvm.loop !137

40:                                               ; preds = %33
  %41 = trunc i64 %29 to i32
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi i32 [ %41, %40 ], [ %21, %37 ]
  %44 = icmp ult i32 %43, 32
  br i1 %44, label %45, label %65

45:                                               ; preds = %20, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %20 ]
  %47 = icmp eq i32 %46, %21
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = add nuw nsw i32 %21, 1
  store i32 %49, ptr %6, align 4, !tbaa !133
  %50 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 7
  store i32 %21, ptr %50, align 8, !tbaa !138
  %51 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 27
  store i32 1, ptr %51, align 8, !tbaa !139
  %52 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 25
  %53 = load i32, ptr %52, align 4, !tbaa !111
  %54 = zext nneg i32 %21 to i64
  %55 = getelementptr inbounds [32 x %struct.anon], ptr %1, i64 0, i64 %54
  store i32 %53, ptr %55, align 4, !tbaa !135
  %56 = getelementptr inbounds [32 x %struct.anon], ptr %1, i64 0, i64 %54, i32 3
  store i32 %21, ptr %56, align 4, !tbaa !140
  %57 = getelementptr inbounds [32 x %struct.anon], ptr %1, i64 0, i64 %54, i32 4
  %58 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 26
  %59 = tail call ptr @BLI_strncpy(ptr noundef nonnull %57, ptr noundef nonnull %58, i64 noundef 64) #17
  br label %65

60:                                               ; preds = %45
  %61 = zext nneg i32 %46 to i64
  %62 = getelementptr inbounds [32 x %struct.anon], ptr %1, i64 0, i64 %61, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !140
  %64 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 7
  store i32 %63, ptr %64, align 8, !tbaa !138
  br label %65

65:                                               ; preds = %15, %48, %60, %42
  %66 = load ptr, ptr %16, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %7, label %15, !llvm.loop !141

68:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_nodes_get_builtin_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !PGOFuncName !142 {
  store i32 0, ptr %1, align 4, !tbaa !46
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %9

5:                                                ; preds = %25, %9
  %6 = phi i32 [ %10, %9 ], [ %26, %25 ]
  %7 = load ptr, ptr %11, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9, !llvm.loop !143

9:                                                ; preds = %2, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %11 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %12 = getelementptr inbounds %struct.GPUNode, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %5, label %15

15:                                               ; preds = %9, %25
  %16 = phi i32 [ %26, %25 ], [ %10, %9 ]
  %17 = phi ptr [ %27, %25 ], [ %13, %9 ]
  %18 = getelementptr inbounds %struct.GPUInput, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !104
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.GPUInput, ptr %17, i64 0, i32 28
  %23 = load i32, ptr %22, align 4, !tbaa !105
  %24 = or i32 %16, %23
  store i32 %24, ptr %1, align 4, !tbaa !46
  br label %25

25:                                               ; preds = %15, %21
  %26 = phi i32 [ %16, %15 ], [ %24, %21 ]
  %27 = load ptr, ptr %17, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %5, label %15, !llvm.loop !144

29:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @code_generate_fragment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !145 {
  %3 = tail call ptr @BLI_dynstr_new() #17
  tail call fastcc void @codegen_set_unique_ids(ptr noundef %0) #18
  %4 = tail call fastcc i32 @codegen_print_uniforms_functions(ptr noundef %3, ptr noundef %0) #18
  tail call void @BLI_dynstr_append(ptr noundef %3, ptr noundef nonnull @.str.34) #17
  tail call void @BLI_dynstr_append(ptr noundef %3, ptr noundef nonnull @.str.35) #17
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @BLI_dynstr_append(ptr noundef %3, ptr noundef nonnull @.str.36) #17
  br label %8

8:                                                ; preds = %7, %2
  tail call fastcc void @codegen_declare_tmps(ptr noundef %3, ptr noundef %0) #18
  tail call fastcc void @codegen_call_functions(ptr noundef %3, ptr noundef %0, ptr noundef %1) #18
  tail call void @BLI_dynstr_append(ptr noundef %3, ptr noundef nonnull @.str.37) #17
  %9 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %3) #17
  tail call void @BLI_dynstr_free(ptr noundef %3) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @code_generate_vertex(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !146 {
  %2 = tail call ptr @BLI_dynstr_new() #17
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %8

5:                                                ; preds = %35, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8, !llvm.loop !147

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.GPUNode, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %35
  %14 = phi ptr [ %36, %35 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !104
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 27
  %20 = load i32, ptr %19, align 8, !tbaa !139
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !69
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !138
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull @.str.82, ptr noundef %27, i32 noundef %29) #17
  %30 = load i32, ptr %23, align 8, !tbaa !69
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = load i32, ptr %28, align 8, !tbaa !138
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull @.str.47, ptr noundef %33, i32 noundef %34) #17
  br label %35

35:                                               ; preds = %13, %18, %22
  %36 = load ptr, ptr %14, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %5, label %13, !llvm.loop !148

38:                                               ; preds = %5, %1
  tail call void @BLI_dynstr_append(ptr noundef %2, ptr noundef nonnull @.str.48) #17
  tail call void @BLI_dynstr_append(ptr noundef %2, ptr noundef nonnull @datatoc_gpu_shader_vertex_glsl) #17
  %39 = load ptr, ptr %0, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %74, label %44

41:                                               ; preds = %71, %44
  %42 = load ptr, ptr %45, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %74, label %44, !llvm.loop !149

44:                                               ; preds = %38, %41
  %45 = phi ptr [ %42, %41 ], [ %39, %38 ]
  %46 = getelementptr inbounds %struct.GPUNode, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %41, label %49

49:                                               ; preds = %44, %71
  %50 = phi ptr [ %72, %71 ], [ %47, %44 ]
  %51 = getelementptr inbounds %struct.GPUInput, ptr %50, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !104
  switch i32 %52, label %71 [
    i32 5, label %53
    i32 2, label %66
  ]

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.GPUInput, ptr %50, i64 0, i32 27
  %55 = load i32, ptr %54, align 8, !tbaa !139
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.GPUInput, ptr %50, i64 0, i32 25
  %59 = load i32, ptr %58, align 4, !tbaa !111
  %60 = icmp eq i32 %59, 18
  %61 = getelementptr inbounds %struct.GPUInput, ptr %50, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !138
  br i1 %60, label %63, label %65

63:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull @.str.83, i32 noundef %62, i32 noundef %62) #17
  %64 = load i32, ptr %61, align 8, !tbaa !138
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef %64, i32 noundef %64) #17
  br label %71

65:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull @.str.85, i32 noundef %62, i32 noundef %62) #17
  br label %71

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.GPUInput, ptr %50, i64 0, i32 29
  %68 = load i32, ptr %67, align 8, !tbaa !106
  switch i32 %68, label %71 [
    i32 1, label %69
    i32 2, label %70
  ]

69:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull @.str.86) #17
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull @.str.87) #17
  br label %71

70:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull @.str.88) #17
  br label %71

71:                                               ; preds = %49, %53, %66, %65, %63, %69, %70
  %72 = load ptr, ptr %50, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %41, label %49, !llvm.loop !150

74:                                               ; preds = %41, %38
  tail call void @BLI_dynstr_append(ptr noundef %2, ptr noundef nonnull @.str.89) #17
  %75 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %2) #17
  tail call void @BLI_dynstr_free(ptr noundef %2) #17
  ret ptr %75
}

; Function Attrs: optsize
declare ptr @GPU_shader_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_nodes_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !151 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @GPU_node_free(ptr noundef nonnull %5) #18
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !152

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_nodes_extract_dynamic_inputs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = icmp eq ptr %4, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  tail call void @GPU_shader_bind(ptr noundef nonnull %4) #17
  %8 = load ptr, ptr %1, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %70, label %13

10:                                               ; preds = %68, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %70, label %13, !llvm.loop !154

13:                                               ; preds = %7, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct.GPUNode, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %68
  %19 = phi ptr [ %20, %68 ], [ %16, %13 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !104
  switch i32 %22, label %23 [
    i32 5, label %68
    i32 1, label %68
    i32 2, label %68
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %27, %23
  %36 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 21
  %37 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !66
  %39 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %36, i64 noundef 32, ptr noundef nonnull @.str.57, i32 noundef %38) #17
  br label %45

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 21
  %42 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !156
  %44 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %41, i64 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %43) #17
  br label %45

45:                                               ; preds = %40, %35
  %46 = load ptr, ptr %24, align 8, !tbaa !59
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 14
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %48, %45
  %57 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 8
  %58 = load i32, ptr %57, align 4, !tbaa !65
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %64

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 16
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %56, %60
  %65 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 21
  %66 = tail call i32 @GPU_shader_get_uniform(ptr noundef nonnull %4, ptr noundef nonnull %65) #17
  %67 = getelementptr inbounds %struct.GPUInput, ptr %19, i64 0, i32 20
  store i32 %66, ptr %67, align 8, !tbaa !67
  tail call void @BLI_remlink(ptr noundef nonnull %15, ptr noundef nonnull %19) #17
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef nonnull %19) #17
  br label %68

68:                                               ; preds = %56, %60, %18, %18, %18, %64
  %69 = icmp eq ptr %20, null
  br i1 %69, label %10, label %18, !llvm.loop !157

70:                                               ; preds = %10, %7
  tail call void @GPU_shader_unbind() #17
  br label %71

71:                                               ; preds = %2, %70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_pass_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  tail call void @GPU_shader_free(ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 2
  tail call fastcc void @GPU_inputs_free(ptr noundef nonnull %4) #18
  %5 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %6) #17
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #17
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: optsize
declare void @GPU_shader_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_inputs_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !158 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1, %19
  %5 = phi ptr [ %20, %19 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.GPUInput, ptr %5, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @GPU_node_link_free(ptr noundef nonnull %7) #18
  br label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.GPUInput, ptr %5, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.GPUInput, ptr %5, i64 0, i32 24
  %16 = load i32, ptr %15, align 8, !tbaa !109
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @GPU_texture_free(ptr noundef nonnull %12) #17
  br label %19

19:                                               ; preds = %9, %18, %14, %10
  %20 = load ptr, ptr %5, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %4, !llvm.loop !159

22:                                               ; preds = %19, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @gpu_str_skip_token(ptr noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #12 !PGOFuncName !160 {
  %4 = add nsw i32 %2, -1
  br label %5

5:                                                ; preds = %17, %3
  %6 = phi ptr [ %1, %3 ], [ %18, %17 ]
  %7 = phi ptr [ %0, %3 ], [ %20, %17 ]
  %8 = phi i32 [ 0, %3 ], [ %19, %17 ]
  %9 = load i8, ptr %7, align 1, !tbaa !39
  switch i8 %9, label %10 [
    i8 0, label %21
    i8 32, label %21
    i8 40, label %21
    i8 41, label %21
    i8 44, label %21
    i8 9, label %21
    i8 10, label %21
    i8 13, label %21
  ]

10:                                               ; preds = %5
  %11 = icmp eq ptr %6, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = icmp slt i32 %8, %4
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  store i8 %9, ptr %6, align 1, !tbaa !39
  %15 = getelementptr inbounds i8, ptr %6, i64 1
  %16 = add nsw i32 %8, 1
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = phi ptr [ %15, %14 ], [ %6, %12 ], [ null, %10 ]
  %19 = phi i32 [ %16, %14 ], [ %8, %12 ], [ %8, %10 ]
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  br label %5, !llvm.loop !161

21:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5
  %22 = icmp eq ptr %6, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  store i8 0, ptr %6, align 1, !tbaa !39
  br label %24

24:                                               ; preds = %23, %21
  br label %25

25:                                               ; preds = %24, %28
  %26 = phi ptr [ %29, %28 ], [ %7, %24 ]
  %27 = load i8, ptr %26, align 1, !tbaa !39
  switch i8 %27, label %30 [
    i8 13, label %28
    i8 32, label %28
    i8 40, label %28
    i8 44, label %28
    i8 9, label %28
    i8 10, label %28
  ]

28:                                               ; preds = %25, %25, %25, %25, %25, %25
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  br label %25, !llvm.loop !162

30:                                               ; preds = %25
  ret ptr %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @gpu_str_prefix(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !163 {
  %3 = load i8, ptr %0, align 1, !tbaa !39
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %13
  %6 = phi i8 [ %16, %13 ], [ %3, %2 ]
  %7 = phi ptr [ %15, %13 ], [ %1, %2 ]
  %8 = phi ptr [ %14, %13 ], [ %0, %2 ]
  %9 = load i8, ptr %7, align 1, !tbaa !39
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = icmp eq i8 %6, %9
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %8, i64 1
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  %16 = load i8, ptr %14, align 1, !tbaa !39
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %5, !llvm.loop !164

18:                                               ; preds = %5, %13, %2
  %19 = phi ptr [ %1, %2 ], [ %15, %13 ], [ %7, %5 ]
  %20 = load i8, ptr %19, align 1, !tbaa !39
  %21 = icmp eq i8 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %22, %18 ], [ 0, %11 ]
  ret i32 %24
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_texture_create_2D(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_nodes_tag(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.GPUNodeLink, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUOutput, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  store i32 1, ptr %8, align 8, !tbaa !126
  %12 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11, %21
  %16 = phi ptr [ %22, %21 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call fastcc void @gpu_nodes_tag(ptr noundef nonnull %18) #18
  br label %21

21:                                               ; preds = %15, %20
  %22 = load ptr, ptr %16, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !166

24:                                               ; preds = %21, %11, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_node_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !167 {
  %2 = getelementptr inbounds %struct.GPUNode, ptr %0, i64 0, i32 4
  tail call fastcc void @GPU_inputs_free(ptr noundef nonnull %2) #18
  %3 = getelementptr inbounds %struct.GPUNode, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1, %13
  %7 = phi ptr [ %14, %13 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.GPUOutput, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.GPUNodeLink, ptr %9, i64 0, i32 16
  store ptr null, ptr %12, align 8, !tbaa !99
  tail call fastcc void @GPU_node_link_free(ptr noundef nonnull %9) #18
  br label %13

13:                                               ; preds = %6, %11
  %14 = load ptr, ptr %7, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !llvm.loop !168

16:                                               ; preds = %13, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #17
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GPU_node_link_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !169 {
  %2 = getelementptr inbounds %struct.GPUNodeLink, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !78
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %2, align 4, !tbaa !78
  %5 = icmp slt i32 %3, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr @stderr, align 8, !tbaa !34
  %8 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 38, i64 1, ptr %7) #21
  %9 = load i32, ptr %2, align 4, !tbaa !78
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %4, %1 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.GPUNodeLink, ptr %0, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.GPUOutput, ptr %15, i64 0, i32 4
  store ptr null, ptr %18, align 8, !tbaa !98
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %0) #17
  br label %21

21:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @codegen_set_unique_ids(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !170 {
  %2 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.38) #17
  %3 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.39) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %145, label %10

6:                                                ; preds = %138, %132
  %7 = phi i32 [ %133, %132 ], [ %141, %138 ]
  %8 = load ptr, ptr %11, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %145, label %10, !llvm.loop !171

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %12 = phi i32 [ %134, %6 ], [ 0, %1 ]
  %13 = phi i32 [ %7, %6 ], [ 1, %1 ]
  %14 = getelementptr inbounds %struct.GPUNode, ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %132, label %17

17:                                               ; preds = %10, %128
  %18 = phi ptr [ %130, %128 ], [ %15, %10 ]
  %19 = phi i32 [ %129, %128 ], [ %12, %10 ]
  %20 = phi i32 [ %21, %128 ], [ %13, %10 ]
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 5
  store i32 %20, ptr %22, align 8, !tbaa !156
  %23 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 8
  store i32 0, ptr %23, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 9
  store i32 0, ptr %24, align 8, !tbaa !172
  %25 = tail call fastcc i32 @codegen_input_has_texture(ptr noundef nonnull %18) #18, !range !40
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %128, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !104
  %30 = add i32 %29, -3
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %128

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 23
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %2, ptr noundef nonnull %34) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = add nsw i32 %19, 1
  %41 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  store i32 %19, ptr %41, align 4, !tbaa !66
  store i32 1, ptr %23, align 4, !tbaa !65
  %42 = load ptr, ptr %33, align 8, !tbaa !102
  %43 = sext i32 %19 to i64
  %44 = inttoptr i64 %43 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef %42, ptr noundef %44) #17
  br label %106

45:                                               ; preds = %36
  %46 = load ptr, ptr %33, align 8, !tbaa !102
  %47 = tail call ptr @BLI_ghash_lookup(ptr noundef %2, ptr noundef %46) #17
  %48 = ptrtoint ptr %47 to i64
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  store i32 %49, ptr %50, align 4, !tbaa !66
  br label %106

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  %56 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %2, ptr noundef nonnull %53) #17
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = add nsw i32 %19, 1
  %60 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  store i32 %19, ptr %60, align 4, !tbaa !66
  store i32 1, ptr %23, align 4, !tbaa !65
  %61 = load ptr, ptr %52, align 8, !tbaa !59
  %62 = sext i32 %19 to i64
  %63 = inttoptr i64 %62 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef %61, ptr noundef %63) #17
  br label %106

64:                                               ; preds = %55
  %65 = load ptr, ptr %52, align 8, !tbaa !59
  %66 = tail call ptr @BLI_ghash_lookup(ptr noundef %2, ptr noundef %65) #17
  %67 = ptrtoint ptr %66 to i64
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  store i32 %68, ptr %69, align 4, !tbaa !66
  br label %106

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 14
  %72 = load ptr, ptr %71, align 8, !tbaa !64
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %2, ptr noundef nonnull %72) #17
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = add nsw i32 %19, 1
  %79 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  store i32 %19, ptr %79, align 4, !tbaa !66
  store i32 1, ptr %23, align 4, !tbaa !65
  %80 = load ptr, ptr %71, align 8, !tbaa !64
  %81 = sext i32 %19 to i64
  %82 = inttoptr i64 %81 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef %80, ptr noundef %82) #17
  br label %106

83:                                               ; preds = %74
  %84 = load ptr, ptr %71, align 8, !tbaa !64
  %85 = tail call ptr @BLI_ghash_lookup(ptr noundef %2, ptr noundef %84) #17
  %86 = ptrtoint ptr %85 to i64
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  store i32 %87, ptr %88, align 4, !tbaa !66
  br label %106

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 19
  %91 = load ptr, ptr %90, align 8, !tbaa !63
  %92 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %2, ptr noundef %91) #17
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = add nsw i32 %19, 1
  %96 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  store i32 %19, ptr %96, align 4, !tbaa !66
  store i32 1, ptr %23, align 4, !tbaa !65
  %97 = load ptr, ptr %90, align 8, !tbaa !63
  %98 = sext i32 %19 to i64
  %99 = inttoptr i64 %98 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef %97, ptr noundef %99) #17
  br label %106

100:                                              ; preds = %89
  %101 = load ptr, ptr %90, align 8, !tbaa !63
  %102 = tail call ptr @BLI_ghash_lookup(ptr noundef %2, ptr noundef %101) #17
  %103 = ptrtoint ptr %102 to i64
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  store i32 %104, ptr %105, align 4, !tbaa !66
  br label %106

106:                                              ; preds = %64, %58, %94, %100, %77, %83, %39, %45
  %107 = phi i32 [ %19, %45 ], [ %40, %39 ], [ %19, %64 ], [ %59, %58 ], [ %19, %83 ], [ %78, %77 ], [ %19, %100 ], [ %95, %94 ]
  %108 = load i32, ptr %28, align 4, !tbaa !104
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 12
  %112 = load ptr, ptr %111, align 8, !tbaa !59
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %3, ptr noundef nonnull %112) #17
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %121, label %128

117:                                              ; preds = %110
  %118 = load ptr, ptr %33, align 8, !tbaa !102
  %119 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %3, ptr noundef %118) #17
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117, %114
  %122 = phi ptr [ %111, %114 ], [ %33, %117 ]
  store i32 1, ptr %24, align 8, !tbaa !172
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = getelementptr inbounds %struct.GPUInput, ptr %18, i64 0, i32 6
  %125 = load i32, ptr %124, align 4, !tbaa !66
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %3, ptr noundef %123, ptr noundef %127) #17
  br label %128

128:                                              ; preds = %121, %27, %17, %114, %117, %106
  %129 = phi i32 [ %107, %114 ], [ %107, %117 ], [ %107, %106 ], [ %19, %17 ], [ %19, %27 ], [ %107, %121 ]
  %130 = load ptr, ptr %18, align 8, !tbaa !34
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %17, !llvm.loop !173

132:                                              ; preds = %128, %10
  %133 = phi i32 [ %13, %10 ], [ %21, %128 ]
  %134 = phi i32 [ %12, %10 ], [ %129, %128 ]
  %135 = getelementptr inbounds %struct.GPUNode, ptr %11, i64 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !34
  %137 = icmp eq ptr %136, null
  br i1 %137, label %6, label %138

138:                                              ; preds = %132, %138
  %139 = phi ptr [ %143, %138 ], [ %136, %132 ]
  %140 = phi i32 [ %141, %138 ], [ %133, %132 ]
  %141 = add nsw i32 %140, 1
  %142 = getelementptr inbounds %struct.GPUOutput, ptr %139, i64 0, i32 5
  store i32 %140, ptr %142, align 8, !tbaa !174
  %143 = load ptr, ptr %139, align 8, !tbaa !34
  %144 = icmp eq ptr %143, null
  br i1 %144, label %6, label %138, !llvm.loop !175

145:                                              ; preds = %6, %1
  tail call void @BLI_ghash_free(ptr noundef %2, ptr noundef null, ptr noundef null) #17
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @codegen_print_uniforms_functions(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !176 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %82, label %9

5:                                                ; preds = %78, %9
  %6 = phi i32 [ %11, %9 ], [ %79, %78 ]
  %7 = load ptr, ptr %10, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %82, label %9, !llvm.loop !177

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %11 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.GPUNode, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %5, label %15

15:                                               ; preds = %9, %78
  %16 = phi ptr [ %80, %78 ], [ %13, %9 ]
  %17 = phi i32 [ %79, %78 ], [ %11, %9 ]
  %18 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !104
  switch i32 %19, label %78 [
    i32 4, label %20
    i32 3, label %20
    i32 1, label %34
    i32 0, label %51
    i32 5, label %66
  ]

20:                                               ; preds = %15, %15
  %21 = tail call fastcc i32 @codegen_input_has_texture(ptr noundef nonnull %16) #18, !range !40
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %78, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %78, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !108
  %30 = icmp eq i32 %29, 1002
  %31 = select i1 %30, ptr @.str.20, ptr @.str.19
  %32 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !66
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull %31, i32 noundef %33) #17
  br label %78

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 28
  %36 = load i32, ptr %35, align 4, !tbaa !105
  %37 = and i32 %36, %17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = or i32 %36, %17
  %41 = tail call ptr @GPU_builtin_name(i32 noundef %36) #18
  %42 = tail call fastcc i32 @gpu_str_prefix(ptr noundef nonnull %41, ptr noundef nonnull @.str.41) #18, !range !40
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !69
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  br i1 %43, label %50, label %49

49:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %48, ptr noundef nonnull %41) #17
  br label %78

50:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef %48, ptr noundef nonnull %41) #17
  br label %78

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 16
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !69
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !156
  br i1 %54, label %63, label %62

62:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %59, i32 noundef %61) #17
  br label %78

63:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef %59, i32 noundef %61) #17
  %64 = load i32, ptr %55, align 8, !tbaa !69
  %65 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 22
  tail call fastcc void @codegen_print_datatype(ptr noundef %0, i32 noundef %64, ptr noundef nonnull %65) #18
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.46) #17
  br label %78

66:                                               ; preds = %15
  %67 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 27
  %68 = load i32, ptr %67, align 8, !tbaa !139
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !69
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !138
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %75, i32 noundef %77) #17
  br label %78

78:                                               ; preds = %15, %27, %23, %20, %63, %62, %70, %66, %34, %50, %49
  %79 = phi i32 [ %17, %27 ], [ %17, %23 ], [ %17, %20 ], [ %17, %34 ], [ %40, %49 ], [ %40, %50 ], [ %17, %62 ], [ %17, %63 ], [ %17, %70 ], [ %17, %66 ], [ %17, %15 ]
  %80 = load ptr, ptr %16, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %5, label %15, !llvm.loop !178

82:                                               ; preds = %5, %2
  %83 = phi i32 [ 0, %2 ], [ %6, %5 ]
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.48) #17
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @codegen_declare_tmps(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !179 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %8

5:                                                ; preds = %36, %32
  %6 = load ptr, ptr %9, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8, !llvm.loop !180

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.GPUNode, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %8, %29
  %14 = phi ptr [ %30, %29 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !104
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @codegen_input_has_texture(ptr noundef nonnull %14) #18, !range !40
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !172
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !66
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %27) #17
  %28 = load i32, ptr %26, align 4, !tbaa !66
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %28, i32 noundef %28) #17
  br label %29

29:                                               ; preds = %13, %25, %21, %18
  %30 = load ptr, ptr %14, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !181

32:                                               ; preds = %29, %8
  %33 = getelementptr inbounds %struct.GPUNode, ptr %9, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %5, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %45, %36 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.GPUOutput, ptr %37, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !95
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.GPUOutput, ptr %37, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !174
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.55, ptr noundef %42, i32 noundef %44) #17
  %45 = load ptr, ptr %37, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %5, label %36, !llvm.loop !182

47:                                               ; preds = %5, %2
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.48) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @codegen_call_functions(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !183 {
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %3, %75
  %7 = phi ptr [ %76, %75 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef %9) #17
  %10 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %6, %59
  %14 = phi ptr [ %60, %59 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !104
  switch i32 %16, label %59 [
    i32 4, label %17
    i32 3, label %25
    i32 1, label %36
    i32 0, label %43
    i32 5, label %51
    i32 2, label %54
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !66
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %19) #17
  %20 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = icmp eq ptr %21, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %18, align 4, !tbaa !66
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %24) #17
  br label %59

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 23
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = getelementptr inbounds %struct.GPUNodeLink, ptr %27, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = getelementptr inbounds %struct.GPUOutput, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !95
  %32 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !69
  %34 = getelementptr inbounds %struct.GPUOutput, ptr %29, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !174
  tail call fastcc void @codegen_convert_datatype(ptr noundef %0, i32 noundef %31, i32 noundef %33, i32 noundef %35) #18
  br label %59

36:                                               ; preds = %13
  %37 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 28
  %38 = load i32, ptr %37, align 4, !tbaa !105
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.60) #17
  br label %59

41:                                               ; preds = %36
  %42 = tail call ptr @GPU_builtin_name(i32 noundef %38) #18
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull %42) #17
  br label %59

43:                                               ; preds = %13
  %44 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 16
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = icmp eq ptr %45, null
  %47 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !156
  br i1 %46, label %50, label %49

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %48) #17
  br label %59

50:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %48) #17
  br label %59

51:                                               ; preds = %13
  %52 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !138
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %53) #17
  br label %59

54:                                               ; preds = %13
  %55 = getelementptr inbounds %struct.GPUInput, ptr %14, i64 0, i32 29
  %56 = load i32, ptr %55, align 8, !tbaa !106
  switch i32 %56, label %59 [
    i32 1, label %57
    i32 2, label %58
  ]

57:                                               ; preds = %54
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.64) #17
  br label %59

58:                                               ; preds = %54
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.65) #17
  br label %59

59:                                               ; preds = %54, %13, %25, %50, %49, %58, %57, %51, %40, %41, %17, %23
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.52) #17
  %60 = load ptr, ptr %14, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %13, !llvm.loop !184

62:                                               ; preds = %59, %6
  %63 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %62, %72
  %67 = phi ptr [ %73, %72 ], [ %64, %62 ]
  %68 = getelementptr inbounds %struct.GPUOutput, ptr %67, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !174
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.66, i32 noundef %69) #17
  %70 = load ptr, ptr %67, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.52) #17
  %73 = load ptr, ptr %67, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66, !llvm.loop !185

75:                                               ; preds = %66, %72, %62
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.67) #17
  %76 = load ptr, ptr %7, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %6, !llvm.loop !186

78:                                               ; preds = %75, %3
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.68) #17
  %79 = getelementptr inbounds %struct.GPUOutput, ptr %2, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !95
  %81 = getelementptr inbounds %struct.GPUOutput, ptr %2, i64 0, i32 5
  %82 = load i32, ptr %81, align 8, !tbaa !174
  tail call fastcc void @codegen_convert_datatype(ptr noundef %0, i32 noundef %80, i32 noundef 4, i32 noundef %82) #18
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.46) #17
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @codegen_input_has_texture(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !187 {
  %2 = getelementptr inbounds %struct.GPUInput, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUInput, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.GPUInput, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.GPUInput, ptr %0, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %5, %9, %1, %13
  %19 = phi i32 [ %17, %13 ], [ 0, %1 ], [ 1, %9 ], [ 1, %5 ]
  ret i32 %19
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @codegen_print_datatype(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !188 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef %6) #17
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = add nsw i32 %1, -1
  %10 = zext nneg i32 %9 to i64
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i64 [ 0, %8 ], [ %19, %12 ]
  %14 = getelementptr inbounds float, ptr %2, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !189
  %16 = fpext float %15 to double
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.50, double noundef %16) #17
  %17 = icmp eq i64 %13, %10
  %18 = select i1 %17, ptr @.str.51, ptr @.str.52
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull %18) #17
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %21, label %12, !llvm.loop !190

21:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @codegen_convert_datatype(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !191 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #22
  %6 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.59, i32 noundef %3) #17
  %7 = icmp eq i32 %1, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull %5) #17
  br label %26

9:                                                ; preds = %4
  switch i32 %2, label %22 [
    i32 1, label %10
    i32 2, label %14
    i32 3, label %18
  ]

10:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 4, label %11
    i32 3, label %12
    i32 2, label %13
  ]

11:                                               ; preds = %10
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull %5) #17
  br label %26

12:                                               ; preds = %10
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef nonnull %5) #17
  br label %26

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull %5) #17
  br label %26

14:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 4, label %15
    i32 3, label %16
    i32 1, label %17
  ]

15:                                               ; preds = %14
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %5, ptr noundef nonnull %5) #17
  br label %26

16:                                               ; preds = %14
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull %5) #17
  br label %26

17:                                               ; preds = %14
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef nonnull %5) #17
  br label %26

18:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 4, label %19
    i32 2, label %20
    i32 1, label %21
  ]

19:                                               ; preds = %18
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef nonnull %5) #17
  br label %26

20:                                               ; preds = %18
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #17
  br label %26

21:                                               ; preds = %18
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #17
  br label %26

22:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 3, label %23
    i32 2, label %24
    i32 1, label %25
  ]

23:                                               ; preds = %22
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef nonnull %5) #17
  br label %26

24:                                               ; preds = %22
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #17
  br label %26

25:                                               ; preds = %22
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.81, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #17
  br label %26

26:                                               ; preds = %22, %18, %14, %10, %12, %13, %11, %20, %21, %19, %24, %25, %23, %15, %17, %16, %8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GPU_shader_get_uniform(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { cold optsize }
attributes #21 = { cold }
attributes #22 = { nounwind }

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
!38 = !{!"gpu_codegen.c:gpu_parse_functions_string"}
!39 = !{!36, !36, i64 0}
!40 = !{i32 0, i32 2}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !45, i64 320}
!44 = !{!"GPUFunction", !36, i64 0, !36, i64 64, !36, i64 192, !45, i64 320}
!45 = !{!"int", !36, i64 0}
!46 = !{!45, !45, i64 0}
!47 = distinct !{!47, !42}
!48 = distinct !{!48, !42}
!49 = !{!50, !35, i64 928}
!50 = !{!"Material", !51, i64 0, !35, i64 120, !52, i64 128, !52, i64 130, !53, i64 132, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !53, i64 208, !53, i64 212, !53, i64 216, !53, i64 220, !54, i64 224, !55, i64 312, !53, i64 328, !53, i64 332, !53, i64 336, !53, i64 340, !53, i64 344, !53, i64 348, !53, i64 352, !52, i64 356, !52, i64 358, !52, i64 360, !36, i64 362, !36, i64 363, !53, i64 364, !53, i64 368, !52, i64 372, !52, i64 374, !53, i64 376, !53, i64 380, !53, i64 384, !53, i64 388, !52, i64 392, !52, i64 394, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !52, i64 412, !52, i64 414, !52, i64 416, !52, i64 418, !53, i64 420, !53, i64 424, !53, i64 428, !53, i64 432, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !53, i64 456, !36, i64 460, !53, i64 524, !53, i64 528, !53, i64 532, !45, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !52, i64 544, !52, i64 546, !52, i64 548, !36, i64 550, !36, i64 551, !52, i64 552, !52, i64 554, !53, i64 556, !53, i64 560, !36, i64 564, !53, i64 580, !53, i64 584, !52, i64 588, !52, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !52, i64 612, !52, i64 614, !53, i64 616, !53, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !53, i64 800, !53, i64 804, !53, i64 808, !53, i64 812, !53, i64 816, !52, i64 820, !52, i64 822, !36, i64 824, !36, i64 836, !53, i64 848, !53, i64 852, !53, i64 856, !53, i64 860, !53, i64 864, !53, i64 868, !53, i64 872, !52, i64 876, !52, i64 878, !45, i64 880, !52, i64 884, !52, i64 886, !36, i64 888, !52, i64 904, !52, i64 906, !52, i64 908, !52, i64 910, !52, i64 912, !36, i64 914, !35, i64 920, !56, i64 928}
!51 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !52, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !35, i64 112}
!52 = !{!"short", !36, i64 0}
!53 = !{!"float", !36, i64 0}
!54 = !{!"VolumeSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !53, i64 52, !53, i64 56, !53, i64 60, !52, i64 64, !52, i64 66, !52, i64 68, !52, i64 70, !53, i64 72, !53, i64 76, !53, i64 80, !53, i64 84}
!55 = !{!"GameSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!56 = !{!"ListBase", !35, i64 0, !35, i64 8}
!57 = !{!58, !35, i64 40}
!58 = !{!"GPUPass", !35, i64 0, !35, i64 8, !56, i64 16, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!59 = !{!60, !35, i64 64}
!60 = !{!"GPUInput", !35, i64 0, !35, i64 8, !35, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !45, i64 88, !35, i64 96, !45, i64 104, !35, i64 112, !35, i64 120, !45, i64 128, !36, i64 132, !36, i64 164, !35, i64 232, !45, i64 240, !45, i64 244, !36, i64 248, !45, i64 280, !45, i64 284, !45, i64 288}
!61 = !{!60, !35, i64 72}
!62 = !{!60, !45, i64 88}
!63 = !{!60, !35, i64 120}
!64 = !{!60, !35, i64 80}
!65 = !{!60, !45, i64 44}
!66 = !{!60, !45, i64 36}
!67 = !{!60, !45, i64 128}
!68 = distinct !{!68, !42}
!69 = !{!60, !45, i64 24}
!70 = !{!60, !35, i64 96}
!71 = distinct !{!71, !42}
!72 = distinct !{!72, !42}
!73 = !{!74, !45, i64 8}
!74 = !{!"GPUNodeLink", !35, i64 0, !45, i64 8, !35, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !35, i64 40, !35, i64 48, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !35, i64 72, !45, i64 80, !45, i64 84, !35, i64 88}
!75 = !{!74, !35, i64 16}
!76 = !{!"gpu_codegen.c:GPU_node_link_create"}
!77 = !{!74, !45, i64 64}
!78 = !{!74, !45, i64 68}
!79 = !{!74, !35, i64 40}
!80 = !{!74, !35, i64 48}
!81 = !{!74, !45, i64 56}
!82 = !{!74, !45, i64 60}
!83 = !{!74, !45, i64 24}
!84 = !{!74, !45, i64 28}
!85 = !{!74, !45, i64 32}
!86 = !{!74, !45, i64 36}
!87 = !{!74, !35, i64 72}
!88 = !{!74, !45, i64 80}
!89 = !{!74, !45, i64 84}
!90 = distinct !{!90, !42}
!91 = !{!"gpu_codegen.c:GPU_node_begin"}
!92 = !{!93, !35, i64 16}
!93 = !{!"GPUNode", !35, i64 0, !35, i64 8, !35, i64 16, !45, i64 24, !56, i64 32, !56, i64 48}
!94 = !{!"gpu_codegen.c:GPU_node_output"}
!95 = !{!96, !45, i64 24}
!96 = !{!"GPUOutput", !35, i64 0, !35, i64 8, !35, i64 16, !45, i64 24, !35, i64 32, !45, i64 40}
!97 = !{!96, !35, i64 16}
!98 = !{!96, !35, i64 32}
!99 = !{!74, !35, i64 88}
!100 = !{!"gpu_codegen.c:gpu_node_input_link"}
!101 = !{!93, !35, i64 32}
!102 = !{!60, !35, i64 232}
!103 = !{!60, !35, i64 16}
!104 = !{!60, !45, i64 28}
!105 = !{!60, !45, i64 284}
!106 = !{!60, !45, i64 288}
!107 = !{!60, !45, i64 52}
!108 = !{!60, !45, i64 56}
!109 = !{!60, !45, i64 240}
!110 = !{!60, !35, i64 112}
!111 = !{!60, !45, i64 244}
!112 = !{!60, !45, i64 104}
!113 = !{!114, !45, i64 0}
!114 = !{!"GPUNodeStack", !45, i64 0, !35, i64 8, !36, i64 16, !35, i64 32, !36, i64 40, !36, i64 41, !52, i64 42}
!115 = distinct !{!115, !42}
!116 = distinct !{!116, !42}
!117 = !{!74, !35, i64 0}
!118 = distinct !{!118, !42}
!119 = !{!"gpu_codegen.c:gpu_node_input_socket"}
!120 = !{!114, !35, i64 32}
!121 = !{!58, !35, i64 32}
!122 = !{!58, !35, i64 48}
!123 = !{!58, !35, i64 56}
!124 = !{!58, !35, i64 64}
!125 = !{!"gpu_codegen.c:gpu_nodes_prune"}
!126 = !{!93, !45, i64 24}
!127 = distinct !{!127, !42}
!128 = !{!56, !35, i64 0}
!129 = !{!93, !35, i64 0}
!130 = distinct !{!130, !42}
!131 = !{!"gpu_codegen.c:gpu_nodes_get_vertex_attributes"}
!132 = distinct !{!132, !42}
!133 = !{!134, !45, i64 2560}
!134 = !{!"GPUVertexAttribs", !36, i64 0, !45, i64 2560}
!135 = !{!136, !45, i64 0}
!136 = !{!"", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !36, i64 16}
!137 = distinct !{!137, !42}
!138 = !{!60, !45, i64 40}
!139 = !{!60, !45, i64 280}
!140 = !{!136, !45, i64 12}
!141 = distinct !{!141, !42}
!142 = !{!"gpu_codegen.c:gpu_nodes_get_builtin_flag"}
!143 = distinct !{!143, !42}
!144 = distinct !{!144, !42}
!145 = !{!"gpu_codegen.c:code_generate_fragment"}
!146 = !{!"gpu_codegen.c:code_generate_vertex"}
!147 = distinct !{!147, !42}
!148 = distinct !{!148, !42}
!149 = distinct !{!149, !42}
!150 = distinct !{!150, !42}
!151 = !{!"gpu_codegen.c:GPU_nodes_free"}
!152 = distinct !{!152, !42}
!153 = !{!"gpu_codegen.c:GPU_nodes_extract_dynamic_inputs"}
!154 = distinct !{!154, !42}
!155 = !{!60, !35, i64 0}
!156 = !{!60, !45, i64 32}
!157 = distinct !{!157, !42}
!158 = !{!"gpu_codegen.c:GPU_inputs_free"}
!159 = distinct !{!159, !42}
!160 = !{!"gpu_codegen.c:gpu_str_skip_token"}
!161 = distinct !{!161, !42}
!162 = distinct !{!162, !42}
!163 = !{!"gpu_codegen.c:gpu_str_prefix"}
!164 = distinct !{!164, !42}
!165 = !{!"gpu_codegen.c:gpu_nodes_tag"}
!166 = distinct !{!166, !42}
!167 = !{!"gpu_codegen.c:GPU_node_free"}
!168 = distinct !{!168, !42}
!169 = !{!"gpu_codegen.c:GPU_node_link_free"}
!170 = !{!"gpu_codegen.c:codegen_set_unique_ids"}
!171 = distinct !{!171, !42}
!172 = !{!60, !45, i64 48}
!173 = distinct !{!173, !42}
!174 = !{!96, !45, i64 40}
!175 = distinct !{!175, !42}
!176 = !{!"gpu_codegen.c:codegen_print_uniforms_functions"}
!177 = distinct !{!177, !42}
!178 = distinct !{!178, !42}
!179 = !{!"gpu_codegen.c:codegen_declare_tmps"}
!180 = distinct !{!180, !42}
!181 = distinct !{!181, !42}
!182 = distinct !{!182, !42}
!183 = !{!"gpu_codegen.c:codegen_call_functions"}
!184 = distinct !{!184, !42}
!185 = distinct !{!185, !42}
!186 = distinct !{!186, !42}
!187 = !{!"gpu_codegen.c:codegen_input_has_texture"}
!188 = !{!"gpu_codegen.c:codegen_print_datatype"}
!189 = !{!53, !53, i64 0}
!190 = distinct !{!190, !42}
!191 = !{!"gpu_codegen.c:codegen_convert_datatype"}
