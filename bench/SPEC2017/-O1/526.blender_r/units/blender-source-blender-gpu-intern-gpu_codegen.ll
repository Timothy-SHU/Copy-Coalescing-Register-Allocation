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

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_lookup_function(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @FUNCTION_HASH, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %299

4:                                                ; preds = %1
  %5 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str) #14
  store ptr %5, ptr @FUNCTION_HASH, align 8, !tbaa !34
  %6 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %7 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.14) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %299, label %9

9:                                                ; preds = %4, %296
  %10 = phi ptr [ %297, %296 ], [ %7, %4 ]
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 324, ptr noundef nonnull @.str.15) #14
  br label %13

13:                                               ; preds = %17, %9
  %14 = phi ptr [ %10, %9 ], [ %18, %17 ]
  %15 = load i8, ptr %14, align 1, !tbaa !38
  switch i8 %15, label %17 [
    i8 0, label %16
    i8 32, label %16
    i8 40, label %16
    i8 41, label %16
    i8 44, label %16
    i8 9, label %16
    i8 10, label %16
    i8 13, label %16
  ]

16:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  br label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  br label %13, !llvm.loop !39

19:                                               ; preds = %16, %22
  %20 = phi ptr [ %23, %22 ], [ %14, %16 ]
  %21 = load i8, ptr %20, align 1, !tbaa !38
  switch i8 %21, label %24 [
    i8 13, label %22
    i8 32, label %22
    i8 40, label %22
    i8 44, label %22
    i8 9, label %22
    i8 10, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  br label %19, !llvm.loop !42

24:                                               ; preds = %19, %36
  %25 = phi ptr [ %37, %36 ], [ %12, %19 ]
  %26 = phi ptr [ %39, %36 ], [ %20, %19 ]
  %27 = phi i32 [ %38, %36 ], [ 0, %19 ]
  %28 = load i8, ptr %26, align 1, !tbaa !38
  switch i8 %28, label %29 [
    i8 0, label %40
    i8 32, label %40
    i8 40, label %40
    i8 41, label %40
    i8 44, label %40
    i8 9, label %40
    i8 10, label %40
    i8 13, label %40
  ]

29:                                               ; preds = %24
  %30 = icmp eq ptr %25, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = icmp slt i32 %27, 63
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  store i8 %28, ptr %25, align 1, !tbaa !38
  %34 = getelementptr inbounds i8, ptr %25, i64 1
  %35 = add nsw i32 %27, 1
  br label %36

36:                                               ; preds = %33, %31, %29
  %37 = phi ptr [ %34, %33 ], [ %25, %31 ], [ null, %29 ]
  %38 = phi i32 [ %35, %33 ], [ %27, %31 ], [ %27, %29 ]
  %39 = getelementptr inbounds i8, ptr %26, i64 1
  br label %24, !llvm.loop !39

40:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24
  %41 = icmp eq ptr %25, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  store i8 0, ptr %25, align 1, !tbaa !38
  br label %43

43:                                               ; preds = %42, %40
  br label %44

44:                                               ; preds = %43, %49
  %45 = phi ptr [ %50, %49 ], [ %26, %43 ]
  %46 = load i8, ptr %45, align 1, !tbaa !38
  switch i8 %46, label %47 [
    i8 13, label %49
    i8 32, label %49
    i8 40, label %49
    i8 44, label %49
    i8 9, label %49
    i8 10, label %49
  ]

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.GPUFunction, ptr %12, i64 0, i32 3
  br label %51

49:                                               ; preds = %44, %44, %44, %44, %44, %44
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  br label %44, !llvm.loop !42

51:                                               ; preds = %47, %272
  %52 = phi ptr [ %268, %272 ], [ %45, %47 ]
  %53 = load i8, ptr %52, align 1, !tbaa !38
  switch i8 %53, label %54 [
    i8 0, label %284
    i8 41, label %284
  ]

54:                                               ; preds = %51
  %55 = load i8, ptr %52, align 1, !tbaa !38
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %54, %66
  %58 = phi i8 [ %69, %66 ], [ %55, %54 ]
  %59 = phi i64 [ %68, %66 ], [ 0, %54 ]
  %60 = phi ptr [ %67, %66 ], [ %52, %54 ]
  %61 = icmp eq i64 %59, 4
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr @.str.16, i64 %59
  %64 = load i8, ptr %63, align 1, !tbaa !38
  %65 = icmp eq i8 %58, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %60, i64 1
  %68 = add nuw nsw i64 %59, 1
  %69 = load i8, ptr %67, align 1, !tbaa !38
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %57, !llvm.loop !43

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, ptr @.str.16, i64 %68
  br label %73

73:                                               ; preds = %71, %57, %54
  %74 = phi ptr [ @.str.16, %54 ], [ %72, %71 ], [ getelementptr inbounds ([5 x i8], ptr @.str.16, i64 0, i64 4), %57 ]
  %75 = load i8, ptr %74, align 1, !tbaa !38
  %76 = icmp eq i8 %75, 0
  br label %77

77:                                               ; preds = %62, %73
  %78 = phi i1 [ %76, %73 ], [ false, %62 ]
  %79 = zext i1 %78 to i32
  %80 = load i8, ptr %52, align 1, !tbaa !38
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %77, %91
  %83 = phi i8 [ %94, %91 ], [ %80, %77 ]
  %84 = phi i64 [ %93, %91 ], [ 0, %77 ]
  %85 = phi ptr [ %92, %91 ], [ %52, %77 ]
  %86 = icmp eq i64 %84, 6
  br i1 %86, label %98, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds i8, ptr @.str.17, i64 %84
  %89 = load i8, ptr %88, align 1, !tbaa !38
  %90 = icmp eq i8 %83, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, ptr %85, i64 1
  %93 = add nuw nsw i64 %84, 1
  %94 = load i8, ptr %92, align 1, !tbaa !38
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %82, !llvm.loop !43

96:                                               ; preds = %91
  %97 = getelementptr inbounds i8, ptr @.str.17, i64 %93
  br label %98

98:                                               ; preds = %96, %82, %77
  %99 = phi ptr [ @.str.17, %77 ], [ %97, %96 ], [ getelementptr inbounds ([7 x i8], ptr @.str.17, i64 0, i64 6), %82 ]
  %100 = load i8, ptr %99, align 1, !tbaa !38
  %101 = icmp eq i8 %100, 0
  %102 = zext i1 %101 to i32
  br label %103

103:                                              ; preds = %87, %98
  %104 = phi i32 [ %102, %98 ], [ 0, %87 ]
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i32 %79, i32 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %103
  %109 = load i8, ptr %52, align 1, !tbaa !38
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %108, %120
  %112 = phi i8 [ %123, %120 ], [ %109, %108 ]
  %113 = phi i64 [ %122, %120 ], [ 0, %108 ]
  %114 = phi ptr [ %121, %120 ], [ %52, %108 ]
  %115 = icmp eq i64 %113, 3
  br i1 %115, label %127, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds i8, ptr @.str.18, i64 %113
  %118 = load i8, ptr %117, align 1, !tbaa !38
  %119 = icmp eq i8 %112, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = getelementptr inbounds i8, ptr %114, i64 1
  %122 = add nuw nsw i64 %113, 1
  %123 = load i8, ptr %121, align 1, !tbaa !38
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %111, !llvm.loop !43

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, ptr @.str.18, i64 %122
  br label %127

127:                                              ; preds = %125, %111, %108
  %128 = phi ptr [ @.str.18, %108 ], [ %126, %125 ], [ getelementptr inbounds ([4 x i8], ptr @.str.18, i64 0, i64 3), %111 ]
  %129 = load i8, ptr %128, align 1, !tbaa !38
  %130 = icmp eq i8 %129, 0
  %131 = zext i1 %130 to i32
  br label %132

132:                                              ; preds = %116, %127
  %133 = phi i32 [ %131, %127 ], [ 0, %116 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %132, %103
  br label %136

136:                                              ; preds = %135, %140
  %137 = phi ptr [ %141, %140 ], [ %52, %135 ]
  %138 = load i8, ptr %137, align 1, !tbaa !38
  switch i8 %138, label %140 [
    i8 0, label %139
    i8 32, label %139
    i8 40, label %139
    i8 41, label %139
    i8 44, label %139
    i8 9, label %139
    i8 10, label %139
    i8 13, label %139
  ]

139:                                              ; preds = %136, %136, %136, %136, %136, %136, %136, %136
  br label %142

140:                                              ; preds = %136
  %141 = getelementptr inbounds i8, ptr %137, i64 1
  br label %136, !llvm.loop !39

142:                                              ; preds = %139, %145
  %143 = phi ptr [ %146, %145 ], [ %137, %139 ]
  %144 = load i8, ptr %143, align 1, !tbaa !38
  switch i8 %144, label %147 [
    i8 13, label %145
    i8 32, label %145
    i8 40, label %145
    i8 44, label %145
    i8 9, label %145
    i8 10, label %145
  ]

145:                                              ; preds = %142, %142, %142, %142, %142, %142
  %146 = getelementptr inbounds i8, ptr %143, i64 1
  br label %142, !llvm.loop !42

147:                                              ; preds = %142, %132
  %148 = phi ptr [ %52, %132 ], [ %143, %142 ]
  br label %149

149:                                              ; preds = %147, %180
  %150 = phi i64 [ 1, %147 ], [ %181, %180 ]
  %151 = lshr i64 64992, %150
  %152 = and i64 %151, 1
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %180

154:                                              ; preds = %149
  %155 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %150
  %156 = load ptr, ptr %155, align 8, !tbaa !34
  %157 = load i8, ptr %148, align 1, !tbaa !38
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %154, %167
  %160 = phi i8 [ %170, %167 ], [ %157, %154 ]
  %161 = phi ptr [ %169, %167 ], [ %156, %154 ]
  %162 = phi ptr [ %168, %167 ], [ %148, %154 ]
  %163 = load i8, ptr %161, align 1, !tbaa !38
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %159
  %166 = icmp eq i8 %160, %163
  br i1 %166, label %167, label %177

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, ptr %162, i64 1
  %169 = getelementptr inbounds i8, ptr %161, i64 1
  %170 = load i8, ptr %168, align 1, !tbaa !38
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %159, !llvm.loop !43

172:                                              ; preds = %167, %159, %154
  %173 = phi ptr [ %156, %154 ], [ %169, %167 ], [ %161, %159 ]
  %174 = load i8, ptr %173, align 1, !tbaa !38
  %175 = icmp eq i8 %174, 0
  %176 = zext i1 %175 to i32
  br label %177

177:                                              ; preds = %165, %172
  %178 = phi i32 [ %176, %172 ], [ 0, %165 ]
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177, %149
  %181 = add nuw nsw i64 %150, 1
  %182 = icmp eq i64 %181, 17
  br i1 %182, label %185, label %149, !llvm.loop !44

183:                                              ; preds = %177
  %184 = trunc i64 %150 to i32
  br label %185

185:                                              ; preds = %180, %183
  %186 = phi i32 [ %184, %183 ], [ 0, %180 ]
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %216

188:                                              ; preds = %185
  %189 = load i8, ptr %148, align 1, !tbaa !38
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %207, label %191

191:                                              ; preds = %188, %200
  %192 = phi i8 [ %203, %200 ], [ %189, %188 ]
  %193 = phi i64 [ %202, %200 ], [ 0, %188 ]
  %194 = phi ptr [ %201, %200 ], [ %148, %188 ]
  %195 = icmp eq i64 %193, 15
  br i1 %195, label %207, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds i8, ptr @.str.19, i64 %193
  %198 = load i8, ptr %197, align 1, !tbaa !38
  %199 = icmp eq i8 %192, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %196
  %201 = getelementptr inbounds i8, ptr %194, i64 1
  %202 = add nuw nsw i64 %193, 1
  %203 = load i8, ptr %201, align 1, !tbaa !38
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %191, !llvm.loop !43

205:                                              ; preds = %200
  %206 = getelementptr inbounds i8, ptr @.str.19, i64 %202
  br label %207

207:                                              ; preds = %205, %191, %188
  %208 = phi ptr [ @.str.19, %188 ], [ %206, %205 ], [ getelementptr inbounds ([16 x i8], ptr @.str.19, i64 0, i64 15), %191 ]
  %209 = load i8, ptr %208, align 1, !tbaa !38
  %210 = icmp eq i8 %209, 0
  %211 = zext i1 %210 to i32
  br label %212

212:                                              ; preds = %196, %207
  %213 = phi i32 [ %211, %207 ], [ 0, %196 ]
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %214, i32 0, i32 1003
  br label %216

216:                                              ; preds = %212, %185
  %217 = phi i32 [ %186, %185 ], [ %215, %212 ]
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %247

219:                                              ; preds = %216
  %220 = load i8, ptr %148, align 1, !tbaa !38
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %238, label %222

222:                                              ; preds = %219, %231
  %223 = phi i8 [ %234, %231 ], [ %220, %219 ]
  %224 = phi i64 [ %233, %231 ], [ 0, %219 ]
  %225 = phi ptr [ %232, %231 ], [ %148, %219 ]
  %226 = icmp eq i64 %224, 9
  br i1 %226, label %238, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, ptr @.str.20, i64 %224
  %229 = load i8, ptr %228, align 1, !tbaa !38
  %230 = icmp eq i8 %223, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %227
  %232 = getelementptr inbounds i8, ptr %225, i64 1
  %233 = add nuw nsw i64 %224, 1
  %234 = load i8, ptr %232, align 1, !tbaa !38
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %222, !llvm.loop !43

236:                                              ; preds = %231
  %237 = getelementptr inbounds i8, ptr @.str.20, i64 %233
  br label %238

238:                                              ; preds = %236, %222, %219
  %239 = phi ptr [ @.str.20, %219 ], [ %237, %236 ], [ getelementptr inbounds ([10 x i8], ptr @.str.20, i64 0, i64 9), %222 ]
  %240 = load i8, ptr %239, align 1, !tbaa !38
  %241 = icmp eq i8 %240, 0
  %242 = zext i1 %241 to i32
  br label %243

243:                                              ; preds = %227, %238
  %244 = phi i32 [ %242, %238 ], [ 0, %227 ]
  %245 = icmp eq i32 %244, 0
  %246 = select i1 %245, i32 0, i32 1002
  br label %247

247:                                              ; preds = %243, %216
  %248 = phi i32 [ %217, %216 ], [ %246, %243 ]
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %281, label %250

250:                                              ; preds = %247, %254
  %251 = phi ptr [ %255, %254 ], [ %148, %247 ]
  %252 = load i8, ptr %251, align 1, !tbaa !38
  switch i8 %252, label %254 [
    i8 0, label %253
    i8 32, label %253
    i8 40, label %253
    i8 41, label %253
    i8 44, label %253
    i8 9, label %253
    i8 10, label %253
    i8 13, label %253
  ]

253:                                              ; preds = %250, %250, %250, %250, %250, %250, %250, %250
  br label %256

254:                                              ; preds = %250
  %255 = getelementptr inbounds i8, ptr %251, i64 1
  br label %250, !llvm.loop !39

256:                                              ; preds = %253, %259
  %257 = phi ptr [ %260, %259 ], [ %251, %253 ]
  %258 = load i8, ptr %257, align 1, !tbaa !38
  switch i8 %258, label %261 [
    i8 13, label %259
    i8 32, label %259
    i8 40, label %259
    i8 44, label %259
    i8 9, label %259
    i8 10, label %259
  ]

259:                                              ; preds = %256, %256, %256, %256, %256, %256
  %260 = getelementptr inbounds i8, ptr %257, i64 1
  br label %256, !llvm.loop !42

261:                                              ; preds = %256, %265
  %262 = phi ptr [ %266, %265 ], [ %257, %256 ]
  %263 = load i8, ptr %262, align 1, !tbaa !38
  switch i8 %263, label %265 [
    i8 0, label %264
    i8 32, label %264
    i8 40, label %264
    i8 41, label %264
    i8 44, label %264
    i8 9, label %264
    i8 10, label %264
    i8 13, label %264
  ]

264:                                              ; preds = %261, %261, %261, %261, %261, %261, %261, %261
  br label %267

265:                                              ; preds = %261
  %266 = getelementptr inbounds i8, ptr %262, i64 1
  br label %261, !llvm.loop !39

267:                                              ; preds = %264, %270
  %268 = phi ptr [ %271, %270 ], [ %262, %264 ]
  %269 = load i8, ptr %268, align 1, !tbaa !38
  switch i8 %269, label %272 [
    i8 13, label %270
    i8 32, label %270
    i8 40, label %270
    i8 44, label %270
    i8 9, label %270
    i8 10, label %270
  ]

270:                                              ; preds = %267, %267, %267, %267, %267, %267
  %271 = getelementptr inbounds i8, ptr %268, i64 1
  br label %267, !llvm.loop !42

272:                                              ; preds = %267
  %273 = load i32, ptr %48, align 4, !tbaa !45
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.GPUFunction, ptr %12, i64 0, i32 2, i64 %274
  store i32 %106, ptr %275, align 4, !tbaa !48
  %276 = load i32, ptr %48, align 4, !tbaa !45
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.GPUFunction, ptr %12, i64 0, i32 1, i64 %277
  store i32 %248, ptr %278, align 4, !tbaa !48
  %279 = load i32, ptr %48, align 4, !tbaa !45
  %280 = add nsw i32 %279, 1
  store i32 %280, ptr %48, align 4, !tbaa !45
  br label %51, !llvm.loop !49

281:                                              ; preds = %247
  %282 = load ptr, ptr @stderr, align 8, !tbaa !34
  %283 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %282, ptr noundef nonnull @.str.21, ptr noundef %12) #16
  br label %284

284:                                              ; preds = %51, %51, %281
  %285 = phi ptr [ %148, %281 ], [ %52, %51 ], [ %52, %51 ]
  %286 = load i8, ptr %12, align 4, !tbaa !38
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.GPUFunction, ptr %12, i64 0, i32 3
  %290 = load i32, ptr %289, align 4, !tbaa !45
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %288, %284
  %293 = load ptr, ptr @stderr, align 8, !tbaa !34
  %294 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 27, i64 1, ptr %293) #16
  %295 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %295(ptr noundef nonnull %12) #14
  br label %299

296:                                              ; preds = %288
  tail call void @BLI_ghash_insert(ptr noundef %5, ptr noundef nonnull %12, ptr noundef nonnull %12) #14
  %297 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %285, ptr noundef nonnull dereferenceable(1) @.str.14) #15
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %9, !llvm.loop !50

299:                                              ; preds = %296, %4, %292, %1
  %300 = load ptr, ptr @FUNCTION_HASH, align 8, !tbaa !34
  %301 = tail call ptr @BLI_ghash_lookup(ptr noundef %300, ptr noundef %0) #14
  ret ptr %301
}

declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gpu_codegen_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @BLI_dynstr_new() #14
  tail call void @BLI_dynstr_append(ptr noundef %4, ptr noundef nonnull @datatoc_gpu_shader_material_glsl) #14
  %5 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %4) #14
  store ptr %5, ptr @glsl_material_library, align 8, !tbaa !34
  tail call void @BLI_dynstr_free(ptr noundef %4) #14
  br label %6

6:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_code_generate_glsl_lib() local_unnamed_addr #0 {
  %1 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @BLI_dynstr_new() #14
  tail call void @BLI_dynstr_append(ptr noundef %4, ptr noundef nonnull @datatoc_gpu_shader_material_glsl) #14
  %5 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %4) #14
  store ptr %5, ptr @glsl_material_library, align 8, !tbaa !34
  tail call void @BLI_dynstr_free(ptr noundef %4) #14
  br label %6

6:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gpu_codegen_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !51
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #14
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @FUNCTION_HASH, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void @BLI_ghash_free(ptr noundef nonnull %5, ptr noundef null, ptr noundef %8) #14
  store ptr null, ptr @FUNCTION_HASH, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %7, %4
  tail call void @GPU_shader_free_builtin_shaders() #14
  %10 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #14
  store ptr null, ptr @glsl_material_library, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %12, %9
  ret void
}

declare void @GPU_material_free(ptr noundef) local_unnamed_addr #1

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GPU_shader_free_builtin_shaders() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_bicubic_bump_support() local_unnamed_addr #3 {
  %1 = load i8, ptr @__GLEW_ARB_texture_query_lod, align 1, !tbaa !38
  %2 = icmp ne i8 %1, 0
  %3 = load i8, ptr @__GLEW_VERSION_3_0, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @BLI_dynstr_new() local_unnamed_addr #1

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #1

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GPU_pass_shader(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_pass_bind(ptr nocapture noundef readonly %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 2
  tail call void @GPU_shader_bind(ptr noundef nonnull %5) #14
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7, %46
  %12 = phi ptr [ %47, %46 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !64
  %21 = trunc i32 %20 to i8
  %22 = tail call ptr @GPU_texture_from_blender(ptr noundef nonnull %14, ptr noundef %18, i8 noundef zeroext %21, double noundef %1, i32 noundef %2) #14
  br label %29

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @GPU_texture_from_preview(ptr noundef nonnull %25, i32 noundef %2) #14
  br label %29

29:                                               ; preds = %16, %27
  %30 = phi ptr [ %28, %27 ], [ %22, %16 ]
  %31 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 19
  store ptr %30, ptr %31, align 8, !tbaa !66
  br label %32

32:                                               ; preds = %29, %23
  %33 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !67
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !68
  tail call void @GPU_texture_bind(ptr noundef nonnull %34, i32 noundef %42) #14
  %43 = getelementptr inbounds %struct.GPUInput, ptr %12, i64 0, i32 20
  %44 = load i32, ptr %43, align 8, !tbaa !69
  %45 = load ptr, ptr %33, align 8, !tbaa !66
  tail call void @GPU_shader_uniform_texture(ptr noundef nonnull %5, i32 noundef %44, ptr noundef %45) #14
  br label %46

46:                                               ; preds = %32, %36, %40
  %47 = load ptr, ptr %12, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %11, !llvm.loop !70

49:                                               ; preds = %46, %7, %3
  ret void
}

declare void @GPU_shader_bind(ptr noundef) local_unnamed_addr #1

declare ptr @GPU_texture_from_blender(ptr noundef, ptr noundef, i8 noundef zeroext, double noundef, i32 noundef) local_unnamed_addr #1

declare ptr @GPU_texture_from_preview(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @GPU_texture_bind(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @GPU_shader_uniform_texture(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @GPU_pass_update_uniforms(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !59
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
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 20
  %24 = load i32, ptr %23, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  tail call void @GPU_shader_uniform_vector(ptr noundef nonnull %3, i32 noundef %24, i32 noundef %26, i32 noundef 1, ptr noundef %28) #14
  br label %29

29:                                               ; preds = %9, %14, %18, %22
  %30 = load ptr, ptr %10, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !73

32:                                               ; preds = %29, %5, %1
  ret void
}

declare void @GPU_shader_uniform_vector(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @GPU_pass_unbind(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !59
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
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !67
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @GPU_texture_unbind(ptr noundef nonnull %12) #14
  br label %19

19:                                               ; preds = %18, %14, %9
  %20 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.GPUInput, ptr %10, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %19
  store ptr null, ptr %11, align 8, !tbaa !66
  br label %28

28:                                               ; preds = %23, %27
  %29 = load ptr, ptr %10, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9, !llvm.loop !74

31:                                               ; preds = %28, %5
  tail call void @GPU_shader_unbind() #14
  br label %32

32:                                               ; preds = %1, %31
  ret void
}

declare void @GPU_texture_unbind(ptr noundef) local_unnamed_addr #1

declare void @GPU_shader_unbind() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_attribute(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 11
  store i32 0, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !77
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !77
  %9 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !79
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_uniform(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !77
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !77
  %8 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 7
  store ptr %0, ptr %8, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !81
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_dynamic_uniform(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 11
  store i32 0, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !77
  %10 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 7
  store ptr %0, ptr %10, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 8
  store ptr %2, ptr %11, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 9
  store i32 1, ptr %12, align 8, !tbaa !82
  %13 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 10
  store i32 %1, ptr %13, align 4, !tbaa !83
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_image(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 11
  store i32 0, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !77
  %10 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 3
  store i32 1, ptr %10, align 8, !tbaa !84
  %11 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 7
  store ptr %0, ptr %11, align 8, !tbaa !80
  %12 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 8
  store ptr %1, ptr %12, align 8, !tbaa !81
  %13 = zext i8 %2 to i32
  %14 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 4
  store i32 %13, ptr %14, align 4, !tbaa !85
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_image_preview(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !77
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !77
  %8 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 3
  store i32 2, ptr %8, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 7
  store ptr %0, ptr %9, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_texture(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 11
  store i32 0, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !77
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !77
  %9 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 5
  store i32 1, ptr %9, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 6
  store i32 %0, ptr %10, align 4, !tbaa !87
  %11 = getelementptr inbounds %struct.GPUNodeLink, ptr %4, i64 0, i32 7
  store ptr %1, ptr %11, align 8, !tbaa !80
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_dynamic_texture(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %6 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 11
  store i32 0, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !77
  %10 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 9
  store i32 1, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 13
  store ptr %0, ptr %11, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 10
  store i32 %1, ptr %12, align 4, !tbaa !83
  %13 = getelementptr inbounds %struct.GPUNodeLink, ptr %5, i64 0, i32 8
  store ptr %2, ptr %13, align 8, !tbaa !81
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_builtin(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !77
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !77
  %8 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 14
  store i32 %0, ptr %8, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_opengl_builtin(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !77
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !77
  %8 = getelementptr inbounds %struct.GPUNodeLink, ptr %3, i64 0, i32 15
  store i32 %0, ptr %8, align 4, !tbaa !90
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @GPU_link(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %4 = tail call ptr @GPU_lookup_function(ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !34
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef %1) #16
  br label %79

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 64, ptr noundef nonnull @.str.30) #14
  %12 = getelementptr inbounds %struct.GPUNode, ptr %11, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !91
  call void @llvm.va_start(ptr nonnull %3)
  %13 = getelementptr inbounds %struct.GPUFunction, ptr %4, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !45
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %19 = getelementptr inbounds %struct.GPUNode, ptr %11, i64 0, i32 5
  %20 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %21 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  br label %22

22:                                               ; preds = %16, %73
  %23 = phi i64 [ 0, %16 ], [ %74, %73 ]
  %24 = getelementptr inbounds %struct.GPUFunction, ptr %4, i64 0, i32 2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = icmp eq i32 %25, 0
  %27 = load i32, ptr %3, align 16
  %28 = icmp ult i32 %27, 41
  br i1 %26, label %59, label %29

29:                                               ; preds = %22
  br i1 %28, label %30, label %35

30:                                               ; preds = %29
  %31 = load ptr, ptr %18, align 16
  %32 = zext nneg i32 %27 to i64
  %33 = getelementptr i8, ptr %31, i64 %32
  %34 = add nuw nsw i32 %27, 8
  store i32 %34, ptr %3, align 16
  br label %38

35:                                               ; preds = %29
  %36 = load ptr, ptr %17, align 8
  %37 = getelementptr i8, ptr %36, i64 8
  store ptr %37, ptr %17, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %33, %30 ], [ %36, %35 ]
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.GPUFunction, ptr %4, i64 0, i32 1, i64 %23
  %42 = load i32, ptr %41, align 4, !tbaa !48
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %44 = call ptr %43(i64 noundef 48, ptr noundef nonnull @.str.31) #14
  %45 = getelementptr inbounds %struct.GPUOutput, ptr %44, i64 0, i32 3
  store i32 %42, ptr %45, align 8, !tbaa !93
  %46 = getelementptr inbounds %struct.GPUOutput, ptr %44, i64 0, i32 2
  store ptr %11, ptr %46, align 8, !tbaa !95
  %47 = icmp eq ptr %40, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %38
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %50 = call ptr %49(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %51 = getelementptr inbounds %struct.GPUNodeLink, ptr %50, i64 0, i32 11
  store i32 %42, ptr %51, align 8, !tbaa !75
  %52 = getelementptr inbounds %struct.GPUNodeLink, ptr %50, i64 0, i32 12
  %53 = load i32, ptr %52, align 4, !tbaa !77
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %52, align 4, !tbaa !77
  %55 = getelementptr inbounds %struct.GPUOutput, ptr %44, i64 0, i32 4
  store ptr %50, ptr %55, align 8, !tbaa !96
  store ptr %50, ptr %40, align 8, !tbaa !34
  %56 = load ptr, ptr %55, align 8, !tbaa !96
  %57 = getelementptr inbounds %struct.GPUNodeLink, ptr %56, i64 0, i32 16
  store ptr %44, ptr %57, align 8, !tbaa !97
  br label %58

58:                                               ; preds = %38, %48
  call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %44) #14
  br label %73

59:                                               ; preds = %22
  br i1 %28, label %60, label %65

60:                                               ; preds = %59
  %61 = load ptr, ptr %21, align 16
  %62 = zext nneg i32 %27 to i64
  %63 = getelementptr i8, ptr %61, i64 %62
  %64 = add nuw nsw i32 %27, 8
  store i32 %64, ptr %3, align 16
  br label %68

65:                                               ; preds = %59
  %66 = load ptr, ptr %20, align 8
  %67 = getelementptr i8, ptr %66, i64 8
  store ptr %67, ptr %20, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi ptr [ %63, %60 ], [ %66, %65 ]
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.GPUFunction, ptr %4, i64 0, i32 1, i64 %23
  %72 = load i32, ptr %71, align 4, !tbaa !48
  call fastcc void @gpu_node_input_link(ptr noundef %11, ptr noundef %70, i32 noundef %72)
  br label %73

73:                                               ; preds = %58, %68
  %74 = add nuw nsw i64 %23, 1
  %75 = load i32, ptr %13, align 4, !tbaa !45
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %22, label %78, !llvm.loop !98

78:                                               ; preds = %73, %9
  call void @llvm.va_end(ptr %3)
  call void @gpu_material_add_node(ptr noundef %0, ptr noundef %11) #14
  br label %79

79:                                               ; preds = %78, %6
  %80 = phi i8 [ 1, %78 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i8 %80
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_node_input_link(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.GPUOutput, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.GPUNode, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(8) @.str.12) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14, %7
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.GPUNode, ptr %9, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = tail call ptr %18(ptr noundef %20) #14
  %22 = getelementptr inbounds %struct.GPUInput, ptr %21, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.GPUInput, ptr %21, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = icmp eq ptr %24, null
  br i1 %25, label %151, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.GPUNodeLink, ptr %24, i64 0, i32 12
  %28 = load i32, ptr %27, align 4, !tbaa !77
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !77
  br label %151

30:                                               ; preds = %14, %3
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 296, ptr noundef nonnull @.str.32) #14
  %33 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 2
  store ptr %0, ptr %33, align 8, !tbaa !101
  %34 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 14
  %35 = load i32, ptr %34, align 8, !tbaa !89
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %38, align 8, !tbaa !71
  %39 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 1, ptr %39, align 4, !tbaa !102
  %40 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 28
  store i32 %35, ptr %40, align 4, !tbaa !103
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef %1) #14
  br label %151

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 15
  %44 = load i32, ptr %43, align 4, !tbaa !90
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %47, align 8, !tbaa !71
  %48 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 2, ptr %48, align 4, !tbaa !102
  %49 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 29
  store i32 %44, ptr %49, align 8, !tbaa !104
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %50(ptr noundef %1) #14
  br label %151

51:                                               ; preds = %42
  %52 = load ptr, ptr %4, align 8, !tbaa !97
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %55, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 3, ptr %56, align 4, !tbaa !102
  %57 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 23
  store ptr %1, ptr %57, align 8, !tbaa !100
  %58 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 12
  %59 = load i32, ptr %58, align 4, !tbaa !77
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %58, align 4, !tbaa !77
  br label %151

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = icmp eq ptr %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %66, align 8, !tbaa !71
  %67 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 4, ptr %67, align 4, !tbaa !102
  %68 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 19
  store ptr %63, ptr %68, align 8, !tbaa !66
  %69 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 10
  store i32 3553, ptr %69, align 4, !tbaa !105
  %70 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 11
  store i32 %2, ptr %70, align 8, !tbaa !106
  %71 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 24
  store i32 1, ptr %71, align 8, !tbaa !107
  %72 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !81
  %74 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 18
  store ptr %73, ptr %74, align 8, !tbaa !108
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %75(ptr noundef %1) #14
  br label %151

76:                                               ; preds = %61
  %77 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !86
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 4, ptr %81, align 8, !tbaa !71
  %82 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 4, ptr %82, align 4, !tbaa !102
  %83 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 11
  store i32 %2, ptr %83, align 8, !tbaa !106
  %84 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 6
  %85 = load i32, ptr %84, align 4, !tbaa !87
  %86 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !80
  %88 = tail call ptr @GPU_texture_create_2D(i32 noundef %85, i32 noundef 1, ptr noundef %87, ptr noundef null) #14
  %89 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 19
  store ptr %88, ptr %89, align 8, !tbaa !66
  %90 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 10
  store i32 3553, ptr %90, align 4, !tbaa !105
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %92 = load ptr, ptr %86, align 8, !tbaa !80
  tail call void %91(ptr noundef %92) #14
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %93(ptr noundef %1) #14
  br label %151

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !84
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 4, ptr %99, align 8, !tbaa !71
  %100 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  store i32 4, ptr %100, align 4, !tbaa !102
  %101 = icmp eq i32 %96, 2
  %102 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !80
  br i1 %101, label %104, label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 14
  store ptr %103, ptr %105, align 8, !tbaa !65
  br label %114

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 12
  store ptr %103, ptr %107, align 8, !tbaa !61
  %108 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !81
  %110 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 13
  store ptr %109, ptr %110, align 8, !tbaa !63
  %111 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 4
  %112 = load i32, ptr %111, align 4, !tbaa !85
  %113 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 15
  store i32 %112, ptr %113, align 8, !tbaa !64
  br label %114

114:                                              ; preds = %106, %104
  %115 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 10
  store i32 3553, ptr %115, align 4, !tbaa !105
  %116 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 11
  store i32 1002, ptr %116, align 8, !tbaa !106
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %117(ptr noundef %1) #14
  br label %151

118:                                              ; preds = %94
  %119 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !78
  %121 = icmp eq i32 %120, 0
  %122 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 3
  store i32 %2, ptr %122, align 8, !tbaa !71
  %123 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 4
  br i1 %121, label %131, label %124

124:                                              ; preds = %118
  store i32 5, ptr %123, align 4, !tbaa !102
  %125 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 25
  store i32 %120, ptr %125, align 4, !tbaa !109
  %126 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 26
  %127 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !79
  %129 = tail call ptr @BLI_strncpy(ptr noundef nonnull %126, ptr noundef %128, i64 noundef 32) #14
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %130(ptr noundef %1) #14
  br label %151

131:                                              ; preds = %118
  store i32 0, ptr %123, align 4, !tbaa !102
  %132 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 22
  %133 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !80
  %135 = sext i32 %2 to i64
  %136 = shl nsw i64 %135, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %132, ptr align 1 %134, i64 %136, i1 false)
  %137 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !82
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %131
  %141 = load ptr, ptr %133, align 8, !tbaa !80
  %142 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 16
  store ptr %141, ptr %142, align 8, !tbaa !72
  %143 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 10
  %144 = load i32, ptr %143, align 4, !tbaa !83
  %145 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 17
  store i32 %144, ptr %145, align 8, !tbaa !110
  %146 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 8
  %147 = load ptr, ptr %146, align 8, !tbaa !81
  %148 = getelementptr inbounds %struct.GPUInput, ptr %32, i64 0, i32 18
  store ptr %147, ptr %148, align 8, !tbaa !108
  br label %149

149:                                              ; preds = %140, %131
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %150(ptr noundef %1) #14
  br label %151

151:                                              ; preds = %37, %54, %80, %124, %149, %114, %65, %46, %17, %26
  %152 = phi ptr [ %21, %26 ], [ %21, %17 ], [ %32, %46 ], [ %32, %65 ], [ %32, %114 ], [ %32, %149 ], [ %32, %124 ], [ %32, %80 ], [ %32, %54 ], [ %32, %37 ]
  %153 = getelementptr inbounds %struct.GPUNode, ptr %0, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %153, ptr noundef %152) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

declare void @gpu_material_add_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @GPU_stack_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %6 = tail call ptr @GPU_lookup_function(ptr noundef %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !34
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %1) #16
  br label %176

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.30) #14
  %14 = getelementptr inbounds %struct.GPUNode, ptr %13, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !91
  %15 = icmp eq ptr %2, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %2, align 8, !tbaa !111
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %16, %37
  %20 = phi i64 [ %38, %37 ], [ 0, %16 ]
  %21 = phi i32 [ %40, %37 ], [ %17, %16 ]
  %22 = phi ptr [ %39, %37 ], [ %2, %16 ]
  %23 = getelementptr inbounds %struct.GPUNodeStack, ptr %2, i64 %20, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call fastcc void @gpu_node_input_link(ptr noundef %13, ptr noundef nonnull %24, i32 noundef %21)
  br label %37

27:                                               ; preds = %19
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %30 = getelementptr inbounds %struct.GPUNodeLink, ptr %29, i64 0, i32 11
  store i32 0, ptr %30, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.GPUNodeLink, ptr %29, i64 0, i32 12
  %32 = load i32, ptr %31, align 4, !tbaa !77
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !77
  %34 = getelementptr inbounds %struct.GPUNodeStack, ptr %2, i64 %20, i32 2
  %35 = getelementptr inbounds %struct.GPUNodeLink, ptr %29, i64 0, i32 7
  store ptr %34, ptr %35, align 8, !tbaa !80
  %36 = load i32, ptr %22, align 8, !tbaa !111
  tail call fastcc void @gpu_node_input_link(ptr noundef %13, ptr noundef %29, i32 noundef %36)
  br label %37

37:                                               ; preds = %26, %27
  %38 = add nuw i64 %20, 1
  %39 = getelementptr inbounds %struct.GPUNodeStack, ptr %2, i64 %38
  %40 = load i32, ptr %39, align 8, !tbaa !111
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %19, !llvm.loop !114

42:                                               ; preds = %37
  %43 = trunc i64 %38 to i32
  br label %44

44:                                               ; preds = %42, %16, %11
  %45 = phi i32 [ 0, %11 ], [ 0, %16 ], [ %43, %42 ]
  %46 = icmp eq ptr %3, null
  br i1 %46, label %75, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %3, align 8, !tbaa !111
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.GPUNode, ptr %13, i64 0, i32 5
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %69, %52 ]
  %54 = phi i32 [ %48, %50 ], [ %71, %52 ]
  %55 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 %53, i32 3
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %57 = tail call ptr %56(i64 noundef 48, ptr noundef nonnull @.str.31) #14
  %58 = getelementptr inbounds %struct.GPUOutput, ptr %57, i64 0, i32 3
  store i32 %54, ptr %58, align 8, !tbaa !93
  %59 = getelementptr inbounds %struct.GPUOutput, ptr %57, i64 0, i32 2
  store ptr %13, ptr %59, align 8, !tbaa !95
  %60 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %61 = tail call ptr %60(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %62 = getelementptr inbounds %struct.GPUNodeLink, ptr %61, i64 0, i32 11
  store i32 %54, ptr %62, align 8, !tbaa !75
  %63 = getelementptr inbounds %struct.GPUNodeLink, ptr %61, i64 0, i32 12
  %64 = load i32, ptr %63, align 4, !tbaa !77
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !77
  %66 = getelementptr inbounds %struct.GPUOutput, ptr %57, i64 0, i32 4
  store ptr %61, ptr %66, align 8, !tbaa !96
  store ptr %61, ptr %55, align 8, !tbaa !34
  %67 = load ptr, ptr %66, align 8, !tbaa !96
  %68 = getelementptr inbounds %struct.GPUNodeLink, ptr %67, i64 0, i32 16
  store ptr %57, ptr %68, align 8, !tbaa !97
  tail call void @BLI_addtail(ptr noundef nonnull %51, ptr noundef %57) #14
  %69 = add nuw i64 %53, 1
  %70 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 %69
  %71 = load i32, ptr %70, align 8, !tbaa !111
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %52, !llvm.loop !115

73:                                               ; preds = %52
  %74 = trunc i64 %69 to i32
  br label %75

75:                                               ; preds = %73, %47, %44
  %76 = phi i32 [ 0, %44 ], [ 0, %47 ], [ %74, %73 ]
  call void @llvm.va_start(ptr nonnull %5)
  %77 = getelementptr inbounds %struct.GPUFunction, ptr %6, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !45
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %175

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %82 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %83 = getelementptr inbounds %struct.GPUNode, ptr %13, i64 0, i32 5
  %84 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %85 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  br label %86

86:                                               ; preds = %80, %168
  %87 = phi i64 [ 0, %80 ], [ %171, %168 ]
  %88 = phi i32 [ %76, %80 ], [ %170, %168 ]
  %89 = phi i32 [ %45, %80 ], [ %169, %168 ]
  %90 = getelementptr inbounds %struct.GPUFunction, ptr %6, i64 0, i32 2, i64 %87
  %91 = load i32, ptr %90, align 4, !tbaa !48
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %129, label %93

93:                                               ; preds = %86
  %94 = icmp eq i32 %88, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %93
  %96 = load i32, ptr %5, align 16
  %97 = icmp ult i32 %96, 41
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load ptr, ptr %82, align 16
  %100 = zext nneg i32 %96 to i64
  %101 = getelementptr i8, ptr %99, i64 %100
  %102 = add nuw nsw i32 %96, 8
  store i32 %102, ptr %5, align 16
  br label %106

103:                                              ; preds = %95
  %104 = load ptr, ptr %81, align 8
  %105 = getelementptr i8, ptr %104, i64 8
  store ptr %105, ptr %81, align 8
  br label %106

106:                                              ; preds = %103, %98
  %107 = phi ptr [ %101, %98 ], [ %104, %103 ]
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.GPUFunction, ptr %6, i64 0, i32 1, i64 %87
  %110 = load i32, ptr %109, align 4, !tbaa !48
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %112 = call ptr %111(i64 noundef 48, ptr noundef nonnull @.str.31) #14
  %113 = getelementptr inbounds %struct.GPUOutput, ptr %112, i64 0, i32 3
  store i32 %110, ptr %113, align 8, !tbaa !93
  %114 = getelementptr inbounds %struct.GPUOutput, ptr %112, i64 0, i32 2
  store ptr %13, ptr %114, align 8, !tbaa !95
  %115 = icmp eq ptr %108, null
  br i1 %115, label %126, label %116

116:                                              ; preds = %106
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %118 = call ptr %117(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %119 = getelementptr inbounds %struct.GPUNodeLink, ptr %118, i64 0, i32 11
  store i32 %110, ptr %119, align 8, !tbaa !75
  %120 = getelementptr inbounds %struct.GPUNodeLink, ptr %118, i64 0, i32 12
  %121 = load i32, ptr %120, align 4, !tbaa !77
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %120, align 4, !tbaa !77
  %123 = getelementptr inbounds %struct.GPUOutput, ptr %112, i64 0, i32 4
  store ptr %118, ptr %123, align 8, !tbaa !96
  store ptr %118, ptr %108, align 8, !tbaa !34
  %124 = load ptr, ptr %123, align 8, !tbaa !96
  %125 = getelementptr inbounds %struct.GPUNodeLink, ptr %124, i64 0, i32 16
  store ptr %112, ptr %125, align 8, !tbaa !97
  br label %126

126:                                              ; preds = %106, %116
  call void @BLI_addtail(ptr noundef nonnull %83, ptr noundef %112) #14
  br label %168

127:                                              ; preds = %93
  %128 = add nsw i32 %88, -1
  br label %168

129:                                              ; preds = %86
  %130 = icmp eq i32 %89, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %129
  %132 = load i32, ptr %5, align 16
  %133 = icmp ult i32 %132, 41
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load ptr, ptr %85, align 16
  %136 = zext nneg i32 %132 to i64
  %137 = getelementptr i8, ptr %135, i64 %136
  %138 = add nuw nsw i32 %132, 8
  store i32 %138, ptr %5, align 16
  br label %142

139:                                              ; preds = %131
  %140 = load ptr, ptr %84, align 8
  %141 = getelementptr i8, ptr %140, i64 8
  store ptr %141, ptr %84, align 8
  br label %142

142:                                              ; preds = %139, %134
  %143 = phi ptr [ %137, %134 ], [ %140, %139 ]
  %144 = load ptr, ptr %143, align 8
  %145 = load ptr, ptr %144, align 8, !tbaa !116
  %146 = icmp eq ptr %145, null
  br i1 %146, label %163, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.GPUNodeStack, ptr %145, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !113
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %145, align 8, !tbaa !111
  call fastcc void @gpu_node_input_link(ptr noundef %13, ptr noundef nonnull %149, i32 noundef %152)
  br label %168

153:                                              ; preds = %147
  %154 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %155 = call ptr %154(i64 noundef 96, ptr noundef nonnull @.str.29) #14
  %156 = getelementptr inbounds %struct.GPUNodeLink, ptr %155, i64 0, i32 11
  store i32 0, ptr %156, align 8, !tbaa !75
  %157 = getelementptr inbounds %struct.GPUNodeLink, ptr %155, i64 0, i32 12
  %158 = load i32, ptr %157, align 4, !tbaa !77
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %157, align 4, !tbaa !77
  %160 = getelementptr inbounds %struct.GPUNodeStack, ptr %145, i64 0, i32 2
  %161 = getelementptr inbounds %struct.GPUNodeLink, ptr %155, i64 0, i32 7
  store ptr %160, ptr %161, align 8, !tbaa !80
  %162 = load i32, ptr %145, align 8, !tbaa !111
  call fastcc void @gpu_node_input_link(ptr noundef %13, ptr noundef %155, i32 noundef %162)
  br label %168

163:                                              ; preds = %142
  %164 = getelementptr inbounds %struct.GPUFunction, ptr %6, i64 0, i32 1, i64 %87
  %165 = load i32, ptr %164, align 4, !tbaa !48
  call fastcc void @gpu_node_input_link(ptr noundef %13, ptr noundef nonnull %144, i32 noundef %165)
  br label %168

166:                                              ; preds = %129
  %167 = add nsw i32 %89, -1
  br label %168

168:                                              ; preds = %153, %151, %127, %126, %163, %166
  %169 = phi i32 [ %89, %126 ], [ %89, %127 ], [ 0, %163 ], [ %167, %166 ], [ 0, %151 ], [ 0, %153 ]
  %170 = phi i32 [ 0, %126 ], [ %128, %127 ], [ %88, %163 ], [ %88, %166 ], [ %88, %151 ], [ %88, %153 ]
  %171 = add nuw nsw i64 %87, 1
  %172 = load i32, ptr %77, align 4, !tbaa !45
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %171, %173
  br i1 %174, label %86, label %175, !llvm.loop !117

175:                                              ; preds = %168, %75
  call void @llvm.va_end(ptr %5)
  call void @gpu_material_add_node(ptr noundef %0, ptr noundef %13) #14
  br label %176

176:                                              ; preds = %175, %8
  %177 = phi i8 [ 1, %175 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret i8 %177
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_link_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.GPUNodeLink, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUOutput, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(10) @.str.11) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(8) @.str.12) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct.GPUInput, ptr %17, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %1, %12, %15
  %23 = phi i32 [ %21, %15 ], [ 1, %12 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @GPU_generate_pass(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.GPUNode, ptr %9, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !118
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !119

13:                                               ; preds = %8, %5
  tail call fastcc void @gpu_nodes_tag(ptr noundef %1)
  %14 = load ptr, ptr %0, align 8, !tbaa !120
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13, %23
  %17 = phi ptr [ %18, %23 ], [ %14, %13 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct.GPUNode, ptr %17, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !118
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %17) #14
  tail call fastcc void @GPU_node_free(ptr noundef nonnull %17)
  br label %23

23:                                               ; preds = %22, %16
  %24 = icmp eq ptr %18, null
  br i1 %24, label %25, label %16, !llvm.loop !122

25:                                               ; preds = %23, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %2, i8 0, i64 2564, i1 false)
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %91, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.GPUVertexAttribs, ptr %2, i64 0, i32 1
  %30 = getelementptr inbounds %struct.GPUVertexAttribs, ptr %2, i64 0, i32 1
  br label %34

31:                                               ; preds = %88, %34
  %32 = load ptr, ptr %35, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %91, label %34, !llvm.loop !123

34:                                               ; preds = %28, %31
  %35 = phi ptr [ %26, %28 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.GPUNode, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %31, label %39

39:                                               ; preds = %34, %88
  %40 = phi ptr [ %89, %88 ], [ %37, %34 ]
  %41 = getelementptr inbounds %struct.GPUInput, ptr %40, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !102
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %88

44:                                               ; preds = %39
  %45 = load i32, ptr %29, align 4, !tbaa !124
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.GPUInput, ptr %40, i64 0, i32 25
  %49 = load i32, ptr %48, align 4, !tbaa !109
  %50 = getelementptr inbounds %struct.GPUInput, ptr %40, i64 0, i32 26
  %51 = zext nneg i32 %45 to i64
  br label %52

52:                                               ; preds = %47, %61
  %53 = phi i64 [ 0, %47 ], [ %62, %61 ]
  %54 = getelementptr inbounds [32 x %struct.anon], ptr %2, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !126
  %56 = icmp eq i32 %55, %49
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds [32 x %struct.anon], ptr %2, i64 0, i64 %53, i32 4
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %50) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %52
  %62 = add nuw nsw i64 %53, 1
  %63 = icmp eq i64 %62, %51
  br i1 %63, label %66, label %52, !llvm.loop !128

64:                                               ; preds = %57
  %65 = trunc i64 %53 to i32
  br label %66

66:                                               ; preds = %64, %61, %44
  %67 = phi i32 [ 0, %44 ], [ %65, %64 ], [ %45, %61 ]
  %68 = icmp ult i32 %67, 32
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = icmp eq i32 %67, %45
  br i1 %70, label %71, label %83

71:                                               ; preds = %69
  %72 = add nsw i32 %45, 1
  store i32 %72, ptr %30, align 4, !tbaa !124
  %73 = getelementptr inbounds %struct.GPUInput, ptr %40, i64 0, i32 7
  store i32 %45, ptr %73, align 8, !tbaa !129
  %74 = getelementptr inbounds %struct.GPUInput, ptr %40, i64 0, i32 27
  store i32 1, ptr %74, align 8, !tbaa !130
  %75 = getelementptr inbounds %struct.GPUInput, ptr %40, i64 0, i32 25
  %76 = load i32, ptr %75, align 4, !tbaa !109
  %77 = zext nneg i32 %67 to i64
  %78 = getelementptr inbounds [32 x %struct.anon], ptr %2, i64 0, i64 %77
  store i32 %76, ptr %78, align 4, !tbaa !126
  %79 = getelementptr inbounds [32 x %struct.anon], ptr %2, i64 0, i64 %77, i32 3
  store i32 %45, ptr %79, align 4, !tbaa !131
  %80 = getelementptr inbounds [32 x %struct.anon], ptr %2, i64 0, i64 %77, i32 4
  %81 = getelementptr inbounds %struct.GPUInput, ptr %40, i64 0, i32 26
  %82 = tail call ptr @BLI_strncpy(ptr noundef nonnull %80, ptr noundef nonnull %81, i64 noundef 64) #14
  br label %88

83:                                               ; preds = %69
  %84 = zext nneg i32 %67 to i64
  %85 = getelementptr inbounds [32 x %struct.anon], ptr %2, i64 0, i64 %84, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !131
  %87 = getelementptr inbounds %struct.GPUInput, ptr %40, i64 0, i32 7
  store i32 %86, ptr %87, align 8, !tbaa !129
  br label %88

88:                                               ; preds = %83, %71, %66, %39
  %89 = load ptr, ptr %40, align 8, !tbaa !34
  %90 = icmp eq ptr %89, null
  br i1 %90, label %31, label %39, !llvm.loop !132

91:                                               ; preds = %31, %25
  store i32 0, ptr %3, align 4, !tbaa !48
  %92 = load ptr, ptr %0, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %115, label %97

94:                                               ; preds = %112, %97
  %95 = load ptr, ptr %98, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %115, label %97, !llvm.loop !133

97:                                               ; preds = %91, %94
  %98 = phi ptr [ %95, %94 ], [ %92, %91 ]
  %99 = getelementptr inbounds %struct.GPUNode, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %94, label %102

102:                                              ; preds = %97, %112
  %103 = phi ptr [ %113, %112 ], [ %100, %97 ]
  %104 = getelementptr inbounds %struct.GPUInput, ptr %103, i64 0, i32 4
  %105 = load i32, ptr %104, align 4, !tbaa !102
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.GPUInput, ptr %103, i64 0, i32 28
  %109 = load i32, ptr %108, align 4, !tbaa !103
  %110 = load i32, ptr %3, align 4, !tbaa !48
  %111 = or i32 %110, %109
  store i32 %111, ptr %3, align 4, !tbaa !48
  br label %112

112:                                              ; preds = %107, %102
  %113 = load ptr, ptr %103, align 8, !tbaa !34
  %114 = icmp eq ptr %113, null
  br i1 %114, label %94, label %102, !llvm.loop !134

115:                                              ; preds = %94, %91
  %116 = getelementptr inbounds %struct.GPUNodeLink, ptr %1, i64 0, i32 16
  %117 = load ptr, ptr %116, align 8, !tbaa !97
  %118 = tail call ptr @BLI_dynstr_new() #14
  %119 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.38) #14
  %120 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.39) #14
  %121 = load ptr, ptr %0, align 8, !tbaa !34
  %122 = icmp eq ptr %121, null
  br i1 %122, label %276, label %127

123:                                              ; preds = %269, %263
  %124 = phi i32 [ %264, %263 ], [ %272, %269 ]
  %125 = load ptr, ptr %128, align 8, !tbaa !34
  %126 = icmp eq ptr %125, null
  br i1 %126, label %276, label %127, !llvm.loop !135

127:                                              ; preds = %115, %123
  %128 = phi ptr [ %125, %123 ], [ %121, %115 ]
  %129 = phi i32 [ %265, %123 ], [ 0, %115 ]
  %130 = phi i32 [ %124, %123 ], [ 1, %115 ]
  %131 = getelementptr inbounds %struct.GPUNode, ptr %128, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !34
  %133 = icmp eq ptr %132, null
  br i1 %133, label %263, label %134

134:                                              ; preds = %127, %259
  %135 = phi ptr [ %261, %259 ], [ %132, %127 ]
  %136 = phi i32 [ %260, %259 ], [ %129, %127 ]
  %137 = phi i32 [ %138, %259 ], [ %130, %127 ]
  %138 = add nsw i32 %137, 1
  %139 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 5
  store i32 %137, ptr %139, align 8, !tbaa !136
  %140 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 8
  store i32 0, ptr %140, align 4, !tbaa !67
  %141 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 9
  store i32 0, ptr %141, align 8, !tbaa !137
  %142 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 23
  %143 = load ptr, ptr %142, align 8, !tbaa !100
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 12
  %147 = load ptr, ptr %146, align 8, !tbaa !61
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 14
  %151 = load ptr, ptr %150, align 8, !tbaa !65
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 19
  %155 = load ptr, ptr %154, align 8, !tbaa !66
  %156 = icmp ne ptr %155, null
  %157 = zext i1 %156 to i32
  br label %158

158:                                              ; preds = %153, %149, %145, %134
  %159 = phi i32 [ %157, %153 ], [ 0, %134 ], [ 1, %149 ], [ 1, %145 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %259, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 4
  %163 = load i32, ptr %162, align 4, !tbaa !102
  %164 = add i32 %163, -3
  %165 = icmp ult i32 %164, 2
  br i1 %165, label %166, label %259

166:                                              ; preds = %161
  br i1 %144, label %182, label %167

167:                                              ; preds = %166
  %168 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %119, ptr noundef nonnull %143) #14
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = add nsw i32 %136, 1
  %172 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  store i32 %136, ptr %172, align 4, !tbaa !68
  store i32 1, ptr %140, align 4, !tbaa !67
  %173 = load ptr, ptr %142, align 8, !tbaa !100
  %174 = sext i32 %136 to i64
  %175 = inttoptr i64 %174 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %119, ptr noundef %173, ptr noundef %175) #14
  br label %237

176:                                              ; preds = %167
  %177 = load ptr, ptr %142, align 8, !tbaa !100
  %178 = tail call ptr @BLI_ghash_lookup(ptr noundef %119, ptr noundef %177) #14
  %179 = ptrtoint ptr %178 to i64
  %180 = trunc i64 %179 to i32
  %181 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  store i32 %180, ptr %181, align 4, !tbaa !68
  br label %237

182:                                              ; preds = %166
  %183 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 12
  %184 = load ptr, ptr %183, align 8, !tbaa !61
  %185 = icmp eq ptr %184, null
  br i1 %185, label %201, label %186

186:                                              ; preds = %182
  %187 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %119, ptr noundef nonnull %184) #14
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = add nsw i32 %136, 1
  %191 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  store i32 %136, ptr %191, align 4, !tbaa !68
  store i32 1, ptr %140, align 4, !tbaa !67
  %192 = load ptr, ptr %183, align 8, !tbaa !61
  %193 = sext i32 %136 to i64
  %194 = inttoptr i64 %193 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %119, ptr noundef %192, ptr noundef %194) #14
  br label %237

195:                                              ; preds = %186
  %196 = load ptr, ptr %183, align 8, !tbaa !61
  %197 = tail call ptr @BLI_ghash_lookup(ptr noundef %119, ptr noundef %196) #14
  %198 = ptrtoint ptr %197 to i64
  %199 = trunc i64 %198 to i32
  %200 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  store i32 %199, ptr %200, align 4, !tbaa !68
  br label %237

201:                                              ; preds = %182
  %202 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 14
  %203 = load ptr, ptr %202, align 8, !tbaa !65
  %204 = icmp eq ptr %203, null
  br i1 %204, label %220, label %205

205:                                              ; preds = %201
  %206 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %119, ptr noundef nonnull %203) #14
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = add nsw i32 %136, 1
  %210 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  store i32 %136, ptr %210, align 4, !tbaa !68
  store i32 1, ptr %140, align 4, !tbaa !67
  %211 = load ptr, ptr %202, align 8, !tbaa !65
  %212 = sext i32 %136 to i64
  %213 = inttoptr i64 %212 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %119, ptr noundef %211, ptr noundef %213) #14
  br label %237

214:                                              ; preds = %205
  %215 = load ptr, ptr %202, align 8, !tbaa !65
  %216 = tail call ptr @BLI_ghash_lookup(ptr noundef %119, ptr noundef %215) #14
  %217 = ptrtoint ptr %216 to i64
  %218 = trunc i64 %217 to i32
  %219 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  store i32 %218, ptr %219, align 4, !tbaa !68
  br label %237

220:                                              ; preds = %201
  %221 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 19
  %222 = load ptr, ptr %221, align 8, !tbaa !66
  %223 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %119, ptr noundef %222) #14
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = add nsw i32 %136, 1
  %227 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  store i32 %136, ptr %227, align 4, !tbaa !68
  store i32 1, ptr %140, align 4, !tbaa !67
  %228 = load ptr, ptr %221, align 8, !tbaa !66
  %229 = sext i32 %136 to i64
  %230 = inttoptr i64 %229 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %119, ptr noundef %228, ptr noundef %230) #14
  br label %237

231:                                              ; preds = %220
  %232 = load ptr, ptr %221, align 8, !tbaa !66
  %233 = tail call ptr @BLI_ghash_lookup(ptr noundef %119, ptr noundef %232) #14
  %234 = ptrtoint ptr %233 to i64
  %235 = trunc i64 %234 to i32
  %236 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  store i32 %235, ptr %236, align 4, !tbaa !68
  br label %237

237:                                              ; preds = %231, %225, %214, %208, %195, %189, %176, %170
  %238 = phi i32 [ %136, %176 ], [ %171, %170 ], [ %136, %195 ], [ %190, %189 ], [ %136, %214 ], [ %209, %208 ], [ %136, %231 ], [ %226, %225 ]
  %239 = load i32, ptr %162, align 4, !tbaa !102
  %240 = icmp eq i32 %239, 3
  br i1 %240, label %241, label %259

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 12
  %243 = load ptr, ptr %242, align 8, !tbaa !61
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %120, ptr noundef nonnull %243) #14
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %252, label %259

248:                                              ; preds = %241
  %249 = load ptr, ptr %142, align 8, !tbaa !100
  %250 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %120, ptr noundef %249) #14
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %248, %245
  %253 = phi ptr [ %242, %245 ], [ %142, %248 ]
  store i32 1, ptr %141, align 8, !tbaa !137
  %254 = load ptr, ptr %253, align 8, !tbaa !34
  %255 = getelementptr inbounds %struct.GPUInput, ptr %135, i64 0, i32 6
  %256 = load i32, ptr %255, align 4, !tbaa !68
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %120, ptr noundef %254, ptr noundef %258) #14
  br label %259

259:                                              ; preds = %252, %248, %245, %237, %161, %158
  %260 = phi i32 [ %238, %245 ], [ %238, %248 ], [ %238, %237 ], [ %136, %158 ], [ %136, %161 ], [ %238, %252 ]
  %261 = load ptr, ptr %135, align 8, !tbaa !34
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %134, !llvm.loop !138

263:                                              ; preds = %259, %127
  %264 = phi i32 [ %130, %127 ], [ %138, %259 ]
  %265 = phi i32 [ %129, %127 ], [ %260, %259 ]
  %266 = getelementptr inbounds %struct.GPUNode, ptr %128, i64 0, i32 5
  %267 = load ptr, ptr %266, align 8, !tbaa !34
  %268 = icmp eq ptr %267, null
  br i1 %268, label %123, label %269

269:                                              ; preds = %263, %269
  %270 = phi ptr [ %274, %269 ], [ %267, %263 ]
  %271 = phi i32 [ %272, %269 ], [ %264, %263 ]
  %272 = add nsw i32 %271, 1
  %273 = getelementptr inbounds %struct.GPUOutput, ptr %270, i64 0, i32 5
  store i32 %271, ptr %273, align 8, !tbaa !139
  %274 = load ptr, ptr %270, align 8, !tbaa !34
  %275 = icmp eq ptr %274, null
  br i1 %275, label %123, label %269, !llvm.loop !140

276:                                              ; preds = %123, %115
  tail call void @BLI_ghash_free(ptr noundef %119, ptr noundef null, ptr noundef null) #14
  tail call void @BLI_ghash_free(ptr noundef %120, ptr noundef null, ptr noundef null) #14
  %277 = load ptr, ptr %0, align 8, !tbaa !34
  %278 = icmp eq ptr %277, null
  br i1 %278, label %424, label %283

279:                                              ; preds = %420, %283
  %280 = phi i32 [ %285, %283 ], [ %421, %420 ]
  %281 = load ptr, ptr %284, align 8, !tbaa !34
  %282 = icmp eq ptr %281, null
  br i1 %282, label %424, label %283, !llvm.loop !141

283:                                              ; preds = %276, %279
  %284 = phi ptr [ %281, %279 ], [ %277, %276 ]
  %285 = phi i32 [ %280, %279 ], [ 0, %276 ]
  %286 = getelementptr inbounds %struct.GPUNode, ptr %284, i64 0, i32 4
  %287 = load ptr, ptr %286, align 8, !tbaa !34
  %288 = icmp eq ptr %287, null
  br i1 %288, label %279, label %289

289:                                              ; preds = %283, %420
  %290 = phi ptr [ %422, %420 ], [ %287, %283 ]
  %291 = phi i32 [ %421, %420 ], [ %285, %283 ]
  %292 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 4
  %293 = load i32, ptr %292, align 4, !tbaa !102
  switch i32 %293, label %420 [
    i32 4, label %294
    i32 3, label %294
    i32 1, label %325
    i32 0, label %375
    i32 5, label %408
  ]

294:                                              ; preds = %289, %289
  %295 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 23
  %296 = load ptr, ptr %295, align 8, !tbaa !100
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %311

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 12
  %300 = load ptr, ptr %299, align 8, !tbaa !61
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %311

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 14
  %304 = load ptr, ptr %303, align 8, !tbaa !65
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 19
  %308 = load ptr, ptr %307, align 8, !tbaa !66
  %309 = icmp ne ptr %308, null
  %310 = zext i1 %309 to i32
  br label %311

311:                                              ; preds = %306, %302, %298, %294
  %312 = phi i32 [ %310, %306 ], [ 0, %294 ], [ 1, %302 ], [ 1, %298 ]
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %420, label %314

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 8
  %316 = load i32, ptr %315, align 4, !tbaa !67
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %420, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 11
  %320 = load i32, ptr %319, align 8, !tbaa !106
  %321 = icmp eq i32 %320, 1002
  %322 = select i1 %321, ptr @.str.20, ptr @.str.19
  %323 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 6
  %324 = load i32, ptr %323, align 4, !tbaa !68
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.40, ptr noundef nonnull %322, i32 noundef %324) #14
  br label %420

325:                                              ; preds = %289
  %326 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 28
  %327 = load i32, ptr %326, align 4, !tbaa !103
  %328 = and i32 %327, %291
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %420

330:                                              ; preds = %325
  %331 = or i32 %327, %291
  switch i32 %327, label %339 [
    i32 1, label %340
    i32 2, label %332
    i32 4, label %333
    i32 8, label %334
    i32 16, label %335
    i32 32, label %336
    i32 64, label %337
    i32 128, label %338
  ]

332:                                              ; preds = %330
  br label %340

333:                                              ; preds = %330
  br label %340

334:                                              ; preds = %330
  br label %340

335:                                              ; preds = %330
  br label %340

336:                                              ; preds = %330
  br label %340

337:                                              ; preds = %330
  br label %340

338:                                              ; preds = %330
  br label %340

339:                                              ; preds = %330
  br label %340

340:                                              ; preds = %330, %332, %333, %334, %335, %336, %337, %338, %339
  %341 = phi ptr [ @.str.2, %332 ], [ @.str.3, %333 ], [ @.str.4, %334 ], [ @.str.5, %335 ], [ @.str.6, %336 ], [ @.str.7, %337 ], [ @.str.8, %338 ], [ @.str.9, %339 ], [ @.str.1, %330 ]
  %342 = load i8, ptr %341, align 1, !tbaa !38
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %360, label %344

344:                                              ; preds = %340, %353
  %345 = phi i8 [ %356, %353 ], [ %342, %340 ]
  %346 = phi i64 [ %355, %353 ], [ 0, %340 ]
  %347 = phi ptr [ %354, %353 ], [ %341, %340 ]
  %348 = icmp eq i64 %346, 3
  br i1 %348, label %360, label %349

349:                                              ; preds = %344
  %350 = getelementptr inbounds i8, ptr @.str.41, i64 %346
  %351 = load i8, ptr %350, align 1, !tbaa !38
  %352 = icmp eq i8 %345, %351
  br i1 %352, label %353, label %365

353:                                              ; preds = %349
  %354 = getelementptr inbounds i8, ptr %347, i64 1
  %355 = add nuw nsw i64 %346, 1
  %356 = load i8, ptr %354, align 1, !tbaa !38
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %344, !llvm.loop !43

358:                                              ; preds = %353
  %359 = getelementptr inbounds i8, ptr @.str.41, i64 %355
  br label %360

360:                                              ; preds = %358, %344, %340
  %361 = phi ptr [ @.str.41, %340 ], [ %359, %358 ], [ getelementptr inbounds ([4 x i8], ptr @.str.41, i64 0, i64 3), %344 ]
  %362 = load i8, ptr %361, align 1, !tbaa !38
  %363 = icmp eq i8 %362, 0
  %364 = zext i1 %363 to i32
  br label %365

365:                                              ; preds = %349, %360
  %366 = phi i32 [ %364, %360 ], [ 0, %349 ]
  %367 = icmp eq i32 %366, 0
  %368 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 3
  %369 = load i32, ptr %368, align 8, !tbaa !71
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !34
  br i1 %367, label %374, label %373

373:                                              ; preds = %365
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.42, ptr noundef %372, ptr noundef nonnull %341) #14
  br label %420

374:                                              ; preds = %365
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.43, ptr noundef %372, ptr noundef nonnull %341) #14
  br label %420

375:                                              ; preds = %289
  %376 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 16
  %377 = load ptr, ptr %376, align 8, !tbaa !72
  %378 = icmp eq ptr %377, null
  %379 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 3
  %380 = load i32, ptr %379, align 8, !tbaa !71
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !34
  %384 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 5
  %385 = load i32, ptr %384, align 8, !tbaa !136
  br i1 %378, label %387, label %386

386:                                              ; preds = %375
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.44, ptr noundef %383, i32 noundef %385) #14
  br label %420

387:                                              ; preds = %375
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.45, ptr noundef %383, i32 noundef %385) #14
  %388 = load i32, ptr %379, align 8, !tbaa !71
  %389 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 22
  %390 = sext i32 %388 to i64
  %391 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %390
  %392 = load ptr, ptr %391, align 8, !tbaa !34
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.49, ptr noundef %392) #14
  %393 = icmp sgt i32 %388, 0
  br i1 %393, label %394, label %407

394:                                              ; preds = %387
  %395 = add nsw i32 %388, -1
  %396 = zext i32 %395 to i64
  %397 = zext nneg i32 %388 to i64
  br label %398

398:                                              ; preds = %394, %398
  %399 = phi i64 [ 0, %394 ], [ %405, %398 ]
  %400 = getelementptr inbounds float, ptr %389, i64 %399
  %401 = load float, ptr %400, align 4, !tbaa !142
  %402 = fpext float %401 to double
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.50, double noundef %402) #14
  %403 = icmp eq i64 %399, %396
  %404 = select i1 %403, ptr @.str.51, ptr @.str.52
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull %404) #14
  %405 = add nuw nsw i64 %399, 1
  %406 = icmp eq i64 %405, %397
  br i1 %406, label %407, label %398, !llvm.loop !143

407:                                              ; preds = %398, %387
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.46) #14
  br label %420

408:                                              ; preds = %289
  %409 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 27
  %410 = load i32, ptr %409, align 8, !tbaa !130
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %420, label %412

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 3
  %414 = load i32, ptr %413, align 8, !tbaa !71
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %415
  %417 = load ptr, ptr %416, align 8, !tbaa !34
  %418 = getelementptr inbounds %struct.GPUInput, ptr %290, i64 0, i32 7
  %419 = load i32, ptr %418, align 8, !tbaa !129
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.47, ptr noundef %417, i32 noundef %419) #14
  br label %420

420:                                              ; preds = %412, %408, %407, %386, %374, %373, %325, %318, %314, %311, %289
  %421 = phi i32 [ %291, %318 ], [ %291, %314 ], [ %291, %311 ], [ %291, %325 ], [ %331, %373 ], [ %331, %374 ], [ %291, %386 ], [ %291, %407 ], [ %291, %412 ], [ %291, %408 ], [ %291, %289 ]
  %422 = load ptr, ptr %290, align 8, !tbaa !34
  %423 = icmp eq ptr %422, null
  br i1 %423, label %279, label %289, !llvm.loop !144

424:                                              ; preds = %279, %276
  %425 = phi i32 [ 0, %276 ], [ %280, %279 ]
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.48) #14
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.34) #14
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.35) #14
  %426 = and i32 %425, 32
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %429, label %428

428:                                              ; preds = %424
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.36) #14
  br label %429

429:                                              ; preds = %428, %424
  %430 = load ptr, ptr %0, align 8, !tbaa !34
  %431 = icmp eq ptr %430, null
  br i1 %431, label %491, label %435

432:                                              ; preds = %480, %476
  %433 = load ptr, ptr %436, align 8, !tbaa !34
  %434 = icmp eq ptr %433, null
  br i1 %434, label %491, label %435, !llvm.loop !145

435:                                              ; preds = %429, %432
  %436 = phi ptr [ %433, %432 ], [ %430, %429 ]
  %437 = getelementptr inbounds %struct.GPUNode, ptr %436, i64 0, i32 4
  %438 = load ptr, ptr %437, align 8, !tbaa !34
  %439 = icmp eq ptr %438, null
  br i1 %439, label %476, label %440

440:                                              ; preds = %435, %473
  %441 = phi ptr [ %474, %473 ], [ %438, %435 ]
  %442 = getelementptr inbounds %struct.GPUInput, ptr %441, i64 0, i32 4
  %443 = load i32, ptr %442, align 4, !tbaa !102
  %444 = icmp eq i32 %443, 3
  br i1 %444, label %445, label %473

445:                                              ; preds = %440
  %446 = getelementptr inbounds %struct.GPUInput, ptr %441, i64 0, i32 23
  %447 = load ptr, ptr %446, align 8, !tbaa !100
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %462

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.GPUInput, ptr %441, i64 0, i32 12
  %451 = load ptr, ptr %450, align 8, !tbaa !61
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %462

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.GPUInput, ptr %441, i64 0, i32 14
  %455 = load ptr, ptr %454, align 8, !tbaa !65
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %462

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.GPUInput, ptr %441, i64 0, i32 19
  %459 = load ptr, ptr %458, align 8, !tbaa !66
  %460 = icmp ne ptr %459, null
  %461 = zext i1 %460 to i32
  br label %462

462:                                              ; preds = %457, %453, %449, %445
  %463 = phi i32 [ %461, %457 ], [ 0, %445 ], [ 1, %453 ], [ 1, %449 ]
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %473, label %465

465:                                              ; preds = %462
  %466 = getelementptr inbounds %struct.GPUInput, ptr %441, i64 0, i32 9
  %467 = load i32, ptr %466, align 8, !tbaa !137
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %465
  %470 = getelementptr inbounds %struct.GPUInput, ptr %441, i64 0, i32 6
  %471 = load i32, ptr %470, align 4, !tbaa !68
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.53, i32 noundef %471) #14
  %472 = load i32, ptr %470, align 4, !tbaa !68
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.54, i32 noundef %472, i32 noundef %472) #14
  br label %473

473:                                              ; preds = %469, %465, %462, %440
  %474 = load ptr, ptr %441, align 8, !tbaa !34
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %440, !llvm.loop !146

476:                                              ; preds = %473, %435
  %477 = getelementptr inbounds %struct.GPUNode, ptr %436, i64 0, i32 5
  %478 = load ptr, ptr %477, align 8, !tbaa !34
  %479 = icmp eq ptr %478, null
  br i1 %479, label %432, label %480

480:                                              ; preds = %476, %480
  %481 = phi ptr [ %489, %480 ], [ %478, %476 ]
  %482 = getelementptr inbounds %struct.GPUOutput, ptr %481, i64 0, i32 3
  %483 = load i32, ptr %482, align 8, !tbaa !93
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %484
  %486 = load ptr, ptr %485, align 8, !tbaa !34
  %487 = getelementptr inbounds %struct.GPUOutput, ptr %481, i64 0, i32 5
  %488 = load i32, ptr %487, align 8, !tbaa !139
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.55, ptr noundef %486, i32 noundef %488) #14
  %489 = load ptr, ptr %481, align 8, !tbaa !34
  %490 = icmp eq ptr %489, null
  br i1 %490, label %432, label %480, !llvm.loop !147

491:                                              ; preds = %432, %429
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.48) #14
  %492 = load ptr, ptr %0, align 8, !tbaa !34
  %493 = icmp eq ptr %492, null
  br i1 %493, label %573, label %494

494:                                              ; preds = %491, %570
  %495 = phi ptr [ %571, %570 ], [ %492, %491 ]
  %496 = getelementptr inbounds %struct.GPUNode, ptr %495, i64 0, i32 2
  %497 = load ptr, ptr %496, align 8, !tbaa !91
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.56, ptr noundef %497) #14
  %498 = getelementptr inbounds %struct.GPUNode, ptr %495, i64 0, i32 4
  %499 = load ptr, ptr %498, align 8, !tbaa !34
  %500 = icmp eq ptr %499, null
  br i1 %500, label %556, label %501

501:                                              ; preds = %494, %553
  %502 = phi ptr [ %554, %553 ], [ %499, %494 ]
  %503 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 4
  %504 = load i32, ptr %503, align 4, !tbaa !102
  switch i32 %504, label %553 [
    i32 4, label %505
    i32 3, label %513
    i32 1, label %524
    i32 0, label %537
    i32 5, label %545
    i32 2, label %548
  ]

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 6
  %507 = load i32, ptr %506, align 4, !tbaa !68
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.57, i32 noundef %507) #14
  %508 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 23
  %509 = load ptr, ptr %508, align 8, !tbaa !100
  %510 = icmp eq ptr %509, null
  br i1 %510, label %553, label %511

511:                                              ; preds = %505
  %512 = load i32, ptr %506, align 4, !tbaa !68
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.58, i32 noundef %512) #14
  br label %553

513:                                              ; preds = %501
  %514 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 23
  %515 = load ptr, ptr %514, align 8, !tbaa !100
  %516 = getelementptr inbounds %struct.GPUNodeLink, ptr %515, i64 0, i32 16
  %517 = load ptr, ptr %516, align 8, !tbaa !97
  %518 = getelementptr inbounds %struct.GPUOutput, ptr %517, i64 0, i32 3
  %519 = load i32, ptr %518, align 8, !tbaa !93
  %520 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 3
  %521 = load i32, ptr %520, align 8, !tbaa !71
  %522 = getelementptr inbounds %struct.GPUOutput, ptr %517, i64 0, i32 5
  %523 = load i32, ptr %522, align 8, !tbaa !139
  tail call fastcc void @codegen_convert_datatype(ptr noundef %118, i32 noundef %519, i32 noundef %521, i32 noundef %523)
  br label %553

524:                                              ; preds = %501
  %525 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 28
  %526 = load i32, ptr %525, align 4, !tbaa !103
  switch i32 %526, label %534 [
    i32 32, label %527
    i32 1, label %535
    i32 2, label %528
    i32 4, label %529
    i32 8, label %530
    i32 16, label %531
    i32 128, label %533
    i32 64, label %532
  ]

527:                                              ; preds = %524
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.60) #14
  br label %553

528:                                              ; preds = %524
  br label %535

529:                                              ; preds = %524
  br label %535

530:                                              ; preds = %524
  br label %535

531:                                              ; preds = %524
  br label %535

532:                                              ; preds = %524
  br label %535

533:                                              ; preds = %524
  br label %535

534:                                              ; preds = %524
  br label %535

535:                                              ; preds = %524, %528, %529, %530, %531, %532, %533, %534
  %536 = phi ptr [ @.str.2, %528 ], [ @.str.3, %529 ], [ @.str.4, %530 ], [ @.str.5, %531 ], [ @.str.7, %532 ], [ @.str.8, %533 ], [ @.str.9, %534 ], [ @.str.1, %524 ]
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull %536) #14
  br label %553

537:                                              ; preds = %501
  %538 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 16
  %539 = load ptr, ptr %538, align 8, !tbaa !72
  %540 = icmp eq ptr %539, null
  %541 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 5
  %542 = load i32, ptr %541, align 8, !tbaa !136
  br i1 %540, label %544, label %543

543:                                              ; preds = %537
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.61, i32 noundef %542) #14
  br label %553

544:                                              ; preds = %537
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.62, i32 noundef %542) #14
  br label %553

545:                                              ; preds = %501
  %546 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 7
  %547 = load i32, ptr %546, align 8, !tbaa !129
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.63, i32 noundef %547) #14
  br label %553

548:                                              ; preds = %501
  %549 = getelementptr inbounds %struct.GPUInput, ptr %502, i64 0, i32 29
  %550 = load i32, ptr %549, align 8, !tbaa !104
  switch i32 %550, label %553 [
    i32 1, label %551
    i32 2, label %552
  ]

551:                                              ; preds = %548
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.64) #14
  br label %553

552:                                              ; preds = %548
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.65) #14
  br label %553

553:                                              ; preds = %552, %551, %548, %545, %544, %543, %535, %527, %513, %511, %505, %501
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.52) #14
  %554 = load ptr, ptr %502, align 8, !tbaa !34
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %501, !llvm.loop !148

556:                                              ; preds = %553, %494
  %557 = getelementptr inbounds %struct.GPUNode, ptr %495, i64 0, i32 5
  %558 = load ptr, ptr %557, align 8, !tbaa !34
  %559 = icmp eq ptr %558, null
  br i1 %559, label %570, label %560

560:                                              ; preds = %556, %567
  %561 = phi ptr [ %568, %567 ], [ %558, %556 ]
  %562 = getelementptr inbounds %struct.GPUOutput, ptr %561, i64 0, i32 5
  %563 = load i32, ptr %562, align 8, !tbaa !139
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %118, ptr noundef nonnull @.str.66, i32 noundef %563) #14
  %564 = load ptr, ptr %561, align 8, !tbaa !149
  %565 = icmp eq ptr %564, null
  br i1 %565, label %567, label %566

566:                                              ; preds = %560
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.52) #14
  br label %567

567:                                              ; preds = %566, %560
  %568 = load ptr, ptr %561, align 8, !tbaa !34
  %569 = icmp eq ptr %568, null
  br i1 %569, label %570, label %560, !llvm.loop !150

570:                                              ; preds = %567, %556
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.67) #14
  %571 = load ptr, ptr %495, align 8, !tbaa !34
  %572 = icmp eq ptr %571, null
  br i1 %572, label %573, label %494, !llvm.loop !151

573:                                              ; preds = %570, %491
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.68) #14
  %574 = getelementptr inbounds %struct.GPUOutput, ptr %117, i64 0, i32 3
  %575 = load i32, ptr %574, align 8, !tbaa !93
  %576 = getelementptr inbounds %struct.GPUOutput, ptr %117, i64 0, i32 5
  %577 = load i32, ptr %576, align 8, !tbaa !139
  tail call fastcc void @codegen_convert_datatype(ptr noundef %118, i32 noundef %575, i32 noundef 4, i32 noundef %577)
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.46) #14
  tail call void @BLI_dynstr_append(ptr noundef %118, ptr noundef nonnull @.str.37) #14
  %578 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %118) #14
  tail call void @BLI_dynstr_free(ptr noundef %118) #14
  %579 = tail call ptr @BLI_dynstr_new() #14
  %580 = load ptr, ptr %0, align 8, !tbaa !34
  %581 = icmp eq ptr %580, null
  br i1 %581, label %615, label %585

582:                                              ; preds = %612, %585
  %583 = load ptr, ptr %586, align 8, !tbaa !34
  %584 = icmp eq ptr %583, null
  br i1 %584, label %615, label %585, !llvm.loop !152

585:                                              ; preds = %573, %582
  %586 = phi ptr [ %583, %582 ], [ %580, %573 ]
  %587 = getelementptr inbounds %struct.GPUNode, ptr %586, i64 0, i32 4
  %588 = load ptr, ptr %587, align 8, !tbaa !34
  %589 = icmp eq ptr %588, null
  br i1 %589, label %582, label %590

590:                                              ; preds = %585, %612
  %591 = phi ptr [ %613, %612 ], [ %588, %585 ]
  %592 = getelementptr inbounds %struct.GPUInput, ptr %591, i64 0, i32 4
  %593 = load i32, ptr %592, align 4, !tbaa !102
  %594 = icmp eq i32 %593, 5
  br i1 %594, label %595, label %612

595:                                              ; preds = %590
  %596 = getelementptr inbounds %struct.GPUInput, ptr %591, i64 0, i32 27
  %597 = load i32, ptr %596, align 8, !tbaa !130
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %612, label %599

599:                                              ; preds = %595
  %600 = getelementptr inbounds %struct.GPUInput, ptr %591, i64 0, i32 3
  %601 = load i32, ptr %600, align 8, !tbaa !71
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %602
  %604 = load ptr, ptr %603, align 8, !tbaa !34
  %605 = getelementptr inbounds %struct.GPUInput, ptr %591, i64 0, i32 7
  %606 = load i32, ptr %605, align 8, !tbaa !129
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %579, ptr noundef nonnull @.str.82, ptr noundef %604, i32 noundef %606) #14
  %607 = load i32, ptr %600, align 8, !tbaa !71
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [17 x ptr], ptr @GPU_DATATYPE_STR, i64 0, i64 %608
  %610 = load ptr, ptr %609, align 8, !tbaa !34
  %611 = load i32, ptr %605, align 8, !tbaa !129
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %579, ptr noundef nonnull @.str.47, ptr noundef %610, i32 noundef %611) #14
  br label %612

612:                                              ; preds = %599, %595, %590
  %613 = load ptr, ptr %591, align 8, !tbaa !34
  %614 = icmp eq ptr %613, null
  br i1 %614, label %582, label %590, !llvm.loop !153

615:                                              ; preds = %582, %573
  tail call void @BLI_dynstr_append(ptr noundef %579, ptr noundef nonnull @.str.48) #14
  tail call void @BLI_dynstr_append(ptr noundef %579, ptr noundef nonnull @datatoc_gpu_shader_vertex_glsl) #14
  %616 = load ptr, ptr %0, align 8, !tbaa !34
  %617 = icmp eq ptr %616, null
  br i1 %617, label %653, label %621

618:                                              ; preds = %650, %621
  %619 = load ptr, ptr %622, align 8, !tbaa !34
  %620 = icmp eq ptr %619, null
  br i1 %620, label %653, label %621, !llvm.loop !154

621:                                              ; preds = %615, %618
  %622 = phi ptr [ %619, %618 ], [ %616, %615 ]
  %623 = getelementptr inbounds %struct.GPUNode, ptr %622, i64 0, i32 4
  %624 = load ptr, ptr %623, align 8, !tbaa !34
  %625 = icmp eq ptr %624, null
  br i1 %625, label %618, label %626

626:                                              ; preds = %621, %650
  %627 = phi ptr [ %651, %650 ], [ %624, %621 ]
  %628 = getelementptr inbounds %struct.GPUInput, ptr %627, i64 0, i32 4
  %629 = load i32, ptr %628, align 4, !tbaa !102
  switch i32 %629, label %650 [
    i32 5, label %630
    i32 2, label %645
  ]

630:                                              ; preds = %626
  %631 = getelementptr inbounds %struct.GPUInput, ptr %627, i64 0, i32 27
  %632 = load i32, ptr %631, align 8, !tbaa !130
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %643, label %634

634:                                              ; preds = %630
  %635 = getelementptr inbounds %struct.GPUInput, ptr %627, i64 0, i32 25
  %636 = load i32, ptr %635, align 4, !tbaa !109
  %637 = icmp eq i32 %636, 18
  %638 = getelementptr inbounds %struct.GPUInput, ptr %627, i64 0, i32 7
  %639 = load i32, ptr %638, align 8, !tbaa !129
  br i1 %637, label %640, label %642

640:                                              ; preds = %634
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %579, ptr noundef nonnull @.str.83, i32 noundef %639, i32 noundef %639) #14
  %641 = load i32, ptr %638, align 8, !tbaa !129
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %579, ptr noundef nonnull @.str.84, i32 noundef %641, i32 noundef %641) #14
  br label %650

642:                                              ; preds = %634
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %579, ptr noundef nonnull @.str.85, i32 noundef %639, i32 noundef %639) #14
  br label %650

643:                                              ; preds = %630
  %644 = icmp eq i32 %629, 2
  br i1 %644, label %645, label %650

645:                                              ; preds = %626, %643
  %646 = getelementptr inbounds %struct.GPUInput, ptr %627, i64 0, i32 29
  %647 = load i32, ptr %646, align 8, !tbaa !104
  switch i32 %647, label %650 [
    i32 1, label %648
    i32 2, label %649
  ]

648:                                              ; preds = %645
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %579, ptr noundef nonnull @.str.86) #14
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %579, ptr noundef nonnull @.str.87) #14
  br label %650

649:                                              ; preds = %645
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %579, ptr noundef nonnull @.str.88) #14
  br label %650

650:                                              ; preds = %626, %649, %648, %645, %643, %642, %640
  %651 = load ptr, ptr %627, align 8, !tbaa !34
  %652 = icmp eq ptr %651, null
  br i1 %652, label %618, label %626, !llvm.loop !155

653:                                              ; preds = %618, %615
  tail call void @BLI_dynstr_append(ptr noundef %579, ptr noundef nonnull @.str.89) #14
  %654 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %579) #14
  tail call void @BLI_dynstr_free(ptr noundef %579) #14
  %655 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %656 = tail call ptr @GPU_shader_create(ptr noundef %654, ptr noundef %578, ptr noundef %655, ptr noundef null) #14
  %657 = icmp eq ptr %656, null
  br i1 %657, label %658, label %673

658:                                              ; preds = %653
  %659 = icmp eq ptr %578, null
  br i1 %659, label %662, label %660

660:                                              ; preds = %658
  %661 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %661(ptr noundef nonnull %578) #14
  br label %662

662:                                              ; preds = %660, %658
  %663 = icmp eq ptr %654, null
  br i1 %663, label %666, label %664

664:                                              ; preds = %662
  %665 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %665(ptr noundef nonnull %654) #14
  br label %666

666:                                              ; preds = %664, %662
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %2, i8 0, i64 2564, i1 false)
  store i32 0, ptr %3, align 4
  %667 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #14
  %668 = icmp eq ptr %667, null
  br i1 %668, label %755, label %669

669:                                              ; preds = %666, %669
  %670 = phi ptr [ %671, %669 ], [ %667, %666 ]
  tail call fastcc void @GPU_node_free(ptr noundef nonnull %670)
  %671 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #14
  %672 = icmp eq ptr %671, null
  br i1 %672, label %755, label %669, !llvm.loop !156

673:                                              ; preds = %653
  %674 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %675 = tail call ptr %674(i64 noundef 72, ptr noundef nonnull @.str.13) #14
  %676 = load ptr, ptr %116, align 8, !tbaa !97
  %677 = getelementptr inbounds %struct.GPUPass, ptr %675, i64 0, i32 3
  store ptr %676, ptr %677, align 8, !tbaa !157
  %678 = getelementptr inbounds %struct.GPUPass, ptr %675, i64 0, i32 4
  store ptr %656, ptr %678, align 8, !tbaa !59
  %679 = getelementptr inbounds %struct.GPUPass, ptr %675, i64 0, i32 5
  store ptr %578, ptr %679, align 8, !tbaa !158
  %680 = getelementptr inbounds %struct.GPUPass, ptr %675, i64 0, i32 6
  store ptr %654, ptr %680, align 8, !tbaa !159
  %681 = load ptr, ptr @glsl_material_library, align 8, !tbaa !34
  %682 = getelementptr inbounds %struct.GPUPass, ptr %675, i64 0, i32 7
  store ptr %681, ptr %682, align 8, !tbaa !160
  %683 = getelementptr inbounds %struct.GPUPass, ptr %675, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %683, i8 0, i64 16, i1 false)
  tail call void @GPU_shader_bind(ptr noundef nonnull %656) #14
  %684 = load ptr, ptr %0, align 8, !tbaa !34
  %685 = icmp eq ptr %684, null
  br i1 %685, label %748, label %689

686:                                              ; preds = %746, %689
  %687 = load ptr, ptr %690, align 8, !tbaa !34
  %688 = icmp eq ptr %687, null
  br i1 %688, label %748, label %689, !llvm.loop !161

689:                                              ; preds = %673, %686
  %690 = phi ptr [ %687, %686 ], [ %684, %673 ]
  %691 = getelementptr inbounds %struct.GPUNode, ptr %690, i64 0, i32 4
  %692 = load ptr, ptr %691, align 8, !tbaa !99
  %693 = icmp eq ptr %692, null
  br i1 %693, label %686, label %694

694:                                              ; preds = %689, %746
  %695 = phi ptr [ %696, %746 ], [ %692, %689 ]
  %696 = load ptr, ptr %695, align 8, !tbaa !162
  %697 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 4
  %698 = load i32, ptr %697, align 4, !tbaa !102
  switch i32 %698, label %699 [
    i32 5, label %746
    i32 1, label %746
    i32 2, label %746
  ]

699:                                              ; preds = %694
  %700 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 12
  %701 = load ptr, ptr %700, align 8, !tbaa !61
  %702 = icmp eq ptr %701, null
  br i1 %702, label %703, label %711

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 19
  %705 = load ptr, ptr %704, align 8, !tbaa !66
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %711

707:                                              ; preds = %703
  %708 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 14
  %709 = load ptr, ptr %708, align 8, !tbaa !65
  %710 = icmp eq ptr %709, null
  br i1 %710, label %716, label %711

711:                                              ; preds = %707, %703, %699
  %712 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 21
  %713 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 6
  %714 = load i32, ptr %713, align 4, !tbaa !68
  %715 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %712, i64 noundef 32, ptr noundef nonnull @.str.57, i32 noundef %714) #14
  br label %721

716:                                              ; preds = %707
  %717 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 21
  %718 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 5
  %719 = load i32, ptr %718, align 8, !tbaa !136
  %720 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %717, i64 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %719) #14
  br label %721

721:                                              ; preds = %716, %711
  %722 = load ptr, ptr %700, align 8, !tbaa !61
  %723 = icmp eq ptr %722, null
  br i1 %723, label %724, label %732

724:                                              ; preds = %721
  %725 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 19
  %726 = load ptr, ptr %725, align 8, !tbaa !66
  %727 = icmp eq ptr %726, null
  br i1 %727, label %728, label %732

728:                                              ; preds = %724
  %729 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 14
  %730 = load ptr, ptr %729, align 8, !tbaa !65
  %731 = icmp eq ptr %730, null
  br i1 %731, label %736, label %732

732:                                              ; preds = %728, %724, %721
  %733 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 8
  %734 = load i32, ptr %733, align 4, !tbaa !67
  %735 = icmp eq i32 %734, 0
  br label %740

736:                                              ; preds = %728
  %737 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 16
  %738 = load ptr, ptr %737, align 8, !tbaa !72
  %739 = icmp eq ptr %738, null
  br label %740

740:                                              ; preds = %736, %732
  %741 = phi i1 [ %735, %732 ], [ %739, %736 ]
  br i1 %741, label %746, label %742

742:                                              ; preds = %740
  %743 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 21
  %744 = tail call i32 @GPU_shader_get_uniform(ptr noundef nonnull %656, ptr noundef nonnull %743) #14
  %745 = getelementptr inbounds %struct.GPUInput, ptr %695, i64 0, i32 20
  store i32 %744, ptr %745, align 8, !tbaa !69
  tail call void @BLI_remlink(ptr noundef nonnull %691, ptr noundef nonnull %695) #14
  tail call void @BLI_addtail(ptr noundef nonnull %683, ptr noundef nonnull %695) #14
  br label %746

746:                                              ; preds = %742, %740, %694, %694, %694
  %747 = icmp eq ptr %696, null
  br i1 %747, label %686, label %694, !llvm.loop !163

748:                                              ; preds = %686, %673
  tail call void @GPU_shader_unbind() #14
  %749 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #14
  %750 = icmp eq ptr %749, null
  br i1 %750, label %755, label %751

751:                                              ; preds = %748, %751
  %752 = phi ptr [ %753, %751 ], [ %749, %748 ]
  tail call fastcc void @GPU_node_free(ptr noundef nonnull %752)
  %753 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #14
  %754 = icmp eq ptr %753, null
  br i1 %754, label %755, label %751, !llvm.loop !156

755:                                              ; preds = %751, %669, %748, %666
  %756 = phi ptr [ null, %666 ], [ %675, %748 ], [ null, %669 ], [ %675, %751 ]
  ret ptr %756
}

declare ptr @GPU_shader_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local void @GPU_pass_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  tail call void @GPU_shader_free(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 2
  tail call fastcc void @GPU_inputs_free(ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %6) #14
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.GPUPass, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #14
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef %0) #14
  ret void
}

declare void @GPU_shader_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @GPU_inputs_free(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %1, %37
  %5 = phi ptr [ %38, %37 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.GPUInput, ptr %5, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.GPUNodeLink, ptr %7, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !77
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !77
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load ptr, ptr @stderr, align 8, !tbaa !34
  %16 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 38, i64 1, ptr %15) #16
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, ptr %10, align 4, !tbaa !77
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.GPUNodeLink, ptr %7, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.GPUOutput, ptr %22, i64 0, i32 4
  store ptr null, ptr %25, align 8, !tbaa !96
  br label %26

26:                                               ; preds = %24, %20
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %27(ptr noundef nonnull %7) #14
  br label %37

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.GPUInput, ptr %5, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.GPUInput, ptr %5, i64 0, i32 24
  %34 = load i32, ptr %33, align 8, !tbaa !107
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @GPU_texture_free(ptr noundef nonnull %30) #14
  br label %37

37:                                               ; preds = %26, %17, %36, %32, %28
  %38 = load ptr, ptr %5, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %4, !llvm.loop !164

40:                                               ; preds = %37, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GPU_texture_create_2D(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_nodes_tag(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.GPUNodeLink, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.GPUOutput, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !118
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  store i32 1, ptr %8, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.GPUNode, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11, %21
  %16 = phi ptr [ %22, %21 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.GPUInput, ptr %16, i64 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call fastcc void @gpu_nodes_tag(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %15, %20
  %22 = load ptr, ptr %16, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !165

24:                                               ; preds = %21, %11, %5, %1
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @GPU_node_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GPUNode, ptr %0, i64 0, i32 4
  tail call fastcc void @GPU_inputs_free(ptr noundef nonnull %2)
  %3 = getelementptr inbounds %struct.GPUNode, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1, %30
  %7 = phi ptr [ %31, %30 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.GPUOutput, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.GPUNodeLink, ptr %9, i64 0, i32 16
  store ptr null, ptr %12, align 8, !tbaa !97
  %13 = getelementptr inbounds %struct.GPUNodeLink, ptr %9, i64 0, i32 12
  %14 = load i32, ptr %13, align 4, !tbaa !77
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %13, align 4, !tbaa !77
  %16 = icmp slt i32 %14, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr @stderr, align 8, !tbaa !34
  %19 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 38, i64 1, ptr %18) #16
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, ptr %13, align 4, !tbaa !77
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load ptr, ptr %12, align 8, !tbaa !97
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.GPUOutput, ptr %24, i64 0, i32 4
  store ptr null, ptr %27, align 8, !tbaa !96
  br label %28

28:                                               ; preds = %26, %23
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %29(ptr noundef nonnull %9) #14
  br label %30

30:                                               ; preds = %28, %20, %6
  %31 = load ptr, ptr %7, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %6, !llvm.loop !166

33:                                               ; preds = %30, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #14
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %34(ptr noundef %0) #14
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @codegen_convert_datatype(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #14
  %6 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.59, i32 noundef %3) #14
  %7 = icmp eq i32 %1, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull %5) #14
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
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull %5) #14
  br label %26

12:                                               ; preds = %10
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef nonnull %5) #14
  br label %26

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull %5) #14
  br label %26

14:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 4, label %15
    i32 3, label %16
    i32 1, label %17
  ]

15:                                               ; preds = %14
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %5, ptr noundef nonnull %5) #14
  br label %26

16:                                               ; preds = %14
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull %5) #14
  br label %26

17:                                               ; preds = %14
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef nonnull %5) #14
  br label %26

18:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 4, label %19
    i32 2, label %20
    i32 1, label %21
  ]

19:                                               ; preds = %18
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef nonnull %5) #14
  br label %26

20:                                               ; preds = %18
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #14
  br label %26

21:                                               ; preds = %18
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #14
  br label %26

22:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 3, label %23
    i32 2, label %24
    i32 1, label %25
  ]

23:                                               ; preds = %22
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef nonnull %5) #14
  br label %26

24:                                               ; preds = %22
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #14
  br label %26

25:                                               ; preds = %22
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.81, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #14
  br label %26

26:                                               ; preds = %22, %18, %14, %10, %12, %13, %11, %20, %21, %19, %24, %25, %23, %15, %17, %16, %8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #14
  ret void
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

declare i32 @GPU_shader_get_uniform(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold }

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
!38 = !{!36, !36, i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !40, !41}
!43 = distinct !{!43, !40, !41}
!44 = distinct !{!44, !40, !41}
!45 = !{!46, !47, i64 320}
!46 = !{!"GPUFunction", !36, i64 0, !36, i64 64, !36, i64 192, !47, i64 320}
!47 = !{!"int", !36, i64 0}
!48 = !{!47, !47, i64 0}
!49 = distinct !{!49, !40, !41}
!50 = distinct !{!50, !40, !41}
!51 = !{!52, !35, i64 928}
!52 = !{!"Material", !53, i64 0, !35, i64 120, !54, i64 128, !54, i64 130, !55, i64 132, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !55, i64 200, !55, i64 204, !55, i64 208, !55, i64 212, !55, i64 216, !55, i64 220, !56, i64 224, !57, i64 312, !55, i64 328, !55, i64 332, !55, i64 336, !55, i64 340, !55, i64 344, !55, i64 348, !55, i64 352, !54, i64 356, !54, i64 358, !54, i64 360, !36, i64 362, !36, i64 363, !55, i64 364, !55, i64 368, !54, i64 372, !54, i64 374, !55, i64 376, !55, i64 380, !55, i64 384, !55, i64 388, !54, i64 392, !54, i64 394, !47, i64 396, !47, i64 400, !47, i64 404, !47, i64 408, !54, i64 412, !54, i64 414, !54, i64 416, !54, i64 418, !55, i64 420, !55, i64 424, !55, i64 428, !55, i64 432, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !55, i64 456, !36, i64 460, !55, i64 524, !55, i64 528, !55, i64 532, !47, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !54, i64 544, !54, i64 546, !54, i64 548, !36, i64 550, !36, i64 551, !54, i64 552, !54, i64 554, !55, i64 556, !55, i64 560, !36, i64 564, !55, i64 580, !55, i64 584, !54, i64 588, !54, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !54, i64 612, !54, i64 614, !55, i64 616, !55, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !55, i64 800, !55, i64 804, !55, i64 808, !55, i64 812, !55, i64 816, !54, i64 820, !54, i64 822, !36, i64 824, !36, i64 836, !55, i64 848, !55, i64 852, !55, i64 856, !55, i64 860, !55, i64 864, !55, i64 868, !55, i64 872, !54, i64 876, !54, i64 878, !47, i64 880, !54, i64 884, !54, i64 886, !36, i64 888, !54, i64 904, !54, i64 906, !54, i64 908, !54, i64 910, !54, i64 912, !36, i64 914, !35, i64 920, !58, i64 928}
!53 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !54, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !35, i64 112}
!54 = !{!"short", !36, i64 0}
!55 = !{!"float", !36, i64 0}
!56 = !{!"VolumeSettings", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !55, i64 52, !55, i64 56, !55, i64 60, !54, i64 64, !54, i64 66, !54, i64 68, !54, i64 70, !55, i64 72, !55, i64 76, !55, i64 80, !55, i64 84}
!57 = !{!"GameSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!58 = !{!"ListBase", !35, i64 0, !35, i64 8}
!59 = !{!60, !35, i64 40}
!60 = !{!"GPUPass", !35, i64 0, !35, i64 8, !58, i64 16, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!61 = !{!62, !35, i64 64}
!62 = !{!"GPUInput", !35, i64 0, !35, i64 8, !35, i64 16, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !47, i64 88, !35, i64 96, !47, i64 104, !35, i64 112, !35, i64 120, !47, i64 128, !36, i64 132, !36, i64 164, !35, i64 232, !47, i64 240, !47, i64 244, !36, i64 248, !47, i64 280, !47, i64 284, !47, i64 288}
!63 = !{!62, !35, i64 72}
!64 = !{!62, !47, i64 88}
!65 = !{!62, !35, i64 80}
!66 = !{!62, !35, i64 120}
!67 = !{!62, !47, i64 44}
!68 = !{!62, !47, i64 36}
!69 = !{!62, !47, i64 128}
!70 = distinct !{!70, !40, !41}
!71 = !{!62, !47, i64 24}
!72 = !{!62, !35, i64 96}
!73 = distinct !{!73, !40, !41}
!74 = distinct !{!74, !40, !41}
!75 = !{!76, !47, i64 64}
!76 = !{!"GPUNodeLink", !35, i64 0, !47, i64 8, !35, i64 16, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !35, i64 40, !35, i64 48, !47, i64 56, !47, i64 60, !47, i64 64, !47, i64 68, !35, i64 72, !47, i64 80, !47, i64 84, !35, i64 88}
!77 = !{!76, !47, i64 68}
!78 = !{!76, !47, i64 8}
!79 = !{!76, !35, i64 16}
!80 = !{!76, !35, i64 40}
!81 = !{!76, !35, i64 48}
!82 = !{!76, !47, i64 56}
!83 = !{!76, !47, i64 60}
!84 = !{!76, !47, i64 24}
!85 = !{!76, !47, i64 28}
!86 = !{!76, !47, i64 32}
!87 = !{!76, !47, i64 36}
!88 = !{!76, !35, i64 72}
!89 = !{!76, !47, i64 80}
!90 = !{!76, !47, i64 84}
!91 = !{!92, !35, i64 16}
!92 = !{!"GPUNode", !35, i64 0, !35, i64 8, !35, i64 16, !47, i64 24, !58, i64 32, !58, i64 48}
!93 = !{!94, !47, i64 24}
!94 = !{!"GPUOutput", !35, i64 0, !35, i64 8, !35, i64 16, !47, i64 24, !35, i64 32, !47, i64 40}
!95 = !{!94, !35, i64 16}
!96 = !{!94, !35, i64 32}
!97 = !{!76, !35, i64 88}
!98 = distinct !{!98, !40, !41}
!99 = !{!92, !35, i64 32}
!100 = !{!62, !35, i64 232}
!101 = !{!62, !35, i64 16}
!102 = !{!62, !47, i64 28}
!103 = !{!62, !47, i64 284}
!104 = !{!62, !47, i64 288}
!105 = !{!62, !47, i64 52}
!106 = !{!62, !47, i64 56}
!107 = !{!62, !47, i64 240}
!108 = !{!62, !35, i64 112}
!109 = !{!62, !47, i64 244}
!110 = !{!62, !47, i64 104}
!111 = !{!112, !47, i64 0}
!112 = !{!"GPUNodeStack", !47, i64 0, !35, i64 8, !36, i64 16, !35, i64 32, !36, i64 40, !36, i64 41, !54, i64 42}
!113 = !{!112, !35, i64 32}
!114 = distinct !{!114, !40, !41}
!115 = distinct !{!115, !40, !41}
!116 = !{!76, !35, i64 0}
!117 = distinct !{!117, !40, !41}
!118 = !{!92, !47, i64 24}
!119 = distinct !{!119, !40, !41}
!120 = !{!58, !35, i64 0}
!121 = !{!92, !35, i64 0}
!122 = distinct !{!122, !40, !41}
!123 = distinct !{!123, !40, !41}
!124 = !{!125, !47, i64 2560}
!125 = !{!"GPUVertexAttribs", !36, i64 0, !47, i64 2560}
!126 = !{!127, !47, i64 0}
!127 = !{!"", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !36, i64 16}
!128 = distinct !{!128, !40, !41}
!129 = !{!62, !47, i64 40}
!130 = !{!62, !47, i64 280}
!131 = !{!127, !47, i64 12}
!132 = distinct !{!132, !40, !41}
!133 = distinct !{!133, !40, !41}
!134 = distinct !{!134, !40, !41}
!135 = distinct !{!135, !40, !41}
!136 = !{!62, !47, i64 32}
!137 = !{!62, !47, i64 48}
!138 = distinct !{!138, !40, !41}
!139 = !{!94, !47, i64 40}
!140 = distinct !{!140, !40, !41}
!141 = distinct !{!141, !40, !41}
!142 = !{!55, !55, i64 0}
!143 = distinct !{!143, !40, !41}
!144 = distinct !{!144, !40, !41}
!145 = distinct !{!145, !40, !41}
!146 = distinct !{!146, !40, !41}
!147 = distinct !{!147, !40, !41}
!148 = distinct !{!148, !40, !41}
!149 = !{!94, !35, i64 0}
!150 = distinct !{!150, !40, !41}
!151 = distinct !{!151, !40, !41}
!152 = distinct !{!152, !40, !41}
!153 = distinct !{!153, !40, !41}
!154 = distinct !{!154, !40, !41}
!155 = distinct !{!155, !40, !41}
!156 = distinct !{!156, !40, !41}
!157 = !{!60, !35, i64 32}
!158 = !{!60, !35, i64 48}
!159 = !{!60, !35, i64 56}
!160 = !{!60, !35, i64 64}
!161 = distinct !{!161, !40, !41}
!162 = !{!62, !35, i64 0}
!163 = distinct !{!163, !40, !41}
!164 = distinct !{!164, !40, !41}
!165 = distinct !{!165, !40, !41}
!166 = distinct !{!166, !40, !41}
